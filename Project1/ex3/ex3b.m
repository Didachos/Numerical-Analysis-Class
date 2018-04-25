function L = ex3b( M )
%EX3B Summary of this function goes here
%   Detailed explanation goes here
n = length( M );
L = zeros( n, n );
for i=1:n
   L(i, i) = sqrt(M(i, i) - L(i, :)*L(i, :)');
   for j=(i + 1):n
      L(j, i) = (M(j, i) - L(i,:)*L(j ,:)')/L(i, i);
   end
end

end

