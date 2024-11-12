import streamlit as st
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import plotly.express as px
from wordcloud import WordCloud
import plotly.graph_objects as go

# Page configuration
st.set_page_config(page_title="CO2 Emissions Dashboard", layout="wide")

# Title and description
st.title("🌍 Global CO2 Emissions Analysis Dashboard")
st.markdown("""
Creator: Akshat Biniwale | 2021300014 | BE COMPS A | ADV BATCH G \n
This dashboard visualizes CO2 emissions data across different countries and regions over time.
Data is measured in metric tons per capita.
""")

# Load the data
@st.cache_data
def load_data():
    df = pd.read_csv('dataset.csv')
    return df.dropna()

df = load_data()

# Sidebar for filtering
st.sidebar.header("Filters")
selected_year = st.sidebar.selectbox("Select Year for Analysis", 
                                   options=reversed([str(year) for year in range(1990, 2020)]),
                                   index=0)

# Main layout with columns
col1, col2 = st.columns([3, 2])

with col1:
    st.subheader("📊 Top 15 Countries by CO2 Emissions")
    
    # Interactive bar chart using Plotly
    top_15_countries = df.nlargest(15, selected_year)
    fig_top15 = px.bar(
        top_15_countries,
        x='Country Name',
        y=selected_year,
        color='Region',
        title=f'Top 15 Countries by CO2 Emissions ({selected_year})',
        labels={'Country Name': 'Country', selected_year: 'CO2 Emissions (metric tons per capita)'}
    )
    fig_top15.update_layout(xaxis_tickangle=-45)
    st.plotly_chart(fig_top15, use_container_width=True)

with col2:
    st.subheader("🌐 Word Cloud of Regions")
    # Generate word cloud
    text = " ".join(title for title in df['Region'])
    wordcloud = WordCloud(collocations=False, background_color='white',
                         width=800, height=400).generate(text)
    
    fig_wc = plt.figure(figsize=(10, 5))
    plt.imshow(wordcloud, interpolation='bilinear')
    plt.axis("off")
    st.pyplot(fig_wc)

# Regional Analysis
st.subheader("🌏 Regional CO2 Emissions Distribution")
col3, col4 = st.columns([1, 1])

with col3:
    # Box plot using Plotly
    fig_box = px.box(df, x='Region', y=selected_year,
                     title=f'Regional Distribution of CO2 Emissions ({selected_year})',
                     labels={selected_year: 'CO2 Emissions (metric tons per capita)'})
    fig_box.update_layout(xaxis_tickangle=-45)
    st.plotly_chart(fig_box, use_container_width=True)

with col4:
    # Choropleth map
    fig_map = px.choropleth(
        df,
        locations="Country Name",
        locationmode='country names',
        color=selected_year,
        hover_name="Country Name",
        color_continuous_scale="Viridis",
        title=f'Global CO2 Emissions Map ({selected_year})'
    )
    st.plotly_chart(fig_map, use_container_width=True)

# Time series analysis
st.subheader("📈 Historical CO2 Emissions Trends")

# Prepare data for time series
year_cols = [str(year) for year in range(1990, 2020)]
df_melted = pd.melt(df, 
                    id_vars=['Country Name', 'Region'],
                    value_vars=year_cols,
                    var_name='Year',
                    value_name='CO2 Value')

# Allow user to select countries for comparison
selected_countries = st.multiselect(
    "Select countries to compare:",
    options=sorted(df['Country Name'].unique()),
    default=df.nlargest(5, '2019')['Country Name'].tolist()
)

# Create time series plot
if selected_countries:
    fig_timeline = px.line(
        df_melted[df_melted['Country Name'].isin(selected_countries)],
        x='Year',
        y='CO2 Value',
        color='Country Name',
        title='CO2 Emissions Over Time by Country',
        labels={'CO2 Value': 'CO2 Emissions (metric tons per capita)', 'Year': 'Year'}
    )
    fig_timeline.update_layout(showlegend=True, legend_title_text='Country')
    st.plotly_chart(fig_timeline, use_container_width=True)

# Regional scatter plot
st.subheader("🔍 Emissions Correlation Analysis")
fig_scatter = px.scatter(
    df,
    x='2010',
    y='2019',
    size='2015',
    color='Region',
    hover_name='Country Name',
    labels={
        '2010': 'CO2 Emissions in 2010',
        '2019': 'CO2 Emissions in 2019',
        '2015': 'CO2 Emissions in 2015'
    },
    title='CO2 Emissions Correlation (2010 vs 2019)'
)
st.plotly_chart(fig_scatter, use_container_width=True)

# Footer
st.markdown("""
---
### 📝 Notes:
- Creator: Akshat Biniwale | 2021300014 | BE COMPS A | ADV BATCH G 
- All emissions data is measured in metric tons per capita
- Data source: https://www.kaggle.com/datasets/koustavghosh149/co2-emission-around-the-world/
- Interactive features: Hover over charts for detailed information, use the sidebar to filter data
""")