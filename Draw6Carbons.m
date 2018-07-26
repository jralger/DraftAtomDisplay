
function Draw6Carbons(xc, yc, C, FE, FEC, MS, SR, ID, AnnLoc);
FEMS = sqrt(FE*MS*MS);
S = SR*MS;
S = 1.5*S;

xp = xc;
yp = yc + (2.5*S);
plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', C, 'MarkerSize', MS);
plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', FEC, 'MarkerSize', FEMS(1));

yp = yc + (1.5*S);
plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', C, 'MarkerSize', MS);
plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', FEC, 'MarkerSize', FEMS(2));

yp = yc + (0.5*S);
plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', C, 'MarkerSize', MS);
plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', FEC, 'MarkerSize', FEMS(3));

yp = yc - (0.5*S);
plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', C, 'MarkerSize', MS);
plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', FEC, 'MarkerSize', FEMS(4));

yp = yc - (1.5*S);
plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', C, 'MarkerSize', MS);
plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', FEC, 'MarkerSize', FEMS(5));

yp = yc - (2.5*S);
plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', C, 'MarkerSize', MS);
plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', FEC, 'MarkerSize', FEMS(6));

% xp = xc;
% yp = yc;
% plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', C, 'MarkerSize', MS);
% plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', FEC, 'MarkerSize', FEMS(1));
% 
% 
% xp = xc - S;
% yp = yc - S;
% plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', C, 'MarkerSize', MS);
% plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', FEC, 'MarkerSize', FEMS(2));
% 
% 
% xp = xc - S;
% yp = yc + S;
% plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', C, 'MarkerSize', MS);
% plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', FEC, 'MarkerSize', FEMS(3));
% 
% 
% xp = xc;
% yp = yc + (2.0*S);
% plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', C, 'MarkerSize', MS);
% plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', FEC, 'MarkerSize', FEMS(4));
% 
% xp = xc;
% yp = yc - (2.0*S);
% plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', C, 'MarkerSize', MS);
% plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', FEC, 'MarkerSize', FEMS(5));
% 
% 
% xp = xc + S;
% yp = yc;
% plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', C, 'MarkerSize', MS);
% plot(xp,yp,'o', 'MarkerEdgeColor', C, 'MarkerFaceColor', FEC, 'MarkerSize', FEMS(6));

if AnnLoc == 'UR'
    xp = xc + (0.5*S);
    yp = yc + (2*S);
    text(xp, yp, ID)
 end
 if AnnLoc == 'UL'
    xp = xc - (0.5*S);
    yp = yc + (2*S);
    text(xp, yp, ID)
 end
 
if AnnLoc == 'B'
    xp = xc;
    yp = yc - (3.5*S);
    t = text(xp, yp, ID);
    t.HorizontalAlignment = 'center';
 end
 


end

