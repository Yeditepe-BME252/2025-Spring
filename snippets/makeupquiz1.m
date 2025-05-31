% given
m1 = 0.5;
m2 = 1.0;
x_1 = [0.5 1 0];
x_2 = [-1 0 0.5];
z   = [0 1 -0.5];
v_1 = [-3 4 1];
v_2 = [-1 3 -1];

				% positions from Q
qm1 = x_1 - z;
qm2 = x_2 - z;

				% cross products
CP1 = cross(qm1,v_1);
CP2 = cross(qm2,v_2);

				% the angular momentum
j = m1*CP1 + m2*CP2
