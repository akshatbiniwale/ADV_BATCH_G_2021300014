# About the Dataset!

**Dataset Link:** https://www.kaggle.com/datasets/impapan/forest-covertype-dataset

Predicting forest cover type from cartographic variables only (no remotely sensed data). The actual forest cover type for a given observation (30 x 30 meter cell) was determined from US Forest Service (USFS) Region 2 Resource Information System (RIS) data. Independent variables were derived from data originally obtained from US Geological Survey (USGS) and USFS data. Data is in raw form (not scaled) and contains binary (0 or 1) columns of data for qualitative independent variables (wilderness areas and soil types).

This study area includes four wilderness areas located in the Roosevelt National Forest of northern Colorado. These areas represent forests with minimal human-caused disturbances, so that existing forest cover types are more a result of ecological processes rather than forest management practices.

Some background information for these four wilderness areas: Neota (area 2) probably has the highest mean elevational value of the 4 wilderness areas. Rawah (area 1) and Comanche Peak (area 3) would have a lower mean elevational value, while Cache la Poudre (area 4) would have the lowest mean elevational value.

As for primary major tree species in these areas, Neota would have spruce/fir (type 1), while Rawah and Comanche Peak would probably have lodgepole pine (type 2) as their primary species, followed by spruce/fir and aspen (type 5). Cache la Poudre would tend to have Ponderosa pine (type 3), Douglas-fir (type 6), and cottonwood/willow (type 4).

The Rawah and Comanche Peak areas would tend to be more typical of the overall dataset than either the Neota or Cache la Poudre, due to their assortment of tree species and range of predictive variable values (elevation, etc.) Cache la Poudre would probably be more unique than the others, due to its relatively low elevation range and species composition.

# My Observations

**Observation 1:** Lodgepole Pine and Spruce/Fir are the dominant forest cover types, with Lodgepole Pine having approximately 280,000 units and Spruce/Fir having around 210,000 units of coverage.

**Observation 2:** The elevation distribution (box plot) shows that Krummholz tends to occur at the highest elevations (around 3,400m), while Cottonwood/Willow is found at lower elevations (around 2,200m).

**Observation 3:** Minor forest cover types including Cottonwood/Willow, Aspen, Douglas-fir, and Krummholz each represent less than 20,000 units of coverage, making up a small fraction of the total forest area.

**Observation 4:** The violin plots show that aspect (directional exposure) varies considerably among forest types, with some species showing wider distributions (more variability in aspect) than others. Douglas-fir shows a particularly distinct bimodal distribution in aspect.

**Observation 5:** Ponderosa Pine shows moderate coverage (around 40,000 units) and tends to occur at lower to mid elevations, with less elevation variability compared to Spruce/Fir and Lodgepole Pine.

**Observation 6:** The pie chart visualization effectively shows that Lodgepole Pine and Spruce/Fir together make up approximately 75-80% of the total forest cover, while the remaining five species collectively account for only 20-25%.
