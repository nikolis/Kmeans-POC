function Y = Edistance(X, centroids, K)
#INPUT X[2,30]	centroids[2, K]
#RETURNS Y[30,k] 


for i= 1:30
	for j= 1: K
		Y(i, j) = sqrt((X(1,i)-centroids(1,j)) ^2 + (X(2,i)-centroids(2,j)) ^2) ;
	endfor 
endfor 


endfunction  

#distance = sqrt( ( (x-a)^2) + ( (y - b)^2) ) ;
