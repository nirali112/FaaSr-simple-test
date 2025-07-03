# Let's check if we can find the tutorial functions in the FaaSr package
# First, let's see what's available in the tutorial
mc_ls("play/faasr/tutorial/")

# Now let's create a simple function that follows the tutorial pattern
cat('
faasr_simple_test <- function(faasr) {
  # Get the default data store
  datastore <- faasr$DefaultDataStore
  
  # Create simple output
  output_data <- data.frame(
    message = "Hello from FaaSr",
    timestamp = as.character(Sys.time()),
    status = "Success"
  )
  
  # Write to local file
  write.csv(output_data, "test_output.csv", row.names = FALSE)
  
  # Upload to S3 using faasr_put_file
  if (!is.null(datastore)) {
    faasr_put_file(faasr, "test_output.csv", "test_output.csv")
  }
  
  cat("Function completed successfully!\\n")
  
  # Return invisible NULL as the tutorial functions likely do
  invisible(NULL)
}
', file = "faasr_simple_test.R")

cat("Function updated. Upload this to GitHub.\n")
