class: Workflow
cwlVersion: v1.0
inputs:
  reference:
    type: File
  fastq1:
    type: File

outputs:
  mappedReads:
    type: File
    outputSource: mappingReads/mappingSAM
    steps:
  indexGenome:
    run: bwa-index.cwl
    in:
      genomeFasta: reference
    out: [index]


steps:
  indexGenome:
    run: bwa-index.cwl
    in:
      genomeFasta: reference
    out: [index]
  mappingReads:
    run: bwa-mem.cwl
    in:
      referenceIndex: indexGenome/index
      fastq-R1: fastq1
    out: mappingSAM