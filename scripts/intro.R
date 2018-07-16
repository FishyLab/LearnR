
# Create a variable numbers, with some numbers
numbers <- c(5, 6, 2, 7, 9, 0)

# Create a variable mean, with the mean of some numbers
mean <- mean(numbers)

# Calculate the min, max, range of numbers

minimum <- min(numbers)
maximum <- max(numbers)

range <- range(numbers)

#### Part 2, subindexing

# Create a vector of lengths

lengths <- c(2, 4, 7, 2, 5, 9, 1, 2, 7, 8, 4, 5, 8, 2, 6, 4, 5, 0)
  
hist(lengths, col = "gray")  
  
first_lengths <- lengths[1:10]

### Part 3, using cars

data("cars")

hist(cars[,1])

hist(cars[,2])  

# Selecting columns by column names

hist(cars$speed)

plot(dist ~ speed, data = cars)

# Creating other columns

cars$names <- c("James")

cars$speed_squared <- cars$speed ^ 2  

plot(speed_squared ~ speed, data = cars)  

wrong_column <- 1:49  
  
cars$new_column <- wrong_column

# Loading data

lionfish <- read.csv("data/lionfish_data.csv")

# Get an overview of my data
summary(lionfish)


plot(TotalWeigth_gr ~ TotalLength_cm, data = lionfish, col = Location)





















