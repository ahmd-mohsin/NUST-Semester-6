% Code for CCN project
% Importing data and plotting useful graphs as per requirement
% Time=CapturedFrames(:,2);
% Number=CapturedFrames(:,1);
% SourceIP=CapturedFrames(:,4);
% DestinationIP=CapturedFrames(:,5);
% Protocol=CapturedFrames(:,6);
% Length=CapturedFrames(:,7);
% figure
% plot(Source(1:4000),No(1:4000));
% xlabel("Source IP");
% ylabel("No. of Sessions");
% figure
% plot(Destination(1:4000),No(1:4000));
% xlabel("Destination IP");
% ylabel("No. of Sessions");
% figure
% plot(Length(1:2000),No(1:2000));
% xlabel("Length");
% ylabel("Number");
% figure
% plot(Source(1:2000),Length(1:2000));
% xlabel("Source IP");
% ylabel("Length");
% figure
% plot(Destination(1:2000),Length(1:2000));
% xlabel("Destination IP");
% ylabel("Length");
% figure
% plot(Time(1:2000),Source(1:2000));
% xlabel("Time");
% ylabel("Source");
% figure
% plot(Source(1:2000),Destination(1:2000));
% xlabel("Source");
% ylabel("Destination");
% figure
% plot(SourcePort,AvgBWbps);
% xlabel("SourcePort");
% ylabel("Bps");
% figure
% plot(parent,Ratems);
% xlabel("Source");
% ylabel("Ratems");
% figure
% plot(parent,Ratems);
% xlabel("Source");
% ylabel("Ratems");
%plot(No(1:2000),Length(1:2000))
%plot3(Protocol(1:2000),Source(1:2000),Destination(1:2000));
plot(Source(1:600),No(1:600));



