# utilities.R - DESC

# as_flextable {{{
setMethod("as_flextable", signature(x="FLQuant"),
  function(x) {
    
    # CONVERT to year~age data.frame
    df <- as.data.frame(t(x[drop=TRUE]), row.names=FALSE)

    # ADD year column
    if(dim(x)[1] == 1) {
      ft <- data.frame(year=dimnames(x)$year, value=unlist(df))
    } else {
      ft <- cbind(year=dimnames(x)$year, df)
    }

    # CREATE flextable
    autofit(flextable(ft))
})
# }}}

