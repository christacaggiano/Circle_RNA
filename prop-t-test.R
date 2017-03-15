all_decrease <- matrix(c(4637, 3358,741,274), ncol=2)
colnames(all_decrease) <- c('old','decrease')
rownames(all_decrease) <- c('missense','other')
all_decrease

all_decrease_result <-prop.test(all_decrease)
all_decrease_result

1all_increase <- matrix(c(4637, 3358,1023, 418), ncol=2)
colnames(all_increase) <- c('old','increase')
rownames(all_increase) <- c('missense','other')

all_increase_result <-prop.test(all_increase)
all_increase_result

decrease_increase <- matrix(c(741,274,1023, 418), ncol=2)
colnames(all_increase) <- c('decrease','increase')
rownames(all_increase) <- c('missense','other')

decrease_increase_result <-prop.test(decrease_increase)
decrease_increase_result

