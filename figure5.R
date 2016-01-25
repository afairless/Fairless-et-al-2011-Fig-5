# Andrew Fairless, June 2010
# modified April 2015 for posting onto Github
# This script constructs the scatterplots for Figure 5 of Fairless et al 2011
# Fairless et al 2011, doi: 10.1002/ar.21318, PMID: 21905241, PMCID: PMC3176979

data = read.table("data.txt", header = TRUE)     
labels = read.table("labels.txt", header = FALSE, sep = "\t")    # axes labels	

pixeldimensions = 640	
axeslength = 202

# Figure 5a:  rater 1 correctable analysis vs. benchmark analysis
png(file = "figure5a.png", width = pixeldimensions, height = pixeldimensions)	
plot(data$r1halftime~data$r1goldrigor, ylim = c(0, axeslength), 
     xlim = c(0, axeslength), main = NULL, xlab = labels[1, 1], 
     ylab = labels[2, 1], pch = 17, cex = 1.5, cex.lab = 1.5)
abline(a = 0, b = 1, lty = 2)      # dotted line denoting y = x
dev.off()	

# Figure 5b:  rater 3 realtime analysis vs. benchmark analysis
png(file = "figure5b.png", width = pixeldimensions, height = pixeldimensions)     
plot(data$r3halftime~data$r1goldrigor, ylim = c(0, axeslength), 
     xlim = c(0, axeslength), main = NULL, xlab = labels[1, 1], 
     ylab = labels[3, 1], pch = 17, cex = 1.5, cex.lab = 1.5)
abline(a = 0, b = 1, lty = 2)      # dotted line denoting y = x
dev.off()	

# Figure 5c:  Topscan software, cylinder sniffing (radius + 4 mm) vs. benchmark analysis
png(file = "figure5c.png", width = pixeldimensions, height = pixeldimensions)     
plot(data$sniff4mm~data$r1goldrigor, ylim = c(0, axeslength), 
     xlim = c(0, axeslength), main = NULL, xlab = labels[1, 1], 
     ylab = labels[4, 1], pch = 17, cex = 1.5, cex.lab = 1.5)
abline(a = 0, b = 1, lty = 2)      # dotted line denoting y = x
dev.off()	

# Figure 5d:  Topscan software, cylinder proximity (within 30 mm)s vs. benchmark analysis
png(file = "figure5d.png", width = pixeldimensions, height = pixeldimensions)     
plot(data$xnear30mm~data$r1goldrigor, ylim = c(0, axeslength), 
     xlim = c(0, axeslength), main = NULL, xlab = labels[1, 1], 
     ylab = labels[5, 1], pch = 17, cex = 1.5, cex.lab = 1.5)
abline(a = 0, b = 1, lty = 2)      # dotted line denoting y = x
dev.off()	

# scatterplots to be subsequently combined into one figure with photo-editing software
