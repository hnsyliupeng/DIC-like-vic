function ncorr_util_colormap_3(handle_fig)
% This function adjusts the colormap correctly. This was taken from some
% matlab code.
%
% Inputs -----------------------------------------------------------------%
%   handle_fig - handle; handle of the figure;
%
% Outputs ----------------------------------------------------------------%
%   none;

RGB=[0.1127         0    0.3515
     0.2350         0    0.6663
     0.3536         0    1.0000
     0.4255         0    1.0000
     0.4384         0    1.0000
     0.3888         0    1.0000
     0.2074         0    1.0000
          0         0    1.0000
          0    0.4124    1.0000
          0    0.6210    1.0000
          0    0.7573    0.8921
          0    0.8591    0.6681
          0    0.9642    0.4526
          0    1.0000    0.1603
          0    1.0000         0
          0    1.0000         0
          0    1.0000         0
          0    1.0000         0
     0.4673    1.0000         0
     0.8341    1.0000         0
     1.0000    0.9913         0
     1.0000    0.8680         0
     1.0000    0.7239         0
     1.0000    0.5506         0
     1.0000    0.3346         0
     1.0000         0         0
     1.0000         0         0
     1.0000         0         0
     1.0000         0         0
     0.9033         0         0
     0.7412         0         0
     0.5902         0         0];
Spectrum=interp1(linspace(1, 256, 32),RGB,[1:1:256]);
set(handle_fig,'Colormap',Spectrum);
%     colormap hsv;freezeColors
end
