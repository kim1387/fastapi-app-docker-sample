
from fastapi import FastAPI
import mysql.connector
from pydantic import BaseModel

app = FastAPI()

# Database Configuration
db_config = {
    "host": "db",
    "user": "user",
    "password": "password",
    "database": "test_db",
}

# Pydantic Model for Request
class Item(BaseModel):
    name: str
    description: str

@app.get("/")
def read_root():
    return {"message": "Hello, Docker with FastAPI and MySQL!"}

@app.post("/items/")
def create_item(item: Item):
    # Connect to the database
    connection = mysql.connector.connect(**db_config)
    cursor = connection.cursor()

    # Insert data into the database
    query = "INSERT INTO items (name, description) VALUES (%s, %s)"
    values = (item.name, item.description)
    cursor.execute(query, values)
    connection.commit()

    cursor.close()
    connection.close()
    return {"message": f"Item '{item.name}' created successfully!"}

@app.get("/items/")
def read_items():
    # Connect to the database
    connection = mysql.connector.connect(**db_config)
    cursor = connection.cursor()

    # Retrieve data from the database
    query = "SELECT * FROM items"
    cursor.execute(query)
    results = cursor.fetchall()

    cursor.close()
    connection.close()
    return {"items": results}
