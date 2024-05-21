################################################
##                                            ##
##                                            ##
##            GENERAL FUNCTIONS               ## 
##              Ary Serpa Neto                ##
##                                            ##
##                                            ##
################################################

#Replace empty cells by NA#
empty_to_NA <- function(x) {
	x = gsub("^$|^ $", NA, x)
	}

#Replace NA by empty cells#
NA_to_empty <- function(x) {
	x = ifelse(is.na(x), "", x)
	}

#Calculate mode#
Mode <- function(x){ 
    ta = table(x)
    tam = max(ta)
    if (all(ta == tam))
         mod = NA
    else
         if(is.numeric(x))
    mod = as.numeric(names(ta)[ta == tam])
    else
         mod = names(ta)[ta == tam]
    return(mod)
}

#Calculate mode (different)#
Mode1 <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}


#Make binary#
make_binary <- function(x) {
  # the line below will convert 1,2,3 to 1,0,NA
  x <-
    as.character(x) %>%
    dplyr::recode(`2` = "0", `3` = NA_character_) %>%
    as.integer()
}


#Carry worst value (if higher worst)#
carry_worst <- function(x) {
	x <- ifelse(x>lag(x), 1, x)
	}


#Make POSIXct#
make_posixct_dmy_hm_slash <- function(x) {
	x <- as.POSIXct(x, format = "%d/%m/%Y %H:%M")
	}
	

#Flag missing in the column (use gather to paste column name to the sentence)#
flag_missing <- function(x) {
	x = ifelse(is.na(x), "Missing in", NA) 
	}


#Make missing when the query is not on missing#
NA_in_missing <- function(x) {
	x <- ifelse(grepl("Missing", inter$Query), NA, x)
	}


#Caterpillar Plot#
ggCaterpillar <- function(re, QQ=TRUE, likeDotplot=TRUE, reorder=TRUE) {
  require(ggplot2)
  f <- function(x) {
    pv   <- attr(x, "postVar")
    cols <- 1:(dim(pv)[1])
    se   <- unlist(lapply(cols, function(i) sqrt(pv[i, i, ])))
    if (reorder) {
      ord  <- unlist(lapply(x, order)) + rep((0:(ncol(x) - 1)) * nrow(x), each=nrow(x))
      pDf  <- data.frame(y=unlist(x)[ord],
                         ci=1.96*se[ord],
                         nQQ=rep(qnorm(ppoints(nrow(x))), ncol(x)),
                         ID=factor(rep(rownames(x), ncol(x))[ord], levels=rownames(x)[ord]),
                         ind=gl(ncol(x), nrow(x), labels=names(x)))
    } else {
      pDf  <- data.frame(y=unlist(x),
                         ci=1.96*se,
                         nQQ=rep(qnorm(ppoints(nrow(x))), ncol(x)),
                         ID=factor(rep(rownames(x), ncol(x)), levels=rownames(x)),
                         ind=gl(ncol(x), nrow(x), labels=names(x)))
    }

    if(QQ) {  ## normal QQ-plot
      p <- ggplot(pDf, aes(nQQ, y))
      p <- p + facet_wrap(~ ind, scales="free")
      p <- p + xlab("Standard normal quantiles") + ylab("Random effect quantiles")
    } else {  ## caterpillar dotplot
      p <- ggplot(pDf, aes(ID, y)) + coord_flip()
      if(likeDotplot) {  ## imitate dotplot() -> same scales for random effects
        p <- p + facet_wrap(~ ind)
      } else {           ## different scales for random effects
        p <- p + facet_grid(ind ~ ., scales="free_y")
      }
      p <- p + xlab("Levels") + ylab("Random effects")
    }

    p <- p + theme(legend.position="none")
    p <- p + geom_hline(yintercept=0)
    p <- p + geom_errorbar(aes(ymin=y-ci, ymax=y+ci), width=0, colour="black")
    p <- p + geom_point(aes(size=1.2), colour="blue") 
    return(p)
  }

  lapply(re, f)
}


#Get univariate estimates#
estimates_or_uni <- function(x) {
	paste(round(exp(summary(x)$coefficients[-1,1]),2), " (", round(exp(confint(x)[-1,1]),2), " - ", round(exp(confint(x)[-1,2]),2), "); ", round(summary(x)$coefficients[-1,4], 3))
}

#Extract estimates (purr)#
extract_estimates_md <- function(x) {
	grouped <- summary(x)
	
	return(cbind(grouped$conf.int[1,3], grouped$conf.int[1,1], grouped$conf.int[1,4], grouped$coefficients[1,6]))
}

#Extract estimates proportion (purr)#
extract_estimates_proportion <- function(x) {
	grouped <- summary(x)
	ci <- confint(x)
	n <- nobs(x)
	
	return(cbind(ci[1,1] * 100, grouped$coefficients[1,1] * 100, ci[1,2] * 100, n))
}

#Extract estimates OR (purr)#
extract_estimates_or <- function(x) {
	grouped <- summary(x)
	ci <- confint(x)
	n <- nobs(x)
	
	return(cbind(exp(ci[2,1]), exp(grouped$coefficients[2,1]), exp(ci[2,2]), n))
}

#Extract estimates AUC GLM (purr)#
extract_auc_glm <- function(x) {
	fittedvalues <- fitted(x)
	outcome <- x$y
	roccurve <- roc(outcome, fittedvalues, auc=T, ci=T)
	
	return(cbind(roccurve$ci[1], roccurve$auc[1], roccurve$ci[3]))
}

#Extract estimates Cox (purr)#
extract_estimates_cox <- function(x) {
	grouped <- summary(x)
	
	return(cbind(grouped$conf.int[1,3], grouped$conf.int[1,1], grouped$conf.int[1,4], grouped$coefficients[1,6]))
}

#Extract estimates glmer (purr)#
extract_estimates_glmer <- function(x) {
	grouped <- summary(x)
	ci <- confint(x, method = "Wald")
	n <- nobs(x)
	
	return(cbind(exp(ci[3,1]), exp(grouped$coefficients[2,1]), exp(ci[3,2]), n))
}

#Round By 5#
mround <- function(x,base){
        base * round(x / base)
}

#Carry Highest#
carry_highest <- function(x) {
	x <- ifelse(!is.na(x) & !is.na(lag(x)) & x!=lag(x), max(x), x)
}

#Carry Lowest#
carry_lowest <- function(x) {
	x <- ifelse(!is.na(x) & !is.na(lag(x)) & x!=lag(x), min(x), x)
}
