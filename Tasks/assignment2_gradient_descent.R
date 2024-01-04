context("gradient_descent()")

test_that("gradient_descent()", {  
  
  #-----------------------------------------------------------------------------------
  # test for log_importance_weights()
  #-----------------------------------------------------------------------------------
  expect_true(exists("gradient_descent"),
              info = "Error: gradient_descent() is missing")
  checkmate::expect_function(gradient_descent, args = c("X", "y", "epochs", "stepsize"), 
                             info = "Incorrect function arguments.")
  data <- tibble(a=1:3, b = 1:3 * 2 -3, c = c(1,-1,0))
  X <- data[c("a", "b")]
  y <- c(0,0,1)
  X <- as.matrix(X)
  beta <- c(1.1, 0.2)
  beta <- as.matrix(beta)
  beta0 <- -1.3
  
  gd_result <- gradient_descent(X, y, 100, 0.1)
  result_type <- class(gd_result)
  result_names <- names(gd_result)

  expect_equivalent(result_type,
                    "list", 
                    info = "Error: Incorrect result format.")

  expect_equivalent(result_names,
                    c("beta", "intercept", "loss"), 
                    info = "Error: Incorrect result format (wrong list keys).")

  expect_equivalent(gd_result$beta,
                    c(-0.7247067, 1.6009520),
                    tol= 0.05, 
                    info = "Error: Incorrect result (beta).")

  
})