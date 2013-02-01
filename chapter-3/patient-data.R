# Run this file in R
# source('~/R/r-in-action/chapter-3/patient-data.R')
# or
# setwd("~/R/r-in-action/chapter-3")
# source('patient-data.R')
dose <- c(20, 30, 40, 45, 60)
drugA<- c(16, 20, 27, 40, 60)
drugB<- c(15, 18, 25, 31, 40)

# create simple line graph
plot(dose, drugA, type="b")

# Stash the original graphic params in "par()", plot with triangles,
# revert back
lines(dose, drugB, type="b")
opar <- par(no.readonly=TRUE)
par(lty=2, pch=17)
plot(dose, drugA, type="b")
par(opar)

# Provide the graphic params in the plot() command
plot(dose, drugA, type="b", lty=2, pch=17)

# Colors and grays
n<-10
mycolors <-rainbow(n)
pie(rep(1,n), labels=mycolors, col=mycolors)
mygrays<-gray(0:n/n)
pie(rep(1,n), labels=mygrays, col=mygrays)

# Text Characteristics
# Italic axis labels, 1.5 times default, bold italic titles
# twice as large as default
par(font.lab=3, cex.lab=1.5, font.main=4, cex.main=2)

# Figure out what fonts are on system
names(pdfFonts())

#  [1] "serif"                "sans"                
#  [3] "mono"                 "AvantGarde"          
#  [5] "Bookman"              "Courier"             
#  [7] "Helvetica"            "Helvetica-Narrow"    
#  [9] "NewCenturySchoolbook" "Palatino"            
# [11] "Times"                "URWGothic"           
# [13] "URWBookman"           "NimbusMon"           
# [15] "NimbusSan"            "URWHelvetica"        
# [17] "NimbusSanCond"        "CenturySch"          
# [19] "URWPalladio"          "NimbusRom"           
# [21] "URWTimes"             "Japan1"              
# [23] "Japan1HeiMin"         "Japan1GothicBBB"     
# [25] "Japan1Ryumin"         "Korea1"              
# [27] "Korea1deb"            "CNS1"                
# [29] "GB1"

# You can plot based on that font family
plot(dose, drugA, type="b", lty=2, pch=17, cex=0.5, family="Times")


# Produce graphs 4 inches wide by 3 inches tall
# 1 inch margin at bottom and top
# 0.5 inch margin on left, 0.2 inch margin on right
par(pin=c(4,3), mai=c(1,.5,1,.2))

