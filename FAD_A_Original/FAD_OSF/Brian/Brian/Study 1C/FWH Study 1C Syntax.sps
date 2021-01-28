* Encoding: UTF-8.

FREQUENCIES VARIABLES=Gender Religion AgeTransformed
  /STATISTICS=STDDEV RANGE MEAN
  /ORDER=ANALYSIS.

*Demographics

RELIABILITY
  /VARIABLES=FreeWill1 FreeWill2 FreeWill3 FreeWill4 FreeWill5 FreeWill6 FreeWill7
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Free WIll Sub-Scale [Cronbach's alpha = .83]

RELIABILITY
  /VARIABLES=ScienceDeterm1 ScienceDeterm2 ScienceDeterm3 ScienceDeterm4 ScienceDeterm5 
    ScienceDeterm6 ScienceDeterm7
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Scientific Determinism Sub-Scale [Cronbach's alpha = .77]

RELIABILITY
  /VARIABLES=FatalDeterm1 FetalDeterm2 FatalDeterm3 FetalDeterm4 FatalDeterm5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Fatalistic Determinism Sub-Scale [Cronbach's alpha = .90]

RELIABILITY
  /VARIABLES=Unpredict1 Unpredict2 Unpredict3 Unpredict4 Unpredict5 Unpredict6 Unpredict7 Unpredict8    
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Unpredictability Sub-Scale [Cronbach's alpha = .79]

COMPUTE FreeWill=MEAN(FreeWill1,FreeWill2,FreeWill3,FreeWill4,FreeWill5,FreeWill6,FreeWill7).
EXECUTE.

* Creating Free Will Sub-Scale

COMPUTE ScienceDeterminism=MEAN(ScienceDeterm1,ScienceDeterm2,ScienceDeterm3,ScienceDeterm4,
    ScienceDeterm5,ScienceDeterm6,ScienceDeterm7).
EXECUTE.

* Creating Scientific Determinism Sub-Scale

COMPUTE FatalDeterminism=MEAN(FatalDeterm1,FetalDeterm2,FatalDeterm3,FetalDeterm4,FatalDeterm5).
EXECUTE.

* Creating Fatalistic Determinism Sub-Scale

COMPUTE Unpredictability=MEAN(Unpredict1,Unpredict2,Unpredict3,Unpredict4,Unpredict5,Unpredict6,
    Unpredict7,Unpredict8).
EXECUTE.

* Creating Unpredictability Sub-Scale

COMPUTE Humility=8-(MEAN(Responsible1,Responsible2,Responsible3)).
EXECUTE.

* Creating Humility Measure

CORRELATIONS
  /VARIABLES=FreeWill ScienceDeterminism FatalDeterminism Unpredictability Humility
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Running the correlations


