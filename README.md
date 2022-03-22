# data-engineering-zoomcamp-project

This repository contains the final project for the course [data-engineering-zoomcamp](https://github.com/DataTalksClub/data-engineering-zoomcamp).

**Project Design**
![](https://github.com/andrecpc/data-engineering-zoomcamp-project/blob/main/Screenshots/data-engineering-zoomcamp-project.drawio.png)

The requirements for the final project are [here](https://github.com/DataTalksClub/data-engineering-zoomcamp/tree/main/week_7_project).
Let's go!

----------------------------------------------------

### Step 0. Environment Settings

To work with the project, I used the Google cloud virtual machine, which was configured to do homework on the course. This [video](https://www.youtube.com/watch?v=ae-CV2KfoN0&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&ab_channel=DataTalksClub%E2%AC%9B ) contains instructions how to set it up.

### Step 1. Choosing a dataset

To select a dataset, I could use these [materials](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/main/week_7_project/datasets.md)
As a result, the **Road Safety Data** dataset was selected from the site [data.gov.uk](https://data.gov.uk/dataset/cb7ae6f0-4be6-4935-9277-47e5ce24a11f/road-safety-data).
This data is excellent for applying the skills acquired during the course. There are a lot of files here, they are large. These files are difficult to understand individually, but by collecting them all into a single database, it will be possible to build understandable dashboards for analysis. For work, we will use data about accidents from 2017 to 2020 (Road Safety Data - Accidents).
![](https://github.com/andrecpc/data-engineering-zoomcamp-project/blob/main/Screenshots/1.png)
![](https://github.com/andrecpc/data-engineering-zoomcamp-project/blob/main/Screenshots/2.png)
There is a [data sample](https://github.com/andrecpc/data-engineering-zoomcamp-project/blob/main/1_Data/dft-road-casualty-statistics-accident-small.csv) in the current repository.


