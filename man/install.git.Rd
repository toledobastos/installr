\name{install.git}
\alias{install.git}
\title{Downloads and installs git and git-gui for windows}
\usage{
  install.git(page_with_download_url = "http://git-scm.com/download/win",
    ...)
}
\arguments{
  \item{page_with_download_url}{the URL of the git download
  page.}

  \item{...}{extra parameters to pass to
  \link{install.URL}}
}
\value{
  TRUE/FALSE - was the installation successful or not.
}
\description{
  Allows the user to downloads and install the latest
  version of git for Windows.
}
\details{
  Git is a distributed revision control and source code
  management system with an emphasis on speed.
}
\examples{
\dontrun{
install.git() # installs the latest version of git
}
}
\references{
  git homepage: \url{http://git-scm.com/} git download
  page: \url{http://git-scm.com/download/win}
}

