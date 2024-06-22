consensus_geometric_rank_signature <- function(sig1, sig2, top_number) {
  
  ch_na <- function( n ) {
    if ( any (is.na(n))) {
      stop( paste0("There are NAs values in signature: ", paste0(n, collapse = ",")) )
    }
  }
  
  ch_dup <- function(n) {
    if( any(duplicated( n ))) {
      stop( paste0("There are duplicated items in signature: ", paste0(n, collapse = ",")) )
    }
  }
  
  add_idx <- function(sig, val=NA, decreasing=TRUE) {
    sig <- as.data.frame(sig)
    if( is.na(val) ) {
      val <- "sig"
    }
    sig <- sig[ order(sig[, val], decreasing = decreasing), , drop = FALSE]
    sig$rank <- seq.int(nrow(sig))
    return(sig)
  }

  ## Check for NAs - 
  ch_na(sig1)
  ch_na(sig2)
    
  ## Check for duplicates - shouldn't happen after the aggregation
  ch_dup(names(sig1))
  ch_dup(names(sig2))
  
  ## Rank base consensus
  sig1 <- add_idx(sig1)
  sig2 <- add_idx(sig2)
  
  cons <- merge(sig1, sig2, by = "row.names", suffixes = c(".tstat", ".nmf"), all = FALSE)
  cons$rank_geom_mean <- apply( cons[ , c("rank.tstat", "rank.nmf")], 1, utils_geom_mean )
  rownames(cons) <- cons$Row.names
  
  cons <- subset(cons, rank.tstat <= top_number & rank.nmf <= top_number)
  
  if( nrow(cons) == 0 ) {
    return(cons)
  }
  
  cons <- add_idx(cons, "rank_geom_mean", FALSE)

  cons <- subset(cons, select = c(-Row.names))
  colnames(cons)[ colnames(cons) == "rank"] <- "consensus"
  
  cons
}
