# Variable Names: 
## 1. firingRates: 
df/f values; 

Dimensions: Number of neurons X Number of odorants X Number of concentration points X time points X Number of Repeats
## 2. firingRatesAverage:
firingRates averaged over the number of repeats.

Dimensions: Number of neurons X Number of odorants X Number of concentration points X time points 

## 3. CumulativeCube: 

Odor responses for each neuron, stimulus, repeat, averaged from odor onset to specific time bins. 

Dimensions: time bins X number of neurons X number of stimuli X number of repeats

Stimuli: 1-20, with 1-5 being five odors at the lowest concentration, 2-10 being the same five odors at a higher concentration, etc.

Number of repeats: 1-4

time bins: 1-20, 200 ms time bin, a total of 4 seconds of odor presentation. time bins 1 and 2 are ignored typically to account for a 400 ms of dead-time.

E.g., CumulativeCube (8,247,7,3) = The odor response of cell 247 for odor number 2 at 1:1000 dilution for repeat number 3, averaged from odor onest to time bin # 8.

## 4. time:
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
