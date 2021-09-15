#
# Author:   Cristian E. Nuno
# Date:     February 24, 2021
# Purpose:  Visualize distribution of project rubric points
#

# load necessary packages ----
library(tidyverse)
library(here)

# load necessary data ----

# store labels for plots
PLOT_LABELS = c("Final Deliverables",
                "Documentation",
                "Team Process",
                "Project Organization")

# store ASU color palette
ASU_COLORS = list(
  "main" = list("maroon" = "#8C1D40",
                "gold" = "#FFC627"),
  "alternative" = c("#78BE20",
               "#FF7F32",
               "#5C6670",
               "#00A3E0")
)

# store subtitle and caption
PLOT_TEXT = list(
  "subtitle" = "Total project is worth 100 points",
  "caption" = "Source: https://ds4ps.org/cpp-528-spr-2021/project/project_rubric.html"
)

# import project rubric scores
rubric_df = 
  readr::read_tsv(here::here("data/project_rubric_breakdown.tsv")) %>%
  dplyr::rename_all(stringr::str_to_lower) %>%
  dplyr::mutate(section = factor(section,
                                 levels = PLOT_LABELS))

# visualize overall final project scoring ----
rubric_df %>%
  dplyr::group_by(section) %>%
  dplyr::summarize(total = sum(points)) %>%
  ggplot2::ggplot(ggplot2::aes(x = reorder(section, -total),
                               y = total,
                               label = total)) +
  ggplot2::geom_col(fill = ASU_COLORS$main$maroon) +
  ggplot2::geom_text(position = ggplot2::position_stack(vjust = 0.5),
                     color = ASU_COLORS$main$gold) +
  ggplot2::labs(title = "Project grading rubric by points per section",
                subtitle = PLOT_TEXT$subtitle,
                caption = PLOT_TEXT$caption,
                x = "Section",
                y = "Points") +
  ggplot2::coord_flip() +
  ggplot2::theme_minimal() +
  ggplot2::theme(panel.grid = element_blank()) +
  ggplot2::ggsave(here::here("project/visuals/project_rubric_overall.png"),
                  dpi = 300)

# visualize points within each section ----
rubric_df %>%
  ggplot2::ggplot(ggplot2::aes(x = reorder(task, -points),
                               y = points,
                               label = points,
                               fill = section)) +
  ggplot2::geom_col() +
  # use white as the color of the text
  ggplot2::geom_text(color = "#FFFFFF",
                     position = ggplot2::position_stack(vjust = 0.5)) +
  ggplot2::scale_fill_manual(values = ASU_COLORS$alternative) +
  ggplot2::labs(title = "Project grading rubric by tasks by points per section",
                subtitle = PLOT_TEXT$subtitle,
                caption = PLOT_TEXT$caption,
                x = "Tasks",
                y = "Points")  +
  ggplot2::coord_flip() +
  ggplot2::guides(fill = FALSE) +
  ggplot2::facet_wrap(facets = dplyr::vars(section),
                      nrow = 1,
                      ncol = 5) +
  ggplot2::theme_minimal() +
  ggplot2::theme(panel.grid.minor = ggplot2::element_blank(),
                 panel.grid.major.x = ggplot2::element_blank()) +
  ggplot2::ggsave(here::here("project/visuals/project_rubric_details.png"),
                  dpi = 300)

# end of script #
