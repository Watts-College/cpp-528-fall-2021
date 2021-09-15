---
layout: lab
title: Hedonic Pricing Models 
image: model.svg
image-width: 150px
---

<div class = "uk-container uk-container-small">

<br>
<br>

----

> This week you will accomplish two things:
> 
> (1) practice variable transformations and 
>
> (2) build your baseline model of neighborhood change before adding the policy variables in the next lab.   


---

<br>


## Background Reading 

Introduction to models where the outcome is home value: hedonic pricing models. 

The main insight is that home price is a variable that aggregates a tremendous amount of information about characteristics of houses, neighborhoods, and cities. We can use regression to separate out these difference attributes at different levels, and see they each contributes to the market value of a home. 

Since we are using the median home value variable which represents an entire census tract we focus on how neighborhood attributes and changes in attributes over time impact the average home price in the tract. 

[Hedonic Pricing Models Overview](articles/home-value-change/hedonic-pricing-method.pdf)

[Hedonic Pricing Regression Example in R](https://github.com/buruzaemon/hedonic)

[Valuation Using Hedonic Pricing Models](https://scholarship.sha.cornell.edu/cgi/viewcontent.cgi?article=1058&context=crer)

## Lab Overview 

**The dependent variable in our model is the median home value**. 

This choice draws on a large body of work on “hedonic pricing models” which assert that home values are a good price mechanism to capture the state of a neighborhood because they “price in” all of the characteristics of the house as well as the features of the neighborhood and surrounding city.

This lab will comprise one step of your methodology section in your final report. Using R Markdown documents, show your code for all of the steps and provide details on the reasoning. 



<br>
<hr>
<br>
<br>

</div>
