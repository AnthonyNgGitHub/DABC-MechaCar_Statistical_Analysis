# Import tidyverse library
library(tidyverse)

# Import and read in the MechaCar_mpg.csv file as a dataframe
mechacar_data <- read.csv('data/MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) 

# Generate multiple linear regression model to predict mpg's dependence on other factors
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,data=mechacar_data)

# Generate summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,data=mechacar_data))

