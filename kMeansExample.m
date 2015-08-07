function kMeansExample(k)

#initial Phase
X=rand(2,30);

for i= 1:k
  centroids(:,i)=X(:, randi([1,30])) ;
end 
counter = 1 ;


#Looping Phase 
while(counter)
  counter=0 ; 

	#Y[k,30]
	Y=Edistance(x,centroids) ;
	#groups[30]	
	groups=createGroups(Y);
	centroids=reComputeCentroids(Y) ; 


	endfor	





endwhile




plot(X(1,:), X(2,:), "r*",centroids(1,:),centroids(2,:),"ob")
