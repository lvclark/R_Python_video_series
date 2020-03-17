#dna <- "TGGGTGTCGAGGTGGGATTTTGCGGGGTTTATTAGGAGCAGACGTACCTTTGTCGTGCTGACTGTCTGTCTGCTGGATCATGCGAATTTTAGCTCCAGTC"
dna <- "ACTAACTGCCCACCTGTTCGTATCAATG"

dnalen <- nchar(dna)
dnalen

dnalen == 100
dnalen != 100
dnalen > 50
dnalen < 50
dnalen >= 300
dnalen <= 100

header <- ">Traes_7DS_86C512854 exon 1"
startsWith(header, ">")
startsWith(dna, ">")

any(c(TRUE, TRUE, FALSE))
all(c(TRUE, TRUE, FALSE))

somenums <- c(2, 3, 4, 8)
somenums > 4
any(somenums > 4)
all(somenums > 4)

# in operator
ACGT <- c('A', 'C', 'G', 'T')
'C' %in% ACGT
'Q' %in% ACGT

all(strsplit(dna, "")[[1]] %in% ACGT)

all(strsplit(header, "")[[1]] %in% ACGT)
