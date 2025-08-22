#Q1
setwd("C:\\Users\\it24103994\\Desktop\\IT24103994")
branch_data <- read.table("Exercise.txt", header=TRUE , sep=",")

#Q2
str(branch_data)

#Q3
boxplot(branch_data$Sales_X1,main="Boxplot for sales",ylab = "Sales")
summary(branch_data$Advertising_X2)

#Q4
IQR(branch_data$Advertising_X2)

#Q5
find_outliers <- function(X){
  Q1 <- quantile(X, 0.25)
  Q3 <- quantile(X, 0.75)
  
  IQR <- Q3 - Q1
  
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  return ( X[X < lower_bound | X > upper_bound ])
} 
  outliers <- find_outliers(branch_data$Years_X3)
  print(outliers)
