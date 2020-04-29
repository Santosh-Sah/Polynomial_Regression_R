source("PolynomialRegressionUtils.R")

#reading dataset
polynomialRegressionDataset = importPolynomialRegressionDataset("Polynomial_Regression_R_Position_Salaries.csv")
  
# Fitting simple linear regression dataset
simpleLinearRegression = lm(formula = Salary ~ ., data = polynomialRegressionDataset)

#saving linear regression model
saveSimpleLinearRegressionModel(simpleLinearRegression)

#creating new varibale Leve2, 3, and 4
polynomialRegressionDataset$Level2 = polynomialRegressionDataset$Level^2
polynomialRegressionDataset$Level3 = polynomialRegressionDataset$Level^3
polynomialRegressionDataset$Level4 = polynomialRegressionDataset$Level^4

#fitting polynomial regression to the dataset
polynomialRegression = lm(formula = Salary ~ ., data = polynomialRegressionDataset)

#saving lPolynomialRegression model
savePolynomialRegressionModel(polynomialRegression)
