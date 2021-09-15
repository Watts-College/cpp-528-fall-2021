---
layout: lab
title: Motivating the Topic
image: books.svg
image-width: 150px
---

<div class = "uk-container uk-container-small">

<br>
<hr>

**Here is a good rule of thumb: If you are trying to solve a problem, and there are multi-billion dollar firms whose entire business model depends on solving the same problem, and there are whole courses at your university devoted to how to solve that problem, you might want to figure out what the experts do and see if you can’t learn something from it.** 

<hr>
<br>

## High Demand for Project Management Skills 

Social scientists are not taught how to manage large data projects. It has just been assumed that if you can run models with data, you intuitively know how to manage your data and code. Several things have changed: 

*	Most work is now done by teams, not individuals (Wuchty et al, 2007), adding coordination costs and creating opportunities for project workflow errors (files saved in wrong folders, failing to use the most recent code, no documentation of changes made). 
*	Most projects use data constructed by combining several sources, adding complexity and opportunities to introduce errors through improper merges or re-coding of data.
*	The final analysis presented in reports or publications typically consists of thousands of lines of computer code, creating the need for testing and quality control. Even the smartest people in the business make mistakes.  

When project management is not effectively deployed consequences can be dire: 

<hr>

*Researcher’s from Duke university published a study on using personalized-genomics for patient-specific chemotherapy treatment. Two researchers, Baggerly and Coombes, from MD Anderson requested the data and code. It took many months of back-and-forth (hounding) to actually get the data and code — when they did it was disorganized and poorly documented. Baggerly and Coombes eventually found an error in the code, showing it actually put patients at risk, leading to a major lawsuit and terminated clinical trials.*  

From: “The “Gold Standard” for Data Science Project Management”

<hr>


## Errors in Data Programming

Not all errors are equal. The most unethical and egregious involve conscious manipulation of data or results to commit scientific fraud for professional gain (or often just survival in high-pressure jobs and competitive publishing and funding environments). Fortunately, that appears to the be least common type of error. 

There is also a difference between non-reproducible results and erroneous results. There are many factors that can lead to the publication of questionable results. Some come from basic human biases built into how we seek and process information (“confirmation bias”). When you combine these biases with statistical analysis you get p-value hacking. Some reasons are related to biases built into the publication process itself. See the blog, “6 Factors causing the replication crisis in medical research.” And some are due to the complexity of the scientific process that result in perfectly valid results that came from conditions that can be hard to replicate or generalize. 

For example, psychology has received a lot of attention because of some high-profile studies that have been challenged, what has been termed the "reproducibility crisis". The reproducibility crisis in academic scholarship is an example of the types of issues that arise in any complex data work. Academics is a useful example because the recent crisis has motivated open science advocates to conduct reviews of published research to systematically measure how much error exists in scientific work. Some issues, like biased introduced through peer review, are particular to the field. But many of the issues, especially errors in data and code, are more generally instructive to any work that involves data and analytics. 

Error in research is its own special animal that is unique from most other forms of non-replicability, but it does contribute to it. Error in this context means things like (1) combining datasets in a way that corrupts the relationship between subjects and observations, (2) missing data caused by failed merges or improper filters, (3) incorrectly recoding or transforming variables, (4) mathematical errors or logical errors made with math, or (5) errors in modeling or misinterpretation of models, to name just a few. Notably these are committed unintentionally and unknowingly by analysts, they are mistakes and not assumptions or judgement calls that are up for inspection or debate. Once discovered they are often corrected or retracted, leading to serious loss of credibility by authors, labs, or companies. 

The hard part is that EVERYONE makes mistakes, even the top academics in the world. Steven Levitt, one of the most well-known economists in the world, had one of his most famous publications challenged for a coding error that changed results. 

If you think about your high school math assignments, if you got 19 out of 20 questions correct you earned a 95%, and were probably one of the best students in class. To analyze data and produce substantive results in a professional setting you are often writing thousands of lines of computer code and deploying complicated mathematical models. What are the chances that you are 100% correct? 

The nice thing about mathematical models is that they are easy to communicate in a parsimonious fashion, and issues can often be spotted in statistical models through inconsistencies in commonly-reported descriptive statistics. Data errors, on the other hand, are much harder to detect because data preparation is rarely described in detail and computing errors are not described because authors do not know they exist! More errors likely occur while preparing data for analysis instead of during the analysis. 


## Errors in Data Preparation

From: Brown, A. W., Kaiser, K. A., & Allison, D. B. (2018). Issues with data and analyses: Errors, underlying themes, and potential solutions. Proceedings of the National Academy of Sciences, 115(11), 2563-2570.

*Bad data represent one of the most egregious of themes of errors because there is typically no correct way to analyze bad data, and often no scientifically justifiable conclusions can be reached about the original questions of interest. It also can be one of the more difficult errors to classify, because it may depend on information like the context in which the data are being used and whether they are fit for a particular purpose.*

*Errors of data management tend to be more idiosyncratic than systematic. Errors we have seen (and sometimes made) are the result not of repeating others’ errors, but of constructing bespoke methods of handling, storing, or otherwise managing data. In one case, a group accidentally used reverse-coded variables, making their conclusions the opposite of what the data supported (23). In another case, authors received an incomplete dataset because entire categories of data were missed; when corrected, the qualitative conclusions did not change, but the quantitative conclusions changed by a factor of >7 (24). Such idiosyncratic data management errors can occur in any project, and, like statistical analysis errors, might be corrected by reanalysis of the data. In some cases, idiosyncratic errors may be able to be prevented by adhering to checklists (as proposed in ref. 25).*

*Errors in long-term data storage and sharing can render findings non-confirmable because data are not available to be reanalyzed. Many meta-analysts, including us, have attempted to obtain additional information about a study, but have been unable to because the authors gave no response, could not find data, or were unsure how they calculated their original results. We asked authors once to share data from a publication with implausible baseline imbalances and other potential statistical anomalies; they were unable to produce the data, and the journal retracted the paper (26). We have struggled on occasion to find our own raw data from older studies and welcome advances in data management, data repositories, and data transparency.*

<hr>

<br>

## Replication crisis in Psychology. In Wikipedia, The Free Encyclopedia. Retrieved 05:43, March 15, 2020.  

*Several factors have combined to put psychology at the center of the controversy.[10] Much of the focus has been on the area of social psychology,[11] although other areas of psychology such as clinical psychology,[12][13] developmental psychology,[14] and educational research have also been implicated.[15][16] According to a 2018 survey of 200 meta-analyses, "psychological research is, on average, afflicted with low statistical power".[17]*

*Firstly, questionable research practices (QRPs) have been identified as common in the field.[18] Such practices, while not intentionally fraudulent, involve capitalizing on the gray area of acceptable scientific practices or exploiting flexibility in data collection, analysis, and reporting, often in an effort to obtain a desired outcome. Examples of QRPs include selective reporting or partial publication of data (reporting only some of the study conditions or collected dependent measures in a publication), optional stopping (choosing when to stop data collection, often based on statistical significance of tests), p-value rounding (rounding p-values down to 0.05 to suggest statistical significance), file drawer effect (nonpublication of data), post-hoc storytelling (framing exploratory analyses as confirmatory analyses), and manipulation of outliers (either removing outliers or leaving outliers in a dataset to cause a statistical test to be significant).[18][19][20][21] A survey of over 2,000 psychologists indicated that a majority of respondents admitted to using at least one QRP.[18] False positive conclusions, often resulting from the pressure to publish or the author's own confirmation bias, are an inherent hazard in the field, requiring a certain degree of skepticism on the part of readers.[22]*

*Secondly, psychology and social psychology in particular, has found itself at the center of several scandals involving outright fraudulent research, most notably the admitted data fabrication by Diederik Stapel[23] as well as allegations against others. However, most scholars acknowledge that fraud is, perhaps, the lesser contribution to replication crises.*

*Thirdly, several effects in psychological science have been found to be difficult to replicate even before the current replication crisis. For example, the scientific journal Judgment and Decision Making has published several studies over the years that fail to provide support for the unconscious thought theory. Replications appear particularly difficult when research trials are pre-registered and conducted by research groups not highly invested in the theory under questioning.*

<hr>




## Best Practices for Coding in the Social Sciences

From: *Gentzkow, M., & Shapiro, J. M. (2014). Code and data for the social sciences: A practitioner’s guide. Chicago, IL: University of Chicago.*

What does it mean to do empirical social science? Asking good questions. Digging up novel data. Designing statistical analysis. Writing up results. 

For many of us, most of the time, what it means is writing and debugging code. We write code to clean data, to transform data, to scrape data, and to merge data. We write code to execute statistical analyses, to simulate models, to format results, to produce plots. We stare at, puzzle over, fight with, and curse at code that isn’t working the way we expect it to. We dig through old code trying to figure out what we were thinking when we wrote it, or why we’re getting a different result from the one we got the week before. 

Even researchers lucky enough to have graduate students or research assistants who write code for them still spend a significant amount of time reviewing code, instructing on coding style, or fixing broken code. 

Though we all write code for a living, few of the economists, political scientists, psychologists, sociologists, or other empirical researchers we know have any formal training in computer science. Most of them picked up the basics of programming without much effort, and have never given it much thought since. Saying they should spend more time thinking about the way they write code would be like telling a novelist that she should spend more time thinking about how best to use Microsoft Word. Sure, there are people who take whole courses in how to change fonts or do mail merge, but anyone moderately clever just opens the thing up and figures out how it works along the way.

This manual began with a growing sense that our own version of this self-taught seat-of-the-pants approach to computing was hitting its limits. Again and again, we encountered situations like: 

1.	In trying to replicate the estimates from an early draft of a paper, we discover that the code that produced the estimates no longer works because it calls files that have since been moved. When we finally track down the files and get the code running, the results are different from the earlier ones. 
2.	In the middle of a project we realize that the number of observations in one of our regressions is surprisingly low. After much sleuthing, we find that many observations were dropped in a merge because they had missing values for the county identifier we were merging on. When we correct the mistake and include the dropped observations, the results change dramatically. 
3.	A referee suggests changing our sample definition. The code that defines the sample has been copied and pasted throughout our project directory, and making the change requires updating dozens of files. In doing this, we realize that we were actually using different definitions in different places, so some of our results are based on inconsistent samples. 
4.	We are keen to build on work a research assistant did over the summer. We open her directory and discover hundreds of code and data files. Despite the fact that the code is full of long, detailed comments, just figuring out which files to run in which order to reproduce the data and results takes days of work. Updating the code to extend the analysis proves all but impossible. In the end, we give up and rewrite all of the code from scratch.  
5.	We and our two research assistants all write code that refers to a common set of data files stored on a shared drive. Our work is constantly interrupted because changes one of us makes to the data files causes the others’ code to break. 

At first, we thought of these kinds of problems as more or less inevitable. Any large scale endeavor has a messy underbelly, we figured, and good researchers just keep calm, fight through the frustrations, and make sure the final results are right. But as the projects grew bigger, the problems grew nastier, and our piecemeal efforts at improving matters—writing handbooks and protocols for our RAs, producing larger and larger quantities of comments, notes, and documentation—proved ever more ineffective, we had a growing sense that there must be a way to do better.

In the course of a project involving a really big dataset, we had the chance to work with a computer scientist who had, for many years, taught the course on databases at the University of Chicago. He showed us how we could organize our really big dataset so that it didn’t become impossible to work with. Neat, we thought, and went home. 

Around that time we were in the middle of assembling a small (but to us, very important) dataset of our own. We spent hours debating details of how to organize the files. A few weeks in we realized something. We were solving the same problem the computer scientist had shown us how to solve. Only we were solving it blind, without the advantage of decades of thought about database design. 

> Here is a good rule of thumb: If you are trying to solve a problem, and there are multi-billion dollar firms whose entire business model depends on solving the same problem, and there are whole courses at your university devoted to how to solve that problem, you might want to figure out what the experts do and see if you can’t learn something from it. 

<br>

</div>
