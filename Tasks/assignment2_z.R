context("z()")

test_that("z()", {  
  
  #-----------------------------------------------------------------------------------
  # test for log_importance_weights()
  #-----------------------------------------------------------------------------------
  expect_true(exists("z"),
              info = "Error: z() is missing")
  checkmate::expect_function(z, args = c("X", "beta", "beta0"), 
                             info = "Incorrect function arguments.")
  
  X <- matrix(c(1,-1,-1,1), nrow = 2, ncol = 2)
  beta <- c(0.5, 0.75)
  beta0 <- 3
  expect_equivalent(z(data, "c", c("a", "b"), 10.0), 
                    c(2.75, 3.25), 
                    tol= 0.01, 
                    info = "Error: Incorrect result.")
  
})