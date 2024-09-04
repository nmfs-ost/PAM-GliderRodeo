 
path_rodeo = 'C:\Users\Selene.Fregosi\Documents\GitHub\GliderRodeo\';

CONFIG = agate;

%% oahu only
CONFIG.map.latLim = [21 22];
CONFIG.map.lonLim = [-158.6 -157.4];

CONFIG.map.scalePos = [0.004 0.376]; % optional arguments for scale bar location 
                             % and ticks, leave empty '[]' for no scale bar
CONFIG.map.scaleMajor = [0:10:20];
CONFIG.map.scaleMinor = [0:2.5:5];
CONFIG.map.bathyFile =  'C:\Users\Selene.Fregosi\Documents\GIS\etopo\ETOPO2022_ice_15arcsec_MHI_NWHI.tiff';

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

%% mhi
CONFIG.map.latLim = [18.6 22.75];
CONFIG.map.lonLim = [-160.0 -154.25];

CONFIG.map.scalePos = [-0.042 0.333]; % optional arguments for scale bar location 
                             % and ticks, leave empty '[]' for no scale bar
CONFIG.map.scaleMajor = [0:50:100];
CONFIG.map.scaleMinor = [0:12.5:25];

% CONFIG.map.bathyFile =  'C:\Users\Selene.Fregosi\Documents\GIS\etopo\ETOPO2022_ice_15arcsec_MHI_NWHI.tiff';
CONFIG.map.bathyFile = 'C:\Users\Selene.Fregosi\Documents\GIS\etopo\ETOPO2022_v1_60s_N90W180_surface.tif';
figNum = 28;
bathyOn = 1; contourOn = 0;
[baseFig] = createBasemap(CONFIG, bathyOn, contourOn, figNum);

scatterm(21.36, -157.96, 200, 'white', 'p', 'filled', 'MarkerEdgeColor', 'black')
textm(21.2, -158.5, 'PIFSC', 'Color', 'black', 'FontSize', 16, ...
	'FontWeight','Bold');

exportgraphics(gca, fullfile(path_rodeo, 'content', 'figs', 'rodeo_poster_map_MHI.png'), ...
	'Resolution', 2400);

%% West Coast

CONFIG.map.bathyFile = 'C:\Users\Selene.Fregosi\Documents\GIS\etopo\ETOPO2022_v1_60s_N90W180_surface.tif';
CONFIG.map.latLim = [32.3 46];
CONFIG.map.lonLim = [-128 -115.5];

CONFIG.map.scalePos = [-0.08 0.605]; % optional arguments for scale bar location 
                             % and ticks, leave empty '[]' for no scale bar
CONFIG.map.scaleMajor = [0:150:300];
CONFIG.map.scaleMinor = [0:25:50];
% CONFIG.map = rmfield(CONFIG.map, 'naLat');
% CONFIG.map = rmfield(CONFIG.map, 'naLon');

figNum = 30;
bathyOn = 1; contourOn = 0;
[baseFig] = createBasemap(CONFIG, bathyOn, contourOn, figNum);

neLandFile = 'C:\Users\Selene.Fregosi\Documents\GIS\NaturalEarthData\natural-earth-vector-5.1.2\10m_physical\ne_10m_land_scale_rank.shp';
land = shaperead(neLandFile, 'UseGeoCoords', true, ...
	'BoundingBox', [CONFIG.map.lonLim' CONFIG.map.latLim']);
geoshow(land, 'FaceColor', [0 0 0], 'EdgeColor', 'k');
neStatesFile = ['C:\Users\Selene.Fregosi\Documents\GIS\NaturalEarthData\', ...
	'natural-earth-vector-5.1.2\10m_cultural\ne_10m_admin_1_states_provinces.shp'];
states = shaperead(neStatesFile, 'UseGeoCoords', true, ...
	'BoundingBox', [CONFIG.map.lonLim' CONFIG.map.latLim']);
geoshow(states, 'DisplayType', 'line', 'EdgeColor', 'white', 'FaceColor', 'black');


gridm('PLineLocation', 2, 'MLineLocation', 2);
plabel('PLabelLocation', 2, 'PLabelRound', 0, 'FontSize', 14);
mlabel('MLabelLocation', 4, 'MLabelRound', 0, ...
	'MLabelParallel', 'south', 'FontSize', 14);

scatterm(32.8, -117.2, 200, 'white', 'p', 'filled', 'MarkerEdgeColor', 'black')
textm(32.8, -119.6, 'SWFSC', 'Color', 'black', 'FontSize', 16, ...
	'FontWeight','Bold');

scatterm(44.6, -124.0, 200, 'white', 'p', 'filled', 'MarkerEdgeColor', 'black')
textm(44.3, -123.6, sprintf('Oregon State\nUniversity'), 'Color', 'white', 'FontSize', 16, ...
	'FontWeight','Bold');

scatterm(37.8, -122.45, 200, 'white', 'p', 'filled', 'MarkerEdgeColor', 'black')
textm(37.8, -122.2, 'San Francisco', 'Color', 'white', 'FontSize', 16, ...
	'FontWeight','Bold');

exportgraphics(gca, fullfile(path_rodeo, 'content', 'figs', 'rodeo_poster_map_WestCoast.png'), ...
	'Resolution', 2400);



%% SCB 

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

