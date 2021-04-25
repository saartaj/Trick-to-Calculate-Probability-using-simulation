


set.seed(1111) # seed for same result

sum.of.tosses <- replicate(100000,                             # replicating the below for 100000
                           sum(sample(1:6, 5, replace = TRUE)) # sampling from 1 to 6 with replacement and summing it up.
                           ) 

ifelse(sum.of.tosses == 15, 1,  # one hot encoding the vector space 1 for 15 to 20 else zero.
    ifelse(sum.of.tosses== 16, 1,
        ifelse(sum.of.tosses == 17, 1,
               ifelse(sum.of.tosses == 18, 1,
                      ifelse(sum.of.tosses == 19, 1,
                          ifelse(sum.of.tosses==20, 1,0)))))) -> p.t

sum(p.t)/length(p.t)  # simple approach to find probability
