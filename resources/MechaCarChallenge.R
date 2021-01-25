# deliverable 1

library(tidyverse)

mecha_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_table)) #generate summary statistics

# deliverable 2

suspension_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- suspension_table %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), PSI_Variance=var(PSI), PSI_SD=sd(PSI)) #complete values table

lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), PSI_Variance=var(PSI), PSI_SD=sd(PSI), .groups = 'keep') #create summary table

# deliverable 3

Lot_1 <- suspension_table %>% filter(Manufacturing_Lot=="Lot1") #select only data points under Lot1
Lot_2 <- suspension_table %>% filter(Manufacturing_Lot=="Lot2") #select only data points under Lot2
Lot_3 <- suspension_table %>% filter(Manufacturing_Lot=="Lot3") #select only data points under Lot3

t.test(log10(Lot_1$ PSI),mu=mean(log10(suspension_table$PSI))) #compare lot 1 versus population means
t.test(log10(Lot_2$ PSI),mu=mean(log10(suspension_table$PSI))) #compare lot 2 versus population means
t.test(log10(Lot_3$ PSI),mu=mean(log10(suspension_table$PSI))) #compare lot 3 versus population means
