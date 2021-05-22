setwd(choose.dir()) # C:\Users\amir9048\Dropbox (Sydney Uni)\Projects\RSAP Missing Data\Dataset - Missing Data

source("Functions_Used.R")
df <- read.table("student-por.csv",sep=";",header=TRUE)

df$school <- as.numeric(as.factor(df$school))
df$sex <- as.numeric(as.factor(df$sex))
df$age <- as.numeric(df$age) 
df$address <- as.numeric(as.factor(df$address))
df$famsize <- as.numeric(as.factor(df$famsize))
df$Pstatus <- as.numeric(as.factor(df$Pstatus))
df$Medu <- as.numeric(df$Medu) 
df$Fedu <- as.numeric(df$Fedu) 
df$Mjob <- as.numeric(as.factor(df$Mjob))
df$Fjob <- as.numeric(as.factor(df$Fjob))
df$reason <- as.numeric(as.factor(df$reason))
df$guardian <- as.numeric(as.factor(df$guardian))
df$traveltime <- as.numeric(df$traveltime) 
df$studytime <- as.numeric(df$studytime) 
df$failures <- as.numeric(df$failures) 
df$schoolsup <- as.numeric(as.factor(df$schoolsup)) - 1 # 0 = no, 1 = yes
df$famsup <- as.numeric(as.factor(df$famsup)) - 1 # 0 = no, 1 = yes
df$paid <- as.numeric(as.factor(df$paid)) - 1 # 0 = no, 1 = yes
df$activities <- as.numeric(as.factor(df$activities)) - 1 # 0 = no, 1 = yes
df$nursery <- as.numeric(as.factor(df$nursery)) - 1 # 0 = no, 1 = yes
df$higher <- as.numeric(as.factor(df$higher)) - 1 # 0 = no, 1 = yes
df$internet <- as.numeric(as.factor(df$internet)) - 1 # 0 = no, 1 = yes
df$romantic <- as.numeric(as.factor(df$romantic)) - 1 # 0 = no, 1 = yes
df$famrel <- as.numeric(df$famrel) 
df$freetime <- as.numeric(df$freetime) 
df$goout <- as.numeric(df$goout) 
df$Dalc <- as.numeric(df$Dalc) 
df$Walc <- as.numeric(df$Walc) 
df$health <- as.numeric(df$health) 
df$absences <- as.numeric(df$absences) 
df$G1 <- as.numeric(df$G1) 
df$G2 <- as.numeric(df$G2) 
df$G3 <- as.numeric(df$G3) 

# # Attributes for both student-mat.csv (Math course) and student-por.csv (Portuguese language course) datasets:
# 1 school - student's school (binary: 'GP' - Gabriel Pereira or 'MS' - Mousinho da Silveira)
# 2 sex - student's sex (binary: 'F' - female or 'M' - male)
# 3 age - student's age (numeric: from 15 to 22)
# 4 address - student's home address type (binary: 'U' - urban or 'R' - rural)
# 5 famsize - family size (binary: 'LE3' - less or equal to 3 or 'GT3' - greater than 3)
# 6 Pstatus - parent's cohabitation status (binary: 'T' - living together or 'A' - apart)
# 7 Medu - mother's education (numeric: 0 - none, 1 - primary education (4th grade), 2 â€“ 5th to 9th grade, 3 â€“ secondary education or 4 â€“ higher education)
# 8 Fedu - father's education (numeric: 0 - none, 1 - primary education (4th grade), 2 â€“ 5th to 9th grade, 3 â€“ secondary education or 4 â€“ higher education)
# 9 Mjob - mother's job (nominal: 'teacher', 'health' care related, civil 'services' (e.g. administrative or police), 'at_home' or 'other')
# 10 Fjob - father's job (nominal: 'teacher', 'health' care related, civil 'services' (e.g. administrative or police), 'at_home' or 'other')
# 11 reason - reason to choose this school (nominal: close to 'home', school 'reputation', 'course' preference or 'other')
# 12 guardian - student's guardian (nominal: 'mother', 'father' or 'other')
# 13 traveltime - home to school travel time (numeric: 1 - <15 min., 2 - 15 to 30 min., 3 - 30 min. to 1 hour, or 4 - >1 hour)
# 14 studytime - weekly study time (numeric: 1 - <2 hours, 2 - 2 to 5 hours, 3 - 5 to 10 hours, or 4 - >10 hours)
# 15 failures - number of past class failures (numeric: n if 1<=n<3, else 4)
# 16 schoolsup - extra educational support (binary: yes or no)
# 17 famsup - family educational support (binary: yes or no)
# 18 paid - extra paid classes within the course subject (Math or Portuguese) (binary: yes or no)
# 19 activities - extra-curricular activities (binary: yes or no)
# 20 nursery - attended nursery school (binary: yes or no)
# 21 higher - wants to take higher education (binary: yes or no)
# 22 internet - Internet access at home (binary: yes or no)
# 23 romantic - with a romantic relationship (binary: yes or no)
# 24 famrel - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
# 25 freetime - free time after school (numeric: from 1 - very low to 5 - very high)
# 26 goout - going out with friends (numeric: from 1 - very low to 5 - very high)
# 27 Dalc - workday alcohol consumption (numeric: from 1 - very low to 5 - very high)
# 28 Walc - weekend alcohol consumption (numeric: from 1 - very low to 5 - very high)
# 29 health - current health status (numeric: from 1 - very bad to 5 - very good)
# 30 absences - number of school absences (numeric: from 0 to 93)

# # these grades are related with the course subject, Math or Portuguese:
# 31 G1 - first period grade (numeric: from 0 to 20)
# 31 G2 - second period grade (numeric: from 0 to 20)
# 32 G3 - final grade (numeric: from 0 to 20, output target)
df$age <- as.numeric(df$age) 
df$traveltime <- as.numeric(df$traveltime) 
df$studytime <- as.numeric(df$studytime) 
df$failures <- as.numeric(df$failures) 
df$famrel <- as.numeric(df$famrel) 
df$freetime <- as.numeric(df$freetime) 
df$goout <- as.numeric(df$goout) 
df$Dalc <- as.numeric(df$Dalc) 
df$Walc <- as.numeric(df$Walc) 
df$health <- as.numeric(df$health) 
df$absences <- as.numeric(df$absences) 

x_feature_names <-  c("age", "traveltime", "studytime", "failures", "famrel", "freetime", "goout", "Dalc", "Walc", "health", "absences")

####

library(missMethods)
library(naniar)
library(corrplot)
set.seed(2021)


###### MISSING COMPLETELY AT RANDOM #######

d_mcar <- delete_MCAR(df, 0.07)

apply(d_mcar, 1, function(x) sum(is.na(x)) / ncol(d_mcar) * 100 )
apply(d_mcar, 2, function(x) sum(is.na(x)) / nrow(d_mcar) * 100 )

sum(is.na(d_mcar)) / (nrow(d_mcar) * ncol(d_mcar)) * 100

# d_mcar[,c('address','studytime')] <- delete_MCAR(d_mcar[,c('address','studytime')], 0.001, cols_mis = "address")

Heat_Map_Comparison(df, d_mcar)

mcar_test(d_mcar)




df_cor <- cor(df[x_feature_names])

cor(d_mcar[x_feature_names])

d_mcar_cca <- d_mcar[complete.cases(d_mcar),]
nrow(d_mcar[complete.cases(d_mcar),])
d_mcar_cor <- cor(d_mcar_cca[x_feature_names])
sum((df_cor - d_mcar_cor)^2)


d_mcar_cca <- d_mcar[complete.cases(d_mcar[,x_feature_names]),]
nrow(d_mcar_cca)
d_mcar_cor <- cor(d_mcar_cca[x_feature_names])
sum((df_cor - d_mcar_cor)^2)




##### MISSING AT RANDOM #####

set.seed(2021)
d_mar <- delete_MAR_one_group(df, 0.13, "traveltime", "address")

Heat_Map_Comparison(df, d_mar)
Missing_Statistics(d_mar, pct = TRUE)

mcar_test(d_mar)

table(d_mar$traveltime, d_mar$address)

table(df$traveltime, df$address)

# What is the missing per group?
table(is.na(d_mar$traveltime), d_mar$address)


set.seed(2021)

d_mar <- delete_MAR_one_group(df, 0.13, "address", "traveltime")

Heat_Map_Comparison(df, d_mar)
Missing_Statistics(d_mar, pct = TRUE)

mcar_test(d_mar)

table(d_mar$traveltime, d_mar$address)

table(df$traveltime, df$address)

# What is the missing per group?
table(d_mar$traveltime, is.na(d_mar$address))

View((d_mar[d_mar$traveltime==1,]))


library(mice)

md.pattern(d_mar)

d_mar$address <- as.numeric(as.factor(d_mar$address)) - 1 #minus 1 for log rules (between 0 and 1)

d_mar_imp <- mice(d_mar, m=5, maxit = 50, method = 'logreg', seed = 0)
summary(d_mar_imp)

imp_values <- round(apply(d_mar_imp$imp$address,1,mean))

d_mar$address[is.na(d_mar$address)] <- imp_values

d_mar$address <- as.factor(d_mar$address)
levels(d_mar$address) <- c("R","U")

# compare the changes
library(caret)
table(d_mar$traveltime, d_mar$address)
table(df$traveltime, df$address)


confusionMatrix(df$address, d_mar$address)
# Random forest
library(missForest)
set.seed(2021)
d_mar <- delete_MAR_one_group(df, 0.13, "address", "traveltime")
d_mar$address <- as.numeric(as.factor(d_mar$address)) - 1 #minus 1 for log rules (between 0 and 1)

d_mar_imp_rf <- missForest(d_mar)

evaluate_imputed_values(d_mar_imp_rf$ximp, df, "RMSE")



##### MISSING NOT AT RANDOM #####
set.seed(2021)
d_mnar <- delete_MNAR_one_group(df, 0.21, "internet")

Heat_Map_Comparison(df, d_mnar)
Missing_Statistics(d_mnar, pct = TRUE)

mcar_test(d_mnar)

table(d_mnar$traveltime, d_mnar$address)
table(df$traveltime, df$address)

d_mnar$internet


# If i make everyhtin numeric this df works

corrplot(cor(df))