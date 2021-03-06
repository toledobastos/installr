\name{check.for.updates.R}
\alias{check.for.updates.R}
\title{Checks if there is a newer version of R}
\usage{
  check.for.updates.R(notify_user = TRUE, use_GUI = TRUE,
    page_with_download_url = "http://cran.rstudio.com/bin/windows/base/")
}
\arguments{
  \item{notify_user}{if to print to you (the user) what is
  the latest version and what version you are currently
  using.}

  \item{use_GUI}{a logical indicating whether a graphics
  menu should be used if available.  If TRUE, and on
  Windows, it will use \link{winDialog}, otherwise it will
  use \link{cat}.}

  \item{page_with_download_url}{the URL of the page from
  which R can be downloaded.}
}
\value{
  TRUE/FALSE - if there is a newer version of R to install
  or not.
}
\description{
  Fetches the latest (not development!) R version and
  compares it with your currently installed R version (the
  version of the R session from which you are running this
  function).
}
\examples{
\dontrun{
check.for.updates.R()
# Possible output:
#  There is a newer version of R for you to download!
#  You are using R version:  2.15.0
#  And the latest R version is:  2.15.3
#  [1] TRUE
}
}

