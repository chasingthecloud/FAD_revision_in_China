
DATASET ACTIVATE DataSet1.
FACTOR
  /VARIABLES FD1 SD2 UP3 FW4 FD5 SD6 UP7 FW8 FD9 SD10 UP11 FW12 FD13 SD14 UP15 FW16 FD17 SD18 UP19 
    UP20 FW21 SD22 FW23 SD24 UP25 FW26 UP27
  /MISSING LISTWISE 
  /ANALYSIS FD1 SD2 UP3 FW4 FD5 SD6 UP7 FW8 FD9 SD10 UP11 FW12 FD13 SD14 UP15 FW16 FD17 SD18 UP19 
    UP20 FW21 SD22 FW23 SD24 UP25 FW26 UP27
  /PRINT INITIAL KMO EXTRACTION ROTATION
  /FORMAT SORT BLANK(.20)
  /PLOT EIGEN
  /CRITERIA MINEIGEN(1) ITERATE(25)
  /EXTRACTION ML
  /CRITERIA ITERATE(25)
  /ROTATION PROMAX(4).

FACTOR
  /VARIABLES FD1 SD2 UP3 FW4 FD5 SD6 UP7 FW8 FD9 SD10 UP11 FW12 FD13 SD14 UP15 FW16 FD17 SD18 UP19 
    UP20 FW21 SD22 FW23 SD24 UP25 FW26 UP27
  /MISSING LISTWISE 
  /ANALYSIS FD1 SD2 UP3 FW4 FD5 SD6 UP7 FW8 FD9 SD10 UP11 FW12 FD13 SD14 UP15 FW16 FD17 SD18 UP19 
    UP20 FW21 SD22 FW23 SD24 UP25 FW26 UP27
  /PRINT INITIAL KMO EXTRACTION ROTATION
  /FORMAT SORT BLANK(.30)
  /PLOT EIGEN
  /CRITERIA MINEIGEN(1) ITERATE(25)
  /EXTRACTION ML
  /CRITERIA ITERATE(25)
  /ROTATION PROMAX(4).

FACTOR
  /VARIABLES FD1 SD2 UP3 FW4 FD5 SD6 UP7 FW8 FD9 SD10 UP11 FW12 FD13 SD14 UP15 FW16 FD17 SD18 UP19 
    UP20 FW21 SD22 FW23 SD24 UP25 FW26 UP27
  /MISSING LISTWISE 
  /ANALYSIS FD1 SD2 UP3 FW4 FD5 SD6 UP7 FW8 FD9 SD10 UP11 FW12 FD13 SD14 UP15 FW16 FD17 SD18 UP19 
    UP20 FW21 SD22 FW23 SD24 UP25 FW26 UP27
  /PRINT INITIAL KMO EXTRACTION ROTATION
  /FORMAT SORT BLANK(.30)
  /PLOT EIGEN
  /CRITERIA FACTORS(4) ITERATE(25)
  /EXTRACTION ML
  /CRITERIA ITERATE(25)
  /ROTATION PROMAX(4).