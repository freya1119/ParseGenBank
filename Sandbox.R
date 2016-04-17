###Scrap Paper###
#old code, test code, debugging code, etc.


#popset_fasta_filename = "popset.scinidae.fasta"
#popset_genbank_filename = "popset.scinidae.gb"

#popset_fasta_filename = "popset.hyperia.fasta"
#popset_genbank_filename = "popset.hyperia.gb"

#read data into R
#popset_fasta<-readLines(popset_fasta_filename)
#popset_genbank<-readLines(popset_genbank_filename)

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
