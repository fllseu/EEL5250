z= [1;2;3];
H = [2, 3; 3, 1; 1, 1]; 

% normal equation
x_hat1 = pinv(H)*z; 
 
% inv(H.'*H)*H.'

% fminunc
x_hat2 = fminunc(@(x) myfun(x,z,H),[1;1])


% fmincon
x_hat3 = fmincon(@(x) obj(x,z,H), )
      
      
 function error_sqr = myfun(x,z, H)
          error_sqr = (z-H*x).'*(z-H*x)
 end