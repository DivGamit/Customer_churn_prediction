# Customer_churn_prediction
This project aims to predict customer churn for a telecom company using machine learning. The solution includes a comprehensive pipeline involving data preprocessing, model training, and deployment with CI/CD integration. The project utilizes Random Forest for classification and is deployed as a Streamlit web app inside a Docker container.

Data Preprocessing: Cleaning and transforming raw data, including one-hot encoding and handling missing values.
Model Training: Building a Random Forest classifier to predict customer churn.
Deployment: Full deployment pipeline using Streamlit for interactive visualization, Docker for containerization, and GitHub Actions for CI/CD automation.
CI/CD Pipeline: GitHub Actions for automated testing, building, and deployment.

Python (Pandas, Scikit-learn, Streamlit)
Docker (Containerization)
GitHub Actions (CI/CD)
Machine Learning: Random Forest Classifier
Data Handling: Pandas, NumPy

NOTE-
Since GitHub has a file size limit of 100 MB for uploads, the model.pkl file (which is crucial for the churn prediction model) exceeds this limit. Therefore, we store the model file on Google Drive and download it during the Docker build process.

In the Dockerfile, the following command downloads the model file directly from Google Drive:

Dockerfile
Copy
Edit
RUN curl -L -o model.pkl "https://drive.google.com/uc?export=download&id=YOUR_FILE_ID"
This approach ensures that the model is available during containerization without exceeding GitHub's file size limitations.
