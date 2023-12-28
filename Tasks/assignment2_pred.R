context("pred()")

test_that("pred()", {  
  
  #-----------------------------------------------------------------------------------
  # test for log_importance_weights()
  #-----------------------------------------------------------------------------------
  expect_true(exists("pred"),
              info = "Error: pred() is missing")
  checkmate::expect_function(pred, args = c("data", "indep", "beta_hat"), 
                             info = "Incorrect function arguments.")
  
  data <- tibble(a=1:3, b = 1:3 * 2 -3, c = c(1,-1,0))
  expect_equivalent(pred(data, c("a", "b"), c(1.9, 2.1, -1.2)), 
                    c(5.2,4.9,4.6), 
                    tol= 0.01, 
                    info = "Error: Incorrect result.")
  
})