# fast\_stock

**fast\_stock** is an open-source, high-performance inventory management API built with **FastAPI**. It is designed to provide a scalable backend for managing stock, categories, and inventory operations. Whether you're building a small inventory system or integrating into a larger solution, `fast_stock` provides the foundational structure to get started.

## Features

* 🚀 FastAPI-powered RESTful API for managing inventory
* 📦 CRUD operations for **Items**, **Categories**, and **Inventory**
* 🛡️ Role-based access control and authentication
* 🧩 Modular architecture (separate layers for core, services, DB, and API)
* 🔍 Full support for asynchronous operations and background tasks
* 🧪 Built-in unit tests and test structure
* 📁 Clean, scalable folder structure for easier management
* 🌱 Ready to use with Docker for quick deployment

## Tech Stack

* **FastAPI** for building the API
* **SQLAlchemy** for ORM-based database management
* **Pydantic** for data validation and serialization
* **PostgreSQL** as the default database (can be swapped out with others)
* **Alembic** for database migrations
* **Uvicorn** for ASGI server

---

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/fast_stock.git
cd fast_stock
```

### 2. Create a Virtual Environment

For Python 3.x:

```bash
python -m venv .venv
```

### 3. Activate the Virtual Environment

* **On Windows (PowerShell):**

  ```bash
  .\venv\Scripts\Activate.ps1
  ```

* **On macOS/Linux:**

  ```bash
  source .venv/bin/activate
  ```

### 4. Install Dependencies

```bash
pip install -r requirements.txt
```

### 5. Set up the Database

1. Ensure you have a **PostgreSQL** instance running and create a database (e.g., `fast_stock`).
2. Update the `.env` file with your database connection details.

```ini
DATABASE_URL=postgresql://username:password@localhost/fast_stock
```

3. Run database migrations using Alembic:

```bash
alembic upgrade head
```

## Running the Application

Once the environment is set up, you can start the FastAPI application:

```bash
uvicorn app.main:app --reload
```

* **API Documentation**: Open your browser and go to [http://localhost:8000/docs](http://localhost:8000/docs) for the interactive API docs powered by **Swagger UI**.
* **ReDoc Documentation**: You can also view the **ReDoc** documentation at [http://localhost:8000/redoc](http://localhost:8000/redoc).

## Running Tests

To run the test suite, use `pytest`:

```bash
pytest
```

### Running Tests with Coverage:

To see coverage of your tests:

```bash
pytest --cov=app tests/
```

## Docker Setup

If you prefer using Docker for deployment or local development, you can use the provided `Dockerfile` and `docker-compose.yml` for easy containerization.

### 1. Build and Run the Docker Containers

```bash
docker-compose up --build
```

This will start the FastAPI app along with the PostgreSQL database in separate containers.

---

## Project Structure

```
fast_stock/
│
├── .venv/                     # Virtual environment
│   ├── bin/                   # (or Scripts/ on Windows)
│   ├── lib/
│   └── pyvenv.cfg
├── docker/                    # Docker-specific files
│   ├── db/                    # Database initialization scripts
│   │   └── init.sql           # Initial SQL schema/data
│   └── web/                   # Web service specific files
│       └── entrypoint.sh      # Custom entrypoint script
├── app/                       # Main application code
│   ├── __init__.py
│   ├── main.py                # FastAPI app initialization
│   ├── core/                  # Core configurations
│   │   ├── config.py
│   │   ├── security.py
│   │   └── exceptions.py
│   ├── db/                    # Database related
│   │   ├── base.py
│   │   ├── session.py
│   │   └── models/
│   ├── schemas/               # Pydantic schemas
│   ├── api/                   # API endpoints
│   ├── services/              # Business logic
│   └── utils/                 # Utilities
├── tests/                     # Test files
├── migrations/                # Database migrations (or alembic/)
│   ├── versions/
│   └── env.py
├── .dockerignore              # Files to ignore in Docker builds
├── .env                       # Development environment variables
├── .env.prod                  # Production environment variables
├── .gitignore
├── docker-compose.yml         # Main compose file
├── docker-compose.prod.yml    # Production compose file
├── Dockerfile                 # Main Dockerfile
├── Dockerfile.prod            # Production Dockerfile
├── entrypoint.sh              # Application entrypoint
├── requirements.txt           # Development requirements
├── requirements.prod.txt      # Production requirements
└── README.md                  # This file
```

---

## Contributing

We welcome contributions! If you'd like to contribute to `fast_stock`, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and test thoroughly.
4. Create a pull request.

---

## License

`fast_stock` is licensed under the MIT License. See [LICENSE](LICENSE) for more details.

---

This updated `README.md` reflects the structure you've shared. Would you like any further customizations or clarifications in the description?
