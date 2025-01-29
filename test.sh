#!/bin/bash

# Clean up any existing containers
docker-compose -f docker-compose.test.yml down

# Build and start the test environment
docker-compose -f docker-compose.test.yml up --build -d

# Wait for Keycloak to be ready
echo "Waiting for Keycloak to start..."
until curl -s http://localhost:8080/health/ready > /dev/null; do
    sleep 5
done

echo "Keycloak is ready!"
echo "Test credentials:"
echo "Admin Console: http://localhost:8080/admin"
echo "Username: admin"
echo "Password: admin"
echo ""
echo "Test User Account:"
echo "Account Console: http://localhost:8080/realms/test/account"
echo "Username: testuser"
echo "Password: testpass"