export_get_excel_sheetname <- function(label) {
  label <- gsub(":", "-", label)
  label
}



if(FALSE) {
  export_get_excel_sheetname("tstat:WTM_vs_KOF_KOM_WTF|nmf:WTM")
}