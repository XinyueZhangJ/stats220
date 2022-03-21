left <- image_read("https://knowyourinternethome.files.wordpress.com/2018/12/no-yes-drake.jpg") %>%
  image_scale(500)

square_one <- image_blank(width = 500,
                          height = 500,
                          color = "#FFFFFF") %>%
  
  image_annotate(text = "learning R to\nmanipulate data",
                 color = "#000000",
                 size = 60,
                 font = "Impact",
                 gravity = "center")

square_two <- image_blank(width = 500,
                          height = 500,
                          color = "#FFFFFF") %>%
  
  image_annotate(text = "learning R to\nmake meme",
                 color = "#000000",
                 size = 60,
                 font = "Impact",
                 gravity = "center")

right <- c(square_one, square_two) %>%
  image_append(stack = TRUE)

c(left, right) %>%
  image_append()
