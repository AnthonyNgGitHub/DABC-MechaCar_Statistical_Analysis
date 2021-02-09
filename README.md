# DABC-MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

A Multiple Linear Regression has been performed to predict the MPG based on 5 factors: Vehicle Length, Vehicle Weight, Spoiler Angle, and Ground Clearance. Assuming a significance level of 0.05, the variables and coefficients that provided a non-random amount of variance to the MPG values are: Vehicle Length, Ground Clearance, and the intercept as their P-values are below 0.05. This would serve as our confirmation that the slope of these specifice variables are not considered to be zero as they have a statistically significant impact on the prediction of MPG.

This model may not be predicting the MPG of MechaCar prototypes effectively. While the r-squared value (coefficient of determination) is 0.70, which suggests that 70% of the variance in MPG can be explained by the model, the model is also missing some key variables due to the fact that the intercept is statistically significant. This implies that there are other factors contributing to the variation of MPG which are not included in this model.

<img src="images/D1_Multiple_Linear_Regression.PNG"></img>