 Amazon Product Dataset Analysis
This is a project to assess data collected from Amazon ecommerce website relating to products and their different categories prices, user reviews and user purchasing tendencies based on different marketing tactics such as discounts.

Dataset Overview
- File: `amazon.csv`
- Description: Contains product details, pricing, reviews, and categories from Amazon.
- Size: [Numberof rows × columns(16)]

 Dataset Columns
| Column Name           | Description                                                                 | Data Type      |
|-----------------------|-----------------------------------------------------------------------------|----------------|
| `product_id`          | Unique identifier for the product                                          | String         |
| `product_name`        | Name of the product                                                        | String         |
| `category`            | Hierarchical product category (e.g., `Electronics|Smartphones|Cases`)       | String         |
| `discounted_price`    | Discounted price of the product (local currency)                           | Numeric (Float)|
| `actual_price`        | Original price of the product                                              | Numeric (Float)|
| `discount_percentage` | Discount percentage (e.g., `50%` → stored as `50.0`)                       | Numeric (Float)|
| `rating`              | Product rating (1.0 to 5.0)                                                | Numeric (Float)|
| `rating_count`        | Number of reviews/ratings                                                  | Integer        |
| `about_product`       | Product description                                                        | Text           |
| `user_id`             | Unique identifier of the reviewer                                          | String         |
| `user_name`           | Name of the reviewer                                                       | String         |
| `review_id`           | Unique identifier for the review                                           | String         |
| `review_title`        | Title of the review                                                        | Text           |
| `review_content`      | Full text of the review                                                    | Text           |
| `img_link`            | URL to the product image                                                   | String         |
| `product_link`        | URL to the product page                                                    | String         |

 Getting Started
1. Clone the Repository:
   ```bash
   git clone https://github.com/WanjiruRoss/Amazon-Data-Set.git
   cd Amazon-Data-Set# Amazon-Data-Set
pip install pandas numpy matplotlib seaborn mysql-connector-python
import pandas as pd
df = pd.read_csv("amazon.csv")
[amazon.csv](https://github.com/user-attachments/files/19060158/amazon.csv)

Key Analysis
Data Cleaning
Converted price columns (discounted_price, actual_price) to numeric values.

Extracted main_category from hierarchical category column.

Handled missing values in rating and discount_percentage.

SQL Integration
Created a MySQL database (ecommerce_db) and table (products).

Loaded the cleaned dataset into MySQL for further analysis.

Insights
Top 10 Most Reviewed Products: Electronics dominate the list.

High-Rating Categories: Books and Beauty products have the highest average ratings.

Discount Impact: Products with 20-40% discounts received the most reviews.

