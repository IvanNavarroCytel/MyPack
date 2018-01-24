context("MyWeibull")

test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})


test_that("Testing my PDF Weibull function", {

### INIT
s <- seq(-1,1,0.01)
weibull_shape <- 1
weibull_scale <- 0.5

### EXECUTION
## We compare the theoretical PDF and pweibull results
myWpdfRes <- sapply(s, FUN=function(x, sh, sc) MyWpdf(x,sh,sc), sh=weibull_shape, sc=weibull_scale)
dWpdfRes <- sapply(s, FUN=function(x, sh, sc) dweibull(x,sh,sc), sh=weibull_shape, sc=weibull_scale)

### CHECK
## All values should be equal.
expect_true(all(round(myWpdfRes,9) == round(dWpdfRes,9))) ## TRUE

})


test_that("Testing my CDF Weibull function", {

### INIT
s <- seq(-1,1,0.01)
weibull_shape <- 1
weibull_scale <- 0.5

### EXECUTION
## We compare the theoretical CDF and pweibull results
myWcdfRes <- sapply(s, FUN=function(x, sh, sc) MyWcdf(x,sh,sc), sh=weibull_shape, sc=weibull_scale)
pWcdfRes <- sapply(s, FUN=function(x, sh, sc) pweibull(x,sh,sc), sh=weibull_shape, sc=weibull_scale)

### CHECK
## All values should be equal.
expect_true(all(round(myWcdfRes,9) == round(pWcdfRes,9))) ## TRUE

})
