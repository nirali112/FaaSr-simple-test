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
  
  cat("Function completed successfully!\n")
  
  # Return invisible NULL as the tutorial functions likely do
  invisible(NULL)
}
