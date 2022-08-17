# LongRangeFunctionalLoops
Code used for the decoder analysis in the manuscript from Chae and Banerjee: Long-range functional loops in the olfactory system and their roles in computing odor identity

We investigated whether odor identity and concentration can be decoded from mitral and tufted cell populations, and the extent to which this depends on cortical feedback. Towards this end, we recorded the olfactory bulb output activity in awake head-fixed mice in response to five odorants whose concentration was varied across three orders of magnitude, as well as to a 20 odors panel presented each at a single concentration. 
In addition, we suppressed the anterior olfactory nucleus or anterior piriform cortex activity using muscimol, and probed the changes in odor responses of mitral and tufted cells. 

Specifically, we analyzed the performance of mitral and tufted cells in several decoding schemes (see Methods of the manuscript for further details):

1) Generalization to a novel concentration: after odor identity was learned from a test set of concentration, we trained the classifier to identify the odorant (one of a total five possibilities) by learning on three out the four concentrations, and further tested for generalization to a novel held-out concentration.

2) Odor Identity and concentration calling: similar to the generalization across concentrations except that the classifier neuron for a given odor has to fire in proportion (log scale) to the concentration without explicitly requiring invariance across concentrations of the same odorant. 

3) Concentration invariant odor recognition: we trained the classifier to assign odor identity irrespective of concentration 

4) Discrimination across a larger (20) odor set: we trained classifiers to perform binary odor discriminations of a target odorant from an increasing number (1 to 19) of non-target odorant

