# MechaCar_Statistical_Analysis-

## Linear Regression to Predict MPG

![multi_lin_regress.PNG](resources/multi_lin_regress.PNG)


![summary_mutli_lin_regress.PNG](resources/summary_mutli_lin_regress.PNG)

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

Vehicle Length, Ground Clearance and the Intercept value

**Is the slope of the linear model considered to be zero? Why or why not?**

Our slope of the linear model would not be considered zero because the p-value of our linear regression analysis in 5.35 x 10^-11 which is much smaller than our assumed significance level of 0.05.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

No, this linear model does not predict the mpg of the MechaCar prototypes because of our intercept p-value (5.08 x 10^-8) being much smaller than our significance level (0.05). Due to it being statistically significant, there must be other factors affecting the mpg that are not included in this dataset.


## Summary Statistics on Suspension Coils

![total_summary.PNG](resources/total_summary.PNG)

**The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

Based on the total summary, the total variance of 62.29 does not exceed 100 pounds per square inch which would fall under the design specifications.

![lot_summary.PNG](resources/lot_summary.PNG)

However, while lot 1 and lot 2 have PSI variances that fall under 100 pounds per square inch, lot 3 has a variance of 170.29 meaning that this lot in particular is not as consistent with the manufacturing process as lot 1 and lot 2. 


## T-Tests on Suspension Coils

![lot_1_ttest.PNG](resources/lot_1_ttest.PNG) ![lot_2_ttest.PNG](resources/lot_2_ttest.PNG) 

Based on the t.tests run on each lot. We can see that Lots 1 and 2 have p-values that are much lower than our significance level of 0.05. With significantly low p-values, we have reason to reject our null hypothesis and assume that both lots are statistically different than the population mean PSI of 1500.

![lot_3_ttest.PNG](resources/lot_3_ttest.PNG)

Lot 3’s t-test turned out different with a p-value of 0.1549. This value is greater than 0.05 meaning we would fail to reject the null hypothesis and assume there is no statistical difference between Lot 3 and the population mean PSI of 1500


## Study Design: MechaCar vs Competition.

If I were to compare the MechaCar to the competition, I would design a study based on these elements: 

**What metric or metrics are you going to test?**

Maintenance cost to Satisfaction Rating 

**What is the null hypothesis or alternative hypothesis?**

**Null Hypothesis**: Maintenance Cost does not affect the Satisfaction Rating of the vehicle. The statistical difference between the two is random chance.

**Alternative Hypothesis**: Maintenance Cost does affect the Satisfaction Rating of the vehicle. The statistical difference between the two is not random chance.

**What statistical test would you use to test the hypothesis? And why?**

Simple Linear Regression so we can predict our satisfaction rating based on the values from our Maintenance Cost.

**What data is needed to run the statistical test?**

Categorical Ordinal data for the Satisfaction Rating and Numeric Continuous Data for the Maintenance Cost. We would have to transform the Ordinal data into Numeric so that we can run the linear regression. We can develop a scale for the ratings from 1 to 5 to see where consumers would rate their satisfaction of the product. We should keep track of the data from when the MechaCar is fully released to the public.
