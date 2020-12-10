
%%%%%%%%%%%%
%Yalmip
clear; 

Xg = 0.2; 
V2 = sdpvar(1,1);
theta2 = sdpvar(1,1);
Pload = sdpvar(1,1); 
Qload = -0.5; 

Objective = -Pload;
Constraints =...
    [Pload == 1*V2/Xg*sin(0-theta2);
    -Qload == V2^2/Xg - 1*V2/Xg*cos(theta2)]
options =sdpsettings('solver','fmincon','usex0', 1);

assign(V2,1);

sol = optimize(Constraints,Objective,options);
