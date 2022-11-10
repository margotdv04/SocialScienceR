test_that("number of rows is correct", {
  expect_equal(nrow(country_indicators), 1414)
})

test_that("number of columns is correct", {
  expect_equal(ncol(country_indicators), 5)
})
