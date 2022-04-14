% Initialisation: v_hat_c^k, ddtheta_hat^k, k, w_theta, w_v
% Initialise at each time step (based on previous iteration)
% implement optimisation problem

while abs(J_theta(k+1)-J_theta(k))>= epsilon && abs(J_v(k+1)-J_v(k))>= epsilon
    % solve MPC for ddtheta
    % check obstacle avoidance
    if c_obst>0
        w_theta = w_theta*delta;
    end 
    % update ddtheta_hat^k
    % solve MPC for ddtheta
    % check obstacle avoidance
    if c_obst>0
        w_v = w_v*delta;
    end
    % update v_hat_c^k
    k=k+1;
    
end

% functions to write: c_Obstacle, J_theta, J_v, initial_traj