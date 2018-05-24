# rrrandom
Test for significance by using "random, repeat, reject"

## Surgery
Example based on George W Cobbs paper "The Introductory Statistics Course: A Ptolemaic Curriculum?" https://escholarship.org/uc/item/6hb3k0nz (published 2007)

Post-surgery recovery times in days, for seven patients who were randomly divided into a control group of three that received standard care, and a treatment group of four that received a new kind of care.

|Treatment            | Times (days)    | Mean    | SD
|---------------------|-----------------|--------|------                    
|Control (standard):  | 22, 33, 40      | 31.7   | 3.0
|Treatment (new):     | 19, 22, 25, 26  | 23.0   | 9.1


### Is the new treatment really better?

The result suggests so. The average recovery time of patients with new treatment is lower than the control group: 31.7 - 23.0 = 8.7. But is it significant? Or is it just a random pattern?

<img src="https://github.com/rolkra/rrrandom/blob/master/surgery_result.png" alt="surgery result" width="600">

We could use some classic statistical tests like a t-test. But an alternative approach is to see what happens if we randomize again (which patient gets which treatment). Is the difference of 8.7 likely?

### Randomize, repeat, reject

After repeating the randomization 1000 times we get the following result:

<img src="https://github.com/rolkra/rrrandom/blob/master/surgery_aprox.png" alt="randomize, repeat, reject" width="600">

Getting a difference of at least 8.7 between treatment and control is not very likely. Only in 11.5% of the cases we get this result. So in other words, we can conclude: The new treatment reduces the recovery time by 8.7 days. The hypothesis, that there is no real difference (the differenece is just a random pattern) can be rejected, with the risk of 11.5% beeing wrong.


## Is it a fair dice?

Lets say we roll the dice 20 times and we get 6 times a six. The expected value is 20/6 = 3.33, so 3 times. How likely is this result. We test it using randomize, repeat, reject:

<img src="https://github.com/rolkra/rrrandom/blob/master/dice_result.png" alt="randomize, repeat, reject" width="600">

So there is a 9.4% Chance that getting 6 times a six is just random.
