# Install Docker
chmod +x ./install-docker.sh && ./install-docker.sh
# Install Composer 
chmod +x ./install-composer.sh && ./install-composer.sh
# Build Docker Image
cd ../ && docker-compose build && docker-compose up -d