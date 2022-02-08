# MechaCar_Statistical_Analysis

A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

    Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
    Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
    Run t-tests to determine if the manufacturing lots are statistically different from the mean population
    Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.


# Deliverable 1 
## Linear Regression to Predict MPG

-Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

![imagen](https://user-images.githubusercontent.com/21062253/150080471-a2c86b96-6aae-45cd-8b74-569b8d2f3c1e.png)

The vehicle length and ground_clarance (as well as intercept), because there are statistical evidence that they have a significant impact on the mpg

-Is the slope of the linear model considered to be zero? Why or why not?
No, because the p-value is 5.35e-11 so we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

-Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not? 
In some part, but it could be better, becuase only the 71% of the variability could be explained, so to have more certain of the variability it is neccessary to change the indepent variables that are not providing a non-random amount of variance as are AWD, vehicle weightand spoiler angle and/or transform them and then re-evaluate the coefficients and significance.

### Anova Test
![imagen](https://user-images.githubusercontent.com/21062253/150087890-83a05845-4866-4fad-80ab-8a63c4ead439.png)

The ANOVA Test confirm us that the variables with non-random amount of variance are vehicle length and ground_clarance, and with the shapiro test we could see that the are not strange data detected

# Deliverable 2
## Create Visualizations for the Trip Analysis
After testing the weight capacities of multiple suspension coils to determine if the manufacturing process is consistent across production lots it is necessary to check these results using the continuous variable PSI.

![Deliverable 2 summary](https://user-images.githubusercontent.com/21062253/152916722-696f1c46-351e-4b8d-ba77-74bc7c425cf3.png)

When we can see that the mean is near the median, so we can say thaht the data is normally distribuited, also the standar deviation is low so we can assume that de data is more reliable and probes that the data are clustered closely around the mean.

In addition, in general, it is necessary to show the results of the continuous variable PSI divided into each of the batches of the 3 batches according to their type of manufacture.

![Deliverable 2 lot_summary](https://user-images.githubusercontent.com/21062253/152917856-f40b08a1-2d3e-4549-8357-aad5587d1073.png)

Where we can see that the lot3 presents more disppersion in de data and is less reliable due to it has a high variance that indicates that the data points are very spread out from the mean.

# Deliverable 3
## T-Tests on Suspension Coils

to verify that the lot3 is the only one different from lot1 and lot2, and the only one that present variability in their data, it is necessary to made a T test to see if  all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

![Deliverable 3 T-Test](https://user-images.githubusercontent.com/21062253/152918645-b480deeb-8ebb-4fe1-b85e-d219c9fb5f3c.png)

Where we can see that the are not significant statistical evidence to reject Lot1 or Lot 2, but we can reject lot 3.

# Deliverable 4
## Design a Study Comparing the MechaCar to the Competition
### Diseño del estudio: MechaCar vs Competición

For business purposes, it is necessary to carry out a study on how the MechaCar performs against the competition, for this it is necessary to prove that MechaCar produces less product waste compared to the competition. 

1. What metric or metrics are you going to test?
Amount of flash produced per manufacturing lot
2. What is the null hypothesis or alternative hypothesis?
H0: MechaCar mean = Competition mean
Ha:MechaCar mean /= Competition mean
3. What statistical test would you use to test the hypothesis? And why?
T-Test, because it is used used to determine if there is a significant difference between the means of two groups
4. What data is needed to run the statistical test?
A small amount of burr produced per production lot

And if the result is different, we only have to see what mean is lower

