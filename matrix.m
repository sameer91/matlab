mat = magic(3);

row = sum(mat,2);
col = sum(mat);
last = sum(row);

row = cat(1,row,last);
mat = cat(1,mat,col);
mat = cat(2,mat,row);
mat