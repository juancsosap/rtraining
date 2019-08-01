# Verify if a package is installed
require("base")
available = require("ggplot2")

if(!available) {
 
  # Install package with their dependencies
  install.packages("ggplot2")
  
  # Enable package
  library("ggplot2")
  
  # List of packages installed
  search()
   
}