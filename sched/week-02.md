---
layout: lab
title: Getting Started
image: model.svg
image-width: 150px
---

<div class = "uk-container uk-container-small">

<br>
<br>

**Building a Neighborhood Change Database**

In this project we are ultimately interested in building models to explain neighborhood change between 1990 and 2010.

![](https://raw.githubusercontent.com/DS4PS/cpp-528-spr-2020/master/assets/img/median-home-value-change-2000-to-2010.png)

Census data is central to this analysis. We have begun using the harmonized Longitudinal Tracts Data Base, and by now you understand the challenges of working with the data. 

This unit covers the remaining data steps necessary to wrangle the harmonized census data into a meaningful format necessary to conduct descriptive analysis. 

<br>



## Background Material 

**CRISP-DM** is a useful checklists used for planning data-driven projects. 

> Cross-industry standard process for data mining (CRISP-DM) describes six major iterative phases, each with their own defined tasks and set of deliverables such as documentation and reports.

1. Business Understanding: determine business objectives; assess situation; determine data mining goals; produce project plan 
2. Data Understanding: collect initial data; describe data; explore data; verify data quality 
3. Data Preparation (generally, the most time-consuming phase): select data; clean data; construct data; integrate data; format data 
4. Modeling: select modeling technique; generate test design; build model; assess model 
5. Evaluation: evaluate results; review process; determine next steps 
6. Deployment: plan deployment; plan monitoring and maintenance; produce final report; review project 

Each step in the model is designed to help a team anticipate tasks in the data analytics process. 

[**One-Page Visual Overview**](https://exde.files.wordpress.com/2009/03/crisp_visualguide.pdf)

This phase of the class project focuses on the following task lists in CRISP-DM:

**Data Understanding**

The second stage consists of collecting and exploring the input dataset. The set goal might be unsolvable using the input data, you might need to use public datasets, or even create a specific one for the set goal.

1. Collect Initial Data
- Initial Data Collection Report
1. Describe Data
- Data Description Report
1. Explore Data
- Data Exploration Report
1. Verify Data Quality
- Data Quality Report


**Data Preparation**

As we all know, bad input inevitably leads to bad output. Therefore no matter what you do in modeling — if you made major mistakes while preparing the data — you will end up returning to this stage and doing it over again.

1. Select Data
- The rationale for Inclusion/Exclusion
1. Clean Data
- Data Cleaning Report
1. Construct Data
- Derived Attributes
- Generated Records
1. Integrate Data
- Merged Data
1. Format Data
- Reformatted Data
1. Dataset Description
 

**Reference Material:**

Jenny Bryan has a great presentation on the power of naming conventions for files: [Naming Things](https://www2.stat.duke.edu/~rcs46/lectures_2015/01-markdown-git/slides/naming-slides/naming-slides.pdf). 
 
Note that the name uses the phrase "for data mining", but it is a general framework for data science projects that was developed when "data mining" was a popular term used to describe an emerging field. In the metaphor the data is the rich medium that analysts mine for insights about business processes. The term has fallen out of favor because mining sounds atheoretical. Computer scientists were criticized for developing algorithms that can detect patterns and make predictions without any understanding of the processes or contexts, often leading to ethically questionable recommendations or problematic recommendations. The phrase "data science" was adopted to convey that there is a method to the madness. The CRISP-DM process applies broadly to most data science projects. 

For a slightly more extensive list of tasks at each phase, see: 

* [A general overview of existing data science methodologies](https://medium.com/datadriveninvestor/data-science-project-management-methodologies-f6913c6b29eb)
* [Full Guide](https://inseaddataanalytics.github.io/INSEADAnalytics/CRISP_DM.pdf)

**Examples of Integration of the CRISP-DM Process in R**

CRISP-DM is one example of a project task-list, but not the only option. You will find that the R community has started incorporating some of these process models / project management tools into R packages:

* [R Bloggers: CRISP-DM and why you should know about it](https://www.r-bloggers.com/crisp-dm-and-why-you-should-know-about-it/)  
* [Useful R Packages That Align with CRISP-DM](https://www.datasciencecentral.com/profiles/blogs/userful-r-packages-that-aligns-with-the-crisp-dm-methodology)  

<br>

### Portability & Version Control

Fundamentally, portability and version control are all about making sure that other people are:

1. able to re-run your code; and
2. establish a clear history of edits that make it possible to identify, communicate, and ultimately resolve bugs in your code.

These concepts will be enforced through four tools:
* RStudio Projects;
* The renv package;
* The .gitignore file; and
* Version control techniques via GitHub. 

#### Slide deck & transcript

This week will be the most demanding in terms of learning and directly applying what is covered in this week's videos. To break up the videos into digestable pieces of content, each tool is covered in two types of videos: lectures & tutorials. 

All content covered in each of these videos is documented in this [Presentation](https://docs.google.com/presentation/d/1h5VXC6PDgZaZjfk9k56EJX0VlTlzYfxeAdWSW4vK-88/edit?usp=sharing). All transcripts from each lecture are preserved in the [Document](https://docs.google.com/document/d/1XnqtaHtKDpPZOV7ObpnglBewJGK6g_nS8HB88qMSHVw/edit?usp=sharing).

The videos are presented in the order that they should be watched:



##### Intro to WK02 Concepts

<iframe width="560" height="315" src="https://www.youtube.com/embed/FQpA2-lzNus" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

##### Intro to Portability & RStudio Projects
Lecture:

<iframe width="560" height="315" src="https://www.youtube.com/embed/hAA9K4RYjhM" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Tutorial:

<iframe width="560" height="315" src="https://www.youtube.com/embed/A5W8mQf8ej8" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

##### `renv` package

Lecture:

<iframe width="560" height="315" src="https://www.youtube.com/embed/_VmpLMuxv14" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Tutorial:

<iframe width="560" height="315" src="https://www.youtube.com/embed/y_2PovxwUQc" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

##### `.gitignore` file

Lecture:

<iframe width="560" height="315" src="https://www.youtube.com/embed/4ee7a3qAYKE" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Tutorial:

<iframe width="560" height="315" src="https://www.youtube.com/embed/BYgfjwRQobY" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

##### Git Feature Branch Workflow

Lecture:

<iframe width="560" height="315" src="https://www.youtube.com/embed/Xnji-nM16aA" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Tutorial:

<iframe width="560" height="315" src="https://www.youtube.com/embed/xZTVulTBIzM" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


<br>
<hr>
<br>
<br>

</div>
