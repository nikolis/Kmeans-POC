function groups=createGroups(Y)

	for i=1:size(Y,2)
		minVal = 9999 ;
		minPosition=0 ; 	
		for j=1:size(Y,1)
			if(min>=Y(j,i))
				minVal=Y(j,i);
				minPosition=j;
			endif 
		endfor
		groups(i)=minPosition; 
	endfor 

endfunction
