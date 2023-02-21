# Sample data
df <- data.frame(value = c(10, 23, 15, 18),
                 group = paste0("G", 1:4))
                 
# Basic pie chart with geom_bar or geom_col and coord_polar
# install.packages("ggplot2")
library(ggplot2)
# Basic
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col() +
  coord_polar(theta = "y")
# Change the color of the lines
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +
  coord_polar(theta = "y")
# Adding text
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +
  geom_text(aes(label = value),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y")
# Adding labels
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +
  geom_label(aes(label = value),
             position = position_stack(vjust = 0.5),
             show.legend = FALSE) +
  coord_polar(theta = "y")
# Labels color
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +
  geom_label(aes(label = value),
             color = "white",
             position = position_stack(vjust = 0.5),
             show.legend = FALSE) +
  coord_polar(theta = "y")
# Color customization
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +
  geom_text(aes(label = value),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y") +
  scale_fill_brewer()
# Custom colors
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +
  geom_text(aes(label = value),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y") +
  scale_fill_manual(values = c("#BE2A3E", "#EC754A",
                               "#EACF65", "#3C8D53"))
# Theme customization
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +
  geom_text(aes(label = value),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y") +
  scale_fill_brewer() +
  theme_bw()
# Removing whole theme
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +
  geom_text(aes(label = value),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y") +
  scale_fill_brewer() +
  theme_void()
# Create own customized theme
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +
  geom_text(aes(label = value),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y") +
  scale_fill_brewer() +
  theme(axis.text = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank(),
        panel.grid = element_blank(),
        panel.background = element_rect(fill = "#ebf2ff"),
        plot.background = element_rect(fill = "#ebf2ff"),
        legend.background = element_rect(fill = "#ebf2ff"))
# Legend title
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +
  geom_text(aes(label = value),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y") +
  guides(fill = guide_legend(title = "Title"))
# Legend labels
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +
  geom_text(aes(label = value),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y") +
  scale_fill_discrete(labels = c("A", "B", "C", "D"))
# Legend position
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +
  geom_text(aes(label = value),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y") +
  theme(legend.position = "bottom")
# Remove the legend
ggplot(df, aes(x = "", y = value, fill = group)) +
  geom_col(color = "black") +
  geom_text(aes(label = value),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y") +
  theme(legend.position = "none")
