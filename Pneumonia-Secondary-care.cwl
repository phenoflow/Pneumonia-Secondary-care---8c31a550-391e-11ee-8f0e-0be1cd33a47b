cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  pneumonia---secondary:
    run: pneumonia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  pneumonia-secondary-care-bacteria---secondary:
    run: pneumonia-secondary-care-bacteria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: pneumonia---secondary/output
  pneumonia-secondary-care-chlamydophila---secondary:
    run: pneumonia-secondary-care-chlamydophila---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-bacteria---secondary/output
  pneumonia-secondary-care-escherichia---secondary:
    run: pneumonia-secondary-care-escherichia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-chlamydophila---secondary/output
  pneumonia-secondary-care-influenzae---secondary:
    run: pneumonia-secondary-care-influenzae---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-escherichia---secondary/output
  pneumonia-secondary-care-klebsiella---secondary:
    run: pneumonia-secondary-care-klebsiella---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-influenzae---secondary/output
  pneumonia-secondary-care-mycoplasma---secondary:
    run: pneumonia-secondary-care-mycoplasma---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-klebsiella---secondary/output
  pneumonia-secondary-care-aeruginosa---secondary:
    run: pneumonia-secondary-care-aeruginosa---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-mycoplasma---secondary/output
  pneumonia-secondary-care-staphylococcu---secondary:
    run: pneumonia-secondary-care-staphylococcu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-aeruginosa---secondary/output
  pneumonia-secondary-care-streptococcu---secondary:
    run: pneumonia-secondary-care-streptococcu---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-staphylococcu---secondary/output
  betahaemolytic-pneumonia-secondary-care---secondary:
    run: betahaemolytic-pneumonia-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-streptococcu---secondary/output
  viral-pneumonia-secondary-care---secondary:
    run: viral-pneumonia-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: betahaemolytic-pneumonia-secondary-care---secondary/output
  pneumonia-secondary-care-adenovirus---secondary:
    run: pneumonia-secondary-care-adenovirus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: viral-pneumonia-secondary-care---secondary/output
  pneumonia-secondary-care-metapneumovirus---secondary:
    run: pneumonia-secondary-care-metapneumovirus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-adenovirus---secondary/output
  pneumonia-secondary-care-fungal---secondary:
    run: pneumonia-secondary-care-fungal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-metapneumovirus---secondary/output
  pneumonia-secondary-care-organism---secondary:
    run: pneumonia-secondary-care-organism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-fungal---secondary/output
  pneumonia-secondary-care-plague---secondary:
    run: pneumonia-secondary-care-plague---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-organism---secondary/output
  pneumonia-secondary-care-tularaemia---secondary:
    run: pneumonia-secondary-care-tularaemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-plague---secondary/output
  pneumonia-secondary-care-anthrax---secondary:
    run: pneumonia-secondary-care-anthrax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-tularaemia---secondary/output
  pneumonia-secondary-care-actinomycosis---secondary:
    run: pneumonia-secondary-care-actinomycosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-anthrax---secondary/output
  pneumonia-secondary-care-nocardiosis---secondary:
    run: pneumonia-secondary-care-nocardiosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-actinomycosis---secondary/output
  pneumonia-secondary-care-legionnaire---secondary:
    run: pneumonia-secondary-care-legionnaire---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-nocardiosis---secondary/output
  pneumonia-secondary-care-fever---secondary:
    run: pneumonia-secondary-care-fever---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-legionnaire---secondary/output
  pneumonia-secondary-care-varicella---secondary:
    run: pneumonia-secondary-care-varicella---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-fever---secondary/output
  pneumonia-secondary-care-complicated---secondary:
    run: pneumonia-secondary-care-complicated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-varicella---secondary/output
  cytomegaloviral-pneumonia-secondary-care---secondary:
    run: cytomegaloviral-pneumonia-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-complicated---secondary/output
  pneumonia-secondary-care-candidiasis---secondary:
    run: pneumonia-secondary-care-candidiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: cytomegaloviral-pneumonia-secondary-care---secondary/output
  pneumonia-secondary-care-toxoplasmosis---secondary:
    run: pneumonia-secondary-care-toxoplasmosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-candidiasis---secondary/output
  pneumonia-secondary-care-pneumocystosis---secondary:
    run: pneumonia-secondary-care-pneumocystosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-toxoplasmosis---secondary/output
  pneumonia-secondary-care-granulosus---secondary:
    run: pneumonia-secondary-care-granulosus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-pneumocystosis---secondary/output
  adenoviral-pneumonia-secondary-care---secondary:
    run: adenoviral-pneumonia-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-granulosus---secondary/output
  pneumonia-secondary-care-specified---secondary:
    run: pneumonia-secondary-care-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: adenoviral-pneumonia-secondary-care---secondary/output
  pneumonia-secondary-care-streptococci---secondary:
    run: pneumonia-secondary-care-streptococci---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-specified---secondary/output
  pneumonia-secondary-care-pseudomona---secondary:
    run: pneumonia-secondary-care-pseudomona---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-streptococci---secondary/output
  infectious-pneumonia-secondary-care---secondary:
    run: infectious-pneumonia-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-pseudomona---secondary/output
  chlamydial-pneumonia-secondary-care---secondary:
    run: chlamydial-pneumonia-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: infectious-pneumonia-secondary-care---secondary/output
  pneumonia-secondary-care-classified---secondary:
    run: pneumonia-secondary-care-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: chlamydial-pneumonia-secondary-care---secondary/output
  pneumonia-secondary-care-mycoses---secondary:
    run: pneumonia-secondary-care-mycoses---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-classified---secondary/output
  parasitic-pneumonia-secondary-care---secondary:
    run: parasitic-pneumonia-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-mycoses---secondary/output
  pneumonia-secondary-care-lobar---secondary:
    run: pneumonia-secondary-care-lobar---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: parasitic-pneumonia-secondary-care---secondary/output
  hypostatic-pneumonia-secondary-care---secondary:
    run: hypostatic-pneumonia-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-lobar---secondary/output
  pneumonia-secondary-care-bronchiolitis---secondary:
    run: pneumonia-secondary-care-bronchiolitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: hypostatic-pneumonia-secondary-care---secondary/output
  lower-pneumonia-secondary-care---secondary:
    run: lower-pneumonia-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-bronchiolitis---secondary/output
  pneumonia-secondary-care---secondary:
    run: pneumonia-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: lower-pneumonia-secondary-care---secondary/output
  pneumonia-secondary-care-abscess---secondary:
    run: pneumonia-secondary-care-abscess---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care---secondary/output
  pneumonia-secondary-care-histoplasmosis---secondary:
    run: pneumonia-secondary-care-histoplasmosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-abscess---secondary/output
  pneumonia-secondary-care-unspecified---secondary:
    run: pneumonia-secondary-care-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-histoplasmosis---secondary/output
  unknown-pneumonia-secondary-care---secondary:
    run: unknown-pneumonia-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-unspecified---secondary/output
  pneumonia-secondary-care-micro---secondary:
    run: pneumonia-secondary-care-micro---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: unknown-pneumonia-secondary-care---secondary/output
  other-pneumonia-secondary-care---secondary:
    run: other-pneumonia-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-micro---secondary/output
  pneumonia-secondary-care-pneumothorax---secondary:
    run: pneumonia-secondary-care-pneumothorax---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: other-pneumonia-secondary-care---secondary/output
  bacterial-pneumonia-secondary-care---secondary:
    run: bacterial-pneumonia-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-pneumothorax---secondary/output
  pneumonia-secondary-care-coronavirus---secondary:
    run: pneumonia-secondary-care-coronavirus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: bacterial-pneumonia-secondary-care---secondary/output
  pneumonia-secondary-care-influenza---secondary:
    run: pneumonia-secondary-care-influenza---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-coronavirus---secondary/output
  pneumococcal-pneumonia-secondary-care---secondary:
    run: pneumococcal-pneumonia-secondary-care---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-influenza---secondary/output
  pneumonia-secondary-care-ornithosis---secondary:
    run: pneumonia-secondary-care-ornithosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: pneumococcal-pneumonia-secondary-care---secondary/output
  pneumonia-secondary-care-group---secondary:
    run: pneumonia-secondary-care-group---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-ornithosis---secondary/output
  pneumonia-secondary-care-ecoli---secondary:
    run: pneumonia-secondary-care-ecoli---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-group---secondary/output
  pneumonia-secondary-care-chlamydia---secondary:
    run: pneumonia-secondary-care-chlamydia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-ecoli---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: pneumonia-secondary-care-chlamydia---secondary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
