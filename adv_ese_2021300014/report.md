# About the Dataset!

**Kaggle Link:** https://www.kaggle.com/datasets/koustavghosh149/co2-emission-around-the-world/

This Dataset consists CO2 emissions in metricton per capita of every country around the world. The datas are from 1990 to 2019. Coutries regions are included. Data is collected from world data bank. The link is given. https://data.worldbank.org/indicator/EN.ATM.CO2E.PC
Data is initially preprocessed using excel.

# How to run the project

1. Create a new folder and place both `source_code.py` and `dataset.csv` files in it
2. Open terminal/command prompt in that folder and install required packages:

```shell
install streamlit pandas seaborn matplotlib plotly wordcloud
```

3. Run the Streamlit app:

```shell
streamlit run source_code.py
```

4. The dashboard will automatically open in your default web browser (typically at http://localhost:8501)

# My Observations

1. **Observation 1:** Qatar has the highest CO2 emissions per capita among the top 15 countries listed, with emissions exceeding 30 metric tons per capita in 2019.

2. **Observation 2:** The regions "Asia" and "Africa" stand out prominently, indicating that these regions have a significant presence or mention in the context of CO2 emissions per capita from 1990 to 2019

3. **Observation 3:** North America exhibits the highest median CO2 emissions per capita among the regions displayed in the box plot for the year 2019, emphasizing the significant contribution of this region to global CO2 emissions relative to its population size.

4. **Observation 4:** The highest CO2 emissions in 2019 are concentrated in regions such as North America, Europe, and parts of Asia, as indicated by the lighter colors on the map.

5. **Observation 5:** CO2 emissions per capita for the United Arab Emirates have generally decreased from around 30 metric tons per capita in 1990 to around 20 metric tons per capita in 2018.

6. **Observation 6:** There is a strong positive correlation between CO2 emissions in 2010 and CO2 emissions in 2019 across different regions, as indicated by the upward trend of the data points.