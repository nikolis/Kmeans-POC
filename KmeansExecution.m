function groupsFinal = KmeansExecution(K, X, numberOfExecutions)

#initial Phase

#X[features, N]
#centroids[features, k]
#groups[N]
#errorValues=zeros(numberOfExecutions) ;

for execution=1:numberOfExecutions
	for i= 1:K
		centroidTemp = X(:, randi([1,30])) ;
		boolean=1 ; 		

		if (exist('centroids')==1)
			for j=1:i-1
				if(centroids(:,j)==centroidTemp)	
					boolean = 0;
				endif
			endfor
		endif 
		
		if(boolean==1)
			centroids(:,i)=centroidTemp;
		endif

	endfor 

	#Looping Phase 
	while(1)
		#Y[30,K]
		Y=Edistance(X, centroids, K) ;
		#groups[30]	
		groups=createGroups(Y);
		errorValues(execution) = errorFunction(groups, Y) ;	
		preiviousCent= centroids ;
		centroids=reComputeCentroids(X, groups, K)  ;#ERROR
		if(preiviousCent==centroids)
			break ;
		endif

	endwhile
groupsLasten(execution,:)=groups;
endfor


for i=i:numberOfExecutions
	minPosition = 0 ;
	minErrorValue = 99999999; 
	if(minErrorValue>= errorValues(i))
		minPosition=i ; 
		minErrorValue = errorValues(i) ; 
	endif
endfor


groupsFinal = groupsLasten(minPosition,:) ; 



