#Data exploration

library(dplyr)
setwd("C:/Users/Manish/Desktop/Intellipaat Assignments")
data<-read.csv("C:/Users/Manish/Desktop/Intellipaat Assignments/customer_churn.csv")

customer_internet_service<-data$InternetService
View(customer_internet_service)

customer_paperless_billing<-data$PaperlessBilling
View(customer_paperless_billing)

customer_streaming_tv<-data$StreamingTV
View(customer_streaming_tv)

#customer_random_columns<-subset(data,select=c(3,6,9))
customer_random_columns<-data[,c(3,6,9)]
View(customer_random_columns)

data_row369<-data[c(3,6,9),]
View(data_row369)

customer_10_20<-data[,c(10:20)]
View(customer_10_20)

customer_random_rows<-data[c(65,765,3726,7000),]
View(customer_random_rows)

customer_continuous_rows<-data[c(655:6550),]
View(customer_continuous_rows)

customer_random_data<-data[c(10,100,1000),c(5,10,15)]
View(customer_random_data)

ifelse(data[6,"PaymentMethod"]=="Electronic check","Yes, The payment method is electronic check")

ifelse(data[12,"Contract"]=="Month-to-month","The contract is on month to month basis",ifelse(data[12,"Contract"]=="One year","The contract is on yearly basis","The contract is on two yearly basis"))

x<-switch(as.character(data[2,"gender"]),
              "Male"=data[2,"MonthlyCharges"]*80/100,
          "Female"=data[2,"MonthlyCharges"]*50/100
)
x

c=0
for(i in 1:nrow(data))
  {if(data$InternetService[i]=="DSL"){c=c+1}}
c

c=0
i=1
while(i<=nrow(data))
{
  if(data$tenure[i]==2){c=c+1}
    
  i=i+1
}
c

i=1
while(i<7)
{
  print(i)
  i=i+1
}

head(data$PhoneService,4)

head(data$Contract,8)

tail(data$TotalCharges,1)

tail(data$TotalCharges,5)

m<-mean(data$tenure)
m

min<-min(data$tenure)
min

max<-max(data$tenure)
max

range<-range(data$tenure)
range

sample_totalcharges<-sample(data$TotalCharges,10)
sample_totalcharges

table(data$PaymentMethod,data$Contract)
