context("cv()")

test_that("cv()", {  
  
  #-----------------------------------------------------------------------------------
  # test for log_importance_weights()
  #-----------------------------------------------------------------------------------
  expect_true(exists("cv"),
              info = "Error: cv() is missing")
  checkmate::expect_function(cv, args = c("data", "dep", "indep", "lambda"), 
                             info = "Incorrect function arguments.")
  
  data <- tibble(a=1:4, b = 1:4 * 2 -3, c = c(1,-1,0,2), group=c(1,2,3,4))
  expect_equivalent(cv(data, "c", c("a", "b"), 3.0), 
                    3.534764, 
                    tol= 0.01, 
                    info = "Error: Incorrect result.")
  
})