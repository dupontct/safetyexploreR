% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/safetyOutlierExplorer.R
\name{safetyOutlierExplorer}
\alias{safetyOutlierExplorer}
\title{Create a Safety Outlier Explorer widget}
\source{
Safety Outlier Explorer: \url{https://github.com/RhoInc/safety-outlier-explorer}.
}
\usage{
safetyOutlierExplorer(data, id_col = "USUBJID", time_col = c("DY", "VISITN",
  "VISIT"), time_type = c("linear", "ordinal", "ordinal"),
  time_label = c("Study Day", "Visit Number", "Visit"),
  time_rotate_tick_labels = c(FALSE, FALSE, TRUE),
  time_vertical_space = c(0, 0, 100), measure_col = "TEST",
  value_col = "STRESN", unit_col = "STRESU", normal_col_low = "STNRLO",
  normal_col_high = "STNRHI", start_value = NULL, filters_col = NULL,
  filters_label = NULL, details_col = c("AGE", "SEX", "RACE"),
  details_label = c("Age", "Sex", "Race"), multiples_sizing_width = 1,
  multiples_sizing_height = 1, width = NULL, height = NULL,
  elementId = NULL)
}
\arguments{
\item{data}{A data frame containing the labs data.}

\item{id_col}{Participant ID variable name. Default is \code{"USUBJID"}.}

\item{time_col}{Timing of collection variable name(s).  Up to 3 may be specified. Default is \code{c("DY","VISITN","VISIT")}.}

\item{time_type}{Scale types for variables specified in \code{time_col}.  Defaults to \code{c('linear','ordinal','ordinal')}.}

\item{time_label}{Labels of variables specified in \code{time_col}. Defaults to \code{c('Study Day','Visit Number','Visit')}. If set to \code{NULL}, variable names will be used for labels.}

\item{time_rotate_tick_labels}{Rotate x-axis tick labels 45 degrees?  Defaults to \code{c(FALSE, FALSE, TRUE)}.}

\item{time_vertical_space}{X-axis padding for rotated labels in pixels. Defaults to \code{c(0, 0, 100)}.}

\item{measure_col}{Name of measure variable name. Default is \code{"TEST"}.}

\item{value_col}{Value of measure variable name. Default is \code{"STRESN"}.}

\item{unit_col}{Unit of measure variable name. Default is \code{"STRESU"}.}

\item{normal_col_low}{Optional: Variable name for column containing lower limit of normal values. Default is \code{"STNRLO"}.}

\item{normal_col_high}{Optional: Variable name for column containing upper limit of normal values. Default is \code{"STNRHI"}.}

\item{start_value}{Value of variable defined in \code{measure_col} to be rendered in the plot when the widget loads.}

\item{filters_col}{Optional vector of variable names to use for filters  (in addition to default filter on \code{measure}).}

\item{filters_label}{Associated labels to use for filters. If left as \code{NULL}, variable names will be used as labels.}

\item{details_col}{Optional vector of variable names to include in details listing. Defaults to \code{'AGE'}, \code{'SEX'}, and \code{'RACE'}.}

\item{details_label}{Associated labels/headers to use for details listing. Defaults to \code{'Age'}, \code{'Sex'}, and \code{'Race'}.  If set to \code{NULL}, variable names will be used as labels.}

\item{multiples_sizing_width}{Adjust width of small multiple plots by adjusting a ratio of the original pixel value. Default is 1 (or 300 px).}

\item{multiples_sizing_height}{Adjust height of  small multiple plots by adjusting a ratio of the original pixel value. Default is 1 (or 100 px).}

\item{width}{Width in pixels}

\item{height}{Height in pixels}

\item{elementId}{The element ID for the widget.}
}
\description{
This function creates a Safety Outlier Explorer using R htmlwidgets.
}
\examples{
\dontrun{
# Run Safety Outlier Explorer with defaults
safetyOutlierExplorer(data=ADBDS) 

# Run Safety Outlier Explorer with some customizations
safetyOutlierExplorer(data=ADBDS, filters_col = c('ARM','SEX','RACE')) 
}

}
\seealso{
aeExplorer, aeTimelines, safetyHistogram, safetyResultsOverTime, safetyShiftPlot
}
