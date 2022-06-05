# Statistics & R

## Overview

### To perform linear regression, collect summary statistics, and run T-Tests to determine why production and manufacturing of prototype MechaCars has slowed; as well as to design additional studies concerning the MechaCar to gain insight into its financial viability.

## Deliverable One: Linear Regression to Predict MPG

### In the first part of our analysis we looked at the ‘MechaCar_mpg.csv’ file, which contains 50 prototype vehicles, while examining six different variables associated with said vehicles (vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, AWD, and mpg). Utilizing this dataset, we implemented RStudio’s linear regression and summary functions to determine what if any correlation these variables held in relation to a prototype’s fuel efficiency. 

* Which Variables/Coefficients Provide Non-Random Amounts of Variance to the Dataset’s MPG Values?

### In a Linear Regression Model such as this, for our P-value, our assumed significance would be 0.05%. So, when conducting this analysis if any variable showed a P-value lower than that are assumed significance, there would be reason to assumed it held a non-random amount of variance. As such, we found two variables which held non-random variance:

    Vehicle Length (at a P-value of 2.60e-12)
    Ground Clearance (at a P-value of 5.21e-08)

* Would the Slope of the Linear Model Be Considered Zero?

### Again, to find out whether the slope of our Linear Model would have a slope of zero, we look at our P-Value. Our linear progression model provides us with an overall P-Value for the model and we can compare this value against our assumed significance of 0.05%. In this case our dataset had a P-value of 5.35e-11. Since this value is lower than the assumed significance, we can infer that the slope of our linear model is not zero and reject the null hypothesis. 

* Is this Linear Model Effective in Predicting the MPG of MechaCar Prototypes?

### Our Multiple R-Squared Coefficient is used to show what percentage of variability our dependent variable(s) can be explained by the Linear Model. Regarding this MechaCar analysis, we produced a Multiple R-Squared Coefficient of 0.7149, which means that 71.49% of the variability is explained by our model. In my opinion, this percentage is enough to conclude this model is effective in predicting the mpg of MechaCar prototypes. 


## Deliverable Two: Summary Statistics on Suspension Coils

### The second part of our analysis examined the ‘Suspension_Coil.csv’ file with the intent to use summary and groupby functions to create two data frames. The first would demonstrate the mean, median, variance and standard deviation of suspension coil’s ‘Pounds Per Square Inch’ (PSI) values. The second would show if and how these values differed based on their respective manufacturing lots. 

* Does Overall Manufacturing Meet Specifications?

### The Specifications for MechaCar Suspension Coils state that that the PSI Variance may not exceed 100 Pounds Per Square Inch. If we look at our total_summary data frame, we can see that the variance of all the lots was roughly 62.29. Since this measure did not exceed the specified limit, it meets the specifications. 

* Does Each Manufacturing Lot Meet Specifications?

### Similarly, we can use our lot_summary data frame to see whether every lot meets these specifications. While Lot 1 and Lot 2 both easily meet these specifications with approximately 0.98 and 7.47 Variance respectively; unfortunately, Lot 3’s 170.27 Variance exceeds the specifications. 

## Deliverable Three: T-Tests on Suspension Coils

### Next, we wrote a T-Test to compare the PSI of our sample dataset against a population mean of 1500 ‘Pounds Per Square Inch.’ We then wrote an additional three T-tests comparing the PSI of each individual lot against the population mean. 

* How Does the Total Manufacturing PSI Compare to the Population Mean?

### When completing a T-Test of all our lots we found the mean of this dataset to be 1498.78, slightly lower than the population mean of 1500. It’s P-value was approximately 0.06, above the threshold of what is considered statistically significant (0.05). 

* How Do the Individual Lot PSIs Compare to the Population Mean?

### When we completed T-Tests for we Lots One and Two we found P-values of approximately 1 and 0.61 and means of approximately 1500 and 1500.2 respectively. Since these P-values were both above our threshold for ‘statistical significance’ (0.05), their variance is not statistically different from the population mean. 

### However, when we completed a T-Test for Lot Three, we found it to have an approximate P-value of 0.04, below the threshold for statistical significance. Additionally, its mean of 1496 was below the population mean of 1500. As a result, we could infer that Lot 3’s Suspension Coil PSI remains significantly different than the population mean. 

## Deliverable Four: Study Design- MechaCar Vs. Competition

### While the MechaCar prototype shows promise, we must be realistic in comparing its viability against the competition. As such, we decided to compare design a study to compare the MechaCar against its competition using metrics deemed desirable to consumers. 

* What Do Customers Want in a Car?

### To select my metrics I used a 2018 Statista Global Consumer Survey as a baseline of consumer interest. It found that the following were the most important factors in a car purchase:

    Safety
    Fuel Efficiency
    High Quality
    Good Warranty/Customer Service
    Suitability For Everyday Use
    High Driving Comfort
    Design
    Low Price
    Spaciousness
    Preferred Make

* Selecting Our Metrics

### While not all metrics are easily studied and analyzed, we can create a study based around Statista’s survey; comparing our selected metrics against comparable makes and models over the last three years (a timeframe used by J.D. Power to assess vehicle quality). The following are some of the metrics we would examine:

    National Highway Traffic Safety Administration (NHTSA) Safety Rating
    Highway & City Fuel Efficiencies
    Average Annual Maintenance Cost/Dependability
    Current Cost of Ownership/Purchase

* Null & Alternative Hypothesis

### Null Hypothesis: MechaCar Prototypes represents a fair value (safety, fuel efficiency, average annual maintenance cost) compared to its current competition (based on its current cost of ownership). 

### Alternative Hypothesis: MechaCar Prototypes DOES NOT represent a fair value (safety, fuel efficiency, average annual maintenance cost) compared to its current competition (based on its current cost of ownership).

* Statistical Test

### While the Statista survey suggests that all our metrics are important to consumers, we do not know how much each metric impacts a vehicle’s purchase price. As such we can create a Linear Regression Model to show the correlation between each vehicle’s specified metrics and the overall cost of ownership of said vehicle. If MechaCar prototypes provide equitable metrics to its competition at an equitable cost, then we cannot reject the null hypothesis. However, if MechaCars provided equitable metrics but at a higher cost (or the inverse) we would be inclined to reject our null hypothesis. 

* Data Required

### To complete such our statistical analysis, we would need the following:

    Overall NHTSA Safety Ratings (Ranked on a 5-Star Scale)
    United States Department of Energy Fuel Economy Ratings (MPG)
    J.D. Power Vehicle Dependability Studies
    Average Vehicle Purchase Cost from Consumer Reports Study

## Conclusion

### MechaCar’s production troubles seem undeniably linked to its third manufacturing lot, whose PSI values for its suspension cables remained significantly different from the population mean. Now that the issue has been located, hopefully the company can resolve the issue and additional studies with further implicate its financial viability on the auto market. 
