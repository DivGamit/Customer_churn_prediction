import streamlit as st
import pandas as pd
import joblib

model = joblib.load("models/model.pkl")

st.title("Telecom Customer Churn Predictor")

uploaded_file = st.file_uploader("Upload customer CSV data", type=["csv"])
if uploaded_file:
    data = pd.read_csv(uploaded_file)
    st.write("Preview:", data.head())
    prediction = model.predict(data)
    st.write("Predictions:", prediction)
