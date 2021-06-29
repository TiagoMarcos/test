#pipeline electrophysiology
#get data in txt.
#convert txt to csv
#traces to display from selected frames
#tidy data and organized for boxplots etc
#data ready to be used by seaborn.python for bar charts
#add lines to graph type =?
#make tables for latex

pol<-lm(sp~v + poly(v,4))
plot(v,sp)
lines(v, predict(pol), col="hot pink")

d<-c(2,3,5,7,2,2)
f<-c(5,6,7,8,8,7)
aov(d~f)
install.packages("pwr")#pwr package
pwr.anova.test(k = , n = , f = , sig.level = , power = )
#minimal examples are great
install.packages("multcomp")
recovery.aov <- aov(minutes ~ blanket, data = recovery)
recovery.mc <- glht(recovery.aov, linfct = mcp(blanket = "Dunnett"),
                    alternative = "less")
summ<-summary(recovery.mc)
xtable(summ, caption="ANOVA A1") #extract to Latex and fancy edit in latex

