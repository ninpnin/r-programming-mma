context("ridge()")

test_that("ridge()", {  
  
  #-----------------------------------------------------------------------------------
  # test for log_importance_weights()
  #-----------------------------------------------------------------------------------
  expect_true(exists("log_importance_weights"),
              info = "Error: log_importance_weights() is missing")
  checkmate::expect_function(log_importance_weights, args = c("data", "dep", "indep", "lambda"), 
                             info = "Incorrect function arguments.")
  
  data <- tibble(a=1:3, b = 1:3 * 2 -3, c = c(1,-1,0))
  expect_equivalent(ridge(data, "c", c("a", "b"), 10.0), 
                    c(0.02586207, -0.00862069, -0.09482759), 
                    tol= 0.01, 
                    info = "Error: Incorrect result.")
  
})