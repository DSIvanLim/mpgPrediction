---
title       : Petrol Usage Prediction
subtitle    : Petrol consumption using Shiny Application
author      : Ivan Lim
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slid
---

## Summary :

The data used in this prediction was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models). 

Here we focus on three catergories that affect the mpg of the car where user can make changes and instantly see the performance of the mpg of the car. The three categories as follow :

1. Weight 
2. Transmission Type
3. Quarter Miles per second

---

## Regression Analysis

We used the simple linear regression model for this prediction. 
The estimated value will shown as a triangle on the plot.

---  
## Simulation with Shiny Apps

**Deployed at shinyapps.oi website**

- http://dslim.shinyapps.io/mpgPrediction/


**The Sidebar for data entry**

- Slider for Weight selection : Just slide left or right to input the desired weight.
- Radio button for type of transmission : Click to select the the transmission type.
- Textbox for Quarter mile second entry : Input to desired Quarter mile second entry.


---
## Result Display

The Resulted Display present two Plots. 
The left plot is estimated MPG versus Weight and the right plot is the MPG versus Quarter Miles per second. 
The estimated value will shown as a triangle on the plot and also the value of the estimation will shown below. 

