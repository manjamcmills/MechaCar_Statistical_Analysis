# Deliverable #1

#Use the library() function to load the dplyr package.
library(dplyr)
library(tidyverse)

#Import and read in the MechaCar_mpg.csv file as a dataframe.
mechaCar_mpg <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)

#Perform linear regression using the lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance 
   + AWD, data=mechaCar_mpg)

#Using the summary() function, determine the p-value and the r-squared value for the 
#linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance 
           + AWD, data=mechaCar_mpg)) #generate summary statistics


# Deliverable #2

#import and read in the Suspension_Coil.csv file as a table.
suspension_coil <- read.csv(file="Suspension_Coil.csv",  check.names=F, stringsAsFactors = F)

#Write an RScript that creates a total_summary dataframe using the summarize() function to 
#get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median = median(PSI),
                                               Variance = var(PSI), SD = sd(PSI))

#Write an RScript that creates a lot_summary dataframe using the group_by() and 
#the summarize() functions to group each manufacturing lot by the mean, median, 
#variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median = median(PSI),
                                               Variance = var(PSI), SD = sd(PSI))




