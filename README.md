# DABC-MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

A Multiple Linear Regression has been performed to predict the MPG based on 5 factors: Vehicle Length, Vehicle Weight, Spoiler Angle, and Ground Clearance. Assuming a significance level of 0.05, the variables and coefficients that provided a non-random amount of variance to the MPG values are: Vehicle Length, Ground Clearance, and the intercept as their P-values are below 0.05. This would serve as our confirmation that the slope of these specifice variables are not considered to be zero as they have a statistically significant impact on the prediction of MPG.

This model may not be predicting the MPG of MechaCar prototypes effectively. While the r-squared value (coefficient of determination) is 0.70, which suggests that 70% of the variance in MPG can be explained by the model, the model is also missing some key variables due to the fact that the intercept is statistically significant. This implies that there are other factors contributing to the variation of MPG which are not included in this model.

<img src="images/D1_Multiple_Linear_Regression.PNG"></img>

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

<img src="images/D2_total_summary.PNG"></img>

<img src="images/D2_lot_summary.PNG"></img>



## T-Tests on Suspension Coils

Assuming a significance level of 0.05, the calculated P-value is above the significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis. The sample mean of 1,498.78 is statistically similar to the population mean of 1,500.
<img src="images/D3_t-test-on-all-lots.PNG"></img>

Assuming a significance level of 0.05, the calculated P-value for Lot 1, 2 and 3 are 1, 0.6072, and 0.04168, respectively. Therefore, the sample mean of Lot 1 (1,500.00) and Lot 2 (1,500.20) are statistically similar to the population mean of 1,500, whereas the sample mean of Lot 3 (1,496.14) is statistically different than the population mean of 1,500.

<img src="images/D3_t-test-on-each-lot.PNG"></img>

## Study Design: MechaCar vs Competition

