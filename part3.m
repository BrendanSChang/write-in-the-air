function [powers] = part3(h,t,macs)
channel_ratio =h(:,1)./h(:,2);

R = 0.208;
lambda = (3*10^8)/(5.5*(10^9)); 
return_size = 121;

omega = 360/12.25; 
start = t(1);
phis = mod(((t-start)./1000).*omega,360); 

theta = transpose(linspace(-180,180,return_size));

powers = zeros(return_size,1);

for i=1:return_size
    e_part = exp(-1j*2*pi*R*cosd(phis - theta(i))./lambda);
    powers(i) = abs(transpose(channel_ratio)*e_part)^2;
end

plot(theta, powers);
end