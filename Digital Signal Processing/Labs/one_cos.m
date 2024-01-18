function[xx,tt] = syn_sin(fk, Xk, fs, dur, tstart)
tt=0:1/(fs):dur;
i=length(fk);
for i=1:fk
    xx(i)=real(Xk);
    xx(i+1)=xx(i)+xx(i+1);
end

end