# Advanced Data Visualization Dashboard - Setup Guide

## 📋 Project Overview
This project is an automated data visualization system that allows users to:
1. Upload datasets and automatically generate important visualizations
2. Query the dataset using natural language to create custom visualizations
3. Interact with various types of plots and analyze data patterns

## 🔧 Prerequisites
Before setting up the project, ensure you have the following installed:
- Python 3.8 or higher
- pip (Python package installer)
- Git (optional, for cloning the repository)

## 🛠️ Installation Steps

### 1. Create and Activate Virtual Environment
```bash
# Windows
python -m venv venv
.\venv\Scripts\activate

# Linux/Mac
python3 -m venv venv
source venv/bin/activate
```

### 2. Install Required Packages
Create a `requirements.txt` file with the following contents:
```
streamlit==1.32.0
pandas==2.2.0
numpy==1.26.4
google-generativeai==0.3.2
plotly==5.18.0
matplotlib==3.8.3
seaborn==0.13.2
python-dotenv==1.0.1
```

Install the packages:
```bash
pip install -r requirements.txt
```

### 3. Set Up Google Gemini API
1. Go to [Google AI Studio](https://makersuite.google.com/app/apikey)
2. Create a new API key
3. Create a `.env` file in your project root directory and add:
```
GEMINI_API_KEY=your_api_key_here
```

### 4. Project Structure
Create the following file structure:
```
advanced_visualization/
├── .env                    # Environment variables
├── requirements.txt        # Dependencies
├── source_code.py          # Main application code
└── README.md               # Project documentation
```

## 🚀 Running the Application

1. Navigate to your project directory:
```bash
cd advanced_visualization
```

2. Run the Streamlit app:
```bash
streamlit run source_code.py
```

3. The application will open in your default web browser, typically at `http://localhost:8501`

## 📊 Using the Dashboard

### Uploading Data
1. Click on the file upload button
2. Select a CSV file from your computer
3. The system will automatically clean the data and generate visualizations

### Automatic Visualizations
The system will generate up to 5 important visualizations based on your data:
- Numerical distributions
- Categorical distributions
- Scatter plots (if applicable)
- Time series plots (if applicable)
- Interactive correlation heatmap

### Custom Visualizations
1. Enter a natural language query in the text input box
2. Examples of queries:
   - "Show me the distribution of age"
   - "Create a scatter plot of height vs weight"
   - "Plot the relationship between gender and salary"
   - "Show me a box plot of sales by category"

## ⚠️ Troubleshooting

### Common Issues and Solutions

1. **ModuleNotFoundError**
   ```
   Solution: Ensure all packages are installed:
   pip install -r requirements.txt
   ```

2. **API Key Error**
   ```
   Solution: Check if your .env file exists and contains the correct API key
   ```

3. **File Upload Error**
   ```
   Solution: Ensure your CSV file is properly formatted and not corrupted
   ```

4. **Memory Issues**
   ```
   Solution: Try with a smaller dataset or increase your system's available memory
   ```

## 📝 Additional Notes

- The application uses Plotly for interactive visualizations
- All generated plots can be:
  - Zoomed in/out
  - Panned
  - Downloaded as PNG
  - Interacted with using hover tooltips
- The correlation matrix is fully interactive with hover details
- Natural language queries are processed using Google's Gemini AI

## 📫 Authors

For support or questions, please raise an issue in the repository or contact the authors:
- Deepanshu Aggarwal - 2021300002
- Akshat Biniwale - 2021300014
- Vishakha Hole - 2021300043