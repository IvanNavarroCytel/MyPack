#' PDF of Weibull distribution
#'
#' This function calculates the probability density for x given ‘a’
#' as the shape parameter and ‘b’as the scale parameter.
#'
#' @param x value.
#' @param a Shape parameter.
#' @param b Scale parameter.
#' @return Probability density.
#'
#' @export
MyWpdf <- function(x,a,b) if (x>=0) (a/b) * (x/b)^(a-1) * exp(-(x/b)^a) else 0


#' CDF of Weibull distribution
#'
#' This function calculates the cumulative density for x given ‘a’
#' as the shape parameter and ‘b’as the scale parameter.
#'
#' @param x value.
#' @param a Shape parameter.
#' @param b Scale parameter.
#' @return Cumulative density.
#'
#' @export
MyWcdf <- function(x,a,b) if (x>=0) 1-exp((-x/b)^a) else 0
