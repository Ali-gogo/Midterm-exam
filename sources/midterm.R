# Create your student number to variable 'my_std_no'
my_std_no <- 17012639

# Honor Policy. For this exam, you must work alone. 
# You may not aid or accept aid from other students.

# You may also consult any other non-human resources you want 
# including the course textbook, handouts, your notes, other books, and on-line materials. 

# Directions. 
# The midterm exam is separated into two parts. 
# The part I is about short answer questions.
# Part I : Answer the following the questions.
# The function 'cat' must be used instead of the function 'print'.
# For example
i_v = 1
print('Print', i_v) # return no value!
cat('Print', i_v) # return it with value!


# 1. What does CRAN stand for ?
cat('The comprehensive R Archieve Network')

# 2. What is the mot important thing in Data Science?
cat('There are many thing must be done carefully when we are working on a big data but the first, we have to focus on a set-of-values (all the useful materials which are helpfull for our project) and variables (measurments or charateristics of an item) that help to find the solution to our provlems. Once we have qualittive and quantitative variables, the only thig we have to do is tackling the problem with the relevant solution method')

# 3. I am done editing a file, I need to _______ those changes then _______ them, and _______ it to the __________ .
cat('I am done editing a file, I need to merge those changes then confirm them, and save it to the represatory .')




#
#The part II is about implementing R programs which look alike assignments you did in our class. 
#
setwd("sources")
ds.titanic.survival <- read.csv("midterm_exam.csv", stringsAsFactors = FALSE)
head(ds.titanic.survival)

# Answer the each 
cat('The number of columns is 5')
cat('The number of rows is 1309 ')

nrow(ds.titanic.survival)
ncol(ds.titanic.survival)

#1.  What is the rate of female and male in Titanic Survival data set?
# (IMPORTANT! : your result will look like 'The female rate is xxxx.xxx'
#                                            The male rate is xxx.xxx')
# That is, your R program must include print('The female rate is ', your_female_rate)
# cat('The male rate is ', your_male_rate) at the end.

# Look at the ds.titanic.survival in detail

cat('The female rate is 0.3559969 ')   
cat('The male rate is 0.6440031  ')      

unique(ds.titanic.survival$sex)            # Gender
unique(ds.titanic.survival$survived)       # Variable

# overall number of male and female passengers in Titanic
table(ds.titanic.survival$sex)
table(ds.titanic.survival$sex)/length(ds.titanic.survival$sex)
table(ds.titanic.survival$survived)   # number of survivied and not survived people

The_female_rate_is <- ('The female rate is 0.3559969')
The_male_rate_is <-  ('The male rate is 0.6440031 ')
print(The_female_rate_is)
print(The_male_rate_is)

# 2. What is the Q1, mean, median, Q3, min and max in the Titanic Survival age?
# and graph the box plot of age data.

ds.titanic.survival <- read.csv("midterm_exam.csv",  stringsAsFactors = FALSE)
ds.titanic.survival
#
mean(ds.titanic.survival$age, na.rm = TRUE)
min(ds.titanic.survival$age, na.rm = TRUE)
median(ds.titanic.survival$age, na.rm = TRUE)
max(ds.titanic.survival$age, na.rm = TRUE)
sd(ds.titanic.survival$age, na.rm = TRUE)

quantile(ds.titanic.survival$age, na.rm = TRUE, 0.25)
quantile(ds.titanic.survival$age, na.rm = TRUE, 0.75)

#

boxplot(ds.titanic.survival$age)

cat('The Q1 is 21 ')
cat('The Q3 is 39 ')
cat('The IQR is Q3-Q1=18')
cat('The outliers are 80 and')  
#


# 3. What is the variation, standard deviation, range and difference(max and min) of age in the Titanic Survival?

ds.titanic.survival <- read.csv("midterm_exam.csv",  stringsAsFactors = FALSE)
ds.titanic.survival

cat('The variation of age in the Titanic Survival is ')
var(ds.titanic.survival$age, na.rm = TRUE)

cat('The standard deviation of age in the Titanic Survival is ')
sd(ds.titanic.survival$age, na.rm = TRUE)

cat('The range of age in the Titanic Survival is ')
range(ds.titanic.survival$age, na.rm = TRUE)

cat('The difference between max and min of age is 79.8333 ')
diff(range(ds.titanic.survival, na.rm = TRUE))

# 4. Show the bar and pie graph by passenger class of the Titanic Survival.
# (title of bar graph is 'Passenger class in Titanic Survival')
ds.titanic.survival <- read.csv("midterm_exam.csv",  stringsAsFactors = FALSE)
ds.titanic.survival

tit.freq <- table(ds.titanic.survival$passengerClass)
barplot(tit.freq,
        main ="Passenger class in Titanic Survival")
pie(tit.freq,
    main = "Passenger class in Titanic Survival")

# 5. Show the histogram of age in the Titanic Survival.
# (IMPORTANT! : number of breaks is 8.)
ds.titanic.survival <- read.csv("midterm_exam.csv",  stringsAsFactors = FALSE)
ds.titanic.survival
hist(ds.titanic.survival$age,
     main = "Histogram of age in the Titanic Survival",
     xlab = "Age",
     ylab = "Number of peple",
     border = "blue",
     col = "yellow",
     breaks =8,)

# 6. Show three boxplots of age from each passenger classes-1st, 2nd and 3rd at once.
ds.titanic.survival <- read.csv("midterm_exam.csv",  stringsAsFactors = FALSE)
ds.titanic.survival
unique(ds.titanic.survival$passengerClass)
table(ds.titanic.survival$passengerClass)
tit.freg <- table(ds.titanic.survival$age)
boxplot(tit.freg,
        main = "1st")


