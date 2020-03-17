from os import listdir

FAfiles = listdir('fasta')
FAfiles = ['fasta/' + fa for fa in FAfiles]
print(FAfiles)

def processFASTA(filename):
    with open(filename, mode = 'r') as mycon:
        mylines = mycon.readlines()
    mylines = [line.strip() for line in mylines]
    header = mylines[0]
    aaseq = "".join(mylines[1:])
    size = len(aaseq)
    return header, aaseq, size

FAoutput = [processFASTA(fa) for fa in FAfiles]

headers, AAseqs, sizes = zip(*FAoutput)

headers = list(headers)

#print(headers)
#print(AAseqs)
#print(sizes)
