faasr_simple_test <- function() {
  # Simple test function for FaaSr
  
  # sample data
  test_data <- data.frame(
    message = "Hello from FaaSr",
    timestamp = as.character(Sys.time()),
    status = "Success"
  )
  
  # Write to local file
  write.csv(test_data, "test_output.csv", row.names = FALSE)
  
  # Upload to S3 bucket (faasr functions are available globally)
  faasr_put_file(local_file = "test_output.csv", 
                 remote_folder = "", 
                 remote_file = "test_output.csv")
  
  # Log completion
  faasr_log("Function faasr_simple_test completed successfully")
}
