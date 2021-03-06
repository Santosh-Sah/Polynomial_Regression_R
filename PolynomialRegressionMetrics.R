source("PolynomialRegressionUtils.R")

#reading simple linear regression model
simpleLinearRegressionModel = readRDS("simpleLinearRegressionModel.RDS")

summary(simpleLinearRegressionModel)

# Call:
#   lm(formula = Salary ~ ., data = polynomialRegressionDataset)
# 
# Residuals:
#   Min      1Q  Median      3Q     Max
# -170818 -129720  -40379   65856  386545
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)
# (Intercept)  -195333     124790  -1.565  0.15615
# Level          80879      20112   4.021  0.00383 **
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 182700 on 8 degrees of freedom
# Multiple R-squared:  0.669,     Adjusted R-squared:  0.6277
# F-statistic: 16.17 on 1 and 8 DF,  p-value: 0.003833

#reading polynomial regression modesl
polynomialRegressionModel = readRDS("polynomialRegressionModel.RDS")

summary(polynomialRegressionModel)

# Call:
#   lm(formula = Salary ~ ., data = polynomialRegressionDataset)
# 
# Residuals:
#   1      2      3      4      5      6      7      8      9     10
# -8357  18240   1358 -14633 -11725   6725  15997  10006 -28695  11084
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)
# (Intercept)  184166.7    67768.0   2.718  0.04189 *
#   Level       -211002.3    76382.2  -2.762  0.03972 *
#   Level2        94765.4    26454.2   3.582  0.01584 *
#   Level3       -15463.3     3535.0  -4.374  0.00719 **
#   Level4          890.2      159.8   5.570  0.00257 **
#   ---
#   Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
# 
# Residual standard error: 20510 on 5 degrees of freedom
# Multiple R-squared:  0.9974,    Adjusted R-squared:  0.9953
# F-statistic: 478.1 on 4 and 5 DF,  p-value: 1.213e-06

