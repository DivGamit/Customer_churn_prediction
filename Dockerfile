# Base image
FROM python:3.10

# Working directory
WORKDIR /app

# Install curl (to download .pkl file)
RUN apt-get update && apt-get install -y curl

# Copy files
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

# Download the .pkl model file from Google Drive (replace YOUR_FILE_ID with the actual file ID)
RUN mkdir -p models && curl -L -o models/model.pkl "https://drive.google.com/uc?export=download&id=1TSJbF-ksFavJ-QlsJwrn_ap3ve0kkuxP"


# Run Streamlit
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
