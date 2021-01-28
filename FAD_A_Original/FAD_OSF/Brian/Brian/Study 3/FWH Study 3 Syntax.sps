* Encoding: UTF-8.

FREQUENCIES VARIABLES=Religion GenderM1 ActualAgeRecoded
  /STATISTICS=STDDEV RANGE MEAN
  /ORDER=ANALYSIS.

* Demographics

CORRELATIONS
  /VARIABLES=SuccessCreditAVG SuccessRespAVG
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Checking the correlation between "Credit" for Success and "Responsibility" for Success [r = .691, p < .001]

RELIABILITY
  /VARIABLES=SuccessCreditAVG SuccessRespAVG SuccessPraiseAVG
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Checking the reliability of Credit, Responsibility, and Praise for Success [Cronbach's alpha = .64]

RELIABILITY
  /VARIABLES=FailCreditAVG FailRespAVG FailBlameAVG
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Checking the reliability of Credit, Responsibility, and Blame for Failure [Cronbach's alpha = .88]

COMPUTE ESHumility=8-(MEAN(SuccessCreditAVG,SuccessRespAVG)).
EXECUTE.

* Creating the Einsteinian Humility Measure (ES Humility)

COMPUTE Failure=MEAN(FailCreditAVG,FailRespAVG).
EXECUTE.

* Creating the Failure Measure (ES Humility)

RELIABILITY
  /VARIABLES=HUMIL_Cosmic1 HUMIL_Cosmic2 HUMIL_Cosmic5 HUMIL_Cosmic3 HUMIL_Cosmic4
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Checking the reliability of the full Epistemic Humility set of items [Cronbach's alpha = .87]

RELIABILITY
  /VARIABLES=HUMIL_Cosmic1 HUMIL_Cosmic2 HUMIL_Cosmic5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Checking the reliability of the shortened Epistemic Humility set of items [Cronbach's alpha = .81]

COMPUTE EpistemicHumility=MEAN(HUMIL_Cosmic1,HUMIL_Cosmic2,HUMIL_Cosmic5).
EXECUTE.

* Creating the Epistemic Humility Sub-Scale 

RELIABILITY
  /VARIABLES=HUMIL_Other1 HUMIL_Other2 HUMIL_Other3 HUMIL_Other4 HUMIL_Other5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Ethical Humility Sub-Scale [Cronbach's alpha = .92]

COMPUTE EthicalHumility=MEAN(HUMIL_Other1,HUMIL_Other2,HUMIL_Other3,HUMIL_Other4,HUMIL_Other5).
EXECUTE.

* Creating the Ethical Humility Sub-Scale 

RELIABILITY
  /VARIABLES=HUMIL_Cosmic1 HUMIL_Cosmic2 HUMIL_Cosmic5 HUMIL_Other1 HUMIL_Other2 HUMIL_Other3 
    HUMIL_Other4 HUMIL_Other5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Checking reliability for all Epistemic/Ethical Humility items (minus the 2 defective ones) [Cronbach's alpha = .87]

COMPUTE EEHumility=MEAN(HUMIL_Cosmic1,HUMIL_Cosmic2,HUMIL_Cosmic5,HUMIL_Other1,HUMIL_Other2,
    HUMIL_Other3,HUMIL_Other4,HUMIL_Other5).
EXECUTE.

* Creating an overall Epistemic/Ethical Humility Measure 

RELIABILITY
  /VARIABLES=Landrum1 Landrum2 Landrum3 Landrum4 Landrum5 Landrum6 Landrum7 Landrum8 Landrum9 
    Landrum10 Landrum11 Landrum12REV Landrum13 Landrum14 Landrum15 Landrum16 Landrum17
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Landrum Humility Sub-Scale [Cronbach's alpha = .92]

COMPUTE LandrumHumility=MEAN(Landrum1,Landrum2,Landrum3,Landrum4,Landrum5,Landrum6,Landrum7,
    Landrum8,Landrum9,Landrum10,Landrum11,Landrum12REV,Landrum13,Landrum14,Landrum15,Landrum16,
    Landrum17).
EXECUTE.

* Creating the Landrum Humility 

RELIABILITY
  /VARIABLES=ModestIntern1 ModestIntern2 ModestIntern3 ModestIntern4 ModestIntern5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Internal Modesty  Sub-Scale [Cronbach's alpha = .94]

RELIABILITY
  /VARIABLES=ModestPub1 ModestPub2 ModestPub3 MudestPub4 ModestPub5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Public Modesty  Sub-Scale [Cronbach's alpha = .93]

RELIABILITY
  /VARIABLES=ModestPub1 ModestPub2 ModestPub3 MudestPub4 ModestPub5 ModestIntern1 ModestIntern2 
    ModestIntern3 ModestIntern4 ModestIntern5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Full Modesty Scale [Cronbach's alpha = .91]

COMPUTE Modesty=MEAN(ModestIntern1,ModestIntern2,ModestIntern3,ModestIntern4,ModestIntern5,
    ModestPub1,ModestPub2,ModestPub3,MudestPub4,ModestPub5).
EXECUTE.

* Creating the Modesty Scale

RELIABILITY
  /VARIABLES=FWI_FreeWill1 FWI_FreeWill2 FWI_FreeWill3 FWI_FreeWill4 FWI_FreeWill5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Free Will Sub-Scale [Cronbach's alpha = .88]

RELIABILITY
  /VARIABLES=FWI_Determ1 FWI_Determ2 FWI_Determ3 FWI_Determ4 FWI_Determ5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Determinism  Sub-Scale [Cronbach's alpha = .86]

RELIABILITY
  /VARIABLES=FWI_Dualism1 FWI_Dualsm2 FWI_Dualism3 FWI_Dualism4 FWI_Dualism5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Anti-Reductionism Dualism  Sub-Scale [Cronbach's alpha = .89]

COMPUTE FreeWill=MEAN(FWI_FreeWill1,FWI_FreeWill2,FWI_FreeWill3,FWI_FreeWill4,FWI_FreeWill5).
EXECUTE.

* Creating the Free Will Sub-Scale

COMPUTE Determinism=MEAN(FWI_Determ1,FWI_Determ2,FWI_Determ3,FWI_Determ4,FWI_Determ5).
EXECUTE.

* Creating the Determinism Sub-Scale

COMPUTE Dualism=MEAN(FWI_Dualism1,FWI_Dualsm2,FWI_Dualism3,FWI_Dualism4,FWI_Dualism5).
EXECUTE.

* Creating the Dualism Sub-Scale

CORRELATIONS
  /VARIABLES=FreeWill Determinism Dualism ESHumility Failure EEHumility LandrumHumility Modesty
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Running the correlations

PARTIAL CORR
  /VARIABLES=FreeWill Determinism Dualism ESHumility Failure EEHumility LandrumHumility Modesty BY 
    BaselineSuccess
  /SIGNIFICANCE=TWOTAIL
  /MISSING=LISTWISE.
