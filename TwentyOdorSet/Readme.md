# Variable Names:
## 1. firingRates: 
df/f values; 
Dimensions: Number of neurons X Number of odorants X time points X Number of Repeats
## 2. firingRatesAverage:

firingRates averaged over the number of repeats.
Dimensions: Number of neurons X Number of odorants X time points 
## 3. time_p:
Odor on from timepoints – 101 to 140 i.e., for 4 seconds. Each time bin = 100 ms.

# Legends:
MC = MitralCells; TC = Tufted Cells; APC = Anterior Piriform Cortex; AON: Anterior Olfactory nucleus.
pre_muscimol: control before muscimol was added
muscimol: trials after muscimol was added

# Code:
Odor identification with twenty odors: 
mainFunction_SVM_OdorIdentifierLargeOdorSet.m
SVM_OdorIdentifierLargeOdorSet.m
