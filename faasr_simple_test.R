
faasr_simple_test <- function(faasr) {
  tryCatch({
  # Simple function that just logs a message
  cat("Hello from FaaSr! Function is running successfully\n")
  cat("Current time:", as.character(Sys.time()), "\n")
  
  # Return the faasr object (required)
  return(faasr)
},
    error = function(e) {
    cat("Error occurred:", e$message, "\n")
    return(faasr)
  })
}
