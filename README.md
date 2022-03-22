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

To select a dataset, I could use [these materials](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/main/week_7_project/datasets.md)
As a result, the **Road Safety Data** dataset was selected from the site [data.gov.uk](https://data.gov.uk/dataset/cb7ae6f0-4be6-4935-9277-47e5ce24a11f/road-safety-data).
This data is excellent for applying the skills acquired during the course. There are a lot of files here, they are large. These files are difficult to understand individually, but by collecting them all into a single database, it will be possible to build understandable dashboards for analysis. For work, we will use data about accidents from 2017 to 2020 (Road Safety Data - Accidents).
![](https://github.com/andrecpc/data-engineering-zoomcamp-project/blob/main/Screenshots/1.png)
![](https://github.com/andrecpc/data-engineering-zoomcamp-project/blob/main/Screenshots/2.png)

> _There is a [data sample](https://github.com/andrecpc/data-engineering-zoomcamp-project/blob/main/1_Data/dft-road-casualty-statistics-accident-small.csv) in the current repository._


### Step 2. Selecting and preparing a data lake

Google Cloud Platform is used to store raw data, Terraform is used to configure the infrastructure.  
The deployment process is described [here](https://github.com/DataTalksClub/data-engineering-zoomcamp/tree/main/week_1_basics_n_setup/1_terraform_gcp).  

Creating bucket and dataset.  
To do this, you need to run [these commands](https://github.com/DataTalksClub/data-engineering-zoomcamp/tree/main/week_1_basics_n_setup/1_terraform_gcp/terraform)
![](https://github.com/andrecpc/data-engineering-zoomcamp-project/blob/main/Screenshots/3.png)

![](https://github.com/andrecpc/data-engineering-zoomcamp-project/blob/main/Screenshots/4.png)

![](https://github.com/andrecpc/data-engineering-zoomcamp-project/blob/main/Screenshots/5.png)

Everything was done successfully, we created a package and a dataset.

> _Terraform settings are available in the [repository](https://github.com/andrecpc/data-engineering-zoomcamp-project/tree/main/2_Terraform)._

### Step 3. Data ingestion

Airflow is used to transfer data from the government website to the data lake.  
Launch the docker container with airflow, open the web interface, launch the dag.  
Instructions for deploying the airflow container [here](https://github.com/DataTalksClub/data-engineering-zoomcamp/tree/main/week_2_data_ingestion/airflow).
![](https://github.com/andrecpc/data-engineering-zoomcamp-project/blob/main/Screenshots/6.png)

![](https://github.com/andrecpc/data-engineering-zoomcamp-project/blob/main/Screenshots/7.png)

The data is successfully downloaded and uploaded to the data lake from 2017 to 2020. Data for 2021 and 2022 are not available, so there are warnings in the last steps.

Checking the data lake.
![](https://github.com/andrecpc/data-engineering-zoomcamp-project/blob/main/Screenshots/8.png)

Whoosh! The data was moved to the data lake.

> _The files for launching the airflow container are available in this [repository](https://github.com/andrecpc/data-engineering-zoomcamp-project/tree/main/3_Airflow)._













