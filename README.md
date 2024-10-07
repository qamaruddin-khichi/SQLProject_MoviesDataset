# Movies Dataset Project - SQL Queries

This project contains **30 MySQL queries** written to explore and analyze a movies dataset. The dataset includes information about movie names, ratings, genres, years, release dates, scores, votes, directors, writers, stars, countries, budgets, gross earnings, production companies, and runtimes.

The queries are categorized into **beginner**, **intermediate**, and **advanced** levels to cover different aspects of SQL learning, from basic data retrieval to complex aggregations and filtering.

## Dataset Columns

The dataset includes the following columns:
- `name`: Name of the movie
- `rating`: Movie rating
- `genre`: Genre of the movie
- `year`: Release year
- `released`: Release date
- `score`: IMDb score
- `votes`: Number of votes
- `director`: Director of the movie
- `writer`: Writer(s) of the movie
- `star`: Main star(s)
- `country`: Country of production
- `budget`: Movie budget
- `gross`: Gross earnings
- `company`: Production company
- `runtime`: Movie runtime (in minutes)

## Query Categories

### Beginner Level Questions
1. **Query all columns**: Retrieve all columns from the dataset.
2. **Filter by year**: Find all movies released in 1985.
3. **Filter by genre**: Find all "Action" movies.
4. **Count movies**: Count the total number of movies in the dataset.
5. **Sort by rating**: Sort movies by rating in descending order.
6. **Select specific columns**: Retrieve only the movie names and ratings.
7. **Filter by rating**: Find all movies with a rating greater than 8.0.
8. **Find unique genres**: List all unique genres present in the dataset.
9. **Count movies by country**: Count the number of movies produced in each country.
10. **Filter by budget**: Find all movies with a budget less than $1 million.

### Intermediate Level Questions
1. **Highest grossing movie**: Find the movie with the highest gross earnings.
2. **Average rating by genre**: Calculate the average rating for each genre.
3. **Movies released after 2000**: Find all movies released after the year 2000.
4. **Sort by score**: Retrieve all movies sorted by their score in ascending order.
5. **Filter by director**: Find all movies directed by "Christopher Nolan."
6. **Count movies by year**: Count how many movies were released each year.
7. **Top 5 rated movies**: Retrieve the top 5 highest-rated movies.
8. **Movies with more than average votes**: Find all movies that received more votes than the average.
9. **Filter by runtime**: Find all movies with a runtime between 90 and 120 minutes.
10. **Movies released in January**: Find all movies released in January of any year.

### Advanced Level Questions
1. **Highest score per genre**: Find the highest score for each genre.
2. **Average gross by country**: Calculate the average gross earnings by country.
3. **Movies with budget > gross**: Find all movies where the budget is greater than the gross earnings.
4. **Count movies by director**: Count how many movies each director has directed.
5. **Complex filter**: Find movies with a rating greater than 8.0 and a budget less than $5 million.
6. **Top writer**: Find the writer with the most movies in the dataset.
7. **Group by year and genre**: Count the number of movies per genre for each year.
8. **Movies with the same star**: Find all movies starring "Leonardo DiCaprio."
9. **Top 3 companies by gross**: Find the top 3 production companies by gross earnings.
10. **Filter by rating and votes above average**: Find movies with a rating and votes higher than their average.

## How to Use

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/movies-dataset-sql.git
   cd movies-dataset-sql
   ```

2. **Setup MySQL**:
   - Import the dataset into your MySQL database.
   - Open the `.sql` file containing the dataset structure and insert statements.

3. **Run Queries**:
   - Use the SQL queries from this project to analyze and explore the dataset.
   - Open MySQL Workbench or any SQL client and run the queries one by one.

## Learning Outcomes
By working on this project, you'll learn how to:
- Retrieve data using `SELECT` statements.
- Filter data using `WHERE`, `BETWEEN`, and `IN` clauses.
- Use aggregation functions like `COUNT()`, `SUM()`, `AVG()`, `MIN()`, and `MAX()`.
- Sort data using `ORDER BY`.
- Group and aggregate data with `GROUP BY` and `HAVING`.
- Write complex queries using multiple conditions, joins, and nested queries.

## License
This project is open-source and available under the [MIT License](LICENSE).

---

Feel free to explore, modify, and use these SQL queries to improve your understanding of database querying and data analysis using MySQL!

