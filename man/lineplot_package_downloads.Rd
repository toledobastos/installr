\name{lineplot_package_downloads}
\alias{lineplot_package_downloads}
\title{barplot for the number of users installation of a package}
\source{
  \url{http://www.nicebread.de/finally-tracking-cran-packages-downloads/}
}
\usage{
  lineplot_package_downloads(pkg_names, dataset,
    by_time = c("date", "week"), ...)
}
\arguments{
  \item{pkg_names}{a character vector of packages we are
  interested in checking.}

  \item{dataset}{a dataset output from running
  \link{read_RStudio_CRAN_data}, after going through
  \link{format_RStudio_CRAN_data}.}

  \item{by_time}{by what time frame should packages be
  plotted? defaults to "date", but can also be "week"}

  \item{...}{not in use.}
}
\value{
  invisible aggregated data that was used for the plot
}
\description{
  This function gets a vector of package names, and returns
  a line plot of number of downloads for these packages per
  week.
}
\details{
  RStudio maintains its own CRAN mirror,
  \url{http://cran.rstudio.com} and offers its log files.
}
\examples{
\dontrun{
# The first two functions might take a good deal of time to run (depending on the date range)
RStudio_CRAN_data_folder <- download_RStudio_CRAN_data(START = '2013-04-02', END = '2013-04-05') # around the time R 3.0.0 was released
my_RStudio_CRAN_data <- read_RStudio_CRAN_data(RStudio_CRAN_data_folder)
my_RStudio_CRAN_data <- format_RStudio_CRAN_data(my_RStudio_CRAN_data)
head(my_RStudio_CRAN_data)
lineplot_package_downloads(pkg_names = c("ggplot2", "reshape", "plyr", "installr"), dataset = my_RStudio_CRAN_data)

# older plots:
# barplots: (more functions can easily be added in the future)
barplot_package_users_per_day("installr", my_RStudio_CRAN_data)
barplot_package_users_per_day("plyr", my_RStudio_CRAN_data)
}
}
\author{
  Felix Schonbrodt, Tal Galili
}
\seealso{
  \link{download_RStudio_CRAN_data},
  \link{read_RStudio_CRAN_data},\link{barplot_package_users_per_day}
}

