arrange(Year, desc(Total_Waste)) %>%
slice_max(Total_Waste, n = 1, by = Year)  # Select the top category per year
# Step 2: Create the bar chart
ggplot(top_food_per_year, aes(x = factor(Year), y = -Total_Waste, fill = `Food Category`)) +
geom_bar(stat = "identity") +
theme_minimal() +
labs(
title = "Most Wasted Food Category for Each Year",
x = "Year",
y = "Total Waste (Tons)"
) +
scale_fill_brewer(palette = "Set6") +  # Color coding for different categories
theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate year labels for better readability
library(dplyr)
library(ggplot2)
# Step 1: Find the most wasted food category for each year
top_food_per_year <- global_food_wastage_dataset %>%
group_by(Year, `Food Category`) %>%
summarise(Total_Waste = sum(`Total Waste (Tons)`), .groups = "drop") %>%
arrange(Year, desc(Total_Waste)) %>%
slice_max(Total_Waste, n = 1, by = Year)  # Select the top category per year
# Step 2: Create the bar chart
ggplot(top_food_per_year, aes(x = factor(Year), y = Total_Waste, fill = `Food Category`)) +
geom_bar(stat = "identity") +
theme_minimal() +
labs(
title = "Most Wasted Food Category for Each Year",
x = "Year",
y = "Total Waste (Tons)"
) +
scale_fill_brewer(palette = "Set4") +  # Color coding for different categories
theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate year labels for better readability
library(dplyr)
library(ggplot2)
# Step 1: Find the most wasted food category for each year
top_food_per_year <- global_food_wastage_dataset %>%
group_by(Year, `Food Category`) %>%
summarise(Total_Waste = sum(`Total Waste (Tons)`), .groups = "drop") %>%
arrange(Year, desc(Total_Waste)) %>%
slice_max(Total_Waste, n = 1, by = Year)  # Select the top category per year
# Step 2: Create the bar chart
ggplot(top_food_per_year, aes(x = factor(Year), y = Total_Waste, fill = `Food Category`)) +
geom_bar(stat = "identity") +
theme_minimal() +
labs(
title = "Most Wasted Food Category for Each Year",
x = "Year",
y = "Total Waste (Tons)"
) +
scale_fill_brewer(palette = "Set2") +  # Color coding for different categories
theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate year labels for better readability
library(dplyr)
library(ggplot2)
# Step 1: Summarize total food waste by year
waste_trend <- global_food_wastage_dataset %>%
group_by(Year) %>%
summarise(Total_Waste = sum(`Total Waste (Tons)`))
# Step 2: Create a line chart to show the trend
ggplot(waste_trend, aes(x = Year, y = Total_Waste)) +
geom_line(color = "blue", size = 1) +
geom_point(color = "red", size = 3) +  # Add points for each year
theme_minimal() +
labs(
title = "Total Food Waste Trend Over the Years",
x = "Year",
y = "Total Waste (Tons)"
) +
theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate year labels
library(dplyr)
library(ggplot2)
# Step 1: Summarize total food waste by year
waste_trend <- global_food_wastage_dataset %>%
group_by(Year) %>%
summarise(Total_Waste = sum(`Total Waste (Tons)`))
# Step 2: Create a line chart to show the trend
ggplot(waste_trend, aes(x = Year, y = Total_Waste)) +
geom_line(color = "blue", size = 1) +
geom_point(color = "green", size = 3) +  # Add points for each year
theme_minimal() +
labs(
title = "Total Food Waste Trend Over the Years",
x = "Year",
y = "Total Waste (Tons)"
) +
theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate year labels
library(dplyr)
library(ggplot2)
# Step 1: Summarize total food waste by year
waste_trend <- global_food_wastage_dataset %>%
group_by(Year) %>%
summarise(Total_Waste = sum(`Total Waste (Tons)`))
# Step 2: Create a line chart to show the trend
ggplot(waste_trend, aes(x = Year, y = Total_Waste)) +
geom_line(color = "blue", size = 1) +
geom_point(color = "maroon", size = 3) +  # Add points for each year
theme_minimal() +
labs(
title = "Total Food Waste Trend Over the Years",
x = "Year",
y = "Total Waste (Tons)"
) +
theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate year labels
library(dplyr)
library(ggplot2)
# Step 1: Summarize total waste by food category
top_food_categories <- global_food_wastage_dataset %>%
group_by(`Food Category`) %>%
summarise(Total_Waste = sum(`Total Waste (Tons)`)) %>%
arrange(desc(Total_Waste))  # Sort in descending order
# Step 2: Display the top 1 category
top_food_category <- head(top_food_categories, 1)
print(top_food_category)  # Print the category with the highest waste
# Step 3: Create a bar chart for all food categories
ggplot(top_food_categories, aes(x = reorder(`Food Category`, -Total_Waste), y = Total_Waste, fill = Total_Waste)) +
geom_bar(stat = "identity") +
theme_minimal() +
labs(
title = "Total Food Waste by Category (Global)",
x = "Food Category",
y = "Total Waste (Tons)"
) +
scale_fill_gradient(low = "purple", high = "blue") +  # Gradient from purple to blue
theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate labels for readability
economic_loss_by_country <- global_food_wastage_dataset %>%
group_by(Country) %>%
summarise(Total_Economic_Loss = sum(`Economic Loss (Million $)`)) %>%
arrange(desc(Total_Economic_Loss))  # Sort in descending order
economic_loss_by_country <- global_food_wastage_dataset %>%
group_by(Country) %>%
summarise(Total_Economic_Loss = sum(`Economic Loss (Million $)`)) %>%
arrange(desc(Total_Economic_Loss))  # Sort in descending order
top_economic_loss_country <- head(economic_loss_by_country, 1)
print(top_economic_loss_country)  # Print the country with the highest loss
op_10_economic_loss <- head(economic_loss_by_country, 10)  # Select top 10 countries
ggplot(top_10_economic_loss, aes(x = reorder(Country, -Total_Economic_Loss), y = Total_Economic_Loss, fill = Total_Economic_Loss)) +
geom_bar(stat = "identity") +
theme_minimal() +
labs(
title = "Top 10 Countries with the Highest Economic Loss Due to Food Waste",
x = "Country",
y = "Total Economic Loss (Million $)"
) +
scale_fill_gradient(low = "red", high = "darkred") +  # Gradient from light red to dark red
theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate labels for readability
top_10_economic_loss <- head(economic_loss_by_country, 10)  # Select top 10 countries
ggplot(top_10_economic_loss, aes(x = reorder(Country, -Total_Economic_Loss), y = Total_Economic_Loss, fill = Total_Economic_Loss)) +
geom_bar(stat = "identity") +
theme_minimal() +
labs(
title = "Top 10 Countries with the Highest Economic Loss Due to Food Waste",
x = "Country",
y = "Total Economic Loss (Million $)"
) +
scale_fill_gradient(low = "red", high = "darkred") +  # Gradient from light red to dark red
theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate labels for readability
op_10_economic_loss <- head(economic_loss_by_country, 10)  # Select top 10 countries
ggplot(top_10_economic_loss, aes(x = reorder(Country, -Total_Economic_Loss), y = Total_Economic_Loss, fill = Total_Economic_Loss)) +
geom_bar(stat = "identity") +
theme_minimal() +
labs(
title = "Top 10 Countries with the Highest Economic Loss Due to Food Waste",
x = "Country",
y = "Total Economic Loss (Million $)"
) +
scale_fill_gradient(low = "lightblue", high = "navyblue") +  # Gradient from light red to dark red
theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate labels for readability
individual_wastage <- global_food_wastage_dataset %>%
group by(Country))
waste_per_capita_by_country <- global_food_wastage_dataset %>%
group_by(Country) %>%
summarise(Avg_Waste_Per_Capita = mean(`Avg Waste per Capita (Kg)`)) %>%
arrange(desc(Avg_Waste_Per_Capita))  # Sort in descending order
top_waste_per_capita_country <- head(waste_per_capita_by_country, 1)
print(top_waste_per_capita_country)
top_10_waste_per_capita <- head(waste_per_capita_by_country, 10)  # Select top 10 countries
ggplot(top_10_waste_per_capita, aes(x = reorder(Country, -Avg_Waste_Per_Capita), y = Avg_Waste_Per_Capita, fill = Avg_Waste_Per_Capita)) +
geom_bar(stat = "identity") +
theme_minimal() +
labs(
title = "Top 10 Countries with the Highest Food Waste Per Person",
x = "Country",
y = "Avg Waste per Capita (Kg)"
) +
scale_fill_gradient(low = "orange", high = "red") +  # Gradient from orange to red
theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate labels for readability
# Calculate correlation between Total Waste and Economic Loss
correlation <- cor(global_food_wastage_dataset$`Total Waste (Tons)`,
global_food_wastage_dataset$`Economic Loss (Million $)`,
use = "complete.obs")
# Print the correlation result
print(correlation)
# Load required library
library(ggplot2)
# Step 1: Compute the correlation
correlation <- cor(global_food_wastage_dataset$`Total Waste (Tons)`,
global_food_wastage_dataset$`Economic Loss (Million $)`,
use = "complete.obs")
# Print the correlation result
print(paste("Correlation between Total Waste and Economic Loss:", round(correlation, 3)))
# Step 2: Create a scatter plot with regression line
ggplot(global_food_wastage_dataset, aes(x = `Total Waste (Tons)`, y = `Economic Loss (Million $)`)) +
geom_point(color = "blue", alpha = 0.5) +  # Scatter plot points
geom_smooth(method = "lm", color = "red", se = FALSE) +  # Regression line
theme_minimal() +
labs(
title = "Correlation Between Total Food Waste and Economic Loss",
x = "Total Waste (Tons)",
y = "Economic Loss (Million $)"
)
correlation <- cor(global_food_wastage_dataset$`Population (Million))`,
global_food_wastage_dataset$`Total Waste (Tons))`,
use = "complete.obs")
library(ggplot2)
correlation <- cor(global_food_wastage_dataset$`Population (Million))`,
+                    global_food_wastage_dataset$`Total Waste (Tons))`,
+                    use = "complete.obs")
correlation <- cor(global_food_wastage_dataset$`Population (Million))`,
+                    global_food_wastage_dataset$`Total Waste (Tons))`,
+                    use = "complete.obs") print(paste("Correlation between Population and Total Waste:",round(correlation,3)))
correlation <- cor(global_food_wastage_dataset$`Population (Million))`,
global_food_wastage_dataset$`Total Waste (Tons))`,
use = "complete.obs") print(paste("Correlation between Population and Total Waste:",round(correlation,3)))
Error: unexpected '=' in:
correlation <- cor(global_food_wastage_dataset$`Population (Million))`,
+ global_food_wastage_dataset$`Total Waste (Tons)`,
+ use = "complete.obs") print(paste("Correlation between Population and Total Waste:",round(correlation,3)))
# Load required library
library(ggplot2)
# Step 1: Compute the correlation
correlation <- cor(global_food_wastage_dataset$`Population (Million)`,
global_food_wastage_dataset$`Total Waste (Tons)`,
use = "complete.obs")
# Print the correlation result
print(paste("Correlation between Population and Total Waste:", round(correlation, 3)))
# Step 2: Create a scatter plot with regression line
ggplot(global_food_wastage_dataset, aes(x = `Population (Million)`, y = `Total Waste (Tons)`)) +
geom_point(color = "blue", alpha = 0.5) +  # Scatter plot points
geom_smooth(method = "lm", color = "red", se = FALSE) +  # Regression line
theme_minimal() +
labs(
title = "Relationship Between Population and Food Waste",
x = "Population (Million)",
y = "Total Waste (Tons)"
)
# Load required library
library(ggplot2)
# Step 1: Compute the correlation
correlation <- cor(global_food_wastage_dataset$`Population (Million)`,
global_food_wastage_dataset$`Total Waste (Tons)`,
use = "complete.obs")
# Print the correlation result
print(paste("Correlation between Population and Total Waste:", round(correlation, 3)))
# Step 2: Create a scatter plot with regression line
ggplot(global_food_wastage_dataset, aes(x = `Population (Million)`, y = `Total Waste (Tons)`)) +
geom_point(color = "blue", alpha = 0.5) +  # Scatter plot points
geom_smooth(method = "lm", color = "red", se = FALSE) +  # Regression line
theme_minimal() +
labs(
title = "Relationship Between Population and Food Waste",
x = "Population (Million)",
y = "Total Waste (Tons)"
)
correlation <- cor(global_food_wastage_dataset$`Population (Million)`,
+                    global_food_wastage_dataset$`Total Waste (Tons)`,
+                    use = "complete.obs")
# Print the correlation result
> print(paste("Correlation between Population and Total Waste:", round(correlation, 3)))
# Step 2: Create a scatter plot with regression line
> ggplot(global_food_wastage_dataset, aes(x = `Population (Million)`, y = `Total Waste (Tons)`)) +
+     geom_point(color = "blue", alpha = 0.5) +  # Scatter plot points
+     geom_smooth(method = "lm", color = "red", se = FALSE) +  # Regression line
+     theme_minimal() +
+     labs(
+         title = "Relationship Between Population and Food Waste",
+         x = "Population (Million)",
+         y = "Total Waste (Tons)"
+     )
# Step 2: Create a scatter plot with regression line
> ggplot(global_food_wastage_dataset, aes(x = `Population (Million)`, y = `Total Waste (Tons)`)) +
+     geom_point(color = "blue", alpha = 0.5) +  # Scatter plot points
+     geom_smooth(method = "lm", color = "red", se = FALSE) +  # Regression line
+     theme_minimal() +
+     labs(
+         title = "Relationship Between Population and Food Waste",
+         x = "Population (Million)",
+         y = "Total Waste (Tons)"
+     )
# Load required library
library(ggplot2)
# Step 1: Compute the correlation
correlation <- cor(global_food_wastage_dataset$`Population (Million)`,
global_food_wastage_dataset$`Total Waste (Tons)`,
use = "complete.obs")
# Print the correlation result
print(paste("Correlation between Population and Total Waste:", round(correlation, 3)))
# Step 2: Create a scatter plot with regression line
ggplot(global_food_wastage_dataset, aes(x = `Population (Million)`, y = `Total Waste (Tons)`)) +
geom_point(color = "blue", alpha = 0.5) +  # Scatter plot points
geom_smooth(method = "lm", color = "red", se = FALSE) +  # Regression line
theme_minimal() +
labs(
title = "Relationship Between Population and Food Waste",
x = "Population (Million)",
y = "Total Waste (Tons)"
)
# Load required library
library(ggplot2)
# Step 1: Compute the correlation
correlation <- cor(global_food_wastage_dataset$`Population (Million)`,
global_food_wastage_dataset$`Total Waste (Tons)`,
use = "complete.obs")
# Print the correlation result
print(paste("Correlation between Population and Total Waste:", round(correlation, 3)))
# Step 2: Create a scatter plot with regression line
ggplot(global_food_wastage_dataset, aes(x = `Population (Million)`, y = `Total Waste (Tons)`)) +
geom_point(color = "lightblue", alpha = 0.5) +  # Scatter plot points
geom_smooth(method = "lm", color = "red", se = FALSE) +  # Regression line
theme_minimal() +
labs(
title = "Relationship Between Population and Food Waste",
x = "Population (Million)",
y = "Total Waste (Tons)"
)
# Load required library
library(ggplot2)
# Step 1: Compute the correlation
correlation <- cor(global_food_wastage_dataset$`Population (Million)`,
global_food_wastage_dataset$`Total Waste (Tons)`,
use = "complete.obs")
# Print the correlation result
print(paste("Correlation between Population and Total Waste:", round(correlation, 3)))
# Step 2: Create a scatter plot with regression line
ggplot(global_food_wastage_dataset, aes(x = `Population (Million)`, y = `Total Waste (Tons)`)) +
geom_point(color = "blue", alpha = 0.5) +  # Scatter plot points
geom_smooth(method = "lm", color = "red", se = FALSE) +  # Regression line
theme_minimal() +
labs(
title = "Relationship Between Population and Food Waste",
x = "Population (Million)",
y = "Total Waste (Tons)"
)
# Load required library
library(ggplot2)
# Step 1: Compute the average household waste percentage
avg_household_waste <- mean(global_food_wastage_dataset$`Household Waste (%)`, na.rm = TRUE)
# Step 2: Compute the industrial waste percentage (remaining part)
avg_industrial_waste <- 100 - avg_household_waste
# Step 3: Create a dataframe for visualization
waste_data <- data.frame(
Source = c("Household Waste", "Industrial Waste"),
Percentage = c(avg_household_waste, avg_industrial_waste)
)
# Step 4: Create a pie chart
ggplot(waste_data, aes(x = "", y = Percentage, fill = Source)) +
geom_bar(stat = "identity", width = 1) +
coord_polar("y") +  # Convert to pie chart
theme_minimal() +
labs(title = "Household vs. Industrial Food Waste (%)") +
scale_fill_manual(values = c("red", "blue"))  # Household = red, Industrial = blue
# Load required library
library(ggplot2)
# Step 1: Compute the average household waste percentage
avg_household_waste <- mean(global_food_wastage_dataset$`Household Waste (%)`, na.rm = TRUE)
# Step 2: Compute the industrial waste percentage (remaining part)
avg_industrial_waste <- 100 - avg_household_waste
# Step 3: Create a dataframe for visualization
waste_data <- data.frame(
Source = c("Household Waste", "Industrial Waste"),
Percentage = c(avg_household_waste, avg_industrial_waste)
)
# Step 4: Create a pie chart
ggplot(waste_data, aes(x = "", y = Percentage, fill = Source)) +
geom_bar(stat = "identity", width = 1) +
coord_polar("y") +  # Convert to pie chart
theme_minimal() +
labs(title = "Household vs. Industrial Food Waste (%)") +
scale_fill_manual(values = c("red", "blue"))  # Household = red, Industrial = blue
library(dplyr)
library(ggplot2)
# Step 1: Summarize total food waste per country per year
waste_trend <- global_food_wastage_dataset %>%
group_by(Country, Year) %>%
summarise(Total_Waste = sum(`Total Waste (Tons)`), .groups = "drop")
# Step 2: Calculate the change in food waste from the first to the last year for each country
waste_change <- waste_trend %>%
group_by(Country) %>%
summarise(Change_in_Waste = last(Total_Waste) - first(Total_Waste)) %>%
arrange(Change_in_Waste)
# Step 3: Display top 5 countries that improved (biggest decrease) and worsened (biggest increase)
top_improved <- head(waste_change, 5)  # Biggest decrease in waste
top_worsened <- tail(waste_change, 5)  # Biggest increase in waste
print("Top 5 Countries That Improved (Reduced Waste):")
print(top_improved)
print("Top 5 Countries That Worsened (Increased Waste):")
print(top_worsened)
ggplot(waste_change, aes(x = reorder(Country, Change_in_Waste), y = Change_in_Waste, fill = Change_in_Waste)) +
geom_bar(stat = "identity") +
theme_minimal() +
labs(
title = "Change in Food Waste by Country Over Time",
x = "Country",
y = "Change in Total Waste (Tons)"
) +
scale_fill_gradient(low = "green", high = "red") +  # Green = Improvement, Red = Worsening
theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate labels for readability
ggplot(waste_change, aes(x = reorder(Country, Change_in_Waste), y = Change_in_Waste, fill = Change_in_Waste)) +
geom_bar(stat = "identity") +
theme_minimal() +
labs(
title = "Change in Food Waste by Country Over Time",
x = "Country",
y = "Change in Total Waste (Tons)"
) +
scale_fill_gradient(low = "green", high = "red") +  # Green = Improvement, Red = Worsening
theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate labels for readability
library(dplyr)
library(ggplot2)
efficiemt_countries <- global_food_wastage_dataset %>%
group_by(COuntry) %>%
summarise(Avg_Waste_Per_Capita) = mean('Avg Waste per Capita(Kg)'na.rm = TRUE)) %>%
efficient_countries <- global_food_wastage_dataset %>%
+ group_by(Country) %>%
+ summarise(Avg_Waste_Per_Capita) = mean('Avg Waste per Capita(Kg)'na.rm = TRUE)) %>%
efficient_countries <- global_food_wastage_dataset %>%
group_by(Country) %>%
summarise(Avg_Waste_Per_Capita = mean(`Avg Waste per Capita (Kg)`, na.rm = TRUE)) %>%
arrange(Avg_Waste_Per_Capita)  # Sort in ascending order (least waste first)
top_10_efficient <- head(efficient_countries, 10)
print(top_10_efficient)
ggplot(top_10_efficient, aes(x = reorder(Country, Avg_Waste_Per_Capita), y = Avg_Waste_Per_Capita, fill = Avg_Waste_Per_Capita)) +
geom_bar(stat = "identity") +
theme_minimal() +
labs(
title = "Top 10 Most Efficient Countries (Least Waste Per Capita)",
x = "Country",
y = "Avg Waste Per Capita (Kg)"
) +
scale_fill_gradient(low = "green", high = "blue") +  # Green = Less waste, Blue = Slightly higher waste
theme(axis.text.x = element_text(angle = 45, hjust = 1))  # Rotate labels for readability
library(dplyr)
# Summarize total food waste per country
top_country <- global_food_wastage_dataset %>%
group_by(Country) %>%
summarise(Total_Waste = sum(`Total Waste (Tons)`)) %>%
arrange(desc(Total_Waste)) %>%
head(1)  # Select the country with the highest waste
# Print the result
print(top_country)
library(dplyr)
# Summarize total food waste by food category
top_food_category <- global_food_wastage_dataset %>%
group_by(`Food Category`) %>%
summarise(Total_Waste = sum(`Total Waste (Tons)`)) %>%
arrange(desc(Total_Waste)) %>%
head(1)  # Select the most wasted food category
# Print the result
print(top_food_category)
library(dplyr)
library(ggplot2)
# Summarize total food waste per year
waste_trend <- global_food_wastage_dataset %>%
group_by(Year) %>%
summarise(Total_Waste = sum(`Total Waste (Tons)`)) %>%
arrange(Year)  # Ensure chronological order
# Print the summarized data
print(waste_trend)
# Create a line chart to visualize the trend
ggplot(waste_trend, aes(x = Year, y = Total_Waste)) +
geom_line(color = "blue", size = 1) +  # Blue line for trend
geom_point(color = "red", size = 3) +  # Red dots for each year
theme_minimal() +
labs(
title = "Total Food Waste Trend (2018-2024)",
x = "Year",
y = "Total Waste (Tons)"
)
library(dplyr)
# Summarize total economic loss by country
top_economic_loss_country <- global_food_wastage_dataset %>%
group_by(Country) %>%
summarise(Total_Economic_Loss = sum(`Economic Loss (Million $)`)) %>%
arrange(desc(Total_Economic_Loss)) %>%
head(1)  # Select the country with the highest loss
# Print the result
print(top_economic_loss_country)
library(dplyr)
# Summarize average food waste per capita by country
top_waste_per_capita_country <- global_food_wastage_dataset %>%
group_by(Country) %>%
summarise(Avg_Waste_Per_Capita = mean(`Avg Waste per Capita (Kg)`, na.rm = TRUE)) %>%
arrange(desc(Avg_Waste_Per_Capita)) %>%
head(1)  # Select the country with the highest waste per person
# Print the result
print(top_waste_per_capita_country)
library(dplyr)
# Summarize average food waste per capita by country
top_waste_per_capita_country <- global_food_wastage_dataset %>%
group_by(Country) %>%
summarise(Avg_Waste_Per_Capita = mean(`Avg Waste per Capita (Kg)`, na.rm = TRUE)) %>%
arrange(desc(Avg_Waste_Per_Capita)) %>%
head(1)  # Select the country with the highest waste per person
# Print the result
print(top_waste_per_capita_country)
ggplot(waste_trend, aes(x = Year, y = Total_Waste)) +
+     geom_line(color = "blue", size = 1) +  # Blue line for trend
+     geom_point(color = "red", size = 3) +  # Red dots for each year
+     theme_minimal() +
+     labs(
+         title = "Total Food Waste Trend (2018-2024)",
+         x = "Year",
+         y = "Total Waste (Tons)"
savehistory("food_waste_analysis.R")
