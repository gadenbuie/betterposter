pkg_resource = function(...) {
  system.file('resources', ..., package = 'betterposter', mustWork = TRUE)
}

#' @export
qrcode <- function(text, color = "FFFFFF", background_color = "0F5D4F", size = 250) {
  color <- sub("#", "", color)
  background_color <- sub("#", "", background_color)
  text <- URLencode(text)
  size <- sprintf("%dx%d", size, size)

  sprintf(
    "http://api.qrserver.com/v1/create-qr-code/?data=%s&size=%s&bgcolor=%s&color=%s",
    text, size, background_color, color
  )
}
