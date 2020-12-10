z= [1;
    2;
    3];

H = [2, 3; 
     3, 1; 
     1, 1]; 

x = sdpvar(2,1);
e = sdpvar(3,1);

Objective = e.'*e; 
Constraints =[z==H*x+e];

options =sdpsettings('solver','fmincon');
sol = optimize(Constraints,Objective,options);
