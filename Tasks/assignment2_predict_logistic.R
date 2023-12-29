context("predict_logistic()")

test_that("predict_logistic()", {  
  
  #-----------------------------------------------------------------------------------
  # test for log_importance_weights()
  #-----------------------------------------------------------------------------------
  expect_true(exists("predict_logistic"),
              info = "Error: predict_logistic() is missing")
  checkmate::expect_function(predict_logistic, args = c("X", "y", "beta", "beta0", "p_cutoff"), 
                             info = "Incorrect function arguments.")
  
  data <- tibble(a=1:3, b = 1:3 * 2 -3, c = c(1,-1,0))
  expect_equivalent(predict_logistic(data, "c", c("a", "b"), 10.0), 
                    c(0.02586207, -0.00862069, -0.09482759), 
                    tol= 0.01, 
                    info = "Error: Incorrect result.")
  
})