#!/bin/bash

# Wait for PostgreSQL to be ready (important in Docker)
until PGPASSWORD=$POSTGRES_PASSWORD psql -h "db" -U "$POSTGRES_USER" -d "$POSTGRES_DB" -c '\q'; do
  echo "PostgreSQL is unavailable - sleeping"
  sleep 2
done

# Run database migrations (if using Alembic)
alembic upgrade head

# Start the FastAPI application
exec "$@"