# RetailPulse — SQL Analytics for Retail Data

Building a retail analytics SQL project from scratch — this repository documents daily progress in database design, data modeling, and analytical querying.

## Table of Contents

- [Overview](#overview)
- [Project Structure](#project-structure)
- [Tech Stack](#tech-stack)
- [Database Design](#database-design)
- [Getting Started](#getting-started)
- [Sample Analysis Queries](#sample-analysis-queries)
- [Progress Log](#progress-log)
- [Key Learnings](#key-learnings)
- [Roadmap](#roadmap)
- [Contact](#contact)

## Overview

This project simulates a retail business's data environment end-to-end: designing the database schema, populating it with data, and writing SQL queries to answer real business questions (sales performance, customer behavior, inventory trends, etc.).

It's built incrementally and documented day by day, so the commit history doubles as a learning log.

**Goals:**
- Practice relational database design (normalization, keys, constraints)
- Write production-style DDL for a retail schema
- Populate and manipulate data with DML
- Answer business questions using analytical SQL (joins, aggregations, window functions, CTEs)

## Project Structure

```
retail-sql-analytics-project/
├── ddl/         # Data Definition Language — schema creation scripts (tables, keys, constraints)
├── dml/         # Data Manipulation Language — data loading, inserts, updates
├── analysis/    # Analytical queries and business-question SQL scripts
└── README.md
```

| Folder | Purpose |
|---|---|
| `ddl/` | Scripts that define the database structure — table creation, primary/foreign keys, indexes, constraints |
| `dml/` | Scripts that populate and modify data — inserts, updates, sample data loading |
| `analysis/` | Query scripts that answer specific business/analytical questions against the schema |

## Tech Stack

- **Database:** SQL (standard DDL/DML — dialect defined by the scripts in `ddl/`)
- **Version control:** Git / GitHub

## Database Design

The schema is defined entirely in `ddl/` and built up incrementally as the project progresses. `dml/` populates and maintains the data on top of that structure. See the scripts in those two folders for the current table definitions and relationships.

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/ThipeTebogo/retail-sql-analytics-project.git
   ```
2. Run the schema scripts in `ddl/` to create the database structure.
3. Run the scripts in `dml/` to populate the tables with sample data.
4. Explore the queries in `analysis/` to see the business questions being answered.

## Sample Analysis Queries

The `analysis/` folder holds the analytical SQL scripts for this project — each one addresses a specific business question against the schema defined in `ddl/`. Browse that folder for the current set of queries.


## Contact

**Tebogo Thipe** — [GitHub](https://github.com/ThipeTebogo)
