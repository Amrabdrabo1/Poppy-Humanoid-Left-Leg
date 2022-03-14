X0 = [23.5748,-2.3,31.3222];
Xf = [-31.435,-2.3,-1.065];
Tf = 2;
Ts = 0.2;
line = task_traj_straighline(X0,Xf,Tf,Ts)
q0 = line(:,4)*(180/pi)
q1 = line(:,5)*(180/pi)
q2 = line(:,6)*(180/pi)
q3 = line(:,7)*(180/pi)

function result = toStructure(input)
result.time = [];
result.signals.values = [ input(:,1), input(:,2), input(:,3), input(:,4), input(:,5), input(:,6), input(:,7) ];
result.signals.dimensions = 7;
end

function T = transformation_func(theta, d, a, alpha)
 T = [cos(theta) -cos(alpha)*sin(theta) sin(alpha)*sin(theta)  a*cos(theta)
     sin(theta)  cos(alpha)*cos(theta)  -sin(alpha)*cos(theta) a*sin(theta)
     0           sin(alpha)             cos(alpha)             d
     0           0                      0                      1];
end

function X =forward_kinematics_func_nums(q0,q1,q2,q3)
syms theta0 theta1 theta2 theta3
 syms L1 L2 L3 L4 L5
 %link 1 :
 Tm1 = transformation_func(theta0,-L1,0,pi/2);
 
 %link 2:
 Tm2 = transformation_func(theta1,L2,L3,0);
 
 %link 3:
 Tm3 = transformation_func(theta2,0,L4,0);
 
 %link 4:
 Tm4 = transformation_func(theta3,0,L5,0);
 
 %Total Fwd Matrix
 Ttotal = simplify(Tm1*Tm2*Tm3*Tm4);
 Ttotal2 = subs(Ttotal,{L1,L2,L3,L4,L5},{4.5,2.3,19,18,10});
 
 X_Y_Z_position = double(subs(Ttotal2,{theta0,theta1,theta2,theta3},{q0,q1,q2,q3}));
 
 X = X_Y_Z_position(:,4);
 
end

function X =forward_kinematics_func(q0,q1,q2,q3)
syms theta0 theta1 theta2 theta3
 syms L1 L2 L3 L4 L5
 %link 1 :
 Tm1 = transformation_func(theta0,-L1,0,pi/2);
 
 %link 2:
 Tm2 = transformation_func(theta1,L2,L3,0);
 
 %link 3:
 Tm3 = transformation_func(theta2,0,L4,0);
 
 %link 4:
 Tm4 = transformation_func(theta3,0,L5,0);
 
 %Total Fwd Matrix
 Ttotal = simplify(Tm1*Tm2*Tm3*Tm4);
 Ttotal2 = subs(Ttotal,{L1,L2,L3,L4,L5},{4.5,2.3,19,18,10});
 
 X_Y_Z_position = subs(Ttotal2,{theta0,theta1,theta2,theta3},{q0,q1,q2,q3});
 
 X = X_Y_Z_position(:,4);
 
end

function J_inv = inverse_jacobian_matrix(q0_in,q1_in,q2_in,q3_in)
    syms q0 q1 q2 q3
    X = forward_kinematics_func(q0,q1,q2,q3);
    f1 = X(1);
    f2 = X(2);
    f3 = X(3);
    J = [ diff(f1,q0) diff(f1,q1) diff(f1,q2) diff(f1,q3);diff(f2,q0) diff(f2,q1) diff(f2,q2) diff(f2,q3);diff(f3,q0) diff(f3,q1) diff(f3,q2) diff(f3,q3)];
    J_subs = double(subs(J,[q0 q1 q2 q3],[q0_in q1_in q2_in q3_in]));
    J_inv = pinv(J_subs);
end

function q = inverse_kinematics_func(q_in, X)
    syms q0 q1 q2 q3
    x = forward_kinematics_func(q0,q1,q2,q3);
    f1 = x(1) - X(1);
    f2 = x(2) - X(2);
    f3 = x(3) - X(3);
    F = [f1; f2; f3];
    Q = [q_in(1); q_in(2); q_in(3); q_in(4)];
    e = 0.1;
    n = 0;
    Q_old = Q;
    while(n < 100)
        I_old = inverse_jacobian_matrix(Q_old(1),Q_old(2),Q_old(3),Q_old(4));
        F_old = double(subs(F,{q0,q1,q2,q3},{Q_old(1),Q_old(2),Q_old(3),Q_old(4)}));
        Q_new = Q_old - I_old*F_old;
        if abs(Q_new(1)-Q_old(1)) <= e && abs(Q_new(2)-Q_old(2)) <= e && abs(Q_new(3)-Q_old(3)) <= e
            break;
        end
        Q_old = Q_new;
        n = n + 1;
        disp(n)
    end
    if Q_new(1) >= 2*pi+0.1
        Q_new(1) = Q_new(1) - 2*pi*idivide(Q_new(1),int16(2*pi));
    elseif Q_new(1) < -0.1
        Q_new(1) = Q_new(1) + 2*pi*(idivide(Q_new(1),int16(2*pi))+1);
    end
    if Q_new(2) >= 2*pi+0.1
        Q_new(2) = Q_new(2) - 2*pi*idivide(Q_new(2),int16(2*pi));
    elseif Q_new(2) < -0.1
        Q_new(2) = Q_new(2) + 2*pi*(idivide(Q_new(2),int16(2*pi))+1);
    end
%         *idivide(Q_new(2),int16(2*pi));
%         *(idivide(Q_new(2),int16(2*pi))+1);
    if Q_new(3) >= 2*pi+0.1
        Q_new(3) = Q_new(3) - 2*pi*idivide(Q_new(2),int16(2*pi));
    elseif Q_new(3) < -0.1
        Q_new(3) = Q_new(3) + 2*pi*(idivide(Q_new(3),int16(2*pi))+1);
    end
    if n == 100 
        disp("failed");
    else
        q = Q_new;
    end 
end

function Task_space = task_traj_straighline(X0,Xf,Tf,Ts)
    cx = (Xf(1)-X0(1))/Tf;
    cy = (Xf(2)-X0(2))/Tf;
    cz = (Xf(3)-X0(3))/Tf;
    Task_space = zeros((Tf/Ts+1),7);
    q = [0,pi/4,0,pi/3];
    i=1;
    t=0;
    while( i <= (Tf/Ts+1))      
        f1_t = X0(1)+ cx * t;
        f2_t = X0(2)+ cy * t;
        f3_t = X0(3)+ cz * t;
        k = inverse_kinematics_func(q,[f1_t,f2_t,f3_t]);
        Task_space(i,1) = f1_t;
        Task_space(i,2) = f2_t;
        Task_space(i,3) = f3_t;
        Task_space(i,4) = k(1);
        Task_space(i,5) = k(2);
        Task_space(i,6) = k(3);
        Task_space(i,7) = k(4);
        q=k;
        i=i+1;
        t = t +Ts;
    end % end while    
end
function Task_space = task_traj_circle(X0,Tf,Ts)
    R = 30; % radius of the circle
    w = pi/4; % quarter rotation
    cx = X0(1)-R ;
    cy = X0(2);
    Task_space = zeros((Tf/Ts+1),7);
    q = [0,pi/4,0,pi/2];
    i=1;
    t=0;
    while( i <= (Tf/Ts+1))      
        f1_t = R * cos(w*t)+ cx;
        f2_t = -2.3;
        f3_t = R * sin(w*t)+ cy;
        k = inverse_kinematics_func(q,[f1_t,f2_t, f3_t]);
        Task_space(i,1) = f1_t;
        Task_space(i,2) = f2_t;
        Task_space(i,3) = f3_t;
        Task_space(i,4) = k(1);
        Task_space(i,5) = k(2);
        Task_space(i,6) = k(3);
        Task_space(i,7) = k(4);
        q=k;
        i=i+1;
        t = t +Ts;
    end % end while    
end
 function Task_space = task_traj_spiral(X0,Tf,Ts)
     R = 10; % radius of spiral circle
     w = pi;  % one complete cycle
     K = 1; % constant by which circle decrease
     cx = X0(1)-R ;
     cy = X0(2);
     Task_space = zeros((Tf/Ts+1),7);
     q = [0,0,0,0];
     i=1;
     t=0;
     while( i <= (Tf/Ts+1) )
         tmp = R-K*t;
         tmp1 = cos(w*t);
         tmp2 = sin(w*t);
         f1_t = tmp*tmp1+ cx;
         f2_t = tmp*tmp2+ cy;
         f3_t = 4;
         k = inverse_kinematics_func(q,[f1_t,f2_t,f3_t]);
         Task_space(i,1) = f1_t;
         Task_space(i,2) = f2_t;
         Task_space(i,3) = f3_t;
         Task_space(i,4) = k(1);
         Task_space(i,5) = k(2);
         Task_space(i,6) = k(3);
         Task_space(i,7) = k(4);
         q=k;
         i=i+1;
         t = t +Ts;
     end % end while
 end
 function Joint_space = joint_tra(q0,qf,qdot0,qdotf,Tf,Ts)

    Joint_space = zeros(4);
    i = 1;
    while(i<=4)
        
        syms c0 c1 c2 c3
        eqn1 = c0==q0(i);
        eqn2 = c0+Tf*c1+(Tf^2)*c2+(Tf^3)*c3 ==qf(i)
        eqn3 = c1 ==qdot0(i)
        eqn4 = c1+ 2*Tf*c2 + 3*(Tf^2)*c3 == qdotf(i)
        c= solve([eqn1,eqn2,eqn3,eqn4],[c0,c1,c2,c3])
        Joint_space(i,:)=[c.c0,c.c1,c.c2,c.c3]
        i = i+1;
    end
end

function traj = point_3(q0,qf,qdot0,qdotf,Tf,Ts)
    traj = zeros(4,Tf/Ts);
    i= 1;
    j= 1;
    Traj = joint_tra(q0,qf,qdot0,qdotf,Tf,Ts);
    while(i<=(Tf/Ts))
        M_1 = Traj(1,1) + Traj(1,2)*i + Traj(1,3)*(i^2) + Traj(1,4)*(i^3);
        M_2 = Traj(2,1) + Traj(2,2)*i + Traj(2,3)*(i^2) + Traj(2,4)*(i^3);
        M_3 = Traj(3,1) + Traj(3,2)*i + Traj(3,3)*(i^2) + Traj(3,4)*(i^3);
        M_4 = Traj(4,1) + Traj(4,2)*i + Traj(4,3)*(i^2) + Traj(4,4)*(i^3);
        traj(:,j) = forward_kinematics_func_nums(M_1,M_2,M_3,M_4);
        j = j+1;
        i = i+Ts;
    end
end

function J = jacobian_matrix(q)

syms theta0 theta1 theta2 theta3
 syms L1 L2 L3 L4 L5
 %link 1 :
 Tm1 = transformation_func(theta0,-L1,0,90);
 
 %link 2:
 Tm2 = transformation_func(theta1,L2,L3,0);
 
 %link 3:
 Tm3 = transformation_func(theta2,0,L4,0);
 
 %link 4:
 Tm4 = transformation_func(theta3,0,L5,0);
 
 
 Ttotal = simplify(Tm1*Tm2*Tm3*Tm4); 
 %Ttotal2 = subs(Ttotal,{L1,L2,L3,L4,L5},{4.5,2.3,19,18,10});
 T4 = subs(Ttotal,{theta0,theta1,theta2,theta3},{q(0),q(1),q(2),q(3)});%0T4
 
 Ttotal1 = simplify(Tm1*Tm2*Tm3);
 %Ttotal3 = subs(Ttotal1,{L1,L2,L3,L4,L5},{4.5,2.3,19,18,10});
 T3 = subs(Ttotal1,{theta0,theta1,theta2,theta3},{q(0),q(1),q(2),q(3)});%0T3
 
 Ttotal2 = simplify(Tm1*Tm2);
 %Ttotal4 = subs(Ttotal2,{L1,L2,L3,L4,L5},{4.5,2.3,19,18,10});
 T2 = subs(Ttotal2,{theta0,theta1,theta2,theta3},{q(0),q(1),q(2),q(3)});%0T2
 
 
 Ttotal3 = simplify(Tm1);
 %Ttotal5 = subs(Ttotal3,{L1,L2,L3,L4,L5},{4.5,2.3,19,18,10}); 
 T1 = subs(Ttotal3,{theta0,theta1,theta2,theta3},{q(0),q(1),q(2),q(3)});%0T1
 
 T1(4,:) = [];
 T2(4,:) = [];
 T3(4,:) = [];
 T4(4,:) = [];
 
 J = zeros(6,4);
 i = 1;
 T = {T1,T2,T3,T4};
 while(i<=4)
     if(i == 1)
         JW = z;
         JV1 = cross(JW,T{4}(:,4));
         J(:,i) = [JV1;JW];
  
     else
         JW = [T{i-1}(:,3)];
         JV1 = cross(JW,(T{4}(:,4)-T{i-1}(:,4)));
         J(:,i) = [JV1;JW];
     end
     i = i+1;
 end
end

function J= inverse_jacobian_matrix_1(q1,q2,q3,q4)
X = forward_kinematics_func(q1,q2,q3,q4);
X(4,:)=[];
x=vpa(X(1));
y=vpa(X(2));
z=vpa(X(3));
C = {q1,q2,q3,q4};
k = 1;
L = 1;
J =zeros(3,4);
i = 1;

while(i<=12)
    if(i<=4)
        d = gradient(x,C{k});
        J(1,L) = d;
        k = k+1;
        L = L +1;
    elseif(i>4&&i<=8)
        if(i == 5)
            L = 1;
            k = 1;
        end
        d = gradient(y,C{k});
        J(2,L) = d;
        k = k+1;
        L = L+1;
    elseif(i>8 && i<=12)
         if(i == 9)
            L = 1;
            k = 1;
        end
        d = gradient(z,C{k});
        J(3,L) = d;
        k = k+1;
        L = L+1;
    end
    i = i+1;
end
end

function V = forward_velocity_kinematics_func(q, qdot)

qdot = jacobian_derivate(q(1),q(2),q(3),q(4),qdot(1),qdot(2),qdot(3),qdot(4));
V = jacobian_matrix(q) * qdot;
end

function Jdot= jacobian_derivative(q1,q2,q3,q4,q1_dot,q2_dot,q3_dot,q4_dot)
q=[q1,q2,q3,q4];
q_dot=[q1_dot,q2_dot,q3_dot,q4_dot];
j=jacobian_matrix(q);
j1dot=jacobian(j*transpose(q_dot),q);
Jdot=j1dot;
end


function qddot = inverse_acceleration_kinematics(q, q_dot, A_F)
syms q1 q2 q3 q4 q1_dot q2_dot q3_dot q4_dot
    Jdot=Jacobian_derivative(q1,q2,q3,q4,q1_dot,q2_dot,q3_dot,q4_dot);
    J=jacobian_matrix(q);
    i = 1;
    C = {q1,q1,q2,q3,q4,q1_dot,q2_dot,q3_dot,q4_dot}
    while(i<=8)
        if(i<=4)
            C{i}=q(i);
        else
            C{i} = q_dot(i);
        end
    end
    Jdot=subs(Jdot);
    qddot=vpa(pinv(J)*(A_F-Jdot*q_dot));
end

% function qdot = inverse_velocity_kinematics(q, V)
