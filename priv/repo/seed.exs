alias ProteopathyDb.Repo
alias ProteopathyDb.Proteopathy.Protien
alias ProteopathyDb.Proteopathy.Mutation
alias ProteopathyDb.Proteopathy.Phenotype
alias ProteopathyDb.Proteopathy.Evidence

# Proteins
Repo.delete_all(Mutation)
Repo.delete_all(Evidence)
Repo.delete_all(Phenotype)
Repo.delete_all(Protien)
prnp = Repo.insert! %Protien{
  uniprot_id: "P04156",
  gene_name: "PRNP",
  protien_name: "Major prion protein",
  sequence: "MANLGCWMLVLFVATWSDLGLCKKRPKPGGWNTGGSRYPGQGSPGGNRYPPQGGGGWGQPHGGGWGQPHGGGWGQPHGGGWGQPHGGGWGQGGGTHSQWNKPSKPKTNMKHMAGAAAAGAVVGGLGGYMLGSAMSRPIIHFGSDYEDRYYRENMHRYPNQVYYRPMDEYSNQNNFVHDCVNITIKQHTVTTTTKGENFTETDVKMMERVVEQMCITQYERESQAYYQRGSSMVLFSSPPVILLISFLIFLIVG"
}

Repo.insert! %Protien{
  uniprot_id: "P10636",
  gene_name: "MAPT",
  protien_name: "Microtubule-associated protein tau",
  sequence: "MAEPRQEFEVMEDHAGTYGLGDRKDQGGYTMHQDQEGDTDAGLKESPLQTPTEDGSEEPGSETSDAKSTPTAEDVTAPLVDEGAPGKQAAAQPHTEIPEGTTAEEAGIGDTPSLEDEAAGHVTQEPESGKVVQEGFLREPGPPGLSHQLMSGMPGAPLLPEGPREATRQPSGTGPEDTEGGRHAPELLKHQLLGDLHQEGPPLKGAGGKERPGSKEEVDEDRDVDESSPQDSPPSKASPAQDGRPPQTAAREATSIPGFPAEGAIPLPVDFLSKVSTEIPASEPDGPSVGRAKGQDAPLEFTFHVEITPNVQKEQAHSEEHLGRAAFPGAPGEGPEARGPSLGEDTKEADLPEPSEKQPAAAPRGKPVSRVPQLKARMVSKSKDGTGSDDKKAKTSTRSSAKTLKNRPCLSPKHPTPGSSDPLIQPSSPAVCPEPPSSPKYVSSVTSRTGSSGAKEMKLKGADGKTKIATPRGAAPPGQKGQANATRIPAKTPPAPKTPPSSGEPPKSGDRSGYSSPGSPGTPGSRSRTPSLPTPPTREPKKVAVVRTPPKSPSSAKSRLQTAPVPMPDLKNVKSKIGSTENLKHQPGGGKVQIINKKLDLSNVQSKCGSKDNIKHVPGGGSVQIVYKPVDLSKVTSKCGSLGNIHHKPGGGQVEVKSEKLDFKDRVQSKIGSLDNITHVPGGGNKKIETHKLTFRENAKAKTDHGAEIVYKSPVVSGDTSPRHLSNVSSTGSIDMVDSPQLATLADEVSASLAKQGL"
}

Repo.insert! %Protien{
  uniprot_id: "P37840",
  gene_name: "SNCA",
  protien_name: "Alpha-synuclein",
  sequence: "MDVFMKGLSKAKEGVVAAAEKTKQGVAEAAGKTKEGVLYVGSKTKEGVVHGVATVAEKTKEQVTNVGGAVVTGVTAVAQKTVEGAGSIAAATGFVKKDQLGKNEEGAPQEGILEDMPVDPDNEAYEMPSEEGYQDYEPEA"
}

# Phenotypes
{ :ok, cjd } = Repo.insert %Phenotype{
  abbreviation: "CJD",
  name: "Creutzfeldt–Jakob disease",
  snippet: "The human prion diseases occur in inherited, acquired, and sporadic forms. Approximately 15% are inherited and associated with coding mutations in the PRNP gene. Acquired prion diseases include iatrogenic CJD, kuru (245300), variant CJD (vCJD) in humans, scrapie in sheep, and bovine spongiform encephalopathy (BSE) in cattle. Variant CJD is believed to be acquired from cattle infected with BSE. However, the majority of human cases of prion disease occur as sporadic CJD (sCJD) ",
  omim_link: "https://www.omim.org/entry/123400",
}

{ :ok, ffi } = Repo.insert %Phenotype{
  abbreviation: "FFI",
  name: "Fatal familial insomnia",
  snippet: "Fatal familial insomnia is a prion disorder showing autosomal dominant inheritance. It is clinically characterized by insomnia with or without a diurnal dreaming state, hallucinations, delirium, and dysautonomia preceding motor and cognitive deterioration. FFI is specifically associated with the asp178-to-asn mutation of the PRNP gene (D178N; 176640.0010) when the amino acid at position 129 is methionine (M129V; 176640.0005). The D178N mutation and the val129 allele results in Creutzfeldt-Jacob disease (CJD; 123400) (see 176640.0007) (Goldfarb et al., 1992). CJD typically presents with dementia, ataxia, myoclonus, and other abnormal movements; however, there is considerable clinical and pathologic overlap between FFI and CJD, and some individuals with D178N and met129 may present with a phenotype suggestive of CJD. Thus, FFI and CJD may be viewed as extremes of a phenotypic spectrum (summary by Zarranz et al., 2005).",
  omim_link: "https://www.omim.org/entry/600072",
}

{ :ok, gss } = Repo.insert %Phenotype{
  abbreviation: "GSS",
  name: "Gerstmann–Sträussler–Scheinker disease",
  snippet: "Gerstmann-Straussler disease is a rare inherited prion disease characterized by adult onset of memory loss, dementia, ataxia, and pathologic deposition of amyloid-like plaques in the brain (Gerstmann et al., 1936). Gerstmann-Straussler disease typically presents with progressive limb and truncal ataxia, dysarthria, and cognitive decline in the thirties and forties, and the average disease duration is 7 years. GSD can be distinguished from CJD by earlier age at onset, longer disease duration, and prominent cerebellar ataxia",
  omim_link: "https://www.omim.org/entry/137440",
}

{ :ok, kuru } = Repo.insert %Phenotype{
  abbreviation: "Kuru",
  name: "Kuru",
  snippet: "Kuru, a fatal neurodegenerative condition, is a human prion disease that primarily affected the Fore linguistic group of the Eastern Highlands of Papua New Guinea. Kuru was transmitted by the practice of consuming dead relatives as a mark of respect and mourning ('transumption'). The incidence has fallen dramatically since the cessation of cannibalism in the 1950s",
  omim_link: "https://www.omim.org/entry/245300",
}

{ :ok, ftd } = Repo.insert %Phenotype{
  abbreviation: "FTD",
  name: "Frontotemporal dementia",
  snippet: "Frontotemporal dementia (FTD) refers to a clinical manifestation of the pathologic finding of frontotemporal lobar degeneration (FTLD). FTD, the most common subtype of FTLD, is a behavioral variant characterized by changes in social and personal conduct with loss of volition, executive dysfunction, loss of abstract thought, and decreased speech output. A second clinical subtype of FTLD is 'semantic dementia,' characterized by specific loss of comprehension of language and impaired facial and object recognition. A third clinical subtype of FTLD is 'primary progressive aphasia' (PPA), characterized by a reduction in speech production, speech errors, and word retrieval difficulties resulting in mutism and an inability to communicate. All subtypes have relative preservation of memory, at least in the early stages. FTLD is often associated with parkinsonism or motor neuron disease (MND) resembling amyotrophic lateral sclerosis (ALS; 105400) (reviews by Tolnay and Probst, 2002 and Mackenzie and Rademakers, 2007). Mackenzie et al. (2009, 2010) provided a classification of FTLD subtypes according to the neuropathologic findings",
  omim_link: "https://www.omim.org/entry/600274",
}

{ :ok, ad } = Repo.insert %Phenotype{
  abbreviation: "AD",
  name: "Alzheimer’s disease",
  snippet: "Alzheimer disease is the most common form of progressive dementia in the elderly. It is a neurodegenerative disorder characterized by the neuropathologic findings of intracellular neurofibrillary tangles (NFT) and extracellular amyloid plaques that accumulate in vulnerable brain regions (Sennvik et al., 2000). Terry and Davies (1980) pointed out that the 'presenile' form, with onset before age 65, is identical to the most common form of late-onset or 'senile' dementia, and suggested the term 'senile dementia of the Alzheimer type' (SDAT).",
  omim_link: "https://www.omim.org/entry/104300",
}

{ :ok, dlb } = Repo.insert %Phenotype{
  abbreviation: "DLB",
  name: "Dementia with Lewy bodies",
  snippet: "Dementia with Lewy bodies (DLB) is a neurodegenerative disorder clinically characterized by dementia and parkinsonism, often with fluctuating cognitive function, visual hallucinations, falls, syncopal episodes, and sensitivity to neuroleptic medication. Pathologically, Lewy bodies are present in a pattern more widespread than usually observed in Parkinson disease (see PD; 168600). Alzheimer disease (AD; 104300)-associated pathology and spongiform changes may also be seen ",
  omim_link: "https://www.omim.org/entry/127750",
}

{ :ok, protective } = Repo.insert %Phenotype{
  abbreviation: "Protective",
  name: "",
  snippet: "",
  omim_link: "",
}

# Mutations
Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "D178N",
  genesis: :hereditary,
  phenotypes: ffi.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "V180I",
  genesis: :hereditary,
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "T188K",
  genesis: :sporadic,
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "E196K",
  genesis: :sporadic,
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "E196A",
  genesis: :de_novo,
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "E200K",
  genesis: :hereditary,
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "E200G",
  genesis: :sporadic,
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "V203I",
  genesis: :sporadic,
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "R208H",
  genesis: :sporadic,
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "V210I",
  genesis: :hereditary,
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "",
  genesis: :hereditary,
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "E211Q",
  genesis: :de_novo,
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "I215V",
  genesis: :hereditary,
  phenotypes: ad.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "M232R",
  genesis: :sporadic,
  phenotypes: dlb.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "P102L",
  genesis: :sporadic,
  phenotypes: dlb.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "P105L",
  genesis: :hereditary,
  phenotypes: gss.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "A117V",
  genesis: :hereditary,
  phenotypes: gss.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "G131V",
  genesis: :de_novo,
  phenotypes: gss.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "V176G",
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "H187R",
  genesis: :hereditary,
  phenotypes: gss.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "F198S",
  genesis: :hereditary,
  phenotypes: gss.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "D202N",
  genesis: :hereditary,
  phenotypes: gss.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "Q212P",
  phenotypes: gss.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "Q217R",
  genesis: :hereditary,
  phenotypes: ftd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "M232T",
  phenotypes: kuru.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "S17G",
  genesis: :de_novo,
  phenotypes: ad.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "P39L",
  genesis: :hereditary,
  phenotypes: ftd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "G114V",
  genesis: :hereditary,
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "Y145-nonsense",
  genesis: :de_novo,
  phenotypes: ad.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "Q160-nonsense",
  genesis: :hereditary,
  phenotypes: ad.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "Y163-nonsense",
  genesis: :hereditary,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "D187fs",
  genesis: :de_novo,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "T183A",
  genesis: :hereditary,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "R208C",
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "Y226*",
  genesis: :hereditary,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "Q227*",
  genesis: :hereditary,
  phenotypes: ftd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "G127S",
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "G127V",
  phenotypes: protective.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "M129V",
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "D167G",
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "D167N",
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "N171S",
  phenotypes: cjd.id,
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "E219K",
}

Repo.insert! %Mutation{
  uniprot_id: prnp.id,
  mutation: "P238S",
}
# Evidence
