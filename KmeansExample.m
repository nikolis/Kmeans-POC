function KmeansExample()

X=rand(2,30);

error=KmeansExecution(2, X, 100);

met=1; 
met2=1 ; 
for i=1:30
	if(error(i)==1)
		group1(:,met)=X(:, met);
		met++ ; 
	else
		group2(:,met)=X(:, met2)
		met2++ ; 
endif
endfor


plot(group1(1,:), group1(2,:), "r*",group2(1,:),group2(2,:),"ob")

endfunction 	