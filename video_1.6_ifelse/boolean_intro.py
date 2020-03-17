#dna = "TGGGTGTCGAGGTGGGATTTTGCGGGGTTTATTAGGAGCAGACGTACCTTTGTCGTGCTGACTGTCTGTCTGCTGGATCATGCGAATTTTAGCTCCAGTC"
dna = "ACTAACTGCCCACCTGTTCGTATCAATG"

dnalen = len(dna)

print(dnalen)

print(dnalen == 100)
print(dnalen != 100)
print(dnalen > 50)
print(dnalen < 50)
print(dnalen >= 300)
print(dnalen <= 100)

print("Boolean functions")
header = ">Traes_7DS_86C512854 exon 1"
print(header.startswith(">"))
print(dna.startswith(">"))

print("Any and all")
testlist = [True, True, False]
testlist2 = [True, True]
testlist3 = [False, False, False]

print(any(testlist3))
print(all(testlist3))

somenums = [2, 4, 3, 8]
print(all([i > 4 for i in somenums]))

print("IN operator")
ACGT = set("ACGT")
print(ACGT)
print("C" in ACGT)
print("Q" in ACGT)
print(all([d in ACGT for d in dna]))
print(set(dna) <= ACGT)

print(all([d in ACGT for d in header]))