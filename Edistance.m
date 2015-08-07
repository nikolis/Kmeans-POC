function Y = Edistance(x, centroids)
#INPUT X[2,30]	centroids[2, K]
#RETURNS Y[k,30]
K=size(centroids, 2)  


for i= 1:30
	for j= 1: K
		Y(i, j) = sqrt((X(1,i)-centroids(1,K)) ^2 + (X(2,i)-centroids(2,K)) ^2) ;
	endfor 
endfor 


endfunction  

#distance = sqrt( ( (x-a)^2) + ( (y - b)^2) ) ;
