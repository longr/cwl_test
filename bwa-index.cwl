class: CommandLineTools
cwlVersion: v1.0

inputs:
  genomeFasta:
    type: File

outputs:
  index:
    type: File
    ...

baseCommand: [bwa, index]