%% 导入电子表格中的数据
% 用于从以下电子表格导入数据的脚本:
%
%
% 由 MATLAB 于 2025-10-20 10:22:34 自动生成

% 相关案例：
% openExample('matlab/DefineImportOptionsForVariablesInDetlimitedTextFileExample')

% 下面的代码由Matlab数据导入面板自动生成的脚本代码

%% 设置导入选项并导入数据

clc; clear; close;
% 设置读取两个数据集中的两列数据
opts = spreadsheetImportOptions("NumVariables", 2);

% 指定工作表和范围
opts.Sheet = "Sheet1";
opts.DataRange = "A2:B17";

% 指定列名称和类型
opts.VariableNames = ["Reason", "DecValue"];
opts.VariableTypes = ["string", "double"];

% 指定变量属性
opts = setvaropts(opts, "Reason", "WhitespaceRule", "preserve");
opts = setvaropts(opts, "Reason", "EmptyFieldRule", "auto");

% 导入数据
% ExampleTable = readtable("开篇案例.xlsx", opts, "UseExcel", false);
fileName = "开篇案例.xlsx";
% 使用封装后的函数
ExampleTable = readExcelDataWithOpts(fileName, opts);

%% 清除临时变量
clear opts;
