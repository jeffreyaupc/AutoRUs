library(dplyr)

# Deliverable 1

mechacar_mpg <- read.csv("MechaCar_mpg.csv")

head(mechacar_mpg)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mechacar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mechacar_mpg))

# Deliverable 2

suspension_coil <- read.csv("Suspension_Coil.csv")

head(suspension_coil)

total_summary <- summarize(suspension_coil,Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

lot_summary <- group_by(suspension_coil,Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# Deliverable 3
t.test(suspension_coil$PSI)
lot1 <- filter(suspension_coil,Manufacturing_Lot=="Lot1")
lot2 <- filter(suspension_coil,Manufacturing_Lot=="Lot2")
lot3 <- filter(suspension_coil,Manufacturing_Lot=="Lot3")

t.test(lot1$PSI)
t.test(lot2$PSI)
t.test(lot3$PSI)