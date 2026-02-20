# Cascadia-Gear-Co-op

**Professional Outdoor Equipment Retailer**  
Web Frameworks Capstone Project

## Team

- Jonus Clapshaw - @JonusClapshaw
- Konrad Kelly - @konradkelly
- Sam Kosal - @samkosal

## Project Overview

Cascadia Gear Co-op is a professional ecommerce web application focused on high-quality outdoor equipment for hiking, camping, and weekend travel. The goal is to demonstrate full-stack web application architecture with server-side rendering, MVC structure, and REST-style API endpoints.

## Product Category

Outdoor equipment and camping gear.

**Categories include:**
- Backpacks
- Tents
- Sleep Systems
- Camp Essentials
- Accessories & Tools

## Prerequisites

- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installed and running
- (Optional) [Node.js](https://nodejs.org/) if you want to run the app locally without Docker

## Environment Variables

Create a `.env` file in the project root with the following content (edit values as needed):

```env
NODE_ENV=production
PORT=8001
DB_HOST=mysql
DB_PORT=3306
DB_USER=root
DB_PASSWORD=your_chosen_password
DB_NAME=ecommerce
MYSQL_ROOT_PASSWORD=your_chosen_password
MYSQL_DATABASE=ecommerce
PMA_HOST=mysql
PMA_PORT=3306
```

## Docker Setup (Express Application + MySQL)

**Start the containers (first time or after dependency changes):**
```bash
docker compose up -d --build
```

**Start the containers (subsequent runs):**
```bash
docker compose up -d
```

**Load the schema into the database:**
```bash
docker exec -i ecommerce-mysql mysql -uroot -p${MYSQL_ROOT_PASSWORD} ecommerce < ./src/scripts/schema.sql
```

**Seed the database with sample data:**
```bash
docker exec -i ecommerce-mysql mysql -uroot -p${MYSQL_ROOT_PASSWORD} ecommerce < ./src/scripts/seed.sql
```

**Verify the database has products and images:**
```bash
docker exec -it ecommerce-mysql mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "SELECT * FROM products; SELECT * FROM images;" ecommerce
```

## Accessing the Application

- **Express Application:**  
  [http://localhost:8001](http://localhost:8001)  
  (If you change the `PORT` in your `.env` file, use that port instead.)

- **phpMyAdmin:**  
  [http://localhost:3312](http://localhost:3312)  
  - **Username:** your `DB_USER` from `.env`
  - **Password:** your `DB_PASSWORD` from `.env`
  - Select the `ecommerce` database to view and manage tables.

---

All configuration values (ports, database credentials, etc.) are managed via the `.env` file.  
Update `.env` as needed and restart Docker containers for changes to take effect.