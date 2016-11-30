function ncorr_util_colormap_2(handle_fig)
% This function adjusts the colormap correctly. This was taken from some
% matlab code.
%
% Inputs -----------------------------------------------------------------%
%   handle_fig - handle; handle of the figure;
%
% Outputs ----------------------------------------------------------------%
%   none;

m = size(get(handle_fig,'colormap'),1);

h = (0:m-1)'/max(m,1);
if isempty(h)
    map = [];
else
    map = hsv2rgb([h h ones(m,1)]);
end
% J=rgb2hsv(J);
set(handle_fig,'Colormap',map);
%     colormap hsv;freezeColors
end

