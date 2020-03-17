FAfiles = list.files("fasta")
FAfiles <- paste0("fasta/", FAfiles)

processFASTA <- function(filename){
  mylines = readLines(filename)
  aaseq = paste(mylines[-1], collapse = "")
  header = mylines[1]
  size = nchar(aaseq)
  return(list(header, aaseq, size))
}

#processFASTA(FAfiles[1])

FAoutput <- lapply(FAfiles, processFASTA)

headers <- sapply(FAoutput, function(x) x[[1]])
AAseqs <- sapply(FAoutput, function(x) x[[2]])
sizes <- sapply(FAoutput, function(x) x[[3]])
