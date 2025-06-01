# Base image
FROM python:3.11

# Set working directory
WORKDIR /app

# Copy files
COPY . /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# port
EXPOSE 8501

# Run Streamlit app
CMD [ "streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
