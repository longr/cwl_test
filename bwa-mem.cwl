class: CommandLineTools
cwlVersion: v1.0

inputs:
  referenceIndex:
    type: File

  fastq-R1:
    type: File

outputs:
  mappingSAM:
    type: stdout
baseCommand: [bwa, mem ]