function [B] = inv(A)
    B = eye(3, 3)
    
    disp('Given Matrix A is -: ', A)
    
    if (det(A) == 0) then
        disp('Matrix is singular, Inverse does not exist')
        abort
    end
    
    Aug = [A, B]
    
    if (Aug(1, 1) == 0 & Aug(2, 1) ~= 0)  then
        C(1, :) = Aug(1, :)
        Aug(1, :) = Aug(2, :)
        Aug(2, :) = C(1, :)
    elseif (Aug(1, 1) == 0 & Aug(3, 1) ~= 0) then
        C(1, :) = Aug(1, :)
        Aug(1, :) = Aug(3, :)
        Aug(3, :) = C(1, :)
    end
    
    Aug(1, :) = Aug(1, :)/Aug(1, 1)
    Aug(2, :) = Aug(2, :) - Aug(2, 1) * Aug(1, :)
    Aug(3, :) = Aug(3, :) - Aug(3, 1) * Aug(1, :)
    
    if (Aug(2, 2) == 0) then
        C(2, :) = Aug(2, :)
        Aug(2, :) = Aug(3, :)
        Aug(3, :) = C(2, :)
    end
    
    Aug(2, :) = Aug(2, :)/Aug(2, 2)
    Aug(1, :) = Aug(1, :) - Aug(1, 2) * Aug(2, :)
    Aug(3, :) = Aug(3, :) - Aug(3, 2) * Aug(2, :)
    
    Aug(3, :) = Aug(3, :)/Aug(3, 3)
    Aug(1, :) = Aug(1, :) - Aug(1, 3) * Aug(3, :)
    Aug(2, :) = Aug(2, :) - Aug(2, 3) * Aug(3, :)
    
    Aug(:, 1:3) = []
    B = Aug(:, 1: 3);
    
    disp('The inverse of given matrix is:- ')
endfunction
