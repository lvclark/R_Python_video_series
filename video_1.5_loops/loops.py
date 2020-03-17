from os import listdir

FAfiles = listdir('fasta')

#print(FAfiles)

nGenes = len(FAfiles)

AAseqs = ["" for i in range(nGenes)]
headers = ["" for i in range(nGenes)]
sizes = [0 for i in range(nGenes)]

for i in range(nGenes):
    fa = FAfiles[i]
    fullfile = 'fasta/' + fa
    with open(fullfile, mode = 'r') as mycon:
        mylines = mycon.readlines()
    mylines = [line.strip() for line in mylines]
    headers[i] = mylines[0]
    aaseq = "".join(mylines[1:])
    AAseqs[i] = aaseq
    sizes[i] = len(aaseq)

print(AAseqs)
print(headers)
print(sizes)