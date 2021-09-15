---
layout: lab
title: Project Management Tools 
image: data-analytics.png
image-width: 150px
---




## Project Management Frameworks 

Although we can never fully eliminate errors, we can introduce reasonable quality control processes to ensure that our analysis is (1) as accurate as possible, and (2) transparent enough so that others can review the work directly, and thus are more likely to identify errors.

We typically use data to identify new relationships or patterns (discovery), to present the world at a point in time (descriptive), to tease apart causal effects of specific policies or programs (evaluation), or to use models to predict behavior or events (predictive analysis). All of these tasks require four things:  

**Data**
-	acquisition
-	cleaning / recoding / refinement 
-	wrangling (aggregating across units, merging, filtering)

**Software**
-	a platform or language (like R)
-	use of specific packages 

**Code** 
-	custom functions  
-	custom tables and graphics 
-	analysis and models 

**Deliverable (a report in this context)**
-	data-driven document (code)
-	templates and styles 
-	formatting tables and graphics for report
-	imported content like images and citations 

**Project management in the data science context describes a system for approaching an analytical task that provides methods for writing and testing code to optimize accuracy, and offers a shared framework to make it easier for multiple team members to collaborate.** 

As you know by now, even seemingly simple projects can have a lot of moving parts. The goal of a project management framework is to:

-	Make the process efficient
-	Avoid introducing errors into data or code 
-	Utilize transparency to build trust and catch mistakes 
-	Make the work:
  -	reproducible (recreation of current results)
  -	extensible or scalable (use components in future projects) 

The frameworks below introduce popular systems created to organize projects and manage workflow. 

<br>



## CRISP-DM Model

Our first framework describes the stages of a data-driven project. The work during an analytics-oriented project is broken into six phases with checklists for each in order to help the team anticipate next steps in the process and to assess whether all necessary tasks have been performed at each step. 


> Cross-industry standard process for data mining (CRISP-DM) in 1996 to standardize a data mining process across industries. It describes six major iterative phases, each with their own defined tasks and set of deliverables such as documentation and reports.

1. Business Understanding: determine business objectives; assess situation; determine data mining goals; produce project plan 
2. Data Understanding: collect initial data; describe data; explore data; verify data quality 
3. Data Preparation (generally, the most time-consuming phase): select data; clean data; construct data; integrate data; format data 
4. Modeling: select modeling technique; generate test design; build model; assess model 
5. Evaluation: evaluate results; review process; determine next steps 
6. Deployment: plan deployment; plan monitoring and maintenance; produce final report; review project 

[Citation](http://www.datascience-pm.com/crisp-dm-2/)

Note that the name uses the phrase "for data mining", but it is a general framework for data science projects that was developed when "data mining" was a popular term used to describe an emerging field. In the metaphor the data is the rich medium that analysts mine for insights about business processes. The term has fallen out of favor because mining sounds atheoretical. Computer scientists were criticized for developing algorithms that can detect patterns and make predictions without any understanding of the processes or contexts, often leading to ethically questionable recommendations or problematic recommendations. The phrase "data science" was adopted to convey that there is a method to the madness. The CRISP-DM process applies broadly to most data science projects. 

For a slightly more extensive list of tasks at each phase, see: 

* [A general overview of existing data science methodologies](https://medium.com/datadriveninvestor/data-science-project-management-methodologies-f6913c6b29eb)
* [One-Page Visual Overview](https://exde.files.wordpress.com/2009/03/crisp_visualguide.pdf)
* [Full Guide](https://inseaddataanalytics.github.io/INSEADAnalytics/CRISP_DM.pdf)

**R Integration:**

* [R Bloggers: CRISP-DM and why you should know about it](https://www.r-bloggers.com/crisp-dm-and-why-you-should-know-about-it/)  
* [Useful R Packages That Align with CRISP-DM](https://www.datasciencecentral.com/profiles/blogs/userful-r-packages-that-aligns-with-the-crisp-dm-methodology)  



### Stages of CRISP-DM

From [Data Science Project Management Methodologies](https://medium.com/datadriveninvestor/data-science-project-management-methodologies-f6913c6b29eb)

<br> 


**Business Understanding**

This stage is aimed toward getting a general understanding of the client’s business. It is crucial in most cases to understand the application of the product to be developed. If it is skipped — you might end up with a large trained neural network, that has to be deployed to a mobile phone and work in realtime.

1. Determine Business Objectives
- Background
- Business Objectives
- Business Success Criteria
1. Assess the Situation
- Inventory of Resources
- Requirements, Assumptions, and Constraints
- Risks and Contingencies
- Terminology
- Costs and Benefits
1. Determine Goals
- Data Mining Goals
- Data Mining Success Criteria
1. Produce Project Plan
- Project Plan
- Initial Assessment of Tools and Techniques

<br>


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

<br>


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

<br> 

**Modeling**

This stage is an execution of all of your findings from previous stages. You already know the input to the model, you can tell which models are compatible with the target platform. Now is the time to bring it all to life.

1. Select Modeling Techniques
- Modeling Technique
- Modeling Assumptions
1. Generate Test Design
- Test Design
1. Build Model
- Parameter Settings
- Models
- Model Descriptions
1. Assess Model
- Model Assessment
- Revised Parameter Settings

<br> 


**Evaluation**

This stage is aimed at the evaluation of the obtained results. We need to check if the business goal was fulfilled and plan further steps of the project.

1. Evaluate Results
- Assessment of Data Mining Results w.r.t. Business Success Criteria
- Approved Models
1. Review Process
- Review of Process
1. Determine Next Steps
- List of Possible Actions
- Decision

<br> 


**Deployment of Deliverables** 

If previous stages were successful and there was a decision made to deploy the model — this stage will be activated. You might need to put your model into an existing pipeline, create your own or deploy to cloud computing services.

1. Plan Deployment
- Deployment Plan
1. Plan Monitoring and Maintenance
- Monitoring and Maintenance Plan
1. Produce Final Report
- Final Report
- Final Presentation
1. Review Project
- Experience Documentation

<br> 

<hr>

<br>






## Kanban

*Kanban is a visual system for managing work as it moves through a process. Kanban visualizes both the process (the workflow) and the actual work passing through that process. The goal of Kanban is to identify potential bottlenecks in your process and fix them so work can flow through it cost-effectively at an optimal speed or throughput.*

*The Kanban Method is an evolutionary improvement process. It helps you adopt small changes and improve gradually at a pace and size that your team can handle easily. It encourages the use of the scientific method – you form a hypothesis, you test it and you make changes depending on the outcome of your test... Your key task is to evaluate your process constantly and improve continuously as needed and as possible.*

[What is Kanban?](https://www.digite.com/kanban/what-is-kanban/)

<br>
<hr>

<iframe title="vimeo-player" src="https://player.vimeo.com/video/236558214" width="640" height="360" frameborder="0" allowfullscreen></iframe>

<hr>
<br>


## Scrum

> Scrum divides the larger project into a series of mini-projects, each of a consistent and fixed length ranging from one week to one month. Each mini-project cycle, called a sprint, kicks off at a meeting called sprint planning where the product owner defines and explains the top feature priorities. The development team forecasts what increments they can deliver by the end of the sprint and then makes a sprint plan to develop these increments. During the sprint, they coordinate closely and develop daily plans at daily standups. At the end of the sprint, the team demonstrates the increments to stakeholders and solicit feedback during sprint review. These increments should be potentially releasable and meet the pre-defined definition of done. To close a sprint, the team inspects itself and plans for how it can improve in the next sprint during the sprint retrospective (Sutherland & Schwaber, 2017).

[Scrum Overview](http://www.datascience-pm.com/scrum/)

[Kanban vs Scrum](https://www.atlassian.com/agile/kanban/kanban-vs-scrum)


## Documentation

> Nearly everyone knows that that they need good documentation, and most people try to create good documentation. And most people fail.
> 
> Usually, it’s not because they don’t try hard enough. Usually, it’s because they are not doing it the right way.
> 
> There are some very simple principles that govern documentation that are very rarely if ever spelled out. They seem to be a secret, though they shouldn’t be.

[What nobody tells you about documentation](https://www.divio.com/blog/documentation/)

<br>









