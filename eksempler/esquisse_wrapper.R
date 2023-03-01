# Wrapper functions for shiny and esquisse to run in Jupyter at SSB (on prem and Dapla)

getport <- function(){
  port <- NULL
  while (is.null(port)){
    port <- shiny:::p_randomInt(3000, 8000)
    if (!port %in% c(3659, 4045, 5060, 5061, 6000,
                     6566, 6665:6669, 6697)) {
      port <- NULL
    }
  }
  port
}


#' Wrapper function for running esquisse in Jupyter at SSB
#'
#' @param data Data frame to use for plotting
#' @param ... Additional parameters for send to esquisser()
#'
#' @return
#' @export
esquisser_ssb <- function(data, ...){
  port <- getport()
  options("shiny.port" = port)
  usr <- Sys.getenv("USER")
  if (grepl("onprem", Sys.getenv("JUPYTER_IMAGE_SPEC"))) {
    appUrl <- paste("https://sl-jupyter-p.ssb.no/user/", usr, "/proxy/", port, "/", sep = "")
  } else {
    appUrl <- paste("https://jupyter.dapla.ssb.no/user/", usr, "@ssb.no/proxy/", port, "/", sep = "")
  }

  message((paste("Esquisser launching at:", appUrl)))
  options("shiny.port" = port)
  suppressMessages(esquisse::esquisser(data, ...))
}