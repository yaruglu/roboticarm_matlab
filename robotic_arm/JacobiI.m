function [qdot] = JacobiI(J,Xdot)
    if rcond(J) > 1e-6
        qdot = J\Xdot;
    else
        % use pseudo-inverse or damped least squares
        lambda = 1e-2;
        qdot = (J'*J + lambda*eye(size(J,2)))\J'*Xdot; % DLS
    end
end

