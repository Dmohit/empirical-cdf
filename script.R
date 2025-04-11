setwd('~/Documents/My Writeups/Analytics/ecdf/')
set.seed(2400)
samp <- rnorm(5)
sort(samp)

curve(ecdf(samp))
grid()

my_cdf <- function(t)
{
    sum(samp <= t) / length(samp)
}
my_cdf(0.3)
my_cdf(0.5)

my_cdf2 <- ecdf(samp)
my_cdf2
my_cdf2(0.3)
my_cdf2(0.5)

png('ecdf.png', 1920, 1080)
plot(my_cdf2, lwd = 2.8, cex.lab = 1.6, cex.axis = 1.6, cex.main = 2.1, main = 'ECDF of Sample')
grid(lwd = 1.7)
dev.off()

set.seed(2400)
samp <- rnorm(5)
samp2 <- rnorm(200)
samp3 <- rnorm(70, mean = 5)

ks.test(samp, samp2)

ks.test(samp, samp3)

data(mtcars)
est_mean <- mean(mtcars$hp)
est_sd <- sd(mtcars$hp)
set.seed(7900)
hp_samp <- rnorm(700, est_mean, est_sd)
ks.test(mtcars$hp, hp_samp)
