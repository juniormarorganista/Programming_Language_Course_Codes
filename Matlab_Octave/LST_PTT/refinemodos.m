function[alpharef,eigenvecref] = refinemodos(alpha,eigenvec,omega)
j = 1;
for i = 1:length(alpha);
  if (omega/real(alpha(i)) > 1e-1) && ...
     (omega/real(alpha(i)) < 1.2) && ...
     ( abs(imag(alpha(i))) < 0.5)
    alpharef(j,1)    = alpha(i);
    eigenvecref(:,j) = eigenvec(:,i);
    j = j + 1;
  end
end
end