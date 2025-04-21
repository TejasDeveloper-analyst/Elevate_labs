# 🎬 Netflix Titles Dataset Cleaning

## 📋 Task Overview
**Internship Task 1: Data Cleaning and Preprocessing**  
**Objective:** Clean and prepare the Netflix Movies and TV Shows dataset by handling missing values, duplicates, inconsistent formats, and data types.

---

## 🛠 Steps I Followed

1. **Missing Values**  
   Found missing values in `director`, `cast`, `country`, `date_added`, `rating`, and `duration`.  
   Left them as they are because they are naturally missing.

2. **Duplicates**  
   Checked for duplicates — no duplicate rows found.

3. **Standardized Text**  
   Cleaned text values in `type`, `country`, and `rating` columns (removed extra spaces and applied proper casing).

4. **Date Format**  
   Fixed `date_added` column to a consistent datetime format.

5. **Column Names**  
   Renamed all columns to lowercase and replaced spaces with underscores.

6. **Data Types**  
   Confirmed `release_year` is integer and `date_added` is datetime.

---

## 📂 Files Included
- `netflix_titles_cleaned.csv` → Final cleaned dataset.
- `README.md` → This documentation.

---

## 📷 Sample Data Preview

| show_id | type    | title                | director          | country        | date_added | release_year | rating | duration | listed_in            |
|:-------:|:-------:|:--------------------:|:-----------------:|:--------------:|:----------:|:------------:|:------:|:--------:|:--------------------:|
| s1 | Movie | Dick Johnson Is Dead | Kirsten Johnson | United States | 2021-09-25 | 2020 | PG-13 | 90 min | Documentaries |
| s2 | TV Show | Blood & Water | NaN | South Africa | 2021-09-24 | 2021 | TV-MA | 2 Seasons | International TV Shows, TV Dramas, TV Mysteries |
| s3 | TV Show | Ganglands | Julien Leclercq |    | 2021-09-24 | 2021 | TV-MA | 1 Season | Crime TV Shows, International TV Shows, TV Action & Adventure |
| s4 | TV Show | Jailbirds New Orleans |    |    | 2021-09-24 | 2021 | TV-MA | 1 Season | Docuseries, Reality TV |
| s5 | TV Show | Kota Factory |    | India | 2021-09-24 | 2021 | TV-MA | 2 Seasons | International TV Shows, Romantic TV Shows, TV Dramas |

---

## 🚀 Conclusion
Successfully cleaned the dataset and made it ready for analysis or further use!

---

# 🌟 Thank You!
