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
  
