# rrrandom
Test for significance by using "random, repeat, reject"

## surgery
Example based on George W Cobbs paper "The Introductory Statistics Course: A Ptolemaic Curriculum?" https://escholarship.org/uc/item/6hb3k0nz (published 2007)

### data
Post-surgery recovery times in days, for seven patients who wererandomly divided into a control group of three that received standard care, and a treatmentgroup of four that received a new kind of care.

|Treatment            | Times (days)    | Mean    | SD
|---------------------|-----------------|--------|------                    
|Control (standard):  | 22, 33, 40      | 31.7   | 3.0
|Treatment (new):     | 19, 22, 25, 26  | 23.0   | 9.1


### is the new treatment really better?

The result suggest so. The average recovery time of patients with new treatment is lower than the control group: 31.7 - 23.0 = 8.7. But is it significant? Or is it just a random? pattern?

<img src="https://github.com/rolkra/rrrandom/blob/master/surgery_result.png" alt="example interactive exploration" width="600">

We could run some classic statistical testing like a t-test. But an alternative approach is to see what happens if we randomize again (which patient gets which treatment) Is the difference of 8.7 likly?

### randomize, repeat, reject

After repeating the randomization 1000 times we get the following result:

<img src="https://github.com/rolkra/rrrandom/blob/master/surgery_aprox.png" alt="example interactive exploration" width="600">

Getting a difference of 8.7 between treatment and control is not very likely. Only in 13% of the cases we get this result. So in other words, we can conclude: The new treatment reduces the recovery time by 8.7, with probability that this is true 87%.
