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
  X <- data[c("a", "b")]
  y <- c(0,0,1)
  X <- as.matrix(X)
  beta <- c(1.1, 0.2)
  beta <- as.matrix(beta)
  beta0 <- -1.3
  
  expect_equivalent(predict_logistic(X, y, beta, beta0),
                    0.6666667, 
                    tol= 0.01, 
                    info = "Error: Incorrect result.")
  
})