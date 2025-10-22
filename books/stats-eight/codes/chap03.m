% 导入第三章相关的Excel数据
%% 读取「开篇案例.xlsx」文件的数据
clc; clear; close;
opts = spreadsheetImportOptions("NumVariables", 2);
opts.Sheet = "Sheet1";
opts.DataRange = "A2:B17";
% 指定列名称和类型
opts.VariableNames = ["Reason", "DecValue"];
opts.VariableTypes = ["string", "double"];
% 指定变量属性
opts = setvaropts(opts, "Reason", "WhitespaceRule", "preserve");
opts = setvaropts(opts, "Reason", "EmptyFieldRule", "auto");
excelFileName = '开篇案例.xlsx';

ExampleTable = readExcelDataWithOpts(excelFileName, opts);
% 清理临时变量
clear opts excelFileName

%% 例3.1.xlsx
opts = spreadsheetImportOptions("NumVariables", 5);

% 指定工作表和范围
opts.Sheet = "Sheet1";
opts.DataRange = "A2:E9";

% 指定列名称和类型
opts.VariableNames = ["name", "stat_score", "math_score", "eng_score", "eco_score"];
opts.VariableTypes = ["string", "double", "double", "double", "double"];

% 指定变量属性
opts = setvaropts(opts, "name", "WhitespaceRule", "preserve");
opts = setvaropts(opts, "name", "EmptyFieldRule", "auto");

% 导入数据
fileName = '例3.1.xlsx';
example_3_1_table = readExcelDataWithOpts(fileName, opts);

clear opts
%% 例3.2.xlsx
clear
opts = spreadsheetImportOptions("NumVariables", 2);

% 指定工作表和范围
opts.Sheet = "Sheet1";
opts.DataRange = "A2:B51";

% 指定列名称和类型
opts.VariableNames = ["sex", "catalog"];
opts.VariableTypes = ["categorical", "categorical"];

% 指定变量属性
opts = setvaropts(opts, ["sex", "catalog"], "EmptyFieldRule", "auto");

% 导入数据
fileName = "例3.2.xlsx";
example_3_2 = readExcelDataWithOpts(fileName, opts);

clear opts
%% 例3.3.xlsx
clear
opts = spreadsheetImportOptions("NumVariables", 1);
% 指定工作表和范围
opts.Sheet = "原始数据";
opts.DataRange = "A2:A121";
% 指定列名称和类型
opts.VariableNames = "value";
opts.VariableTypes = "double";
fileName = '例3.3.xlsx';
% 导入数据
example_3_3 = readExcelDataWithOpts(fileName, opts);

% 清除临时变量
clear opts
%% 例3.4.xlsx
opts = spreadsheetImportOptions("NumVariables", 5);
% 指定工作表和范围
opts.Sheet = "【例3—3】5个学院的英语分数数据";
opts.DataRange = "A2:E31";

% 指定列名称和类型
opts.VariableNames = ["eco", "law", "business", "sci", "stat"];
opts.VariableTypes = ["double", "double", "double", "double", "double"];

% 导入数据
fileName = "例3.4.xlsx";
example_3_4 = readExcelDataWithOpts(fileName, opts);
clear opts
%% 例3.5.xlsx
clear
% 指定工作表和范围
fileName = "例3.5.xlsx";
opts = spreadsheetImportOptions("NumVariables", 2);
opts.Sheet = "例3.5";
opts.DataRange = "A2:B41";
% 指定列名称和类型
opts.VariableNames = ["hights", "weights"];
opts.VariableTypes = ["double", "double"];

example_3_5 = readExcelDataWithOpts(fileName, opts);
clear opts
%% 例3.6.xlsx
clear
opts = spreadsheetImportOptions("NumVariables", 9);

% 指定工作表和范围
opts.Sheet = "例3.6";
opts.DataRange = "A2:I5";

% 指定列名称和类型
% 字段对映关系：
% factor1：地区
% value1：食品烟酒
% value2：衣着
% value3：居住
% value4：生活用品及服务
% value5：交通通信
% value6：教育文化娱乐
% value7：医疗保健
% value8：其他用品及服务
opts.VariableNames = ["factor1", "value1", "value2", "value3", "value4", "value5", "value6", "value7", "value8"];
opts.VariableTypes = ["categorical", "double", "double", "double", "double", "double", "double", "double", "double"];
% 指定变量属性
opts = setvaropts(opts, "factor1", "EmptyFieldRule", "auto");
% 导入数据
example_3_6 = readExcelDataWithOpts("例3.6.xlsx", opts);
% 清除临时变量
clear opts
%% 习题3.1.xlsx
opts = spreadsheetImportOptions("NumVariables", 1);

% 指定工作表和范围
opts.Sheet = "Sheet1";
opts.DataRange = "A2:A101";

% 指定列名称和类型
opts.VariableNames = "lavel";
opts.VariableTypes = "categorical";

% 指定变量属性
opts = setvaropts(opts, "lavel", "EmptyFieldRule", "auto");
fileName = '习题3.1.xlsx';
% 导入数据
problem__3_1 = readExcelDataWithOpts(fileName, opts);

% 清除临时变量
clear opts
%% 习题3.2.xlsx
clear
opts = spreadsheetImportOptions("NumVariables", 1);

% 指定工作表和范围
opts.Sheet = "Sheet1";
opts.DataRange = "A2:A101";

% 指定列名称和类型
opts.VariableNames = "value";
opts.VariableTypes = "double";

% 导入数据
problem_3_2 = readExcelDataWithOpts("习题3.2.xlsx", opts);

clear opts
%% 习题3.3.xlsx
clear
opts = spreadsheetImportOptions("NumVariables", 1);

% 指定工作表和范围
opts.Sheet = "Sheet1";
opts.DataRange = "A2:A101";

% 指定列名称和类型
opts.VariableNames = "weights";
opts.VariableTypes = "double";

% 导入数据
problem_3_3 = readExcelDataWithOpts("习题3.3.xlsx", opts);

clear opts
%% 习题3.4.xlsx
clear
opts = spreadsheetImportOptions("NumVariables", 2);
% 指定工作表和范围
opts.Sheet = "Sheet1";
opts.DataRange = "A2:B7";

% 指定列名称和类型
opts.VariableNames = ["x", "y"];
opts.VariableTypes = ["double", "double"];

% 导入数据
problem_3_4 = readExcelDataWithOpts("习题3.4.xlsx", opts);

% 清除临时变量
clear opts
%% 习题3.5.xlsx
clear
opts = spreadsheetImportOptions("NumVariables", 3);
% 指定工作表和范围
opts.Sheet = "Sheet1";
opts.DataRange = "A3:C7";

% 指定列名称和类型
opts.VariableNames = ["score_type", "number", "value"];
opts.VariableTypes = ["categorical", "double", "double"];

% 指定变量属性
opts = setvaropts(opts, "score_type", "EmptyFieldRule", "auto");

% 导入数据
problem_3_5 = readExcelDataWithOpts("习题3.5.xlsx", opts);

% 清除临时变量
clear opts

%% 习题3.6.xlsx
clear
opts = spreadsheetImportOptions("NumVariables", 11);
% 指定工作表和范围
opts.Sheet = "Sheet1";
opts.DataRange = "A2:K13";
% 指定列名称和类型
opts.VariableNames = ["month", "BJ", "CH", "NJ", "ZZ", "WH", "GZ", "CD", "KM", "LZ", "XA"];
opts.VariableTypes = ["categorical", "double", "double", "double", "double", "double", "double", "double", "double", "double", "double"];
% 指定变量属性
opts = setvaropts(opts, "month", "EmptyFieldRule", "auto");
% 导入数据
problem_3_6 = readExcelDataWithOpts("习题3.6.xlsx", opts);
% 清除临时变量
clear opts
