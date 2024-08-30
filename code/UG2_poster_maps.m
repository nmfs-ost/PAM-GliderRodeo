 
path_rodeo = 'C:\Users\Selene.Fregosi\Documents\GitHub\GliderRodeo\';

CONFIG = agate;

%%
CONFIG.map.latLim = [21 22];
CONFIG.map.lonLim = [-158.6 -157.4];

CONFIG.map.scalePos = [0.004 0.376]; % optional arguments for scale bar location 
                             % and ticks, leave empty '[]' for no scale bar
CONFIG.map.scaleMajor = [0:10:20];
CONFIG.map.scaleMinor = [0:2.5:5];

figNum = 26;
bathyOn = 1; contourOn = 0;
[baseFig] = createBasemap(CONFIG, bathyOn, contourOn, figNum);

gridm('PLineLocation', 0.5, 'MLineLocation', 0.5);
plabel('PLabelLocation', 0.5, 'PLabelRound', -1, 'FontSize', 14);
mlabel('MLabelLocation', 0.5, 'MLabelRound', -1, ...
	'MLabelParallel', 'south', 'FontSize', 14);

textm(21.5, -158.1, 'OAHU', 'Color', 'white', 'FontSize', 16, ...
	'FontWeight','Bold');

exportgraphics(gca, fullfile(path_rodeo, 'content', 'figs', 'oahuMap.png'), ...
	'Resolution', 2400);
%%
figNum = 28;
CONFIG.map.latLim = [19.0 22.75];
CONFIG.map.lonLim = [-160.0 -154.25];

bathyOn = 1; contourOn = 0;
[baseFig] = createBasemap(CONFIG, bathyOn, contourOn, figNum);

%%

CONFIG.map.bathyFile =  'C:\Users\Selene.Fregosi\Documents\GIS\etopo\ETOPO2022_ice_60arcsec_SCB.tiff';
CONFIG.map.latLim = [32.3 34.8];
CONFIG.map.lonLim = [-121 -117];

CONFIG.map.scalePos = [-0.028 0.598]; % optional arguments for scale bar location 
                             % and ticks, leave empty '[]' for no scale bar
CONFIG.map.scaleMajor = [0:50:100];
CONFIG.map.scaleMinor = [0:10:20];

figNum = 30;
bathyOn = 1; contourOn = 0;
[baseFig] = createBasemap(CONFIG, bathyOn, contourOn, figNum);

% gridm('PLineLocation', 0.5, 'MLineLocation', 0.5);
% plabel('PLabelLocation', 0.5, 'PLabelRound', -1, 'FontSize', 14);
% mlabel('MLabelLocation', 0.5, 'MLabelRound', -1, ...
% 	'MLabelParallel', 'south', 'FontSize', 14);

textm(32.6, -118.1, 'San Diego', 'Color', 'black', 'FontSize', 16, ...
	'FontWeight','Bold');

exportgraphics(gca, fullfile(path_rodeo, 'content', 'figs', 'caMap.png'), ...
	'Resolution', 2400);

