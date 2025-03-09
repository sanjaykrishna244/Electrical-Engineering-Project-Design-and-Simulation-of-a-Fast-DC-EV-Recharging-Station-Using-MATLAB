%% For Comprehensive Research Support, Including Codes, Scripts, Simulink Models,
%% Documentation, Assignments, Presentations, and Continuous Online Mentorship with
%% (UG/PG/PhD) Throughout Your Research Journey:
%% Confidentiality of your project is guaranteed, ensuring your work remains secure and private.
%% Contact:     SACHIN S. WAGH                Email:             ssw.aws.official@gmail.com
%% Phone:        (+91) 9403423640                Time Zone:     India
%% With over 20 years of expertise in Electrical Power Systems Engineering, I specialize in 
%% advanced applications of industry-standard software such as MATLAB, ETAP, and PSCAD. 
%% I offer personalized mentorship and guidance to help you excel in your research projects, 
%% ensuring you receive the highest quality of support, from conceptualization to final documentation.

%% PROJECT CODE: ELECTRIC VEHICLE STATION DESIGN (V2G and G2V)
% Reference:
% V. Castiglia, P. Livreri, R. Miceli, F. Ricco Galluzzo, G. Santelia and G. Schettino, 
% “Design and simulation of a fast DC recharging station for EV,” 
% 6th International Conference on Renewable Energy Research and Applications (ICRERA-2017), 
% San Diego, CA, USA, Nov 2017, pp. 1198-1203.
%_____________________________________________________________________

clc
clear
close all

% Input Parameters
Vn = input ('Enter the value of nominal voltage of the battery (V) = ')
Vnmax = input ('Enter the value of open circuit voltage of the battery (V) = ')
Vnmin = input ('Enter the value of cut out voltage of the battery (V) = ')
Ri = input ('Enter the value of internal resistance of the battery (Ohms) = ')
Kload = input ('Enter the value of overload factor to cover overcharge during transients = ')
cosphi = input ('Enter the value of power factor = ')
nr = input ('Enter the value of number of recharging nodes = ')
Imax = input ('Enter the value of EV maximum recharging current (A) = ')
delI = input ('Enter the value of % ripple in the maximum current = ')
fs = input ('Enter the value of samping frequency = ')
VDC = input ('Enter the value of DC bus voltage (V) = ')
fgrid   = input ('Enter the value of supply frequency in Hz = ')
varVDC = input ('Enter the range of variation of nominal DC bus voltage during transients in % of VDC = ')
Vnbt = input ('Enter the value of line to line rms Secondary Voltage (V) of Transformer = ')
ma = input ('Enter the value of inverter modulation index (Vnmin/Vnmax) = ')
RAF = input ('Enter the value of Ripple Attenuation Factor = ')
THD = input ('Enter the value of Total Harmonic Distortion = ')

disp('Design Calculations')
disp('For complete code contact details are provided at the start of the script')

% Results
Vmax = 400
PEV = 80000
A = 1.8526e+05
L = 0.0017
Cbat = 1.1111e-04
Cdc = 0.0451
Cf = 1.9894e-04
disp('It should be less than or equal to this calculated value')
Cf = 2.0000e-04
Linv = 4.8555e-04
Lgrid = 6.8144e-04
fres_calculated = 668.3553
disp('It should be verified that resonance frequency should be in the range of less than half of the fsw and 10 times bigger than the grid frequency')
fres = 669
Rd = 0.3965
