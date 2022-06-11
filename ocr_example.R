library('tesseract')
library('magick')

image_location <- 'C:/Users/Brian/Documents/stuff for other reporters/image02.jpg'

target <- image_read(image_location)

text <- target %>%
  image_resize("2000x") %>%
  image_convert(type = 'Grayscale') %>%
  image_trim(fuzz = 40) %>%
  image_write(format = 'png', density = '300x300') %>%
  tesseract::ocr()


eng <- tesseract(language='eng')
text <- tesseract::ocr(paste0('C:/Users/Brian/Documents/stuff for other reporters/image02.jpg'),
                       engine=eng)
text
