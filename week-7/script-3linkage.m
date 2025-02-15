% updated on Apr.03
% coordinates, or position vectors:
A = [113,109,  0];
B = [ 64, 71,  0];
C = [183,117,  0];
D = [249, 77,  0];
E = [279, 41,  0];
F = [230,161,  0];
G = [262,189,  0];

% some constants
m = 85;
g = 9.82;

% relative position vectors:
BA = A - B
ED = D - E
GF = F - G

% Force unit vectors:
uba = BA/norm(BA)
ued = ED/norm(ED)
ugf = GF/norm(GF)

% Forces are defined in terms of their magnitudes Fba and directions uba
% e.g. vecFba = Fba * uba = Fba * [uba(1) uba(2) uba(3)]
% etc.

% equilibrium eqns:
  % 1-summation of x-components,
  %  Fba*uba(1) + Fed*ued(1) + Fgf*ugf(1) = 0
  % 2-summation of y-components,
  %  Fba*uba(2) + Fed*ued(2) + Fgf*ugf(2) + mg = 0
  % 3-sum of moments about C,
  %  cross(CA,vecFba) + cross(CD,vecFed) + cross(CF,vecFgf) = 0
  %  Fba*cross(CA,uba) + Fed*cross(CD,ued) + Fgf*cross(CF,ugf) = 0

% The moment arm vectors:
CA = A - C
CD = D - C
CF = F - C
% Take the moment between the force unit vectors and moment arms 
moment1 = cross(CA,uba)
moment2 = cross(CD,ued) 
moment3 = cross(CF,ugf)


% Ordering the unknown magnitudes as vecX = [Fba, Fed, Fgf]
  % where vecX(1) = Fba, vecX(2) = Fed, vecX(3) = Fgf

% Ordering the equations according the above numbering, we obtain
% system of equations matA * vecX = vecB
% where, coefficient matrix is:
 
  matA = [uba(1) ued(1) ugf(1);...
          uba(2) ued(2) ugf(2);...
          moment1(3) moment2(3) moment3(3)]
% and the loading vector is;
vecB = [0 -m*g 0]

% Now it is merely upto finding the correct way of solving this system of
% equations for vecX.
