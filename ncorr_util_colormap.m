function ncorr_util_colormap(handle_fig)
% This function adjusts the colormap correctly. This was taken from some
% matlab code.
%
% Inputs -----------------------------------------------------------------%
%   handle_fig - handle; handle of the figure;
%
% Outputs ----------------------------------------------------------------%
%   none;

    m = size(get(handle_fig,'colormap'),1);
    n = ceil(m/4);
    u = [(1:1:n)/n ones(1,n-1) (n:-1:1)/n]';
    g = ceil(n/2) - (mod(m,4)==1) + (1:length(u))';
    r = g + n;
    b = g - n;
    g(g>m) = [];
    r(r>m) = [];
    b(b<1) = [];
    J = zeros(m,3);
    J(r,1) = u(1:length(r));
    J(g,2) = u(1:length(g));
    J(b,3) = u(end-length(b)+1:end);
%     J=rgb2hsv(J);
    set(handle_fig,'Colormap',J); 
%     colormap hsv;freezeColors
end

