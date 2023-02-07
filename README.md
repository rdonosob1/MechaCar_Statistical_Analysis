# MechaCar_Statistical_Analysis
## Project Overview
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. the aim of this project consists in reviewing the production data for insights that may help the manufacturing team.
Using the knowledge of R learned in this module, the idea is to design a statistical study to compare performance of the MechaCar vehicles against performance of vehicles from other manufacturers.


The expected results from this project are detailed below:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

### Linear Regression to Predict MPG

The vehicle length and the ground_clearance variables have a higher level of significance than the P-value which is very low, because the linear regression shows that some of the independent variables had a significant effect on the dependent variable. Therefore, we can argue that the slope is not zero and the null hypothesis should be rejected. In other words, the model needs to be considered effective. (Picture below illustrates this argument)

![Image](https://github.com/rdonosob1/MechaCar_Statistical_Analysis/blob/main/Resources/Linear%20regression.png)

### Summary Statistics on Suspension Coils

In this section, we generated two summary tables (total_summary_suspension_coil_table and Lot_summary_suspension_coil_table) to analyze the mean, median, variance, and standard deviation of the data. MechaCars were divided into 3 different manufacturing lots. So, the first table we generated analyzed at the entire data altogether, while the second one is breaking the analysis down individually by every single lot. (Picture below illustrates this information)

![Image](https://github.com/rdonosob1/MechaCar_Statistical_Analysis/blob/main/Resources/Total_summary_suspension_coil_table.png)

![Image](https://github.com/rdonosob1/MechaCar_Statistical_Analysis/blob/main/Resources/Lot_summary_suspension_coil_table.png)

According to the MechaCar's design specifications, the variance of the suspension coils must not exceed 100 pounds per square inch. So, the current results show that the first two lots meet the design specification at a variance of approximately 0.98 PSI and 7.47 PSI respectively, while the third one doesn't which variance equals to 170.29. 


### T-Tests on Suspension Coils
The value of t-test statistic is -1.8931, while p-value is 0.06. The p-value is slightly above the assumed significance level. Therefore, we would state that there is not enough evidence to reject the null hypothesis and we can confirm the mean of the population and samples are not statistically different.

With these two values, we can assume that the alternative hypothesis is false, as it is stating "True mean is not equal to 1500".

In this section, the objective consisted in determining if all lots as a whole are statistically different from the population mean of 1,500 PSI. In addition to that, we need to determine if the 3 lots analyzed individually differ statistically from the mean of 1,500 PSI.  

After running all these tests, all four values obtained are the same. Therefore, we can assume that the alternative hypothesis is false.

![Image](https://github.com/rdonosob1/MechaCar_Statistical_Analysis/blob/main/Resources/T.tests.png)


### Comparison of MechaCar Vehicle Performance vs. Vehicles Performance from Other Manufacturers 

In this section, we need to compare the MechaCar performance vs the other competitors. Therefore, we need to answer the following questions: 

1) What metric or metrics are you going to test?
   - Mileage and fuel efficiencies in both in the city and in highways
2) What is the null hypothesis or alternative hypothesis?
   - Null Hypothesis states that all the cars within the same class have the same fuel efficiencies.
   - The Alternative Hypothesis on the other hand argues that they are not all the same.
3) What statistical test would you use to test the hypothesis? And why?
   - The statistical test that I would use to test the hypothesis is the ANOVA TEST, because it can illustrate if there exist variation among the distribution of the means from multiple samples. 
  
4) What data is needed to run the statistical test?

   - The data that is needed to run the statistical test, will be fuel efficiency data in city and in highways from both MechaCar and other manufacturers.
   - The characteristics of the information should be as follows:

    - The dependent variable is numerical and continuous, and it is considered to be normally distributed.
    - The independent variables needs to be categorical.
    - The variance among each group should be very similar.

