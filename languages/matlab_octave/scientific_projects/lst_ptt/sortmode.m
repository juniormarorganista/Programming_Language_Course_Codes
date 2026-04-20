function[alpha,eigenvec] = sortmode(alpha,eigenvec)

[~,pos]  = sort(imag(alpha),'ascend');
alpha    = alpha(pos);
eigenvec = eigenvec(:,pos);

end