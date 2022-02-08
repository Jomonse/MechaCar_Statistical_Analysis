#Linear Regression to Predict MPG


#Using the dplyr package
library(dplyr)
#import data set
mechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)


#create linear model

model <-lm(mpg~ AWD + vehicle_length + vehicle_weight + spoiler_angle+
             ground_clearance,mechaCar_table)
model

#Obtain statistical metrics
summary(model)

#ANOVA Test
model2 <- lm(mechaCar_table$mpg~(mechaCar_table$AWD+
                                   mechaCar_table$vehicle_length+
                             mechaCar_table$vehicle_weight+
                               mechaCar_table$spoiler_angle+
                               mechaCar_table$ground_clearance))
ANOVA <- aov(model2)
summary(ANOVA)

#Shapiro test
shapiro.test(rstandard(model2))
#---------------------------------------------------------------------------------------------------------------------------
  
#Create Visualizations for the Trip Analysis 


# Import data set
SusCoil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Create summarize table 
summary2  <- SusCoil_table %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI)) 
summary2

#create summary table with multiple columns
lot_summary <- SusCoil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
lot_summary
#-------------------------------------------------------------------------------------------------------------------------------------

#T-Tests on Suspension Coils

# Hipotesis:the PSI across all manufacturing lots is statistically 
#different from the population mean of 1,500 pounds per square inch
t.test(SusCoil_table$PSI,mu=1500)

#Hipotesis: the PSI for each manufacturing lot is statistically different 
#from the population mean of 1,500 pounds per square inch

#Set the data
MLot1 <- subset(SusCoil_table, Manufacturing_Lot=='Lot1')
MLot2 <- subset(SusCoil_table, Manufacturing_Lot=='Lot2')
MLot3 <- subset(SusCoil_table, Manufacturing_Lot=='Lot3')

#Test
t.test(MLot1$PSI,mu=1500)
t.test(MLot2$PSI,mu=1500)
t.test(MLot3$PSI,mu=1500)
