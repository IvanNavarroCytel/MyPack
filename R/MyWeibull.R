## PDF of Weibull distribution
MyWpdf <- function(x,a,b) if (x>=0) (a/b) * (x/b)^(a-1) * exp(-(x/b)^a) else 0

### CDF of Weibull distribution
MyWcdf <- function(x,a,b) if (x>=0) 1-exp((-x/b)^a) else 0
