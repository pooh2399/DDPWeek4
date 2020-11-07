---
title: "DDP week 4"
author: "P V Vineet"
date: "07/11/2020"
output: ioslides_presentation
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Overview

Doing this for Data Science Coursera REgression Model Week 4 Presentation

The application demo built by Shiny and can be found at the URL:
https://pooh2399.shinyapps.io/DataProduct_week4/


## Web App

Aim of this app is to cal Linear regression for different var of MT Cars Data set providing with multiple inputs

* 1st variable of regression are:

    + MPG,
    + HP,
  
* 2nd Variable of resgression are: 

    + Cylinders, 
    + Transmission, 
    + Gears
  
* The user has to select the way he want to see the prediction/



## Data set
 
Given here is the dataset with where we build linera regression using the var provided

```{r mtcars, echo = TRUE}
head(mtcars)
```

## Layout of given reg of MPG VS CYL

```{r, echo=FALSE, message=FALSE}
data("mtcars")
 mtcars.cyl.formula <- mpg ~ cyl
    mtcars.cyl.lm <- lm(formula=mtcars.cyl.formula, data=mtcars)
     
    
    # draw the scatter diagram with the specified value of mpg
      plot(mtcars.cyl.formula, data=mtcars)
      abline(mtcars.cyl.lm,col="Red")
```
