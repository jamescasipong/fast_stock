-- Create additional databases (optional)
CREATE DATABASE inventory_dev;

-- Create roles/users (optional)
CREATE ROLE inventory_user WITH LOGIN PASSWORD 'inventory_pass';

-- Grant permissions (if needed)
GRANT ALL PRIVILEGES ON DATABASE inventory_dev TO inventory_user;