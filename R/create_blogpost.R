# You can easily create a new blog post skeleton using the create_post() function.
# First, we load the helping function:

source("R/help_create_blogpost.R")


## The available images are at the moment:
list.files("media") %>% tools::file_path_sans_ext()
## Please choose (possibly multiple) from this tags list:
c("Metadata", "SDTM", "ADaM", "TLG", "Shiny", "Community", "Conferences", "Submissions", "Technical")

# Fill in the info, e.g.:
create_post(
  post_name = "My Blog", # needs to be character vector (length 1)
  post_date = "2024-12-01", # needs to be character vector (length 1)
  description = "", # you can fill the description in later as well
  author = c("My Name"), # one or more authors are permitted
  cover_image = "pharmaverse", # chose one of the above (see line 8)
  tags = c("submission", "ADaMs", "conferences", "admiral", "xportr", "metatools", "metacore") # chose (multiple) from line 10
)


# Remove that post:
# unlink("posts/2023-06-15_lbla", recursive = TRUE)

# Note that the folder and file created do not correspond directly to the `post_name` argument.
# This allows for a longer `post_name` without having super long file-names.
