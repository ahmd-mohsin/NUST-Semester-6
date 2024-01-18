load lighthouse.mat
whos lighthouse;
lighthouse200 = lighthouse(200,:);
lighhousedownsample=lighthouse(1:3:end,1:3:end)
imshow(lighhousedownsample)
whos lighhousedownsample
xx3=lighhousedownsample;

xr1 = (-2).^(0:6);
L = length(xr1);
nn = ceil((0.999:1:4*L)/4); %<--Round up to the integer part
xr1hold = xr1(nn);
plot(xr1hold);
imshow(xx3)













