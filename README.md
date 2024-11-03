# E-commerce Data Warehouse Project

This project is part of the ETL & Data Warehousing curriculum at DSTI, focused on building a comprehensive data processing solution for an e-commerce dataset. It involves extracting, transforming, and loading data from multiple CSV sources into a centralized data warehouse to support analytics on customer behavior, order processing, delivery performance, and more.

---

## Project Overview

The goal of this project is to develop an ETL pipeline that integrates data from multiple sources into a star schema data warehouse. The project covers all ETL steps, from data extraction and transformation to loading, enabling advanced reporting and analytics for business insights in the e-commerce domain.

## Project Objectives

The main technical objectives of this project are:
- **Extract** data from various CSV files (orders, products, payments, reviews, geolocation, etc.) and load it into a staging area.
- **Transform** the data by cleaning, standardizing formats, and applying necessary transformations for data consistency.
- **Create a star schema** in the data warehouse, with fact tables and dimension tables.
- **Load data** into the final data warehouse, ensuring optimized indexing and data integrity.
- **Automate** the ETL workflow using SSIS, enabling scheduled updates without manual intervention.

## Environment and Tools

| Tool                                | Function                          | Usage in Project                                       |
|-------------------------------------|-----------------------------------|--------------------------------------------------------|
| SQL Server Management Studio        | Database management               | To design tables, manage data, and run queries         |
| Visual Studio 2022 Community (SSDT) | ETL package development           | To develop and configure ETL processes                 |
| SQL Server Integration Services (SSIS) | ETL execution and automation      | To execute, automate, and schedule ETL workflows       |
| Git                                 | Version control                   | To track changes and manage code versions              |

## Data Sources

The following CSV files are used as data sources for this project:
- **Orders Dataset**: Contains order details including timestamps, status, and customer ID.
- **Products Dataset**: Includes product information such as category, weight, and dimensions.
- **Payments Dataset**: Details of payment types, amounts, and installments.
- **Reviews Dataset**: Customer feedback and ratings for orders.
- **Geolocation Dataset**: Geographic data based on ZIP codes, useful for location-based analysis.
- **Customers Dataset**: Information about customers including unique IDs and locations.

## ETL Process

The ETL pipeline consists of the following stages:

1. **Extraction**:
   - Data is extracted from CSV files and loaded into staging tables using SSIS.

2. **Transformation**:
   - Data cleaning, handling of missing values, type conversions, and format standardization.
   - Integration of product category translations and calculation of derived attributes (e.g., product volume).
   - Creation of relationships between tables using lookups and joining transformations.

3. **Loading**:
   - Transformed data is loaded into fact and dimension tables in the data warehouse, following a star schema design.

## Data Warehouse Schema

The data warehouse uses a star schema, with the following structure:
- **FactOrders**: Stores core transactional data with keys linking to dimension tables.
- **DimOrderDetails**: Contains detailed information on each order, such as timestamps and delivery details.
- **DimProducts**: Includes product information like category, weight, and volume.
- **DimSellers**: Contains data about sellers, including their location.
- **DimReviews**: Stores customer review scores and feedback.

Refer to the `schema/` folder for SQL scripts used to create these tables.

## Usage and Deployment

### Prerequisites

- SQL Server 2022 and SQL Server Management Studio (SSMS)
- Visual Studio 2022 with SQL Server Data Tools (SSDT)
- SQL Server Integration Services (SSIS)
- Git for version control

### Deployment Steps

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/ecommerce-data-warehouse.git
   cd ecommerce-data-warehouse
