function [X] = randmixnorm(M, N, p, mu, sigma2)
%sample from a mixture of normal distributions

X = randn(M, N);
comp_prob = cumsum(p);
s = sqrt(sigma2);

for i = 1:M
    for j = 1:N
        k = find(rand < comp_prob, 1, 'first');
        X(i, j) = X(i, j)*s(k) + mu(k); 
    end
end


end

