---
layout: lab
title: Lab 02 - Data Wrangling 
image: microscope.png
image-width: 150px
---


<div class = "uk-container uk-container-small">

<a class="uk-button uk-button-default" style="width:200px" href="../../labs/lab-02-instructions.html">Lab 2 Instructions</a>

<br>

This lab demonstrates a very minor redesign of the Longitudinal Tracts Database files to make the rest of the project smoother. 

Variable names are standardized, files combined, meta-data on tracts made accessible, and a harmonization file is created to make it much faster and easier to use variables within the ten datasets. 

You will follow the steps that were deployed to accomplish this, build a new data dictionary that has a more intuitive structure, and create a couple of functions to operationalize a more intuitive work flow with the data. 

**Data**

You will find the Census Longitudinal Tabulated Database (LTDB) file here: 

[Harmonized Census Data Part-01](../../data/LTDB_Std_All_Sample.zip)

[Harmonized Census Data Part-02](../../data/LTDB_Std_All_fullcount.zip)

[Codebook](../../data/LTDB-codebook.pdf)

Most of the variables you need will come from the first dataset, which is comprised of variables that come from the long-form version of the census (which is only administered to a sample of the population) or variables from the American Community Survey (the annual survey given to a subsample of citizens). 

The second dataset contains only variables that come from the Decennial Census short form, and thus they are population measures and not sample estimates. 

**Set Up Your Directory Structure**

While working on Lab-02 start building out your directory structure for your project. Below is an example of the folders and sub-folders you'll need to make:

````
. (root/main/project directory)
├── README.md
├── analysis
│   └── README.md
├── assets
│   ├── README.md
│   ├── css
│   │   └── README.md
│   └── images
│       └── README.md
├── <RStudio Project Label>.Rproj
├── data
│   ├── README.md
│   ├── raw
│   │   ├── LTDB-DATA-DICTIONARY.xlsx
│   │   ├── LTDB-codebook.pdf
│   │   ├── LTDB_County_1980_Global_Neighborhood.csv
│   │   ├── LTDB_County_1990_Global_Neighborhood.csv
│   │   ├── LTDB_County_2000_Global_Neighborhood.csv
│   │   ├── LTDB_County_2010_Global_Neighborhood.csv
│   │   ├── LTDB_Std_1970_fullcount.csv
│   │   ├── LTDB_Std_1980_fullcount.csv
│   │   ├── LTDB_Std_1990_fullcount.csv
│   │   ├── LTDB_Std_2000_fullcount.csv
│   │   ├── LTDB_Std_2010_fullcount.csv
│   │   ├── LTDB_Std_All_Sample.zip
│   │   ├── LTDB_Std_All_fullcount.zip
│   │   ├── README.md
│   │   ├── cbsa-crosswalk.rds
│   │   ├── ltdb_data_dictionary.csv
│   │   ├── ltdb_std_1970_sample.csv
│   │   ├── ltdb_std_1980_sample.csv
│   │   ├── ltdb_std_1990_sample.csv
│   │   ├── ltdb_std_2000_sample.csv
│   │   └── ltdb_std_2010_sample.csv
│   ├── rodeo
│   │   ├── LTDB-1970.rds
│   │   ├── LTDB-1980.rds
│   │   ├── LTDB-1990.rds
│   │   ├── LTDB-2000.rds
│   │   ├── LTDB-2010.rds
│   │   ├── LTDB-META-DATA.rds
│   │   └── README.md
│   └── wrangling
│       └── README.md
├── labs
│   ├── wk01
│       └── README.md
│   ├── wk02
│       └── README.md
│   ├── wk03
│       └── README.md
│   ├── wk04
│       └── README.md
│   ├── wk05
│       └── README.md
│   ├── wk06
│       └── README.md
│   └── wk07
│       └── README.md
````

**Consider each lab as a chapter in the book that is your final group website**

You need to provide careful documentation of how you get from raw data in your project to final results. Think about it as a book where each chapter covers a distinct task: 

* Descriptive analysis of neighborhood change 
* Community demographics that predict revitalization 
* Impact of federal programs 
* Packaging of final deliverables

You will activate the GitHub page option for your repository and use the main landing page as the executive summary and index for HTML files that you generate in R Studio from your analysis. 

For example, this was a project students did with the Syracuse Land Bank to help them identify data that could be used to target rehabilitation projects:

[https://lecy.github.io/SyracuseLandBank/](https://lecy.github.io/SyracuseLandBank/)

And another guide describing how you might document the journey from raw data to the final dataset that you use for your analysis. Every step should be explicit, and you should openly discuss the how and why of data wrangling:

[https://github.com/jtleek/datasharing](https://github.com/jtleek/datasharing)

Each folder should contain it's own README.md file with notes on what the folder contains. 

<br>

**Documenting Your Data Steps**

Start creating a guide to use of the data in this project. 

**Raw Files**

All of the raw data files will go in the raw folder. By "raw" we mean the data as it arrived from whatever site we retrieved it from, or the file exactly how it was exported from a custom data collection tool like an online survey program. 

**Anything that documents the data collection process lives here.** This folder also contain scripts used to download data from APIs or scripts that scrape data from websites. Also include any documentation of source data files like data dictionaries or guides to use. 

If you are using data from third-party sources make sure you document retrieval dates, URLs, and to the extent possible any parameters that were used when downloading the data. Scripts are preferable because the arguments are then documented and the behavior can be replicated. If you have to manually enter a bunch of parameters in a data download GUI on the website then if there are questions about the raw data it is never possible to fully replicate the process. It will be unclear whether the provide updated the database and the data files changed, or whether the user incorrectly entered some parameters. 

Common errors at the download step include things like making an error on a Census variable name (easy to do since the raw names are things like _*B19013*_). Or alternatively, incorrectly applying a filter like geography or time-period during a download. 

Depending on how many unique data sources you use, you may want to include subdirectories for each unique source. 

**Data Wrangling**

This folder documents the process of converting raw data into the "rodeo" dataset you use for your models and descriptive statistics. Data steps include: 

* Data cleaning 
* Recoding
* Variable transformations 
* Data aggregation 
* Merging files 
* Filters 
* Conversion from long to wide formats or vice-versa 

Data aggregation typically means changing the unit of analysis. If you have a database of all crimes in a city for a given year but the rest of your data is at the census tract level, you can aggregate up from individual crimes to a count by census tract so that you can add the measure to your dataset. 

There are many ways that you can introduce errors while preparing your data, but be extra careful when merging ("joining") or filtering datasets. These are steps where you can easily drop lots of observations without realizing it and introduce bias into your models through a hidden selection process. 

For example, when applying filters always check to make sure data has been standardized. For example, are all city names written the same? "New York" vs "New York City" vs "NYC" could cause problems. What happens in a filter if a name is typed with an extra space: "NYC "?

Always inspect levels of categorical variables before merges or filters: 

```r
sort( unique( x ) )    # variable stored as a character vector
sort( levels( x ) )    # variable stored as a factor 
```

The final step of the data wrangling scripts should be to save the new data file into the **rodeo** folder. 

You might generate several files that are used at the modeling stage. As a rule of thumb, if the file is used to create descriptive statistics or for any models in your analysis it should be saved in the rodeo folder. 

**Rodeo Data**

This folder contains datasets that have been cleaned and processed, and are ready for analysis. Typically in your RMD scripts used to produce all of the results in your reports you will read data primarily from the rodeo folder. 

This allows us to isolate errors made in preparing the data (data wrangling) from errors made during the modeling stages. 

You should not be doing data wrangling in your analytical steps with the exception of variable transformations related to modeling. For example, creating a squared value of a variable X to use in a quadratic model, logging a variable, or dividind by a constant to change the unit of analysis. Since these are steps related directly to the modeling process it is helpful to keep them together. 

<br>
<hr>
<br>
<a class="uk-button uk-button-default" style="width:200px" href="../../labs/lab-02-instructions.html">Lab 2 Instructions</a>
<br>

</div>
