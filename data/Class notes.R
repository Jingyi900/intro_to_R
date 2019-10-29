#Functions
#Define a functiont to convert a temp from F-->C
#Assign value every time.
temp_f <- 35
temp_c <- (temp_f - 32)*5/9
temp_c

#Function declaration
f_to_c <- function(temp_in_f) {
  #Function body
  temp_in_c <- (temp_in_f - 32)*5/9
  
  return(temp_in_c)
}

f_to_c(50) #encapsulation

#Exercise 1
cel_to_kelvin <- function(temp_in_c) {
  temp_in_k <- temp_in_c+273.15
    
  return(temp_in_k)
}
#Combine two functions
#Way 1
fah_to_kelvin <- function(temp_in_f) {
  temp_in_k <- cel_to_kelvin(f_to_c(temp_in_f))
  
  return(temp_in_k)
}

#Way 2
fah_to_kelvin <- function(temp_in_f) {
  #variable scope.temp_in_c only lives within the brackets.
  temp_in_c <- f_to_c(temp_in_f)
  temp_in_k <- cel_to_kelvin(temp_in_c)
  
  return(temp_in_k)
}

#Functions/Packages available online.
install.packages('praise')
library(praise)
praise()

#Write a function to praise yourself or your friend
#input: a name
#output: a sentence to praise name
#Ex: "Hi xxx, you are incredible!"
#No difference between single or double quotation marks
praise_myself <- function(name){
  #output <- c (name, praise())
  output <- paste("Hello",name,',',praise())
  
  return(output)
}
praise_myself("Mingxia")

#Load the data
#Calculate the average/min/mx inflammation for 40 days
#Plot the average/min/max data

data <- read.csv('data/inflammation-01.csv', header=FALSE)
avg_inflammation_data <- apply(data,2,mean)
min_inflammation_data <- apply(data,2,min)
max_inflammation_data <- apply(data,2,max)
plot(avg_inflammation_data)
plot(max_inflammation_data)
plot(min_inflammation_data)

#write a function for the above syntax
analyze <- function(filename){
  data <- read.csv(filename,header=FALSE)
  avg_inflammation_data <- apply(data,2,mean)
  min_inflammation_data <- apply(data,2,min)
  max_inflammation_data <- apply(data,2,max)
  
  par(mfrow=c(1,3))
  plot(avg_inflammation_data, main=filename)
  #To put the three graphs side by side (since the three graphs have different y axis)
  
  #par(new=TRUE)
  plot(max_inflammation_data, type='l', col='red')
  #par(new=TRUE)
  plot(min_inflammation_data,type='l', col='blue')
}

analyze('data/inflammation-01.csv')

?plot
?par

#Loop

#for each of the item in the list {perform some operations for that item}

list_words <- c("let","the", "computer","do","this", "work")
#repetitive work is bad in programming. more errors.
list_words[1]

for (word in list_words){
 
   print(word)

}

#Exercise:use for loop to count how many vowels are there in vowels
vowels <- c('a','e','i','o','u')

count <- 0
for (vowel in vowels){
  
  count <- count+1
 
}

count

#Solution

files <- list.files (path = "data", pattern="inflammation", full.names=TRUE)

print(files)

for (filename in files){
  
  print(filename)
  analyze(filename)

}

#If conditionals

