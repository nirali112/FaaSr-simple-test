faasr_simple_test <- function(faasr) {
  # Simple function that just logs a message
  cat("Hello from FaaSr! Function is running successfully\n")
  cat("Current time:", as.character(Sys.time()), "\n")
  cat("Function completed successfully!\n")
  
  # Return the faasr object (required by FaaSr)
  return(faasr)
}
