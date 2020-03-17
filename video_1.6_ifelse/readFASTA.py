def readFASTA(f):
    headers = []
    sequences = []
    seqtype = []
    ACGT = set("ACGT")
    ACGU = set("ACGU")
    aminoAcids = set("GALMFWKQESPVICYHRNDT*")
    with open(f, 'r') as mycon:
        for line in mycon:
            line = line.strip()
            if line.startswith(">"):
                # do stuff with header
                headers.append(line)
                if len(headers) > 1:
                    sequences.append(thisseq)
                thisseq = ""
            else:
                # do stuff with sequence
                thisseq = thisseq + line
        sequences.append(thisseq)
    for s in sequences:
        if set(s) <= ACGT:
            seqtype.append("DNA")
        elif set(s) <= ACGU:
            seqtype.append("RNA")
        elif set(s) <= aminoAcids:
            seqtype.append("protein")
        else:
            raise Exception("Unexpected sequence")
    return [headers, sequences, seqtype]

myfasta = readFASTA("epsp_synthase.fa")

print(myfasta)

myfasta2 = readFASTA("epsp_synthase_peptide.fa")

print(myfasta2)

def examineIntrons(fastaout):
    headers = fastaout[0]
    sequences = fastaout[1]
    nseq = len(sequences)
    out = []
    
    for i in range(nseq):
        if "intron" in headers[i] and \
        (not sequences[i].startswith("GT") or not sequences[i].endswith("AG")):
            out.append("non-standard intron!")
        else:
            out.append("exon or normal intron")
    return out

print(examineIntrons(myfasta))
        