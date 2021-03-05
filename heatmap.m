% Creates a heatmap from files you create in make_files.m
% You should have atm 2 files, one .mat with your data and column names. 
% Want to make this a loop in which you can create n amount of heatmaps instead of having to run it 
% in single moments.

clear;
close all
clc %% clear command window


save_folder = uigetdir('' , 'Select folder to save data'); % Selects save folder
cd(save_folder)

uiwait(msgbox('Select data for heat map','modal')); % Selects heat map data
file_nm = uigetfile();
load(file_nm)

uiwait(msgbox('Select file with column names for heat map','modal')); %Selects column names
column_names = uigetfile();
load(column_names)
table = cell2mat(struct2cell(imported_data));
xnames = struct2cell(imported_data2);


dlg_ans  = inputdlg({'What is your graph title?','What is your x-axis representing?', 'What is your y-axis representing?'});
yvalues = {'1','2','3','4','5','6','7','8','9','10','11','12','13','14'};
xvalues = xnames{1,1};
map = heatmap(xvalues, yvalues, table);
map.Title = dlg_ans(1,1);
map.XLabel = dlg_ans(2,1);
map.YLabel = dlg_ans(3,1);
map.Colormap = summer; % https://www.mathworks.com/help/matlab/ref/colormap.html
