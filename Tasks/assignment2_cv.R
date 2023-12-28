context("cv()")

test_that("cv()", {  
  
  #-----------------------------------------------------------------------------------
  # test for log_importance_weights()
  #-----------------------------------------------------------------------------------
  expect_true(exists("cv"),
              info = "Error: cv() is missing")
  checkmate::expect_function(cv, args = c("data", "dep", "indep", "lambda"), 
                             info = "Incorrect function arguments.")
  
  data <- tibble(a=1:3, b = 1:3 * 2 -3, c = c(1,-1,0))
  expect_equivalent(cv(data, "c", c("a", "b"), 10.0), 
                    c(0.02586207, -0.00862069, -0.09482759), 
                    tol= 0.01, 
                    info = "Error: Incorrect result.")
  
})