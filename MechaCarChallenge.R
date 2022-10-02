# Deliverable #1

#Use the library() function to load the dplyr package.
library(dplyr)


#Import and read in the MechaCar_mpg.csv file as a dataframe.
mechaCar_mpg <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)

#Perform linear regression using the lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance 
   + AWD, data=mechaCar_mpg)

#Using the summary() function, determine the p-value and the r-squared value for the 
#linear regression model.
mult_lines_summary <-summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance 
           + AWD, data=mechaCar_mpg)) #generate summary statistics
#Show a graph for each of the linear models
library(tidyverse)
#vehicle_length
model1<-lm(mpg ~ vehicle_length, data=mechaCar_mpg)
summary1<-summary(lm(mpg ~ vehicle_length, data=mechaCar_mpg))
yvals <- model1$coefficients['vehicle_length']*mechaCar_mpg$vehicle_length + model1$coefficients['(Intercept)']
plt1<-ggplot(mechaCar_mpg, aes(x=vehicle_length, y=mpg))
coeff <- round(model1$coefficients, 2)
pval <- round(summary1$coefficients, 10)
rval <- round(summary(model1)$r.squared, 4)
theme1 <- theme(plot.title = element_text(hjust = 0.5), plot.subtitle = element_text(hjust = 0.5), plot.caption = element_text(hjust = 0.5)  )
line_eq_1 <- labs(title = "Vehicle Length vs MPG", subtitle = sprintf("Linear Regression Model: y = %s + %s*x", coeff[1], coeff[2]), 
                  caption = sprintf("R-sqaured: %s       p-value: %s", rval, pval[8]))
plt1 + geom_point() + geom_line(aes(y=yvals), color="red") + theme1 + line_eq_1

#vehicle_weight
model1<-lm(mpg ~ vehicle_weight, data=mechaCar_mpg)
summary1<-summary(lm(mpg ~ vehicle_weight, data=mechaCar_mpg))
yvals <- model1$coefficients['vehicle_weight']*mechaCar_mpg$vehicle_weight + model1$coefficients['(Intercept)']
plt1<-ggplot(mechaCar_mpg, aes(x=vehicle_weight, y=mpg))
coeff <- round(model1$coefficients, 4)
pval <- round(summary1$coefficients, 10)
rval <- round(summary(model1)$r.squared, 4)
theme1 <- theme(plot.title = element_text(hjust = 0.5), plot.subtitle = element_text(hjust = 0.5), plot.caption = element_text(hjust = 0.5)  )
line_eq_1 <- labs(title = "Vehicle Weight vs MPG", subtitle = sprintf("Linear Regression Model: y = %s + %s*x", coeff[1], coeff[2]), 
                  caption = sprintf("R-sqaured: %s       p-value: %s", rval, pval[8]))
plt1 + geom_point() + geom_line(aes(y=yvals), color="red") + theme1 + line_eq_1

#spoiler_angle
model1<-lm(mpg ~ spoiler_angle, data=mechaCar_mpg)
summary1<-summary(lm(mpg ~ spoiler_angle, data=mechaCar_mpg))
yvals <- model1$coefficients['spoiler_angle']*mechaCar_mpg$spoiler_angle + model1$coefficients['(Intercept)']
plt1<-ggplot(mechaCar_mpg, aes(x=spoiler_angle, y=mpg))
coeff <- round(model1$coefficients, 4)
pval <- round(summary1$coefficients, 10)
rval <- round(summary(model1)$r.squared, 4)
theme1 <- theme(plot.title = element_text(hjust = 0.5), plot.subtitle = element_text(hjust = 0.5), plot.caption = element_text(hjust = 0.5)  )
line_eq_1 <- labs(title = "Spoiler Angle vs MPG", subtitle = sprintf("Linear Regression Model: y = %s + %s*x", coeff[1], coeff[2]), 
                  caption = sprintf("R-sqaured: %s       p-value: %s", rval, pval[8]))
plt1 + geom_point() + geom_line(aes(y=yvals), color="red") + theme1 + line_eq_1

#ground_clearance 
model1<-lm(mpg ~ ground_clearance , data=mechaCar_mpg)
summary1<-summary(lm(mpg ~ ground_clearance , data=mechaCar_mpg))
yvals <- model1$coefficients['ground_clearance']*mechaCar_mpg$ground_clearance  + model1$coefficients['(Intercept)']
plt1<-ggplot(mechaCar_mpg, aes(x=ground_clearance , y=mpg))
coeff <- round(model1$coefficients, 4)
pval <- round(summary1$coefficients, 10)
rval <- round(summary(model1)$r.squared, 4)
theme1 <- theme(plot.title = element_text(hjust = 0.5), plot.subtitle = element_text(hjust = 0.5), plot.caption = element_text(hjust = 0.5)  )
line_eq_1 <- labs(title = "Ground Clearance vs MPG", subtitle = sprintf("Linear Regression Model: y = %s + %s*x", coeff[1], coeff[2]), 
                  caption = sprintf("R-sqaured: %s       p-value: %s", rval, pval[8]))
plt1 + geom_point() + geom_line(aes(y=yvals), color="red") + theme1 + line_eq_1

#AWD
model1<-lm(mpg ~ AWD, data=mechaCar_mpg)
summary1<-summary(lm(mpg ~ AWD, data=mechaCar_mpg))
yvals <- model1$coefficients['AWD']*mechaCar_mpg$AWD  + model1$coefficients['(Intercept)']
plt1<-ggplot(mechaCar_mpg, aes(x=AWD, y=mpg))
coeff <- round(model1$coefficients, 4)
pval <- round(summary1$coefficients, 10)
rval <- round(summary(model1)$r.squared, 4)
theme1 <- theme(plot.title = element_text(hjust = 0.5), plot.subtitle = element_text(hjust = 0.5), plot.caption = element_text(hjust = 0.5)  )
line_eq_1 <- labs(title = "AWD vs MPG", subtitle = sprintf("Linear Regression Model: y = %s + %s*x", coeff[1], coeff[2]), 
                  caption = sprintf("R-sqaured: %s       p-value: %s", rval, pval[8]))
plt1 + geom_point() + geom_line(aes(y=yvals), color="red") + theme1 + line_eq_1

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


# Deliverable #3

# write an RScript using the t.test() function to determine if the PSI across all 
#    manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_coil$PSI, mu = 1500)

# Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function 
# and its subset() argument to determine if the PSI for each manufacturing lot is statistically 
# different from the population mean of 1,500 pounds per square inch.
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot1")$PSI, mu =1500)
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot2")$PSI, mu =1500)
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot3")$PSI, mu =1500)
