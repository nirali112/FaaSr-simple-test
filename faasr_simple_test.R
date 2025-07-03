# This creates/updates the file faasr_simple_test.R in your current directory
cat('
faasr_simple_test <- function(faasr) {
  # Simple function that just logs a message
  cat("Hello from FaaSr! Function is running successfully\\n")
  cat("Current time:", as.character(Sys.time()), "\\n")
  cat("Function completed successfully!\\n")
  
  # Return the faasr object (required by FaaSr)
  return(faasr)
}
', file = "faasr_simple_test.R")

# Verify the file was updated
cat("File updated. New content:\n")
cat(readLines("faasr_simple_test.R"), sep = "\n")
