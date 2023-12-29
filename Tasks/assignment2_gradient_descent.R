context("gradient_descent()")

test_that("gradient_descent()", {  
  
  #-----------------------------------------------------------------------------------
  # test for log_importance_weights()
  #-----------------------------------------------------------------------------------
  expect_true(exists("gradient_descent"),
              info = "Error: gradient_descent() is missing")
  checkmate::expect_function(gradient_descent, args = c("X", "y", "epochs", "stepsize"), 
                             info = "Incorrect function arguments.")
  
  
})