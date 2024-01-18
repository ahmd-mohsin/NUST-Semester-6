import numpy as np
from scipy.special import j0


class Network:
    def __init__(self, n, T, alpha_mean, alpha_var, fd):
        self.n = n
        self.T = T
        self.alpha_mean = alpha_mean
        self.alpha_var = alpha_var
        self.fd = fd
        self.rho = j0(2 * np.pi * fd * T)

        # Initialize alpha with log-normal shadowing and path loss
        self.alpha = np.random.lognormal(
            mean=self.alpha_mean, sigma=np.sqrt(self.alpha_var), size=(n, n)
        )
        for i in range(n):
            self.alpha[i, i] = 0  # Set diagonal elements to 0

    def get_channel_gain(self, i, j, t):
        # Compute the downlink channel gain from transmitter i to receiver j in time slot t
        h_t = self.get_small_scale_fading(i, j, t)
        alpha_ij = self.alpha[i, j]
        g_t_ij = alpha_ij * np.abs(h_t) ** 2

        return g_t_ij

    def get_small_scale_fading(self, i, j, t):
        # Compute the small-scale Rayleigh fading component for transmitter i to receiver j in time slot t
        if t == 0:
            h_t_ij = np.random.normal(scale=np.sqrt(0.5)) + 1j * np.random.normal(
                scale=np.sqrt(0.5)
            )
        else:
            h_t_minus_1_ij = self.get_small_scale_fading(i, j, t - 1)
            e_t_ij = np.random.normal(scale=np.sqrt(0.5)) + 1j * np.random.normal(
                scale=np.sqrt(0.5)
            )
            h_t_ij = self.rho * h_t_minus_1_ij + np.sqrt(1 - self.rho**2) * e_t_ij

        return h_t_ij
