library(dplyr)
library(tidyverse)
mechaCar_mpg <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mpg)) #generate summary statistics
