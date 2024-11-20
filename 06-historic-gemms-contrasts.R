# Load libraries and data ---------------------------------------------------
library(tidyverse)
# library(cowplot)
library(emmeans)

# Load data objects
load("03-data.RData")

# Function to Plot Treatment Contrasts
plot_contrast <- function(fit, title_lab) {
    # Calc emmeans contrasts
    cntrsts <- emmeans(fit, pairwise ~ trt|timepoint)
    # Get emmeans contrasts
    cntrst_summary <- summary(cntrsts$contrasts)
    # Convert to data frame and filter estimated contrasts
    cntrst_dt <- as_tibble(cntrst_summary) %>% filter(!is.na(estimate))
    # Plot contrasts
    ggplot(cntrst_dt, aes(x = estimate, y = contrast)) + 
        geom_point() +
        geom_vline(xintercept = 0, linetype = 3, color = "red") +
        facet_wrap(~ timepoint) +
        geom_errorbar(aes(xmin = lower.HPD, xmax = upper.HPD), width = 0.0,
                      color = "blue", linewidth = 1.5, alpha = 0.4) +
        labs(y = NULL, 
             x = "Estimated Marginal Mean", 
             title = title_lab) +
        theme_bw() +
        theme(text = element_text(face = "bold"))
}

plot_contrast(mod_4625mono, "Vehicle vs Alpha mono")
ggsave("figures/contrast-Alphamono-vs-vehicle.png")

plot_contrast(
    mod_4625ref, 
    "Treatment Contrasts: Alpha mono vs All Other Treatments"
)
ggsave("figures/contrast-Alphamono-vs-other-trts.png")

save.image("06-data.RData")
beepr::beep()
