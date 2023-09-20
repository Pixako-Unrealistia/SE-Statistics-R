# Sorawis Chongterdtoonskul
# The following work will have two functions
# mode by definition and mode by subject
# mode by definition is made according to the definition provided in class
# mode by subject is made according to the provided subject.


find_mode_by_definition <- function(x) {
  if (length(x) == 0) { # if the length of the vector is 0, then there is no data
    return("No data")     
  }
  freq_table <- table(x) # create a frequency table
  max_freq <- max(freq_table) # find the maximum frequency
  modes <- as.numeric(names(freq_table[freq_table == max_freq])) # find the mode
  # freq_table == max_ freq will return a boolean vector, which is TRUE if the frequency is equal to the maximum frequency >:D
  if (length(modes) == length(freq_table)) { # if the length of the mode is equal to the length of the frequency table, then there is no mode
    return("No Mode")
  }
  if (length(modes) > 4) { # if the length of the mode is greater than 4, then there is no mode
    modes <- c(modes, "Irrelevant mode") 
  }
  return(modes)
}

cat("Following are mode by definition\n")
cat("The mode of the vector c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10) is", find_mode(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)), "\n")
cat("The mode of the vector c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10) is", find_mode(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10)), "\n")
cat("The mode of the vector c(1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 10, 10) is", find_mode(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 10, 10)), "\n")
cat("The mode of the vector c(2, 2, 2, 2, 10, 10, 10, 10) is", find_mode(c(2, 2, 2, 2, 10, 10, 10, 10)), "\n")
cat("The mode of the vector c(2, 2, 3, 3, 4, 4, 5, 5, 6) is", find_mode(c(2, 2, 3, 3, 4, 4, 5, 5, 6)), "\n")

find_mode_by_subject <- function(x) {
  if (length(x) == 0) { # if the length of the vector is 0, then there is no data
    return("No data")
  }
  freq_table <- table(x) # create a frequency table
  max_freq <- max(freq_table) # find the maximum frequency
  modes <- as.numeric(names(freq_table[freq_table == max_freq])) # find the mode
  if (length(modes) > 4) { # if the length of the mode is greater than 4, then there is no mode
    return("No Mode")
  }
  return(modes)
}



cat("\n\nFollowing are mode by subjects")

cat("The mode of the vector c(1, 2, 3, 4, 5) is", find_mode_by_subject(c(1, 2, 3, 4, 5)), "\n")
cat("The mode of the vector c(3, 3, 3, 3, 3) is", find_mode_by_subject(c(3, 3, 3, 3, 3)), "\n")
cat("The mode of the vector c(1, 2, 2, 3, 4, 4, 5) is", find_mode_by_subject(c(1, 2, 2, 3, 4, 4, 5)), "\n")
cat("The mode of the vector c(1, 1, 2, 2, 3, 3, 4, 4, 5) is", find_mode_by_subject(c(1, 1, 2, 2, 3, 3, 4, 4, 5)), "\n")
cat("The mode of the vector c(1, 1, 2, 2, 3, 3, 4, 4, 5, 5) is", find_mode_by_subject(c(1, 1, 2, 2, 3, 3, 4, 4, 5, 5)), "\n")