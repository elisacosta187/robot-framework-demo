# Use a Python base image
FROM python:3.9-slim

# Set environment variables to avoid issues with apt-get and locales
ENV LANG C.UTF-8
ENV PATH=$PATH:/usr/local/bin

# Install dependencies and download Chrome
RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    curl \
    gnupg \
    lsb-release \
    ca-certificates \
    libnspr4 \
    libnss3 \
    libgconf-2-4 \
    libappindicator1 \
    && rm -rf /var/lib/apt/lists/*

# Install Google Chrome
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && dpkg -i google-chrome-stable_current_amd64.deb || apt-get install -f -y \
    && rm google-chrome-stable_current_amd64.deb

# Install the latest compatible ChromeDriver
RUN CHROMEDRIVER_VERSION=$(curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE) \
    && wget https://chromedriver.storage.googleapis.com/${CHROMEDRIVER_VERSION}/chromedriver_linux64.zip \
    && unzip chromedriver_linux64.zip -d /usr/local/bin/ \
    && rm chromedriver_linux64.zip

# Set the environment variable to specify the path of ChromeDriver
ENV CHROMEDRIVER_PATH=/usr/local/bin/chromedriver
RUN chmod +x /usr/local/bin/chromedriver

# Install Robot Framework and SeleniumLibrary
RUN pip install --no-cache-dir \
    robotframework \
    robotframework-seleniumlibrary \
    robotframework-requests \
    selenium

# Set the default working directory for the container
WORKDIR /usr/src/app

# Copy the robot test files into the container
COPY . /usr/src/app

# Set the entrypoint to run Robot Framework tests by default
CMD ["robot", "--outputdir", "output", "tests"]
