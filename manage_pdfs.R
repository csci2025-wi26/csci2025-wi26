# 1. Define the "Private" folder outside of _site
destination_dir <- "offline_pdfs"

# 2. Get the list of files Quarto just rendered from the environment variable
render_list <- Sys.getenv("QUARTO_PROJECT_OUTPUT_FILES")

if (render_list != "") {
  # Quarto returns a newline-separated string of file paths
  files <- unlist(strsplit(render_list, "\n"))
  
  # Filter for PDF files only
  pdf_files <- files[grepl("\\.pdf$", files)]
  
  if (length(pdf_files) > 0) {
    # Create destination directory if it doesn't exist
    if (!dir.exists(destination_dir)) {
      dir.create(destination_dir, recursive = TRUE)
    }
    
    for (file_path in pdf_files) {
      if (file.exists(file_path)) {
        file_name <- basename(file_path)
        dest_path <- file.path(destination_dir, file_name)
        
        # Move the file (this removes it from _site and places it in offline_pdfs)
        message(paste("Moving", file_name, "to", destination_dir, "..."))
        file.rename(file_path, dest_path)
      }
    }
  }
}