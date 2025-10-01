setwd("C:\\Users\\USER\\Desktop\\IT24103994")
getwd()

#part 1
set.seed(42)   
sample <- rnorm(25, mean = 45, sd = 2)
sample

mean(sample)  
sd(sample)    
length(sample) 

#part 2
t.test(sample, mu = 46, alternative = "less")