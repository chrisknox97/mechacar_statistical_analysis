#Deliverable One: Linear Regression to Predict MPG

# Use Library Function to Loat DPLYR Package
library(dplyr)

#Import CSV File & Read as a DataFrame
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Perform Linear Regression Using LM Function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_mpg)

#Use the Summary Function For R & P Values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mechacar_mpg))

#Deliverable Two: Creating Visualizations of Trip Analysis

#Import CSV File & Read as a Table
suspension_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Use the Summarize Function to Get Mean, Median, Variance & Standard Deviation
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),
                                               Median=median(PSI),
                                               Variance=var(PSI),
                                               SD=sd(PSI))
#Print to Console
print(total_summary)

#Use Groupby & Summarize to Sort By Lot
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                             Median=median(PSI),
                                                                             Variance=var(PSI),
                                                                             SD=sd(PSI))
  
#Print to Console                                                                                                                                                        SD=sd(PSI))
print(lot_summary)

#Deliverable Three: T-Tests on Suspension Coils

#Write a T-Test to Compare Manufacturing PSI Against Population Mean
t.test(suspension_coil$PSI, mu=1500)

#Write Three Additional T-Tests to Compare Each Lot

#Lot One T-Test
lot_one <- subset(suspension_coil, Manufacturing_Lot=='Lot1')
t.test(lot_one$PSI, mu=1500)

#Lot Two T-Test
lot_two <- subset(suspension_coil, Manufacturing_Lot=='Lot2')
t.test(lot_two$PSI, mu=1500)

#Lot Three T-Test
lot_three <- subset(suspension_coil, Manufacturing_Lot=='Lot3')
t.test(lot_three$PSI, mu=1500)

