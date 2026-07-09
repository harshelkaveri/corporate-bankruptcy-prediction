# Corporate Bankruptcy Prediction using Random Forest

## Project Overview

This project develops a Random Forest classifier to predict corporate bankruptcy using financial statement ratios from the Taiwan Economic Journal (1999–2009) dataset.

The project was implemented in both **Python** and **R** and demonstrates the complete machine learning workflow, including data preprocessing, handling class imbalance, model training, evaluation, and feature importance analysis.

## Dataset

- Source: Taiwan Economic Journal 1999 - 2009 (via Kaggle)
- 6,819 companies
- 95 financial ratios
- Target variable: Bankruptcy
**Note:** The dataset is not included in this repository. It can be downloaded from Kaggle. After downloading, save the file as `bankruptcy.csv` in the project directory before running the Python or R scripts.
  
  ## Key Features
  
- Implemented in both Python and R to demonstrate equivalent machine learning workflows across programming languages.
- Feature importance analysis identifying ROA, equity-to-liability ratio, 
  and net income-to-assets as primary distress indicators

## Technologies

- Languages: Python, R
- Libraries: Pandas, Scikit-learn, Matplotlib (Python) | randomForest, caret, caTools (R)
- Model: Random Forest Classifier

## Methodology
- Data exploration
- Train-test split
- Addressing class imbalance
- Random Forest Classification
- Performance evaluation using accuracy, confusion matrix, classification report, and feature importance


## Results

- Bankruptcy Recall: **92%**
- Balanced Accuracy: **88%**

The model successfully identifies financially distressed firms and demonstrates its applicability as an early warning credit risk screening tool.

## Repository Contents

- `bankruptcy_prediction.R` – R implementation
- `bankruptcy_prediction.ipynb` – Python implementation (Google Colab)
- `Project_Report.pdf` – Full project report with methodology and findings
