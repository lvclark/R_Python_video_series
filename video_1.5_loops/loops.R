
FAfiles = list.files("fasta")

nGenes = length(FAfiles)

AAseqs = character(nGenes)
headers = character(nGenes)
#sizes = integer(nGenes)

for(i in 1:nGenes){
  fa = FAfiles[i]
  fullfile = paste0("fasta/", fa)
  mylines = readLines(fullfile)
  aaseq = paste(mylines[-1], collapse = "")
  AAseqs[i] = aaseq
  headers[i] = mylines[1]
  sizes[i] = nchar(aaseq)
}

sizes <- nchar(AAseqs)

AAseqs
headers
sizes

