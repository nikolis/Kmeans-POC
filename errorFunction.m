function errorValue=errorFunction(groups, Y)
errorValue=0 ;


for i=1:size(Y,2)
	errorValue =errorValue +  Y(i, groups(i));
endfor 

endfunction
