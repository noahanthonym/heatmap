% heatmap you want to create.

clear;
close all
clc %% clear command window

%save_folder = uigetdir('' , 'Select folder to save data');
%[import_file , import_path] = uigetfile('*.*' , 'Select file to import data');
%cd(import_path) 
%file_nm = inputdlg('Enter the file name you want to use for the data'); %% takes input of name for array and assigned it dlg_nm
%file_nm = char(file_nm); %% turns dlg_nm into a text scalar
%imported_data = uiimport(import_file); 
%cd(save_folder)
%save(file_nm, 'imported_data');
%cd(import_path)

%cd(save_folder)

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
map.Colormap = flag; % https://www.mathworks.com/help/matlab/ref/colormap.html
