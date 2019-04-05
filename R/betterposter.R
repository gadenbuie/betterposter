#' Create a Better Poster in HTML
#'
#' @return An R Markdown output format.
#' @export
poster_better = function(
  ...,
  css = NULL
) {
  template <- pkg_resource("betterposter.html")
  pagedown::poster_relaxed(..., css = css, template = template,
                           .dependencies = betterposter_dependencies(),
                           number_sections = FALSE)
}

betterposter_dependencies <- function() {
  list(
    htmltools::htmlDependency(
      "betterposter",
      packageVersion("betterposter"),
      src = pkg_resource(),
      stylesheet = "betterposter.css"
    )
  )
}
