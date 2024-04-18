cap_var_names <- function(data) {
  names(data) <- make.names(names(data), unique = TRUE)
  new_names <- lapply(names(data), function(x) {
    if (grepl("^[a-zA-Z]", x)) {
      paste0(toupper(substring(x, 1, 1)), substring(x, 2))
    } else {
      x
    }
  })
  names(data) <- unlist(new_names)
  return(data)
}


# This function changes the first character of var names to capital letter if possible, otherwise do nothing.

# First line checks if var names are valid and uniques.
# lapply() applies a function to each var name in the dataset, stores in a list.
# grepl() checks if the variable name starts with a letter.
# if YES:
# paste0() capitalizes the first letter and keeps the rest of the name unchanged.
# if NO: leave as it is.
# names(data) <- unlist(new_names) assigns the new capitalized var names to the dataset.
