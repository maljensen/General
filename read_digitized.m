%Open file that has been digitized and separate into two vectors
function [x,y] = read_digitized(filename)

fid = fopen(filename);
data = textscan(fid,'%f'); 
data = data{1}; 
fclose(fid); 
x = [];
y = [];
countw = 1;
countt = 1;

for i = 1:length(data)
    if mod(i,2)==0
        y(countt) = data(i);
        countt = countt+1;
    else
        x(countw) = data(i); 
        countw  = countw+1;
    end
end