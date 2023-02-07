#Using library() to load the dplyr package
library(dplyr)

# import the CSV file and read it as a dataframe
mecha_car_table<-read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # create linear regression
mecha_car_lm<-lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,data=mecha_car_table)
summary(mecha_car_lm) # summarize linear regression

# Creating Visualizations for the Trip Analysis
suspension_coil_table<-read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) # reading the data
total_summary<-suspension_coil_table%>%summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) # creating a summary for all PSI data
lot_summary<-suspension_coil_table%>%group_by(Manufacturing_Lot)%>%summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) # Creating a summary for all PSI data by lot

# T.tests on Suspension Coils
t.test(suspension_coil_table$PSI,mu=1500) #t.test on all cars' PSI with a mean of 1500
t.test(subset(suspension_coil_table,Manufacturing_Lot="Lot1")$PSI,mu=1500) #t.test on lot1 cars' PSI with a mean of 1500
t.test(subset(suspension_coil_table,Manufacturing_Lot="Lot2")$PSI,mu=1500) #t.test on lot2 cars' PSI with a mean of 1500
t.test(subset(suspension_coil_table,Manufacturing_Lot="Lot3")$PSI,mu=1500) #t.test on lot3 cars' PSI with a mean of 1500