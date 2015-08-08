function groupsFinal = KmeansExecution(K, X, numberOfExecutions)

#initial Phase

#X[2(features), N]
#centroids[2(features), k]
#groups[N]
#errorValues=zeros(numberOfExecutions) ;

for execution=1:numberOfExecutions
execution
	for i= 1:K
		centroids(:,i)=X(:, randi([1,30])) ;
	end 
if(centroids(:,1)==centroids(:,2))
	continue ; 
endif
centroids 
	counter = 1 ;

	#Looping Phase 
	while(counter)
	
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



