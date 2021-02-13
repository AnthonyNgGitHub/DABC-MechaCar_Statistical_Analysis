# Import tidyverse library
library(tidyverse)

# Import and read in the MechaCar_mpg.csv file as a dataframe
mechacar_data <- read.csv('data/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 

# Generate multiple linear regression model to predict mpg's dependence on other factors
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,data=mechacar_data)

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,data=mechacar_data))

# Import and read in the Suspension_Coil.csv file as a dataframe
suspension_coil <- read.csv('data/Suspension_Coil.csv',check.names = F,stringsAsFactors = F) 

# Summary statistics for all cars
total_summary <- summarize(suspension_coil,
                           Mean = mean(PSI, na.rm = TRUE),
                           Median = median(PSI, na.rm=TRUE),
                           Variance = var(PSI, na.rm = TRUE),
                           SD = sd(PSI, na.rm = TRUE))

# Group data by Manufacturing Lot
by_lot <- group_by(suspension_coil,Manufacturing_Lot)

# Summary statistics grouped by lot
lot_summary <- summarize(by_lot,
                           Mean = mean(PSI, na.rm = TRUE),
                           Median = median(PSI, na.rm=TRUE),
                           Variance = var(PSI, na.rm = TRUE),
                           SD = sd(PSI, na.rm = TRUE))

# Perform t-tests to determine if all manufacturing lots and each lot individually are statistically different 
# from the population mean of 1,500 pounds per square inch.
population_mean_PSI <- 1500
?t.test()

# 1. Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(suspension_coil$PSI,mu=population_mean_PSI)

# 2. Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

# Create subsets of data for each lot
subtset_Lot1 <- subset(suspension_coil, Manufacturing_Lot == "Lot1")
subtset_Lot2 <- subset(suspension_coil, Manufacturing_Lot == "Lot2")
subtset_Lot3 <- subset(suspension_coil, Manufacturing_Lot == "Lot3")

# t-test on Lot1
t.test(subtset_Lot1$PSI,mu=population_mean_PSI)

# t-test on Lot2
t.test(subtset_Lot2$PSI,mu=population_mean_PSI)

# t-test on Lot3
t.test(subtset_Lot3$PSI,mu=population_mean_PSI)