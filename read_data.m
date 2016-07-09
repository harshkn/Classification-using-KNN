function data = read_data(fname)
fid =fopen(fname,'r'); 
d = textscan(fid,'%s %s %s %s %s');
for row = 2:numel(d{1})
    for col = 1:numel(d)
        temp = d{col};
        data(row-1, col) = str2double(cell2mat(temp(row)));
    end
end