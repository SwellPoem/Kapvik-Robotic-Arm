function rotate_body(Body, angles)
% Description: this function rotates a body wrt the canonical reference
% frame using a 3-2-1 sequence of rotations.

roll = angles(1);
pitch = angles(2);
yaw = angles(3);
    
for i = 1 : length(Body.surfs)

    rotate(Body.surfs(i), [0, 0, 1], yaw);
    rotate(Body.surfs(i), [0, 1, 0], pitch);
    rotate(Body.surfs(i), [1, 0, 0], roll);

end

end