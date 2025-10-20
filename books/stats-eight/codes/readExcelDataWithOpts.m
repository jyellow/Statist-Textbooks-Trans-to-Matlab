function data = readExcelDataWithOpts(fileName, readOpts)

data = readtable(fileName, readOpts, "UseExcel", false);

end