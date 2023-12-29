context("sigmoid()")

test_that("sigmoid()", {  
  
  #-----------------------------------------------------------------------------------
  # test for log_importance_weights()
  #-----------------------------------------------------------------------------------
  expect_true(exists("sigmoid"),
              info = "Error: sigmoid() is missing")
  checkmate::expect_function(sigmoid, args = c("z"), 
                             info = "Incorrect function arguments.")
  
  x <- 0.75
  expect_equivalent(sigmoid(x), 
                    0.679178699175393, 
                    tol= 0.01, 
                    info = "Error: Incorrect result.")
  
})