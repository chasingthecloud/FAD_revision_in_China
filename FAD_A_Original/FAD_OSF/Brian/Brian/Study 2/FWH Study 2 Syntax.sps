* Encoding: UTF-8.
* Encoding: .
* Encoding: .
* Encoding: .
* Encoding: .
* Encoding: .

FREQUENCIES VARIABLES=ActualAgeRecoded Race ReligiousAfilliation
  /STATISTICS=STDDEV RANGE MEAN
  /ORDER=ANALYSIS.

* Demographics 

RELIABILITY
  /VARIABLES=Freewill1 Freewill2 Freewill3 Freewill4 Freewill5 Freewill6 Freewill7
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Free WIll Sub-Scale [Cronbach's alpha = .85]

RELIABILITY
  /VARIABLES=ScienceDeterm1 ScienceDeterm2 ScienceDeterm3 ScienceDeterm4 ScienceDeterm5 
    ScienceDeterm6 ScienceDeterm7
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Scientific Determinism Sub-Scale [Cronbach's alpha = .78]

RELIABILITY
  /VARIABLES=FatalDeterm1 FatalDeterm2 FatalDeterm3 FatalDeterm4 FatalDeterm5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Fatalistic Determinism Sub-Scale [Cronbach's alpha = .90]

RELIABILITY
  /VARIABLES=Unpredict1 Unpredict2 Unpredict3 Unpredict4 Unpredict5 Unpredict6 Unpredict7 Unpredict8    
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Reliability for Unpredictability Sub-Scale [Cronbach's alpha = .78]

COMPUTE FreeWillSubScale=MEAN(Freewill1,Freewill2,Freewill3,Freewill4,Freewill5,Freewill6,Freewill7).
EXECUTE.

* Creating Free Will Sub-Scale

COMPUTE ScienDetermSubScale=MEAN(ScienceDeterm1,ScienceDeterm2,ScienceDeterm3,ScienceDeterm4,
    ScienceDeterm5,ScienceDeterm6,ScienceDeterm7).
EXECUTE.

* Creating Scientific Determinism Sub-Scale

COMPUTE FatalDetermSubScale=MEAN(FatalDeterm1,FatalDeterm2,FatalDeterm3,FatalDeterm4,FatalDeterm5).
EXECUTE.

* Creating Fatalistic Determinism Sub-Scale

COMPUTE UnpredictableSubScale=MEAN(Unpredict1,Unpredict2,Unpredict3,Unpredict4,Unpredict5,Unpredict6,
    Unpredict7,Unpredict8).
EXECUTE.

* Creating Unpredictability Sub-Scale

COMPUTE Humility=8-(MEAN(Responsible1,Responsible2,Responsible3)).
EXECUTE.

* Creating Humility Measure

COMPUTE FailureAVG=MEAN(ResponsibleFail1,ResponsibleFail2,ResponsibleFail3).
EXECUTE.

* Creating the Failure Measure


CORRELATIONS
  /VARIABLES=FreeWillSubScale ScienDetermSubScale FatalDetermSubScale UnpredictableSubScale 
    Humility FailureAVG
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

* Running the correlations

RELIABILITY
  /VARIABLES=Freewill1 Freewill3 Freewill5 Freewill6 Freewill7
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA.

* Updated reliability for shorter Free WIll Sub-Scale [Cronbach's alpha = .83]

COMPUTE FreeWillMinusRespons=MEAN(Freewill1,Freewill3,Freewill5,Freewill6,Freewill7).
EXECUTE.

* Creating the updated Free Will (Minus Responsibility) Sub-Scale

CORRELATIONS
  /VARIABLES=FreeWillMinusRespons ScienDetermSubScale FatalDetermSubScale UnpredictableSubScale 
    Humility FailureAVG
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

*Re-running the correlations









