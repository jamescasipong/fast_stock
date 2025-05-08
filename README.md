# Inventory Management System API

![FastAPI](https://img.shields.io/badge/FastAPI-005571?style=for-the-badge&logo=fastapi)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)

A scalable inventory management system built with FastAPI and PostgreSQL, following best practices for enterprise applications.

## Features

- **RESTful API** with proper HTTP status codes
- **JWT Authentication** (OAuth2 with Password Bearer)
- **Database Models** for Items, Categories, and Inventory
- **CRUD Operations** with validation
- **Dockerized** for easy deployment
- **PostgreSQL** backend with Alembic migrations
- **Automated Testing** ready
- **Production-ready** configuration

## Project Structure

```
inventory_api/
├── .venv/                     # Virtual environment
├── docker/                    # Docker configurations
│   ├── db/                    # DB initialization scripts
│   └── web/                   # Web service scripts
├── app/                       # Main application
│   ├── core/                  # Configurations and security
│   ├── db/                    # Database models and session
│   ├── schemas/               # Pydantic models
│   ├── api/                   # API endpoints
│   ├── services/              # Business logic
│   └── utils/                 # Helper functions
├── tests/                     # Test cases
├── migrations/                # Database migrations
├── .env                       # Environment variables
├── docker-compose.yml         # Development compose file
├── Dockerfile                 # Development Dockerfile
└── requirements.txt           # Dependencies
```

## Getting Started

### Prerequisites

- Python 3.9+
- Docker and Docker Compose
- PostgreSQL (for local development without Docker)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/inventory-api.git
   cd inventory-api
   ```

2. **Set up virtual environment**
   ```bash
   python -m venv .venv
   source .venv/bin/activate  # Linux/MacOS
   .venv\Scripts\activate     # Windows
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4. **Configure environment**
   ```bash
   cp .env.example .env
   # Edit .env with your credentials
   ```

### Running with Docker (Recommended)

```bash
docker-compose up -d --build
```

The API will be available at `http://localhost:8000`

### Running Locally

1. Start PostgreSQL service
2. Run migrations:
   ```bash
   alembic upgrade head
   ```
3. Start the application:
   ```bash
   uvicorn app.main:app --reload
   ```

## API Documentation

Interactive documentation is available at:

- Swagger UI: `http://localhost:8000/docs`
- ReDoc: `http://localhost:8000/redoc`

## Endpoints

| Method | Endpoint                | Description                     |
|--------|-------------------------|---------------------------------|
| GET    | /items/                 | List all items                  |
| POST   | /items/                 | Create new item                 |
| GET    | /items/{item_id}        | Get item details                |
| PUT    | /items/{item_id}        | Update item                     |
| DELETE | /items/{item_id}        | Delete item                     |
| GET    | /categories/            | List all categories             |
| POST   | /categories/            | Create new category             |

## Environment Variables

| Variable              | Description                     | Default       |
|-----------------------|---------------------------------|---------------|
| POSTGRES_SERVER       | Database host                   | localhost     |
| POSTGRES_USER         | Database user                   | postgres      |
| POSTGRES_PASSWORD     | Database password               | postgres      |
| POSTGRES_DB           | Database name                   | inventory     |
| SECRET_KEY            | JWT secret key                  | changeme      |
| ACCESS_TOKEN_EXPIRE   | Token expiration in minutes     | 30            |

## Testing

Run tests with:
```bash
pytest
```

## Deployment

For production deployment:
```bash
docker-compose -f docker-compose.prod.yml up -d --build
```

## Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Contact

Your Name - your.email@example.com

Project Link: [https://github.com/yourusername/inventory-api](https://github.com/yourusername/inventory-api)
