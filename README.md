# ecommerce-api

**Professional Outdoor Equipment Retailer**\
Web Frameworks Capstone Project

## Team

- Jonus Clapshaw - @JonusClapshaw
- Konrad Kelly - @konradkelly
- Sam Kosal - @samkosal

## Project Overview

Cascadia Gear Co-op is a professional ecommerce web application focused on high-quality outdoor equipment for hiking, camping, and weekend travel. The goal is to demonstrate full-stack web application architecture with server-side rendering, MVC structure, and REST-style API endpoints.

## Product Category

Outdoor equipment and camping gear (no clothing).

## Basic Setup

```bash
npm install
npm i express
npm run dev
```

## Docker Setup (App + MySQL)

Start the containers:

```bash
docker compose up -d
```

Load the schema into the database:

```bash
docker exec -i ecommerce-mysql mysql -uroot -p"$MYSQL_ROOT_PASSWORD" ecommerce < ./src/scripts/schema.sql
```

Seed the database with sample data:

```bash
docker exec -i ecommerce-mysql mysql -uroot -p"$MYSQL_ROOT_PASSWORD" ecommerce < ./src/scripts/seed.sql
```

Verify the database has products:

```bash
docker exec -it ecommerce-mysql mysql -uroot -p"$MYSQL_ROOT_PASSWORD" -e "SELECT COUNT(*) AS product_count FROM products;" ecommerce
```

## Database Setup

To set up the database schema and seed data, use the following commands. Ensure that the `MYSQL_ROOT_PASSWORD` environment variable is set to the correct password for the MySQL root user.

```bash
# Run the schema.sql script to set up the database schema
docker exec -i ecommerce-mysql mysql -u root -p"$MYSQL_ROOT_PASSWORD" ecommerce < src/scripts/schema.sql

# Run the seed.sql script to populate the database
docker exec -i ecommerce-mysql mysql -u root -p"$MYSQL_ROOT_PASSWORD" ecommerce < src/scripts/seed.sql
```

Make sure to define `MYSQL_ROOT_PASSWORD` in your `.env` file or export it in your shell session before running these commands.
