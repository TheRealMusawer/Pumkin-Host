FROM debian:stable-slim

WORKDIR /app

# Install unzip
RUN apt-get update && apt-get install -y unzip

# Copy your zipped binary
COPY pumpkin.zip .

# Unzip and make executable
RUN unzip pumpkin.zip && chmod +x pumpkin

# Run Pumpkin
CMD ["./pumpkin", "--port", "25565"]
