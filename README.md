# Adidas-US-Sales-Analysis :
![adidas-store-design-model-3d-model-low-poly-rigged-obj-asd-gltf](https://user-images.githubusercontent.com/98810351/235490784-6532023e-4236-4a23-8f52-66c51661bead.jpg)

### Data Collection:
- To gather Adidas US sales data from Kaggle, I first navigated to the Kaggle website and created an account. 
- After logging in, I searched for "Adidas US Sales Data" and selected a suitable dataset based on my analysis requirements. 
- Once I downloaded the dataset, I created a data dictionary to better understand the data and its features.

### Dataset Link :
Adidas US Sales Data : https://www.kaggle.com/datasets/heemalichaudhari/adidas-sales-dataset
### Data Dictionary :
- The data dictionary is an important step in my data analysis process, as it helped me to better understand the data and draw meaningful insights from it. Here is the data dictionary for US sales dataset.
- Retailer: The name of the retailer who made the sale.
- Retailer ID: A unique identifier for the retailer.
- Invoice Date: The date on which the sale was made.
- Region: The region in which the sale was made.
- State: The state in which the sale was made.
- City: The city in which the sale was made.
- Product: The name of the product sold.
- Price per Unit: The price of one unit of the product.
- Units Sold: The number of units sold.
- Total Sales: The total sales revenue generated by the sale.
- Operating Profit: The profit generated by the sale, taking into account all associated costs.
- Operating Margin: The percentage of revenue that represents operating profit.
- Sales Method: The method by which the sale was made (e.g., online, in-store, outlet etc.)




### Problem Statement :
- The problem statement for Adidas US sales analysis for the period of 2020-2021 is to identify the key trends and factors that have influenced the company's sales performance in the US market during this period. This analysis should involve examining the company's sales data, including revenue and sales volume, as well as external factors such as economic conditions, and competitive landscape.
-  The analysis should provide insights into the strengths and weaknesses of Adidas' US sales strategy and identify opportunities for improvement. Ultimately, the goal of the analysis is to help Adidas optimize its sales performance and increase its market share in the US.

### EDA Using Python :
:closed_umbrella: Imported necessary libraries and load the dataset into a Pandas DataFrame like Numpy, Pandas, Matplotlib, Seaborn, datetime & warning.

:closed_umbrella: Checked the basic information about the dataset such as shape, size, data types, and missing values using Pandas functions.

:closed_umbrella: Performed descriptive statistics to understand the central tendency, dispersion, and distribution of the data using NumPy and Pandas functions.

:closed_umbrella: Visualized the data using Matplotlib and Seaborn to identify patterns, trends, and outliers in the data.

:closed_umbrella: Performed feature engineering to create new features that can provide additional insights into the data.

:closed_umbrella: Correlation analysis to identify the relationships between different features in the dataset.
#### Function Used :
:panda_face: corr()

:panda_face: Groupby()

:panda_face: Aggregate Functions like count(),mean(),sum()

:panda_face: rank()

:panda_face: sort_values()

:panda_face: reset_index()

:panda_face: pivot_table()

:panda_face: PeriodIndex()

### EDA Using SQL :
:rocket: Connect to the database: First, connected to the database that contains the dataset using an appropriate database management system (DBMS) such as MySQL

:rocket: View table schema: Used the SQL "DESCRIBE" or "SHOW COLUMNS" statement to view the schema of the table containing the dataset. This will provide information such as column names, data types, and nullability.

:rocket: Check basic statistics: Used SQL aggregation functions such as "COUNT", "SUM", "AVG", "MAX", and "MIN" to calculate basic statistics such as the number of records, sum of values, average, and minimum and maximum values for each column.

:rocket: Identify missing values: Used SQL "WHERE" statement and "IS NULL" or "IS NOT NULL" operator to identify records with missing values.

:rocket: Grouping and aggregation: Used SQL "GROUP BY" statement to group records by one or more columns and calculate summary statistics for each group using SQL aggregation functions.

:rocket: Filtering and sorting: Used SQL "WHERE" statement to filter records based on one or more conditions and "ORDER BY" statement to sort records based on one or more columns.

:rocket: Joins: Used SQL "JOIN" statement to combine multiple tables and extract information that cannot be obtained from a single table.

:rocket: Subqueries: Used SQL subqueries to extract information from a subset of records that satisfy a particular condition or set of conditions.
#### Functions Used :



### EDA Using Excel :
:truck: Check basic information: Used the "Home" tab and the "Find & Select" and "Conditional Formatting" options to check for basic information such as the number of records, data types, and missing values.

:truck: Pivot tables: Used the "Insert" tab and the "PivotTable" option to create pivot tables that summarize the data by grouping records based on one or more columns and calculating summary statistics for each group.

:truck: Charts and graphs: Used the "Insert" tab and the "Charts" and "Sparklines" options to create visualizations such as histograms, line charts, and scatter plots that help to identify patterns and relationships in the data.

:truck: Filtering and sorting: Used the "Data" tab and the "Filter" and "Sort" options to filter and sort records based on one or more columns.
Prepare a report: Use the "Insert" tab and the "Text Box" option to create a report summarizing the findings from the EDA.

#### Pivot Charts Used :
:tokyo_tower: line chart

:tokyo_tower: pie chart

:tokyo_tower: slicer

:tokyo_tower: stacked column chart

:tokyo_tower: Stacked area chart

:tokyo_tower: column chart

:tokyo_tower: bar graph

:tokyo_tower: Doughnut Chart

### EDA Using PowerBI :
:movie_camera: Import the data: Imported the data into Power BI using the "Get Data" option on the "Home" tab and selecting the appropriate data source.

:movie_camera: Data modeling: Used the "Modeling" tab to create a data model that connects the tables and columns of the data and defines relationships and calculations between them.

:movie_camera: Check basic information: Used the "Fields" pane to check for basic information such as the number of records, data types, and missing values.

:movie_camera: Visualizations: Used the "Visualizations" pane to create interactive visualizations such as charts, graphs, and tables that help to identify patterns and relationships in the data.

:movie_camera: Filtering and sorting: Used the "Visualizations" pane and the "Filter" and "Sort by" options to filter and sort records based on one or more columns.

:movie_camera: Aggregations: Used the "Modeling" tab and the "New Measure" option to create calculated measures that aggregate data based on one or more columns and calculate summary statistics for each group.

:movie_camera: Drill-throughs: Used the "Visualizations" pane and the "Drill-through" option to create drill-throughs that allow users to view more detailed information for specific records.

:movie_camera: Prepare a report: Used the "File" tab and the "Export" option to create a report summarizing the findings from the EDA.
