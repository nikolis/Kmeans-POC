function centroids=reComputeCentroids(X, groups, K)
#X[2, 30] groups[30]
	for i= 1:K
		a=0 ;
		b=0 ; 		
		points=0 ; 		
		for j=1:size(X,2)
			if(groups(j)==i)
				a=a+X(1, j) ;
				b=b+X(2, j) ;
				points=points+1 ;
			endif
		endfor
		centroids(1, i)=a/points ; 
		centroids(2, i)=b/points ; 
	endfor
endfunction
