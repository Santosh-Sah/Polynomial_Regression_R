source("PolynomialRegressionUtils.R")

#reading simple linear regression model
simpleLinearRegressionModel = readRDS("simpleLinearRegressionModel.RDS")

#reading polynomial regression modesl
polynomialRegressionModel = readRDS("polynomialRegressionModel.RDS")


inputValueForLinearRegression <- data.frame(Level = 6.5)

#predicting testing set result.
predictedValuesForLinearRegression = predict(simpleLinearRegressionModel, newdata = inputValueForLinearRegression)

predictedValuesForLinearRegression #330378.8


inputValueForPolynomialRegression <- data.frame(Level = 6.5,
                                                Level2 = 6.5^2,
                                                Level3 = 6.5^3,
                                                Level4 = 6.5^4)

#predicting testing set result.
predictedValuesForPolynomialRegression = predict(polynomialRegressionModel, newdata = inputValueForPolynomialRegression)

predictedValuesForPolynomialRegression #158862.5

