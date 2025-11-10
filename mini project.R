

data <- read.csv("D:/Users/DELL 7480/Desktop/students_performance.csv",sep = ",")
summary(data)
str(data)
#FOR HISTOGRAM
library(ggplot2)

# Plot histogram of math scores
ggplot(data, aes(x = math_score)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Math Scores", x = "Math Score", y = "Count")

##Visual Identification (Boxplot)
library(ggplot2)
ggplot(data, aes(y = math_score)) +
  geom_boxplot(fill = "orange") +
  labs(title = "Boxplot of Math Scores", y = "Math Score")


#FOR BOXPLOT
ggplot(data, aes(x = factor(StudyTime), y = math_score)) +
  geom_boxplot(fill = 'orange') +
  labs(title = "Math Score by Study Time", x = "Study Time", y = "Math Score")


#Scatter Plot:Math Score vs. StudyTime
ggplot(data, aes(x = StudyTime, y = math_score)) +
  geom_point(color = "blue", size = 3) +
  labs(title = "Math Score vs Study Time", x = "Study Time (Hours)", y = "Math Score")


#Boxplot by Gender
ggplot(data, aes(x = gender, y = math_score, fill = gender)) +
  geom_boxplot() +
  labs(title = "Math Scores by Gender", x = "Gender", y = "Math Score")

#Violin Plot with Nested Boxplot
library(ggplot2)
ggplot(data, aes(x = gender, y = math_score, fill = gender)) +
  geom_violin(trim = FALSE, alpha = 0.6) +
  geom_boxplot(width = 0.15, fill = "white", outlier.color = "red") +
  labs(title = "Math Score Distribution by Gender", x = "Gender", y = "Math Score") +
  theme_minimal()

#Scatter Plot with Regression Line and Facets
ggplot(data, aes(x = StudyTime, y = math_score, color = gender, shape = gender)) +
  geom_point(size = 3) +
  geom_smooth(method = "lm", se = FALSE, linetype = "dashed") +
  facet_wrap(~ parental_education) +
  labs(title = "Math Score vs. Study Time by Parental Education", x = "Study Time", y = "Math Score") +
  theme_light()

#Parallel Coordinate Plot (GGally package
install.packages("GGally")

library(GGally)
ggparcoord(data, columns = 3:5, groupColumn = 2, scale = "std") +
  labs(title = "Parallel Coordinate Plot of Scores by Gender", x = "Score Type", y = "Standardized Score") +
  theme_bw()



# BOXPLOT BY GROUP
boxplot(math_score ~ gender, data=data,
        main="Test Score by Gender",
        xlab="Gender", ylab="math score", col=c("lightpink", "lightblue"))




    
