#' @name getGenes
#' @description gets data for given genes. data can be of any format, as long as the genes IDs are rownames
#' @param data: matrix data (can be any format, but MUST have geneID as rownames)
#' @param genes: a vector of gene IDs that can be grepped from rownames of data
#' @title getGenes: Get data for your genes of interest!
#' @export getGenes
#' @example
#' getGenes(data = assay(vst),genes = genes)


getGenes <- function(data,genes) {

  match <- paste(genes,collapse = "$|^")
  genes.data <- data[grep(match,rownames(data)),]
  return(genes.data)

}