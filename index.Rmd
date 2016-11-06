---
title       : Linear Regression with R
subtitle    : Fall 2016
author      : Josh Quan - joshua.quan@tufts.edu
job         : Tisch Library
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : solarized_light     # 
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
widget      : mathjax

---bg:#ffffff


## Goals for the Hour

- (brief) Introduction to the R Studio Interface

- Linear (OLS) Regression 
    - Assumptions
    - Continuous Variables
    - Categorical Variables
    - Multiple Variables
    
- Library and Online Resources


--- 


## Preliminaries

- tinyurl.com/tischR-OLS

- Open RStudio:  Windows -> Data & Statistical Applications -> RStudio

- In RStudio: Session - > Set Working Directory - > Choose Directory... 


--- 
## The RStudio Interface

- Console
- Source/Editor
- Environment
- Files,Plots, Packages, Help, Viewer



---


## Tidy Data = Happy Data 


![](tidy.png)

---

## 


![](heights.png)

---

## 


![](crime_1.png)

---


![](line.png)

---


![](line1.png)

---
## Linear Regression 

<iframe src="https://gallery.shinyapps.io/simple_regression/"></iframe> 


--- 

## Linear Regression 

![](interpret.png)


--- 


## Linear Regression 

![](lmsyntax.png)


--- 

## Linear Regression 

![](formulas.png)


--- 

## Linear Regression 

![](response.png)


--- 

## Linear Regression 

```
crime <- read.csv(crime.csv)
mod <- lm(tc2009 ~ low, data = crime)
mod
```

![](modcall.png)

--- 


## Linear Regression 

![](extract.png)


--- 

## Linear Regression 

![](interpret.png)


--- 

## Linear Regression 

```
coef(mod)
```

![](interpret1.png)

---

## Linear Regression 

```
coef(mod)
```

![](interpret2.png)

---

## Linear Regression 

```
summary(mod)
```
![](crime.png)


---

## Linear Regression 

```
summary(mod)
```
![](crime1.png)


---bg:#c7d8ed



## Heights Dataset

How does height influence earnings? Fit a linear model to the heights data set, with 'earn' as the dependent variable and 'height' as the independent variable.


Describe to your neighbor the relationship between height and earnings. Do they interpret is similarly?

```
heights <- read.csv("data/heights.csv")
summary(heights)
```
![](summaryheights.png)


---
## Heights Dataset

```
mod <- lm(earn ~ height, data = heights)
```
![](output1.png)

---

## Heights Dataset
```
library(ggplot2)
qplot(height, earn, data = heights) +
geom_smooth(se = FALSE, method = lm)
```
![](qplot1.png)

---

## Heights Dataset


![](summary.png)

---

## Heights Dataset

```
summary(mod)
```
![](summaryhmod.png)

---

## Heights Dataset

```
summary(mod)
```
![](summaryhmod1.png)


---bg:#c7d8ed

## Assumptions

- Linearity: The relationship between X and the mean of Y is linear.
- Homoscedasticity: The variance of residual is the same for any value of X.
- Independence: Observations are independent of each other.
- Normality: For any fixed value of X, Y is normally distributed.

more on assumptions: http://data.library.virginia.edu/diagnostic-plots/

---

## Assumptions

- Linearity: The relationship between X and the mean of Y is linear.

```
library(ggplot2)
qplot(height, earn, data = heights)
```

![](assumption1.png)

---

## Assumptions
- Homoscedasticity: The variance of residual is the same for any value of X.
- Independence: Observations are independent of each other.
- Normality: For any fixed value of X, Y is normally distributed.

```
plot(mod)
```
![](plotmod.png)



---bg:#c7d8ed

## Regression with Categorical Variable

Fit a linear model to the heights data set.
This time regress earn on race. How do
you interpret the results?

---

## Regression with Categorical Variable

```
rmod <- lm(earn ~ race, data = heights)
coef(rmod)
```
![](race.png)

---bg:#c7d8ed


## Regression with Categorical Variable

One value of the variable is chosen as a baseline.
Each remaining value gets its own coefficient.
Interpret coefficients as the effect of moving from
the baseline value to the new value.

---

## Regression with Categorical Variable

```
coef(rmod)
```

![](compare.png)

---
## Regression with Categorical Variable

```
summary(rmod)
```

![](rmod.png)



---


## Regression with Categorical Variable

```
summary(rmod)
```

![](rmod1.png)



---


## Regression with Multiple Variables

```
amod <- lm(earn ~ height + sex + age + race + ed, data = heights)
amod <- lm(earn ~ ., data = heights)
```


---


## Regression with Multiple Variables

```
summary(amod)
```
![](all.png)

---



## Resources

http://researchguides.library.tufts.edu/data

---bg:#c7d8ed


## thank you

joshua.quan@tufts.edu


---





