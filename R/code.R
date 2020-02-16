#'View Africa GHDI Graph
#'
#'@description
#' Function that plot the stock data based on user input. By default the function gives 9 Global Human Development Index indicators of 51 African countries of
#' @param indicator a sting that represent the main inidcators reflecting the Global Human Development Index of Africian countries
#' @return Plot
#' @author Seehan
#' @details
#' The function initially cleans the entered argumets and check their validity. Then update the data file and finally
#' dispalys the data for the analysis
#' @export
#' @importFrom plotly plot_ly
#' @importFrom utils read.csv
ghdi <- function(indicator)
{
  common_file <- read.csv("common_file.csv", stringsAsFactors=FALSE)
  plotly::plot_ly(common_file[which(common_file$V1==indicator),], x = ~V3, y = ~V2,
                  mode="lines")

  # plotly::plot_ly(saved_data[which(saved_data$V1==indicator),], x = ~V3, y = ~V2,
  #                 mode="lines")

}


