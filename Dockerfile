# BASE_IMAGE, APP_VERSION is coming from compose file as an arguments
ARG BASE_IMAGE
FROM ${BASE_IMAGE}

WORKDIR /app

# Accept dynamic argument
ARG APP_VERSION
ENV APP_VERSION=${APP_VERSION}

# Set environment variable
ENV ENVIRONMENT=production

COPY . .

CMD ["python", "app.py"]