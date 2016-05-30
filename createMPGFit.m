function [fitresult, gof] = createMPGFit(RatedHPCity, MPGCity)
%CREATEMPGFIT(RATEDHPCITY,MPGCITY)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : RatedHPCity
%      Y Output: MPGCity
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

% Auto-generated by MATLAB on 07-Jan-2015 17:25:53
% Copyright 2015 The MathWorks, Inc.

%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( RatedHPCity, MPGCity );

% Set up fittype and options.
ft = fittype( {'1', '1/x'}, 'independent', 'x', 'dependent', 'y', 'coefficients', {'a', 'b'} );

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft );

% Plot fit with data.
figure( 'Name', 'Fit' );
h = plot( fitresult, xData, yData );
legend( h, 'MPGCity vs. RatedHPCity', 'Fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel RatedHPCity
ylabel MPGCity
grid on

