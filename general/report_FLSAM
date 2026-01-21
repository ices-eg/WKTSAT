## Prepare plots and tables for report

library(icesTAF)
taf.library(FLCore)
taf.library(stockassessment)
taf.library(FLSAM)
library(doBy)
library(ggplot2)
suppressMessages(library(reshape))
library(tidyverse)

mkdir("report")
source("utilities_plots.R")
source("output_diagnostics.R")

load("model/model.RData")

terminal.year <- range(STK)["maxyear"]

### ============================================================================
### Inputs
### ============================================================================

prefix <- "input"

taf.png(paste0(prefix,"_wstock_timeseries"))
zoom(timeseries(STK, slot="stock.wt"))
dev.off()

taf.png(paste0(prefix,"_wcatch_timeseries"))
zoom(timeseries(STK, slot="catch.wt"))
dev.off()

taf.png(paste0(prefix,"_maturity"))
zoom(timeseries(STK, slot="mat"))
dev.off()

taf.png(paste0(prefix,"_natmort"))
zoom(timeseries(STK, slot="m"))
dev.off()

taf.png(paste0(prefix,"_prop_catches"))
prop_catches <- as.data.frame(STK@catch.n)
prop_catches$data[prop_catches$data == -1] <- NA

ggplot(subset(prop_catches, year >= (terminal.year-20)),
       aes(x=year,y=data)) +
  geom_bar(aes(fill=factor(age)), stat="identity", position="fill") +
  ylab("Proportion of Catch numbers at age")
dev.off()

taf.png(paste0(prefix,"_wstock_cohort"))
west.by.cohort <- as.data.frame(FLCohort(window(STK@stock.wt,(terminal.year-20),terminal.year)))
west.by.cohort <- subset(west.by.cohort,!is.na(data))
west.by.cohort$year <- west.by.cohort$age + west.by.cohort$cohort

zoom(xyplot(data ~ year, data=west.by.cohort, groups=cohort,
            auto.key=list(space="right",points=FALSE,lines=TRUE,type="b"),
            type="b",
            xlab="Year",ylab="Weight in stock",
            main=paste(STK@name,"Weight in stock by cohort")))
dev.off()

### ============================================================================
### Surveys
### ============================================================================

start_year <- terminal.year-20
end_year   <- terminal.year

for(iAge in range(STK)["min"]:range(STK)["max"]){
  taf.png(paste0(prefix,"_overlay_survey_age_",iAge))

  for(i in seq_along(STK.tun)){
    if(type(STK.tun[[i]])=="number"){
      idx <- which(iAge == STK.tun[[i]]@range[1]:STK.tun[[i]]@range[2])

      tmp <- cbind(as.data.frame(STK.tun[[i]]@index[idx,]),
                   survey = STK.tun[[i]]@name)

      tmp$data <- scale(tmp$data)

      dat <- if(i==1) tmp else rbind(dat,tmp)
    }
  }

  p <- ggplot(dat,aes(year,data,color=survey))+
    geom_line()+theme_bw()+xlim(start_year,end_year)+
    ggtitle(paste("Age",iAge))

  print(p)
  dev.off()
}

### ============================================================================
### Fit diagnostics
### ============================================================================

prefix <- "fit"

pdf(file.path("report",paste0(prefix,"_",terminal.year,".pdf")))
residual.diagnostics(STK.sam)
dev.off()

taf.png(paste0(prefix,"_residCatch"))
resids <- residuals(STK.sam)
ggplot(subset(resids,fleet=="catch unique"),
       aes(year,log.mdl))+
  geom_line()+geom_point(aes(y=log.obs),col="red")+
  facet_wrap(vars(fleet,age),scales="free_y")+theme_bw()
dev.off()

taf.png(paste0(prefix,"_stock_trajectory"))
zoom(plot(STK.sam))
dev.off()

taf.png(paste0(prefix,"_survey_catchability"))
catch <- catchabilities(STK.sam)
zoom(xyplot(value+ubnd+lbnd ~ age | fleet, catch,
            scale=list(alternating=FALSE,y=list(relation="free")),
            type="l", lwd=c(2,1,1),
            main="Survey catchability"))
dev.off()

taf.png(paste0(prefix,"_observation_var"))
obv <- obs.var(STK.sam)
barplot(obv$value,names.arg=obv$fleet,las=3,
        main="Observation variance")
dev.off()

taf.png(paste0(prefix,"_selectivity"))
sel <- merge(f(STK.sam),fbar(STK.sam),by="year")
sel$sel <- sel$value.x/sel$value.y
zoom(xyplot(sel ~ age | floor(year/5)*5, sel,
            groups=year,type="l",as.table=TRUE))
dev.off()

taf.png(paste0(prefix,"_cor_params"))
cor.plot(STK.sam)
dev.off()

taf.png(paste0(prefix,"_retro"))
zoom(plot(STK.retro))
dev.off()

taf.png(paste0(prefix,"_looi"))
zoom(plot(STK.loo))
dev.off()

taf.png(paste0(prefix,"_otolith"))
otolith(STK.sam,n=10000)
dev.off()

