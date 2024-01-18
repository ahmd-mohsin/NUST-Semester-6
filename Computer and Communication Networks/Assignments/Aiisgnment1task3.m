%% 2-Ray model:
ht=35;
hr=10;
d=60;
Gt=4;
Gr=2;
path_loss=((d^2)/(ht*hr))^2;
Trans_power=(10^(33/10))*1e-3;
Recieved_power=((Trans_power)/(path_loss))*Gt*Gr;
Rec_DBM=10*log10(Recieved_power/(1e-3));
Rec_dB=10*log10(Recieved_power);
display('Power Recieved in dB is')
display(Rec_DBM);
display('Recived power in dB is');
display(Rec_dB)