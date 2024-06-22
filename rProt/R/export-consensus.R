export_consensus <- function(eds, filename) {
  appd <- FALSE
  for ( sig in names(eds@result@consensus_signature) ) {
    ds <- eds@result@consensus_signature[[ sig ]]
    sig <- export_get_excel_sheetname(sig)
    xlsx::write.xlsx2(ds, file = filename, sheetName=sig, append=appd)
    appd <- TRUE
  }
}



if(FALSE) {
  getwd()
  eds <- KOF_KOM_WTF_WTM_default_200
  export_consensus(eds, "/Users/labs9y/Documents/Projects/PSD95/workflows/mouse/export/export_KOF_KOM_WTF_WTM_200_default.xlsx")
  
  eds <- KOM_WTM_default_200
  export_consensus(eds, "/Users/labs9y/Documents/Projects/PSD95/workflows/mouse/export/export_KOM_WTM_default_200.xlsx")

  eds <- CTL_SCZ_default_200
  export_consensus(eds, "/Users/labs9y/Documents/Projects/PSD95/workflows/mouse/export/export_human_CTL_SCZ_default_200.xlsx")
  
  }