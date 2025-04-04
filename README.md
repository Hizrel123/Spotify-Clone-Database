
🎵 Spotify Clone Database Project

A personal SQL project simulating the core of Spotify’s music data ecosystem using MySQL. Designed to showcase real-world relational database skills and SQL query writing — from basic data retrieval to advanced CTEs and analytical insights.

---

📌 Project Objective
To build a simplified version of Spotify’s backend using SQL, focused on **users**, **playlists**, **songs**, **albums**, and **artists**, while practicing:
- Relational data modeling
- SQL querying (basic to advanced)
- Joins, aggregations, filtering
- Common Table Expressions (CTEs)
- Realistic dataset simulation

---

🧱 Database Schema

**Tables Created:**
- `users`
- `playlists`
- `songs`
- `albums`
- `artists`
- `playlistSongs`

All tables are connected via foreign keys to reflect realistic relationships:
- A **user** can create many **playlists**
- A **playlist** can contain many **songs**
- A **song** belongs to an **album**
- An **album** is made by an **artist**
- Each **artist** is assigned a **genre**

---

📊 Sample SQL Queries Included

✅ Basic Queries
1. **List all artists in the 'Jazz' genre** with their album count.
2. **Find the longest song** by duration.
3. **Show playlists created in 2023** with their song counts.

🧐 Intermediate Analysis
4. Find the **artist with the most albums**.
5. **Average song duration per genre**.
6. **Users with playlists** containing songs from **more than 3 genres**.
7. **Albums without songs** (Left Join practice).

🩻 Advanced Joins / Logic
8. Display **User → Playlist → Songs** in a **hierarchical format** using **CTEs**.
9. **Songs in more than 5 playlists** (popularity analysis).
10. **Artists whose albums** only contain **songs shorter than 4 minutes**.

---

💡 Skills Demonstrated
- SQL (MySQL syntax)
- Schema design and relationships
- Aggregation, grouping, filtering
- Use of `JOIN`, `LEFT JOIN`, `HAVING`, `GROUP BY`, `ORDER BY`
- CTEs and nested logic
- Data formatting (`FLOOR`, `MOD`, `CONCAT`)
- Realistic dataset creation (100+ records)

---

🧠 About Me

I'm Israel Adeleye (aka Izzy or Realspinn), a student with a passion for SQL and database systems. Though I’m not studying a tech-related course, I’m committed to mastering SQL and becoming a **Database Administrator (DBA)**. This project is a step toward that goal.

---

📂 How to Use

1. Open **MySQL Workbench** (or any SQL client).
2. Import the SQL file: `Spotify_clone.sql` (included in this repository).
3. Run the included SQL queries to explore your data and test your logic.
4. Tweak and add more queries to test deeper analysis.
