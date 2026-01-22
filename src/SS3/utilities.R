# utilities.R - DESC

# as_flextable {{{
setMethod("as_flextable", signature(x="FLQuant"),
  function(x) {
    
    # CONVERT to year~age data.frame
    df <- as.data.frame(t(x[drop=TRUE]), row.names=FALSE)

    # ADD year column
    if(dim(x)[1] == 1) {
      ft <- as.data.frame(cbind(year=dimnames(x)$year, t(df)))
    }
    else
      ft <- cbind(year=dimnames(x)$year, df)

    # CREATE flextable
    autofit(flextable(ft))

})
# }}}

