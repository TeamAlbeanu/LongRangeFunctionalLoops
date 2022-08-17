# Variable Names:
## 1. firingRates: 
df/f values; 

Dimensions: Number of neurons X Number of odorants X Number of concentration points X time points X Number of Repeats
## 2. firingRatesAverage:
firingRates averaged over the number of repeats.

Dimensions: Number of neurons X Number of odorants X Number of concentration points X time points 
## 3. time:
time in seconds corresponding to each time point. Time bin = 20 ms.

Odor on from timepoints – 100 to 500 i.e., for 4 seconds.

## Legends:
MC = MitralCells; TC = Tufted Cells

pre_muscimol: control before muscimol was added

muscimol: trials after muscimol was added

## Code:
Generalization to novel concentrations: SVM_OdorGeneralizer.m

Odor Identity and concentration calling: SVM_IdentityAndConcentrationCalling.m

Concentration invariant odor recognition: SVM_ConcInvariantOdorRecognition.m
