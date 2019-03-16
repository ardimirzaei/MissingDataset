
set.seed(2019)

RandomNumbers <- function(x, UpperLimit){
	round(runif(x, 1, UpperLimit))
}


par(mfrow=c(1,2))
# Create Matrix with 100 rows and 100 columns
X <- matrix(rnorm(10000)*100, ncol=100,nrow=100)
image(X, main="Heat Map of Values") # if you wish to have a heat mao of how the data is spread

#X[ sample( nrow(X), 10 ), sample( ncol(X), 5) ] <- NA

for (y in RandomNumbers(10,nrow(X))){
	#X[y, round(runif(round(runif(1,1,10)),1, ncol(X)))] <- NA
	X[y, RandomNumbers(RandomNumbers(1,10),ncol(X))] <- NA
}
image(X, col=heat.colors(1)) # Only the spread of misisng vlaues


par(mfrow=c(1,1))

write.csv(X,"MCAR_Dataset.csv")