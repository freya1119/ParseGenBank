###Scrap Paper###
#old code, test code, debugging code, etc.

# specify options for fasta files:
#TAXA=scinidae; DATABASE=popset; FORMAT=fasta
#TAXA=hyperia; DATABASE=nucleotide; FORMAT=fasta

#TAXA=Hyperiidea; DATABASE=nucleotide; FORMAT=fasta
#TAXA=Gammaridea; DATABASE=nucleotide; FORMAT=fasta
#TAXA=Ingolfiellidea; DATABASE=nucleotide; FORMAT=fasta
##TAXA=Senticaudata; DATABASE=nucleotide; FORMAT=fasta #too large?

##subgroups of Senticaudata:
#TAXA=Bogidiellida; DATABASE=nucleotide; FORMAT=fasta
#TAXA=Corophiida; DATABASE=nucleotide; FORMAT=fasta
##TAXA=Gammarida; DATABASE=nucleotide; FORMAT=fasta #causes errors #subgroup to find
#TAXA=Hadziida; DATABASE=nucleotide; FORMAT=fasta #downloaded, not run yet

#TAXA=Talitrida; DATABASE=nucleotide; FORMAT=fasta #not downloaded yet
#TAXA=unclassified Senticaudata

###subgroups of Gammarida:
#TAXA=Crangonyctidira; DATABASE=nucleotide; FORMAT=fasta #done no errors
##TAXA=Gammaridira; DATABASE=nucleotide; FORMAT=fasta #very large
###subgroups of Gammaridira:
#TAXA=Acanthogammaridae; DATABASE=nucleotide; FORMAT=fasta #downloaded
#TAXA=Anisogammaridae; DATABASE=nucleotide; FORMAT=fasta #downloaded
#TAXA=Baikalogammaridae; DATABASE=nucleotide; FORMAT=fasta #downloaded
#TAXA=Eoniphargidae; DATABASE=nucleotide; FORMAT=fasta #downloaded
#TAXA=Eulimnogammaridae; DATABASE=nucleotide; FORMAT=fasta #downloaded
#TAXA=Gammarellidae; DATABASE=nucleotide; FORMAT=fasta #downloaded

#TAXA=Gammaridae; DATABASE=nucleotide; FORMAT=fasta #errors - find subsets
###subgroups of Gammaridae:
Barnardiorum
Chaetogammarus
Comatogammarus
Corophiomorphus
Dikerogammarus
Echinogammarus
Euxinia
Fontogammarus
Gammaracanthus
#TAXA=Gammarus; DATABASE=nucleotide; FORMAT=fasta #downloaded 4423 #error fixed - works now.
Gmelina
Hurleya
Jugogammarus
Laurogammarus
Marinogammarus
Neogammarus
Obesogammarus
Paroediceros
Rhipidogammarus
Sarothrogammarus
Sinogammarus
Tryphosella
unclassified Gammaridae
environmental samples



#TAXA=Luciobliviidae; DATABASE=nucleotide; FORMAT=fasta #okay 3
#TAXA=Macrohectopidae; DATABASE=nucleotide; FORMAT=fasta #okay 19
#TAXA=Mesogammaridae; DATABASE=nucleotide; FORMAT=fasta #okay 3 entries
#TAXA=Micruropodidae; DATABASE=nucleotide; FORMAT=fasta #okay 144 entries
#TAXA=Pachyschesidae; DATABASE=nucleotide; FORMAT=fasta #okay 1 entry
#TAXA=Pallaseidae; DATABASE=nucleotide; FORMAT=fasta #okay
#TAXA=Pontogammaridae; DATABASE=nucleotide; FORMAT=fasta #okay
#TAXA=Typhlogammaridae; DATABASE=nucleotide; FORMAT=fasta #okay



#popset_fasta_filename = "popset.scinidae.fasta"
#popset_genbank_filename = "popset.scinidae.gb"

#popset_fasta_filename = "popset.hyperia.fasta"
#popset_genbank_filename = "popset.hyperia.gb"

#read data into R
#popset_fasta<-readLines(popset_fasta_filename)
#popset_genbank<-readLines(popset_genbank_filename)

At UNIX command line enter:
  ```{bash, eval=FALSE}
# specify options for fasta files:
#QUERY=scinidae; DATABASE=popset; FORMAT=fasta
#QUERY=hyperia; DATABASE=nucleotide; FORMAT=fasta

#QUERY=Hyperiidea; DATABASE=nucleotide; FORMAT=fasta
#QUERY=Gammaridea; DATABASE=nucleotide; FORMAT=fasta
#QUERY=Ingolfiellidea; DATABASE=nucleotide; FORMAT=fasta
##QUERY=Senticaudata; DATABASE=nucleotide; FORMAT=fasta #too large?

##subgroups of Senticaudata:
#QUERY=Bogidiellida; DATABASE=nucleotide; FORMAT=fasta
#QUERY=Corophiida; DATABASE=nucleotide; FORMAT=fasta
##QUERY=Gammarida; DATABASE=nucleotide; FORMAT=fasta #causes errors #subgroup to find
#QUERY=Hadziida; DATABASE=nucleotide; FORMAT=fasta #downloaded, not run yet

#QUERY=Talitrida; DATABASE=nucleotide; FORMAT=fasta #not downloaded yet
#QUERY=unclassified Senticaudata

###subgroups of Gammarida:
#QUERY=Crangonyctidira; DATABASE=nucleotide; FORMAT=fasta #done no errors
##QUERY=Gammaridira; DATABASE=nucleotide; FORMAT=fasta #very large
###subgroups of Gammaridira:
#Acanthogammaridae
#Anisogammaridae
#Baikalogammaridae
#Eoniphargidae
#Eulimnogammaridae
#Gammarellidae
#Gammaridae
#Luciobliviidae
#Macrohectopidae
#Mesogammaridae
#Micruropodidae
#Pachyschesidae
#Pallaseidae
#Pontogammaridae
#Pontogammaridae[Primary Organism]
QUERY="ORGN Pontogammaridae[Primary Organism]"; DATABASE=nucleotide; FORMAT=fasta
#Typhlogammaridae

#QUERY="scinidae"
#QUERY="hyperia"

#QUERY="Hyperiidea"
#QUERY="Gammaridea"
#QUERY="Ingolfiellidea"
##QUERY="Senticaudata" #not downloaded - too large?
#QUERY="Bogidiellida"
#QUERY="Corophiida"

##QUERY="Gammarida" #error subgroups:
QUERY="Crangonyctidira"

TAXA="Gammarida"
#TAXA="Crangonyctidira"
#TAXA="Pontogammaridae"
#TAXA="Typhlogammaridae"
#TAXA="Pallaseidae"
#TAXA="Pachyschesidae"
#TAXA="Micruropodidae"
#TAXA="Mesogammaridae"
#TAXA="Macrohectopidae"
#TAXA="Luciobliviidae"
#TAXA="Gammaridae"
#TAXA="Gammarus"

#QUERY="Hadziida"
#QUERY="Talitrida"

#DATABASE="popset"
DATABASE="nucleotide"

fasta_filename=paste(DATABASE,QUERY,"fasta",sep=".")
genbank_filename=paste(DATABASE,QUERY,"gb",sep=".")

#read data into R
fasta=readLines(fasta_filename)
genbank=readLines(genbank_filename)
```

#genes of interest
#genes=c("histone 3","18S","28S","COI","RpS5","RpS2","ArgKin","EF-1a","GAPDH","IDH","MDH","CAD","wingless","Unknown sequence")

#print(genbank_vector)

#create gene lookup table
# genelookup= data.frame(
#   rawlist=c("histone 3","18S","small subunit ribosomal","28S","cytochrome c oxidase subunit I ","cytochrome oxidase subunit I ","coi","CO1","COI","COX1","cox1","RpS5","RpS2","ArgKin","EF1a","EF-1a","GAPDH","IDH","MDH","CAD","wingless","Unknown sequence","16S","COX2","COX3","ATP6","cytochrome b"),
#   genelist=c("H3","18S","18S","28S","COI","COI","COI","COI","COI","COI","COI","RpS5","RpS2","ArgKin","EF1a","EF1a","GAPDH","IDH","MDH","CAD","Wgl","Unknown","16S","COX2","COX3","ATP6","CytB")
# )

#     for (i in seq(length(genelookup$rawlist))){
#       if (str_detect(des,genelookup$rawlist[i])){
#         gen = paste(gen,genelookup$genelist[i],sep=" ")
#         ingenes=TRUE
#       }
#     }
#     if(!ingenes){
#       gen = "other"
#       others=append(others,des)
#     }
#     gene=append(gene,gen)
###

genes=c("histone 3","18S","28S","COI","RpS5","RpS2","ArgKin","EF-1a","GAPDH","IDH","MDH","CAD","wingless","Unknown sequence")

###

For Gammarus data:
  sequence vector is 1 sequence short
due to FJVI00000000.1 which does not have a sequence listed:
  >gi|1019572867|emb|FJVI00000000.1|FJVI01000000 Gammarus pulex, whole genome shotgun sequencing project
Issue caused by using (nchar(seq)>0) to determine if a sequence was recorded and needed to be added to the sequence vector. This was changed to add a sequence to the sequence vector as long as the loop is beyond the first line of the fasta

for (i in seq(length(fasta))) {
  line = fasta[i]
  #for (line in fasta) {
  # if a header is detected:
  if (str_detect(line,fixed(">"))){
    
    #if sequence was recorded for previous record, add it to the sequence vector
    if (i>1) {sequence=append(sequence,seq)}
    #    if (nchar(seq)>0){sequence=append(sequence,seq)}
    seq="" #reset seq
    
####

for(gene_name in genes){
  if(str_detect(des,gene_name)){
    gene=append(gene,gene_name)
  } else {
    gene=append(gene,"other")
    others=append(others,des)
  }
}

###
#     if(str_detect(des,"histone 3")){
#       gene=append(gene,"H3")
#     } else if (str_detect(des,"18S")){
#       gene=append(gene,"18S")
#     } else if (str_detect(des,"28S")){
#       gene=append(gene,"28S")
#     } else if (str_detect(des,"COI")){
#       gene=append(gene,"COI")
#     } else if (str_detect(des,"RpS5")){
#       gene=append(gene,"RpS5")
#     } else if (str_detect(des,"RpS2")){
#       gene=append(gene,"RpS2")
#     } else if (str_detect(des,"ArgKin")){
#       gene=append(gene,"ArgKin")
#     } else if (str_detect(des,"EF-1a")){
#       gene=append(gene,"EF-1a")
#     } else if (str_detect(des,"GAPDH")){
#       gene=append(gene,"GAPDH")
#     } else if (str_detect(des,"IDH")){
#       gene=append(gene,"IDH")
#     } else if (str_detect(des,"MDH")){
#       gene=append(gene,"MDH")
#     } else if (str_detect(des,"CAD")){
#       gene=append(gene,"CAD")
#     } else if (str_detect(des,"wingless")){
#       gene=append(gene,"Wgl")
#     } else if (str_detect(des,"Unknown sequence")){
#       gene=append(gene,"Unknown")
#     } else {
#       gene=append(gene,"other")
#       others=append(others,des)
#     }

test=genbank_vector[80]
test
str_replace(test,".*AUTHORS   ([^\\d]+)   TITLE.*","\\1")
str_extract(test, "AUTHORS   ([^()]+)TITLE")

str_trim(str_extract(str_extract(test,"REFERENCE   2.*AUTHORS[^()]+TITLE"),"   [\\d]+   "))

str_extract(test,"REFERENCE   2.*AUTHORS   ([^\\d]+)   TITLE")

ref2pattern="REFERENCE   2[^,]*AUTHORS   ([^\\d]+)   TITLE"
ref1pattern="REFERENCE   1[^,]*AUTHORS   ([^\\d]+)   TITLE"

str_replace(str_extract(test,ref1pattern),ref1pattern,"\\1")
str_replace(str_extract(test,ref2pattern),ref2pattern,"\\1")
str_extract(test,ref2pattern)
test = genbank_vector[260]
#ref1pattern="REFERENCE   1[^,]*AUTHORS   ([^\\d]+)     *([^\\d]+)TITLE"

str_replace_all(test," +"," ")

str_extract(test,ref1pattern)







genbank

genbank_vector=c()
gb=""
for(line in genbank){
  gb=paste(gb,line,sep=" ")
  if(str_detect(line,"//")){
    gb=str_replace_all(gb," +"," ")
    genbank_vector=append(genbank_vector,gb)
    gb=""
  }
}
genbank_vector


# [12] "  AUTHORS   Ritchie,H., Jamieson,A.J. and Piertney,S.B."                        
# [13] "  TITLE     Phylogenetic relationships among hadal amphipods of the Superfamily"
# [14] "            Lysianassoidea: Implications for taxonomy and biogeography"         
# [15] "  JOURNAL   Deep Sea Res. Part I Oceanogr. Res. Pap. 105, 119-131 (2015)"       
# [16] "REFERENCE   2  (bases 1 to 569)"                                                
# [17] "  AUTHORS   Ritchie,H., Jamieson,A.J. and Piertney,S.B." 

genbank[12] = "  AUTHORS   refone Ritchie,H., Jamieson,A.J. and Piertney,S.B."
genbank[17] = "  AUTHORS   reftwo Ritchie,H., Jamieson,A.J. and Piertney,S.B."




organism=append(organism,str_extract(des,"^[^ ]+ [^ ]+"))

test=df$description[4064]
test2=str_replace(test,"cf. ","")

test
test2
organism=append(organism,str_extract(des,"^[^ ]+ [^ ]+"))
str_extract(test,"^[^ ]+ [cf. ]{0,4}[^ ]+")

ingenes=FALSE
gen=""
for(i in seq(length(genelookup$rawlist))){
  print(as.character(genelookup$rawlist[i]))
  if(str_detect(des,as.character(genelookup$rawlist[i]))){
    print("before I change anything, gen is currently:")
    print(gen)
    print("****** I found:")
    print(as.character(genelookup$rawlist[i]))
    lookup=as.character(genelookup$genelist[i])
    print("****** I'm going to call it:")
    print(lookup)
    if (!str_detect(gen,lookup)){print("it doesn't appear to be in gen already")}
    #if(!str_detect(gen,lookup))gen=paste(lookup,gen,sep=" ")
    #gen = paste(gen,genelookup$genelist[i],sep="")
    #if (!(str_detect(gen,lookup)) {gen = paste(lookup,gen,sep=" ")}
    gen = paste(lookup,gen,sep=" ")
    print("I just changed gen to:")
    print(gen)
    ingenes=TRUE
  }
}

ingenes=FALSE
gen=""
for(i in seq(length(genelookup$rawlist))){
  if(str_detect(des,as.character(genelookup$rawlist[i]))){
    lookup=as.character(genelookup$genelist[i])
    #if(!str_detect(gen,lookup))gen=paste(lookup,gen,sep=" ")
    #gen = paste(gen,genelookup$genelist[i],sep="")
    #if (!(str_detect(gen,lookup)) {gen = paste(lookup,gen,sep=" ")}
    #gen = paste(lookup,gen,sep=" ")
    if(!str_detect(gen,lookup)){gen=paste(lookup,gen,sep=" ")}
    ingenes=TRUE
  }
}
if(!ingenes){
  gen = "other"
  others=append(others,des)
}
gene=append(gene,gen)

organism=append(organism,str_extract(des,"^[^ ]+ [cf. ]{0,4}[^ ]+"))
#organism=append(organism,str_extract(des,"[A-z]* [A-z.]*"))

des
des2=description[1377]
des2
des3="EGU40437 Eurythenes cf. gryllus CAP-1 16S ribosomal RNA gene, mitochondrial gene encoding mitochondrial rRNA, partial sequence"

"*Abyssorchomene abyssorum* 16S ribosomal RNA gene, partial sequence; mitochondrial"
"EGU40437 *Eurythenes gryllus* CAP-1 16S ribosomal RNA gene, mitochondrial gene encoding mitochondrial rRNA, partial sequence"

str_extract(des2,"[A-Z][a-z]+ [cf. ]{0,4}[a-z]+")

#changed to accommodate "UNVERIFIED: Uncultured..."
#[cf. ]{0,4} added to accomodate "Genus cf. species"
organism=append(organism,str_extract(des,"[A-Z][a-z]+ [cf. ]{0,4}[a-z.]+"))
#organism=append(organism,str_extract(des,"[A-z]* [A-z.]*"))

#removed: pulling isolate # from gb file instead (better coverage)
#iso_pattern="[Ii]solate ([-\\w]+) "
#iso=str_replace(str_extract(des,iso_pattern),iso_pattern,"\\1")
#isolate=append(isolate,iso)

test=genbank_vector[170]
iso_pattern="/isolate=\"([\\w ./-]+)\""
iso_pattern="/isolate=\"([^\"]+)\""
str_replace(str_extract(test,iso_pattern),iso_pattern,"\\1")


#iso_pattern="/isolate=\"([\\w ./-]+)\""
iso_pattern="/isolate=\"([^\"]+)\""
iso=str_replace(str_extract(gb,iso_pattern),iso_pattern,"\\1")
isolate=append(isolate,iso)

#counting isolate numbers:
count=0
for(thing in isolate){
  if(!is.na(thing)){
    count=count+1
  }
}
count

#isolate number from gb
#iso_pattern="/isolate=\"([\\w ./-]+)\""
iso_pattern="/isolate=\"([^\"]+)\""
iso=str_replace(str_extract(gb,iso_pattern),iso_pattern,"\\1")
isolate=append(isolate,iso)

#voucher number from gb
#vou_pattern="voucher="\"([^\"]+)\""
#vou=str_replace(str_extract(gb,vou_pattern),vou_pattern,"\\1")
#voucher=append(voucher,vou)
vou_pattern="voucher=\"([^\"]+)\""
vou=str_replace(str_extract(gb,vou_pattern),vou_pattern,"\\1")
voucher=append(voucher,vou)

#removed: voucher # parsed from gb file below
#vou=str_replace(str_extract(des,"voucher [^ ]+[:digit:]+"),"voucher ","")
#voucher=append(voucher,vou)

count=0
for(thing in voucher){
  if(!is.na(thing)){
    count=count+1
  }
}
count

####
#     #REFERENCE 1
#     auth_pat=paste("REFERENCE 1",auth_pattern,sep="")
#     cons_pat=paste("REFERENCE 1",cons_pattern,sep="")
#     auth= str_replace(str_extract(gb,auth_pat),auth_pat,"\\1")
#     cons= str_replace(str_extract(gb,cons_pat),cons_pat,"\\1")
#     if (is.na(auth)){
#       auth=cons # in case consortium listed but no author
#     } else if (!is.na(cons)){
#       auth=paste(auth,cons,sep=", ") # in case author & consortium listed (never?)
#     }
#     author_ref1=append(author_ref1,auth)

#gb=str_replace_all(gb,"(REFERENCE)","@\\1")


count=0
for(thing in author_ref1){
  if(!is.na(thing)){
    count=count+1
  }
}
count
#5143 authors
#68 consortia
#5211 (goal) check.
author_ref1[!is.na(author_ref1)]

International Barcode of Life 67
NCBI 1

#author and/or consortium for References 1-3 from gb
#insert an @ after each header in references section
reference_keys=c("REFERENCE","AUTHORS","CONSRTM","TITLE","JOURNAL","COMMENT","FEATURES")
for(key in reference_keys){
  gb=str_replace_all(gb,key,paste("@",key,sep=""))
}

auth_pattern="[^@]*@AUTHORS ([^@]+) @"
cons_pattern="[^@]*@CONSRTM ([^@]+) @"

#REFERENCES 1-3
#change to i in 1:3 later
for (i in 1:3) {
  auth_pat=paste("REFERENCE ",auth_pattern,sep=as.character(i))
  cons_pat=paste("REFERENCE ",cons_pattern,sep=as.character(i))
  auth= str_replace(str_extract(gb,auth_pat),auth_pat,"\\1")
  cons= str_replace(str_extract(gb,cons_pat),cons_pat,"\\1")
  if (is.na(auth)){
    auth=cons # in case consortium listed but no author
  } else if (!is.na(cons)){
    auth=paste(auth,cons,sep=", ") # in case author & consortium listed (never?)
  }
  if(i==1){author_ref1=append(author_ref1,auth)}
  else if(i==2){author_ref2=append(author_ref2,auth)}
  else if(i==3){author_ref3=append(author_ref3,auth)}
}

#ref1pattern="REFERENCE 1[^,]*AUTHORS ([^\\d]+) TITLE"
#changed "AUTHORS" to [AUTHORSCNM]{7} to accommodated AUTHORS or CONSRTM
#ref1pattern="REFERENCE 1[^,]*[CONSRTM]{7} ([^\\d]+) TITLE"
#ref1pattern="REFERENCE 1[^,]*[AUTHORSCNM]{7} ([^\\d]+) TITLE"

#ref1pattern="REFERENCE 1[^,]*AUTHORS ([^\\d]+) TITLE"
#auth= str_replace(str_extract(gb,ref1pattern),ref1pattern,"\\1")
#consrtm1pattern="REFERENCE 1[^,]*CONSRTM ([^\\d]+) TITLE"
#cons= str_replace(str_extract(gb,consrtm1pattern),consrtm1pattern,"\\1")
#if (is.na(auth)){
#  auth=cons
#} else if (!is.na(cons)){
#  auth=paste(auth,cons,sep=", ")
#}
#author=append(author,auth)
#ref2pattern="REFERENCE 2[^,]*AUTHORS ([^\\d]+) TITLE"
#auth2= str_replace(str_extract(gb,ref2pattern),ref2pattern,"\\1")
#author_ref2=append(author_ref2,auth2)

#author and/or consortium for References 1-3 from gb
#insert an @ after each header in references section
#reference_keys=c("REFERENCE","AUTHORS","CONSRTM","TITLE","JOURNAL","COMMENT","FEATURES")
reference_ends=c("REFERENCE","COMMENT","FEATURES")
for(end in reference_ends){gb=str_replace_all(gb,end,paste("@",end,sep=""))}
reference_keys=c("AUTHORS","CONSRTM","TITLE","JOURNAL")
for(key in reference_keys){gb=str_replace_all(gb,key,paste("%",key,sep=""))}

#REFERENCES 1-3
for (i in 1:3) {
  auth_pat=paste("REFERENCE ","[^@]+%AUTHORS ([^%]+) %",sep=as.character(i))
  cons_pat=paste("REFERENCE ","[^@]+%CONSRTM ([^%]+) %",sep=as.character(i))
  title_pat=paste("REFERENCE ","[^@]+%TITLE ([^%]+) %",sep=as.character(i))
  journ_pat=paste("REFERENCE ","[^@]+%JOURNAL ([^%@]+) [%@]",sep=as.character(i))
  auth= str_replace(str_extract(gb,auth_pat),auth_pat,"\\1")
  cons= str_replace(str_extract(gb,cons_pat),cons_pat,"\\1")
  title= str_replace(str_extract(gb,title_pat),title_pat,"\\1")
  journ= str_replace(str_extract(gb,journ_pat),journ_pat,"\\1")
  if(is.na(auth)){
    auth=cons # in case consortium listed but no author
  }else if(!is.na(cons)){
    auth=paste(auth,cons,sep=", ") # in case author & consortium listed (never?)
  }
  if(i==1){
    author_ref1=append(author_ref1,auth)
    title_ref1=append(title_ref1,title)
    journal_ref1=append(journal_ref1,journ)
  }else if(i==2){
    author_ref2=append(author_ref2,auth)
    title_ref2=append(title_ref2,title)
    journal_ref2=append(journal_ref2,journ)
  }else if(i==3){
    author_ref3=append(author_ref3,auth)
    title_ref3=append(title_ref3,title)
    journal_ref3=append(journal_ref3,journ)
  }
}

##Build Gene Table

```{r}
df_sort=df[order(organism),]

gene_table=df_sort[,c(2:5,7,8)]

#initialize gene vectors:
mt_Genome=
  mt_COI=
  n_H3=
  mt_12S=
  mt_16S=
  n_18S=
  n_28S=
  n_RpS5=
  n_RpS2=
  ArgKin=
  EF1a=
  GAPDH=
  ID=
  MDH=
  CAD=
  Wgl=
  mt_COX2=
  mt_COX3=
  mt_ATP6=
  mt_CytB=
  HSP70=
  n_ITS2=rep("",nrow(df_sort))

for(i in seq(nrow(df_sort))){
  entry=as.character(df_sort$gene[i])
  if(str_detect(entry,"mt Genome")){
    mt_Genome[i]=as.character(df_sort$accession[i])
    mt_COI[i]=mt_12S[i]=mt_16S[i]=mt_COX2[i]=mt_COX3[i]=mt_ATP6[i]=mt_CytB[i]="mt Genome"
  }
  if(str_detect(entry,"COI")){mt_COI[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"H3")){n_H3[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"12S")){mt_12S[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"16S")){mt_16S[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"18S")){n_18S[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"28S")){n_28S[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"RpS5")){n_RpS5[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"RpS2")){n_RpS2[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"ArgKin")){ArgKin[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"EF1a")){EF1a[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"GAPDH")){GAPDH[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"ID")){ID[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"MDH")){MDH[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"CAD")){CAD[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"Wgl")){Wgl[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"COX2")){mt_COX2[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"COX3")){mt_COX3[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"ATP6")){mt_ATP6[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"CytB")){mt_CytB[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"HSP70")){HSP70[i]=as.character(df_sort$accession[i])}
  if(str_detect(entry,"ITS2")){n_ITS2[i]=as.character(df_sort$accession[i])}
}

gene_table=df_sort[,c(2:5)]

gene_table=data.frame(gene_table,mt_Genome,mt_COI,n_H3,mt_12S,mt_16S,n_18S,n_28S,n_RpS5,n_RpS2,ArgKin,EF1a,GAPDH,ID,MDH,CAD,Wgl,mt_COX2,mt_COX3,mt_ATP6,mt_CytB,HSP70,n_ITS2,stringsAsFactors=FALSE)

str(gene_table)

gt=aggregate.data.frame(gene_table, by=list(gene_table$voucher), max)


aggregate(x=DF[c("v1","v2","v3","v4")], by=list(name=DF$name), min, na.rm = TRUE)

COI=vector(NA, length=nrow(df_sort))
vector()




for(entry in df_sort$gene){
  if str_detect(entry,COI)
}

#vector of gene names:
genes=c()
gene=""
for(entry in genelookup$genelist){
  if(entry!=gene){
    gene=entry
    genes=append(genes,gene)
  }
}




#initialize gene table
gene_table=data.frame(matrix(NA, nrow=nrow(df_sort), ncol=28))
colnames(gene_table)=c("ORGANISM","TAXON_ID","VOUCHER","ISOLATE",genes)





i=1
gene_table$ORGANISM[i]=
  df_sort$organism[i]

for(i in seq(nrow(df_sort))){
  for(entry in )
}

for(i in seq(nrow(df_sort))){
  if(i==1){
  }
}
```


genelookup= data.frame(
  rawlist=c("cytochrome [c ]{0,2}oxidase [subunit ]{0,8}[I1] ","[cC][Oo][Xx]{0,1}[1Ii][ )]","histone H{0,1}3","12S","16S","large subunit ribosomal RNA gene, partial sequence; mitochondrial","18S","S18","small subunit ribosomal","28S","RpS5","RpS2","ArgKin","EF-{0,1}1-{0,1}a","elongation factor 1[ -]a","G[aA][pP][dD][hH]","IDH","MDH","CAD","wingless","COX2","COX3","COIII","ATP6","cytochrome b","[hH][sS][pP]70[ )]","hsp70-2","hsp70-1","mitochondri[onal DNA]{2,6}, complete genome","complete mitochondrial genome","partial mitochondrial genome","internal transcribed spacer 2","internal transcribed spacer 1","transposon","Unknown sequence","unknown mRNA","anonymous locus","NAK-ATPase","sodium/potassium ATPase","prostaglandin E synthase","cyclooxygenase","GH7D","GH7A","actin","Abcb1","superoxide dismutase gene","hemocyanin","ND5","ND2","CsDll","contig_\\d+_\\d+ transcribed RNA","[Mm]icrosatellite","(Rh)","myosin heavy chain","whole genome shotgun","transcriptome shotgun"),
  genelist=c("COI","COI","H3","12S","16S","16S","18S","18S","18S","28S","RpS5","RpS2","ArgKin","EF1a","EF1a","GAPDH","IDH","MDH","CAD","Wgl","COX2","COX3","COX3","ATP6","CytB","hsp70","hsp70-2","hsp70-1","mt Genome","mt Genome","partial mt Genome","ITS2","ITS1","transposon","Unknown","Unknown","anonymous locus","NAK-ATPase","NAK-ATPase","PTGS","PTGS","GH7D","GH7A","ACT","Abcb1","MnSOD","hemocyanin","ND5","ND2","CsDll","RNAseq contig","microsat","Rh","MHC","whole genome shotgun","transcriptome shotgun")
)

##Build Gene Table

```{r, eval=FALSE, tidy=TRUE}


genelist=(unique(as.character(genelookup$genelist)))

(#initialize gene vectors:
#for(gene in genelist) {assign(gene,rep("",nrow(df)))}
for(gene in genelist) {assign(gene,c())}

#initialize gene vectors:
#mt_Genome=mt_COI=n_H3=mt_12S=mt_16S=n_18S=n_28S=n_RpS5=n_RpS2=ArgKin=EF1a=GAPDH=ID=MDH=CAD=Wgl=mt_COX2=mt_COX3=mt_ATP6=mt_CytB=HSP70=n_ITS2=rep("",nrow(df))

g=""
for(i in seq(nrow(df))){
  entry=as.character(df$gene[i])
  for(gene in genelist){
    if(str_detect(entry,gene)){g=df$accession[i]}
    assign(gene,do.call(append,list(as.name(gene),g)))
    #assign(gene,append(as.name(gene),g))
    g=""
  }
}

#do.call("<-",list(parameter_name, parameter_value))

for(i in seq(nrow(df))){
  entry=as.character(df$gene[i])
  if(str_detect(entry,"mt Genome")){
    mt_Genome[i]=as.character(df$accession[i])
    mt_COI[i]=mt_12S[i]=mt_16S[i]=mt_COX2[i]=mt_COX3[i]=mt_ATP6[i]=mt_CytB[i]="mt Genome"
  }
  if(str_detect(entry,"COI")){mt_COI[i]=as.character(df$accession[i])}
  if(str_detect(entry,"H3")){n_H3[i]=as.character(df$accession[i])}
  if(str_detect(entry,"12S")){mt_12S[i]=as.character(df$accession[i])}
  if(str_detect(entry,"16S")){mt_16S[i]=as.character(df$accession[i])}
  if(str_detect(entry,"18S")){n_18S[i]=as.character(df$accession[i])}
  if(str_detect(entry,"28S")){n_28S[i]=as.character(df$accession[i])}
  if(str_detect(entry,"RpS5")){n_RpS5[i]=as.character(df$accession[i])}
  if(str_detect(entry,"RpS2")){n_RpS2[i]=as.character(df$accession[i])}
  if(str_detect(entry,"ArgKin")){ArgKin[i]=as.character(df$accession[i])}
  if(str_detect(entry,"EF1a")){EF1a[i]=as.character(df$accession[i])}
  if(str_detect(entry,"GAPDH")){GAPDH[i]=as.character(df$accession[i])}
  if(str_detect(entry,"ID")){ID[i]=as.character(df$accession[i])}
  if(str_detect(entry,"MDH")){MDH[i]=as.character(df$accession[i])}
  if(str_detect(entry,"CAD")){CAD[i]=as.character(df$accession[i])}
  if(str_detect(entry,"Wgl")){Wgl[i]=as.character(df$accession[i])}
  if(str_detect(entry,"COX2")){mt_COX2[i]=as.character(df$accession[i])}
  if(str_detect(entry,"COX3")){mt_COX3[i]=as.character(df$accession[i])}
  if(str_detect(entry,"ATP6")){mt_ATP6[i]=as.character(df$accession[i])}
  if(str_detect(entry,"CytB")){mt_CytB[i]=as.character(df$accession[i])}
  if(str_detect(entry,"HSP70")){HSP70[i]=as.character(df$accession[i])}
  if(str_detect(entry,"ITS2")){n_ITS2[i]=as.character(df$accession[i])}
}

gene_table=df[,c(2:4,10)]
gene_table=data.frame(gene_table,do.call(cbind,lapply(genelist,as.name)),stringsAsFactors = FALSE)

#gene_table=data.frame(gene_table,mt_Genome,mt_COI,n_18S,n_28S,n_H3,mt_12S,mt_16S,n_RpS5,n_RpS2,ArgKin,EF1a,GAPDH,ID,MDH,CAD,Wgl,mt_COX2,mt_COX3,mt_ATP6,mt_CytB,HSP70,n_ITS2,stringsAsFactors=FALSE)

#gene_table=do.call(data.frame,as.list(genelist))




#aggregate rows where voucher # matches (omits rows where voucher is NA)
gt=aggregate(gene_table, by=list(gene_table$voucher), max, na.rm=TRUE)

#remove Group.1 row
gt=gt[,c(2:ncol(gt))]

#replace rows where voucher is NA
gt=rbind(gt,gene_table[is.na(voucher),])
```
