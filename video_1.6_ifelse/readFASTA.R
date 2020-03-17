readFASTA <- function(f){
  mylines <- readLines(f)
  headers <- c()
  sequences <- c()
  seqtype <- c()
  ACGT <- c('A', 'C', 'G', 'T')
  ACGU <- c('A', 'C', 'G', 'U')
  aminoAcids <- strsplit("GALMFWKQESPVICYHRNDT*",
                         split = "")[[1]]
  for(line in mylines){
    if(startsWith(line, ">")){
      # do stuff with header
      headers <- c(headers, line)
      if(length(headers) > 1){
        sequences <- c(sequences, thisseq)
      }
      thisseq <- ""
    } else {
      # do stuff with sequence
      thisseq <- paste(thisseq, line, sep = "")
    }
  }
  sequences <- c(sequences, thisseq) # add the last sequence
  
  # determine sequence type
  for(s in sequences){
    ssplit <- strsplit(s, split = "")[[1]]
    if(all(ssplit %in% ACGT)){
      seqtype <- c(seqtype, "DNA")
    } else if(all(ssplit %in% ACGU)){
      seqtype <- c(seqtype, "RNA")
    } else if(all(ssplit %in% aminoAcids)){
      seqtype <- c(seqtype, "protein")
    } else {
      stop("Unexpected sequence")
    }
  }
  return(list(headers, sequences, seqtype))
}

myfasta <- readFASTA("epsp_synthase.fa")
myfasta

myfasta2 <- readFASTA("epsp_synthase_peptide.fa")
myfasta2

TRUE && TRUE # and
TRUE && FALSE
FALSE && FALSE

TRUE || TRUE # or 
TRUE || FALSE
FALSE || FALSE

! TRUE # not
! FALSE

examineIntrons <- function(fastaout){
  headers = fastaout[[1]]
  sequences = fastaout[[2]]
  nseq = length(sequences)
  out = c()
  
  for(i in 1:nseq){
    if(grepl("intron", headers[i]) &&
       (!startsWith(sequences[i], "GT") ||
         !endsWith(sequences[i], "AG"))){
      out <- c(out, "non-standard intron!")
    } else {
      out <- c(out, "exon or normal intron")
    }
  }
  return(out)
}

examineIntrons(myfasta)
