importPolynomialRegressionDataset <- function(polynomialRegressionDatasetFileName) {
  
  #importing dataset
  #dataset is very small and hence we are not going to split into training and testing set
  polynomialRegressionDataset = read.csv(polynomialRegressionDatasetFileName)
  
  polynomialRegressionDataset = polynomialRegressionDataset[2:3]
  
  return (polynomialRegressionDataset)
  
}

#Save PolynomialRegression Model
savePolynomialRegressionModel <- function(polynomialRegressionModel) {
  
  saveRDS(polynomialRegressionModel, file = "polynomialRegressionModel.RDS")
}

#Save SimpleLinearRegressionModel
saveSimpleLinearRegressionModel <- function(simpleLinearRegressionModel) {
  
  saveRDS(simpleLinearRegressionModel, file = "simpleLinearRegressionModel.RDS")
}
