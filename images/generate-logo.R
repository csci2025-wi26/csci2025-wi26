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

# 3. Create the Sticker
# Increasing the DPI here ensures the final file is crisp
sticker(cleaned_img, 
        package="CSCI-2025", 
        p_size=20, s_x=1, s_y=0.90, s_width=1, s_height=0.9,
        h_fill="#412d5e", h_color = "#a49363",
        p_color="#bbbbbb",
        filename="images/logo_final.png")