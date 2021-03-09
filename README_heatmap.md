# heatmap
Creating .mat files containing the results. 
    First, create a folder where you want to save the files. Use make_files.m to create the variable files for use of heat_map.m. For heat_map to use the variable file when selecting data from a spreadsheet have both textdata and data selected. No need to create separate arrays for each one. 

To allow heat_map to work when selecting your data from a spreadsheet do not worry about how numbers are placed as long as they are in the order you would want them to be displayed and have only data points you want to use. For row and column names, do not worry about trying to shift names, keep each label aligned with each row and column. The cell, 1,1 or 1,A, will be excluded when pulling the names.

Once variable files are made, use heat_map script to create the heatmap. Prompts will appear to indicate what you are selecting for. Once selected, a dialog box will appear to allow you to enter axis labels as well as a title. The last line of code in heat_map script is what determine the color, the link to the color schemes are commented, change the name after the "=" to change the color scheme to your liking.
