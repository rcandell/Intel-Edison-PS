function Trace0 = importOscopeCSV(filename)
%% Import data from text file.
% Script for importing data from the following text file:
%
%    C:\Users\sensor\Documents\Keysight\BenchVue\Oscilloscope\Exports\Trace 0.csv
%
% To extend the code to different selected data or a different text file,
% generate a function instead of a script.

% Auto-generated by MATLAB on 2017/07/12 15:42:25

%% Initialize variables.
if nargin < 1
    filename = 'C:\Users\sensor\Documents\Node.jsTesting\Intel-Edison-PS\Tests\Modes\b-g\line of sight\Test 4\Test_4.csv';
end
delimiter = ',';
startRow = 2;

%% Format for each line of text:
%   column1: double (%f)
%	column2: double (%f)
%   column3: double (%f)
%	column4: double (%f)
%   column5: double (%f)
%	column6: double (%f)
%   column7: double (%f)
%	column8: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%f%f%f%f%f%f%f%*s%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r','n','UTF-8');
% Skip the BOM (Byte Order Mark).
fseek(fileID, 3, 'bof');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, 'Delimiter', delimiter, 'TextType', 'string', 'EmptyValue', NaN, 'HeaderLines' ,startRow-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Create output variable
Trace0 = [dataArray{1:end-1}];
%% Clear temporary variables
%clearvars filename delimiter startRow formatSpec fileID dataArray ans;


end