library(magick)
library(hexSticker)

# 1. Load the image
img <- image_read("images/yote.png")

# 2. High-Quality Background Removal
# We upscale first to create a "buffer" for the edges
cleaned_img <- img %>%
  image_fill(color = "transparent", point = "+1+1", fuzz = 25) %>%
  # image_fill(color = "transparent", point = "+10+10", fuzz = 25) %>%
  image_trim()


# set ggplot theme


theme_sticker <- function(size=1.2, ...) {
    center <- 1
    radius <- 1
    h <- radius
    w <- sqrt(3)/2 * radius
    m <- 1.05
    list(
      theme_transparent() +
        theme(plot.margin = margin(t=0, r=0, b=0, l=0, unit = "lines"),
              strip.text = element_blank(),
              line = element_blank(),
              text = element_blank(),
              title = element_blank(), ...),
      coord_fixed(),
      scale_y_continuous(expand = c(0, 0), limits = c(center-h*m , center+h*m )),
      scale_x_continuous(expand = c(0, 0), limits = c(center-w*m , center+w*m ))
    )
}
assignInNamespace("theme_sticker", theme_sticker, ns="hexSticker")
# 3. Create the Sticker
# Increasing the DPI here ensures the final file is crisp
sticker(cleaned_img, 
        package="CSCI-2025: Data \n Manipulation & Visualization", 
        p_size=9, 
        p_y = 1.45,       # Slightly adjusted to center the two-line block
        lineheight = 0.3, # This reduces the gap between lines
        s_x=1, s_y=0.80, s_width=1, s_height=0.9,
        h_fill="#533860", h_color = "#FFFFFF",
        p_color="#FFFFFF",
        filename="images/logo.png")