source("PolynomialRegressionUtils.R")
library(ggplot2)

polynomialRegressionDataset = importPolynomialRegressionDataset("Polynomial_Regression_R_Position_Salaries.csv")

#creating new varibale Leve2, 3, and 4
polynomialRegressionDataset$Level2 = polynomialRegressionDataset$Level^2
polynomialRegressionDataset$Level3 = polynomialRegressionDataset$Level^3
polynomialRegressionDataset$Level4 = polynomialRegressionDataset$Level^4

  
#reading PolynomialRegression model
polynomialRegressionModel = readRDS("polynomialRegressionModel.RDS")

#reading simple linear regression
simpleLinearRegressionModel = readRDS("simpleLinearRegressionModel.RDS")

#visualizing linear regression result result
visualisingLinearRegressiontResult <- function(polynomialRegressionDataset, simpleLinearRegressionModel){
  
  ggplot() +
    geom_point(aes(x = polynomialRegressionDataset$Level, y = polynomialRegressionDataset$Salary),
               colour = "red") + 
    geom_line(aes(x = polynomialRegressionDataset$Level, predict(simpleLinearRegressionModel, 
                                                                               newdata = polynomialRegressionDataset)),
              color = "blue") +
    ggtitle('Truth or Bluff (Linear Regression)') +
    xlab('Level') +
    ylab('Salary')
  
  ggsave("simpleLineraRegressionResult.png")
  
}

#visualizing polynomial regression result result
visualisingPolynomialRegressionResult <- function(polynomialRegressionDataset, polynomialRegressionModel){
  
  ggplot() +
    geom_point(aes(x = polynomialRegressionDataset$Level, y = polynomialRegressionDataset$Salary),
               colour = "red") + 
    geom_line(aes(x = polynomialRegressionDataset$Level, predict(polynomialRegressionModel, 
                                                                 newdata = polynomialRegressionDataset)),
              color = "blue") +
    ggtitle('Truth or Bluff (Linear Regression)') +
    xlab('Level') +
    ylab('Salary')
  
  ggsave("polynomialRegressionResult.png")
  
}

#visualizing polynomial regression result for higher resolution and smother curve
visualisingPolynomialRegressionResultForHigherResolution <- function(polynomialRegressionDataset, polynomialRegressionModel){
  
  x_grid = seq(min(polynomialRegressionDataset$Level), max(polynomialRegressionDataset$Level), 0.1)
  ggplot() +
    geom_point(aes(x = polynomialRegressionDataset$Level, y = polynomialRegressionDataset$Salary),
               colour = 'red') +
    geom_line(aes(x = x_grid, y = predict(polynomialRegressionModel,
                                          newdata = data.frame(Level = x_grid,
                                                               Level2 = x_grid^2,
                                                               Level3 = x_grid^3,
                                                               Level4 = x_grid^4))),
              colour = 'blue') +
    ggtitle('Truth or Bluff (Polynomial Regression)') +
    xlab('Level') +
    ylab('Salary')
  
  
  ggsave("polynomialRegressionResultForHigherResolution.png")
  
}

#visualisingLinearRegressiontResult(polynomialRegressionDataset, simpleLinearRegressionModel)
#visualisingPolynomialRegressionResult(polynomialRegressionDataset, polynomialRegressionModel)
visualisingPolynomialRegressionResultForHigherResolution(polynomialRegressionDataset, polynomialRegressionModel)