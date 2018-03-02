###########################################################
# CSCI 466 - Assignment 5 - Spring 2018
# 
# Progammer: Sam Piecz
# Z-ID: Z1732715
# Section: 4
# TA: Rajarshi Sen 
# Date Due: March 2, 2018
# 
# Purpose: Query a table from the BabyName DB using SQL. 
############################################################


# Question 1
SHOW DATABASES;
USE BabyName;
SHOW TABLES;


# Question 2
DESCRIBE BabyName;


# Question 3
SELECT DISTINCT year FROM BabyName WHERE name="Sam" LIMIT 20;


# Question 4
SELECT DISTINCT name FROM BabyName WHERE year="1996" LIMIT 20;


# Question 5
SELECT DISTINCT name, COUNT(name), gender FROM BabyName WHERE year="1996" GROUP BY gender;


# Question 6
# SELECT DISTINCT * FROM BabyName WHERE name LIKE("Sam%") ORDER BY name LIMIT 20;
SELECT DISTINCT name, count, year FROM BabyName WHERE name LIKE("Sam%") GROUP BY name LIMIT 20;

# Question 7
SELECT COUNT(*) "Number of rows" FROM BabyName;


# Question 8
SELECT DISTINCT COUNT(name) "Unique names in 1960" FROM BabyName WHERE year="1960";


# Question 9
SELECT DISTINCT COUNT(name) "Unique names", gender FROM BabyName WHERE year="1927" GROUP BY gender;


# Question 10
SELECT DISTINCT COUNT(name) "Unique names", place FROM BabyName GROUP BY place;
