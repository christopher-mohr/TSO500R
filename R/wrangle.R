#' Read in a list of combined.variant.output objects
#' and return a data frame of small variants per sample
#'
#' @param cvo_list a list of combined.variant.output objects
#'
#' @return A data frame of small variants extracted from
#' each combined.variant.output object, per sample
#'
#' @export
read_small_variants <- function(cvo_list){

  small_variants <- purrr::map(cvo_list, get_small_variants) %>%
    dplyr::bind_rows()

  return(small_variants)
}

#' Read in a list of combined.variant.output objects
#' and return a data frame of gene amplifications per sample
#'
#' @param cvo_list a list of combined.variant.output objects
#'
#' @return A data frame of gene amplifications extracted from
#' each combined.variant.output object, per sample
#'
#' @export
read_gene_amplifications <- function(cvo_list){

  gene_amplifications <- purrr::map(cvo_list, get_gene_amplifications) %>%
    dplyr::bind_rows()

  return(gene_amplifications)
}

#' Read in a list of combined.variant.output objects
#' and return a data frame of fusions per sample
#'
#' @param cvo_list a list of combined.variant.output objects
#'
#' @return A data frame of fusions extracted from
#' each combined.variant.output object, per sample
#'
#' @export
read_fusions <- function(cvo_list){

  fusions <- purrr::map(cvo_list, get_fusions) %>%
    dplyr::bind_rows()

  return(fusions)
}

#' Read in a list of combined.variant.output objects
#' and return a data frame of splice variants per sample
#'
#' @param cvo_list a list of combined.variant.output objects
#'
#' @return A data frame of splice variants extracted from
#' each combined.variant.output object, per sample
#'
#' @export
read_splice_variants <- function(cvo_list){

  splice_variants <- purrr::map(cvo_list, get_splice_variants) %>%
    dplyr::bind_rows()

  return(splice_variants)
}

#' Read in a list of combined.quality.metrics.output objects
#' and return a data frame of run qc metrics per timepoint
#'
#' @param qmo_list a list of combined.quality.metrics.output objects
#'
#' @return A data frame of small variants extracted from
#' each combined.quality.metrics.output object, per timepoint
#'
#' @export
read_run_qc_metrics <- function(qmo_list){

  run_qc_metrics <- purrr::map(qmo_list, get_run_qc_metrics) %>%
    dplyr::bind_rows()

  return(run_qc_metrics)
}

#' Read in a list of combined.quality.metrics.output objects
#' and return a data frame of the analysis status per timepoint
#'
#' @param qmo_list a list of combined.quality.metrics.output objects
#'
#' @return A data frame of analysis status extracted from
#' each combined.quality.metrics.output object, per timepoint
#'
#' @export
read_analysis_status <- function(qmo_list){

  analysis_status <- purrr::map(qmo_list, get_analysis_status) %>%
    dplyr::bind_rows()

  return(analysis_status)
}

#' Read in a list of combined.quality.metrics.output objects
#' and return a data frame of dna qc metrics per timepoint
#'
#' @param qmo_list a list of combined.quality.metrics.output objects
#'
#' @return A data frame of dna qc metrics extracted from
#' each combined.quality.metrics.output object, per timepoint
#'
#' @export
read_dna_qc_metrics <- function(qmo_list){

  dna_qc_metrics <- purrr::map(qmo_list, get_dna_qc_metrics) %>%
    dplyr::bind_rows()

  return(dna_qc_metrics)
}

#' Read in a list of combined.quality.metrics.output objects
#' and return a data frame of dna qc metrics (small variants/tmb) per timepoint
#'
#' @param qmo_list a list of combined.quality.metrics.output objects
#'
#' @return A data frame of dna qc metrics (small variants/tmb) extracted from
#' each combined.quality.metrics.output object, per timepoint
#'
#' @export
read_dna_qc_metrics_snvtmb <- function(qmo_list){

  dna_qc_metrics_snvtmb <- purrr::map(qmo_list, get_dna_qc_metrics_snvtmb) %>%
    dplyr::bind_rows()

  return(dna_qc_metrics_snvtmb)
}

#' Read in a list of combined.quality.metrics.output objects
#' and return a data frame of dna qc metrics (msi) per timepoint
#'
#' @param qmo_list a list of combined.quality.metrics.output objects
#'
#' @return A data frame of dna qc metrics (msi) extracted from
#' each combined.quality.metrics.output object, per timepoint
#'
#' @export
read_dna_qc_metrics_msi <- function(qmo_list){

  dna_qc_metrics_msi <- purrr::map(qmo_list, get_dna_qc_metrics_msi) %>%
    dplyr::bind_rows()

  return(dna_qc_metrics_msi)
}

#' Read in a list of combined.quality.metrics.output objects
#' and return a data frame of dna qc metrics (cnv) per timepoint
#'
#' @param qmo_list a list of combined.quality.metrics.output objects
#'
#' @return A data frame of dna qc metrics (cnv) extracted from
#' each combined.quality.metrics.output object, per timepoint
#'
#' @export
read_dna_qc_metrics_cnv <- function(qmo_list){

  dna_qc_metrics_cnv <- purrr::map(qmo_list, get_dna_qc_metrics_cnv) %>%
    dplyr::bind_rows()

  return(dna_qc_metrics_cnv)
}

#' Read in a list of combined.quality.metrics.output objects
#' and return a data frame of expanded dna qc metrics per timepoint
#'
#' @param qmo_list a list of combined.quality.metrics.output objects
#'
#' @return A data frame of expanded dna qc metrics extracted from
#' each combined.quality.metrics.output object, per timepoint
#'
#' @export
read_dna_expanded_metrics <- function(qmo_list){

  dna_expanded_metrics <- purrr::map(qmo_list, get_dna_expanded_metrics) %>%
    dplyr::bind_rows()

  return(dna_expanded_metrics)
}

#' Read in a list of combined.quality.metrics.output objects
#' and return a data frame of rna qc metrics per timepoint
#'
#' @param qmo_list a list of combined.quality.metrics.output objects
#'
#' @return A data frame of rna qc metrics extracted from
#' each combined.quality.metrics.output object, per timepoint
#'
#' @export
read_rna_qc_metrics <- function(qmo_list){

  rna_qc_metrics <- purrr::map(qmo_list, get_rna_qc_metrics) %>%
    dplyr::bind_rows()

  return(rna_qc_metrics)
}

#' Read in a list of combined.quality.metrics.output objects
#' and return a data frame of expanded rna qc metrics per timepoint
#'
#' @param qmo_list a list of combined.quality.metrics.output objects
#'
#' @return A data frame of expanded rna qc metrics extracted from
#' each combined.quality.metrics.output object, per timepoint
#'
#' @export
read_rna_expanded_metrics <- function(qmo_list){

  rna_expanded_metrics <- purrr::map(qmo_list, get_rna_expanded_metrics) %>%
    dplyr::bind_rows()

  return(rna_expanded_metrics)
}

#' Parse VCF files for a provided path and construct data frame.
#'
#' @param path path to VCF file in `*.vcf` or `*.vcf.gz` format
#' @return {tibble} new data frame with all variants (fixed field and genotype information)
#' @importFrom dplyr mutate left_join
#' @importFrom vcfR read.vcfR vcfR2tidy
#' @importFrom stringr str_split_i
parse_vcf_to_df <- function(path) {
# parse VCF file
  vcf_content <- read.vcfR(path)
  
  # fixed field content to data frame
  fixed_df <- vcfR2tidy(vcf_content)$fix
  
  # GT content to data frame
  gt_df <- vcfR2tidy(vcf_content)$gt
  
  # create addition column with observed nucleotides in order to avoid collisions when we do the left_join
  #gt_df <- gt_df %>%
  #  dplyr::mutate(ALT = str_split_i(gt_GT_alleles, "/", 2))
  
  # next use ChromKey, POS and ALT for joining vcf content data frames
  joined_vcf_df <- fixed_df %>%
    dplyr::left_join(gt_df, by = c("ChromKey", "POS"))
  
  as_tibble(joined_vcf_df)
}

#' Process and filter small variant data-frame to requirements
#'
#' @description Processes small-variant data to comply with requirements for
#' further analysis. The function:
#'
#' \enumerate{
#'   \item filters for variants that:
#'     \itemize{
#'       \item have a consequence in a pre-defined list (see details)
#'       \item are present with depth > 0
#'     }
#'   \item extracts NP ID and protein information from the P Dot-notation column
#'   \item adds columns to faciliate addition of annotation data
#' }
#'
#' @details The following variant consequences are currently included:
#' \itemize{
#'  \item frameshift_variant
#'  \item inframe_deletion
#'  \item inframe_insertion
#'  \item missense_variant
#'  \item missense_variant:splice_region_variant
#'  \item splice_acceptor_variant
#'  \item splice_donor_variant
#'  \item splice_donor_variant:intron_variant
#'  \item start_lost
#'  \item stop_gained
#'  \item stop_gained:splice_region_variant
#'  \item stop_lost
#' }
#'
#' @param small_variant_df Data-frame of small variants
#' 
#' @return processed and filtered data frame
#' 
#' @export
process_and_filter_small_variant_data <- function(small_variant_df){

  variant_consequences <- c("3_prime_UTR_variant",
                            "5_prime_UTR_variant",
                            "downstream_gene_variant",
                            "intron_variant",
                            "splice_region_variant:intron_variant",
                            "splice_region_variant:synonymous_variant",
                            "synonymous_variant",
                            "upstream_gene_variant")

  updated_df <- small_variant_df %>%
    filter_consequences(variant_consequences) %>%
    filter_depth(depth_limit = 0) %>%
    parse_p_dot_notation() %>%
    update_annotation_join_columns()

  return(updated_df)
}

#' Filters variant data for variant consequences. Removes
#' any variant with a consequence matching the list of submitted consequences 
#' or an empty consequence field
#'
#' @param variant_df Data frame with variant data
#' @param consequences List of consequences to filter out
#' @param type_column Name of column with variant types (default: consequence_s)
#'
#' @return data frame with filtered consequences
#' 
#' @export
filter_consequences <- function(variant_df, consequences, type_column="consequence_s"){
  filtered_df <- variant_df %>%
    dplyr::filter(!(get(type_column) %in% consequences | is.na(get(type_column)) | get(type_column) == ""))
  return(filtered_df)
}

#' Filters for variant data for variant consequences. Keeps
#' any variant with a consequence matching the list of submitted consequences 
#'
#' @param variant_df Data frame witgh variant data
#' @param consequences List of consequences to keep
#' @param type_column Name of column with variant types (default: consequence_s)
#'
#' @return data frame with consequences kept as specified
#' 
#' @export
keep_consequences <- function(variant_df, consequences, type_column="consequence_s"){
  filtered_df <- variant_df %>%
    dplyr::filter(get(type_column) %in% consequences )
  return(filtered_df)
}

#' Helper function to filter small variant data according
#' to specified depth
#'
#' @param small_variant_df data frame with small variants
#' @param depth_limit depth threshold
#'
#' @return data frame filtered by depth
#'
#' @export
filter_depth <- function(small_variant_df, depth_limit = 0){
  filtered_df <- dplyr::filter(small_variant_df, depth > depth_limit)
  return(filtered_df)
}

#' Helper function to filter small variant data according
#' to the GermlineFilterDatabase filter
#'
#' @param small_variant_df data frame with small variants
#'
#' @return data frame filtered by germlineDB annotation
#'
#' @export
filter_germline_db <- function(small_variant_df){
  filtered_df <- dplyr::filter(small_variant_df, !GermlineFilterDatabase)
  return(filtered_df)
}

#' Helper function to filter small variant data according
#' to the GermlineFilterProxi filter
#'
#' @param small_variant_df data frame with small variants
#'
#' @return data frame filtered by GermlineFilterProxi
#'
#' @export
filter_germline_proxi <- function(small_variant_df){
  filtered_df <- dplyr::filter(small_variant_df, !GermlineFilterProxi)
  return(filtered_df)
}

#' Helper function to filter small variant data and keep
#' only variants with annotated COSMIC ID(s)
#'
#' @param small_variant_df data frame with small variants
#'
#' @return data frame filtered by COSMIC ID
#'
#' @export
filter_for_cosmic_id <- function(small_variant_df){
  filtered_df <- dplyr::filter(small_variant_df, !is.na(CosmicIDs))
  return(filtered_df)
}

#' Helper function to filter small variant data and keep
#' only variants that are included in TMB numerator
#'
#' @param small_variant_df data frame with small variants
#'
#' @return data frame filtered by TMB inclusion
#'
#' @export
filter_for_Included_in_TMB <- function(small_variant_df){
  filtered_df <- dplyr::filter(small_variant_df, IncludedInTMBNumerator)
  return(filtered_df)
}

#' Parses P-Dot notation column, splitting it into distinct NP ID and
#' amino acid variant columns
#'
#' @param small_variant_df data frame with small variants
#'
#' @return parsed protein notation
#' 
#' @export
parse_p_dot_notation <- function(small_variant_df){
  tidyr::extract(
    data = small_variant_df,
    col = p_dot_notation,
    into = c("np_id", "protein"),
    regex = "(NP_.+):.+\\((\\w{3}\\d+).+$",
    remove = FALSE
  )
}

#' Helper function to make small variant DF joinable to annotation data
#'
#' @param small_variant_df data frame with small variants
#'
#' @return data frame
update_annotation_join_columns <- function(small_variant_df){
  mutated_df <- small_variant_df %>%
    dplyr::mutate(
      protein = paste(gene, protein, sep = "_"),
      coord_id = paste(chromosome, genomic_position, sep = "_")
    )
  return(mutated_df)
}

#' Adds GEL annotation data to small variant data
#'
#' @param small_variant_df data frame with small variants
#' @param annotation_data_list annotation data list
#'
#' @return data frame with annotation data
#'
#' @export
add_annotation_data <- function(small_variant_df, annotation_data_list){
  key_order = c("protein", "coord_id", "gene", "gene", "gene", "gene", "gene")
  to_join <- c(list(small_variant_df), annotation_data_list)
  joined_data <- purrr::reduce2(.x = to_join, .y = key_order, .f = left_join)
  return(joined_data)
}

#' Adds information from TMB trace table to small variant data
#'
#' @param small_variant_df data frame with small variants
#' @param tmb_variant_df data frame with TMB trace information
#'
#' @return joined data frame
#'
#' @export
add_tmb_variant_data <- function(small_variant_df, tmb_variant_df){
  joined_data <- small_variant_df %>% 
    left_join(tmb_variant_df, by = c("sample_id", "chromosome" = "Chromosome", "genomic_position" = "Position", "reference_call" = "RefCall", "alternative_call" = "AltCall"))
  return(joined_data)
}

#' Adds amplifications to small variant data, 
#' variant type (consequence_s) column renamed to variant_type
#'
#' @param small_variant_df data frame with small variants
#' @param amplification_df data frame with amplifications
#'
#' @return joined data frame
#'
#' @export
add_amplification_data <- function(small_variant_df, amplification_df){
  prepared_amplification_df <- amplification_df %>% 
    dplyr::mutate(variant_type = if_else(fold_change < 1.0, "DEL", "DUP")) %>% 
    dplyr::select(-fold_change)

  joined_data <- small_variant_df %>% 
    rename(variant_type = consequence_s) %>%
    bind_rows(prepared_amplification_df)
  return(joined_data)
}

#' Helper function to extract TMB/MSI metrics from
#' list of combined.variant.output objects
#'
#' @param cvo_data CVO object
#' @param category category to extract, default: tmb
#'
#' @return data.frame
extract_metrics <- function(cvo_data, category = "tmb"){
  df <- purrr::map_dfr(cvo_data, purrr::pluck, category)
  return(df)
}

#' Extracts all TMB/MSI metrics from list of combined.variant.output
#' objects, returning a data frame of TMB/MSI per sample
#'
#' @param cvo_data CVO object
#'
#' @return data frame with TMB/MSI metrics
#'
#' @export
get_metrics_df <- function(cvo_data){
  tmb_df <- extract_metrics(cvo_data, category = "tmb")
  msi_df <- extract_metrics(cvo_data, category = "msi")
  
  metrics_df <- dplyr::bind_cols(tmb_df, msi_df) %>%
    dplyr::mutate(sample_id = purrr::map_chr(cvo_data, ~ ifelse(is.null(.x$analysis_details$pair_id), 
                                                      .x$analysis_details$dna_sample_id, 
                                                      .x$analysis_details$pair_id))) %>%
    dplyr::select(sample_id, tidyr::everything())
  return(metrics_df)
}

#' Extracts all analysis details from list of combined.variant.output
#' objects, returning a data frame of analysis details per sample
#'
#' @param cvo_data CVO object
#'
#' @return data frame with analysis details
#'
#' @export
get_analysis_details_df <- function(cvo_data){
  analysis_details <- extract_metrics(cvo_data, category = "analysis_details")
  analysis_details_df <- analysis_details %>%
    dplyr::mutate(sample_id = purrr::map_chr(cvo_data, ~ ifelse(is.null(.x$analysis_details$pair_id), 
                                                                .x$analysis_details$dna_sample_id, 
                                                                .x$analysis_details$pair_id))) %>%
    dplyr::select(sample_id, tidyr::everything())
  return(analysis_details_df)
}

#' Extracts all sequencing run details from list of combined.variant.output
#' objects, returning a data frame of sequencing run details per sample
#'
#' @param cvo_data CVO object
#'
#' @return data frame with sequencing run details
#'
#' @export
get_sequencing_run_details_df <- function(cvo_data){
  sequencing_run_details <- extract_metrics(cvo_data, category = "sequencing_run_details")
  sequencing_run_details_df <- sequencing_run_details %>%
    dplyr::mutate(sample_id = purrr::map_chr(cvo_data, ~ ifelse(is.null(.x$analysis_details$pair_id), 
                                                                .x$analysis_details$dna_sample_id, 
                                                                .x$analysis_details$pair_id))) %>%
    dplyr::select(sample_id, tidyr::everything())
  return(sequencing_run_details_df)
}

#' Helper function to extract summarized counts based on sample_id
#'
#' @param data_df data frame
#' @param column_name column name
#'
#' @return data.frame
get_summarised_statistics_df <- function(data_df, column_name){
  if (!(nrow(data_df) == 0)) {
    summarized_data_df <- data_df %>% 
      group_by(sample_id) %>% 
      summarise({{column_name}} := n()) %>% 
      select(sample_id, {{column_name}})
  }
  else {
    summarized_data_df <- data_df %>% 
      tibble::add_column(sample_id = "") %>% 
      tibble::add_column({{column_name}} := "")
  }
  return(summarized_data_df)
}

#' Extracts the counts of the different variant types from list of combined.variant.output
#' objects, returning a data frame of counts per sample
#'
#' @param cvo_data CVO object
#'
#' @return data frame with variant type statistics
#'
#' @export
get_count_df <- function(cvo_data){
  # most of the following steps are taken to make sure that we get numbers for all samples and 
  # variant types
  default_df <- extract_metrics(cvo_data, category = "sequencing_run_details") %>%
    dplyr::mutate(sample_id = purrr::map_chr(cvo_data, ~ ifelse(is.null(.x$analysis_details$pair_id), 
                                                                .x$analysis_details$dna_sample_id, 
                                                                .x$analysis_details$pair_id))) %>%
    dplyr::select(sample_id) %>%
    tibble::add_column(number_of_amplifications = NA) %>%
    tibble::add_column(number_of_small_variants = NA) %>%
    tibble::add_column(number_of_fusions = NA) %>%
    tibble::add_column(number_of_splice_variants = NA)

  amps <- read_gene_amplifications(cvo_data) %>%
    get_summarised_statistics_df("number_of_amplifications")
  small_variants <- read_small_variants(cvo_data) %>%
    get_summarised_statistics_df("number_of_small_variants")
  fusions <- read_fusions(cvo_data) %>%
    get_summarised_statistics_df("number_of_fusions")
  splice_variants <- read_splice_variants(cvo_data) %>%
    get_summarised_statistics_df("number_of_splice_variants")

  counts_df <- default_df %>% 
    full_join(amps, by = 'sample_id') %>%
    mutate(number_of_amplifications=coalesce(number_of_amplifications.x, number_of_amplifications.y)) %>%
    full_join(small_variants, by = 'sample_id') %>%
    mutate(number_of_small_variants=coalesce(number_of_small_variants.x,number_of_small_variants.y)) %>%
    full_join(fusions, by = 'sample_id') %>%
    mutate(number_of_fusions=coalesce(number_of_fusions.x,number_of_fusions.y)) %>%
    full_join(splice_variants, by = 'sample_id') %>%
    mutate(number_of_splice_variants=coalesce(number_of_splice_variants.x,number_of_splice_variants.y)) %>% 
    select(sample_id, number_of_amplifications, number_of_small_variants, number_of_fusions, number_of_splice_variants) %>%
    mutate(number_of_amplifications = ifelse(is.na(number_of_amplifications), 0, number_of_amplifications), 
      number_of_fusions = ifelse(is.na(number_of_fusions), 0, number_of_fusions),
      number_of_small_variants = ifelse(is.na(number_of_small_variants), 0, number_of_small_variants),
      number_of_splice_variants = ifelse(is.na(number_of_splice_variants), 0, number_of_splice_variants))

  return(counts_df)
}

#' Transforms data frame holding variant information to a matrix that can be used as OncoPrint input
#'
#' @param variant_data_frame Data frame holding variant information
#' @param id_column Column holding identifiers
#' @param gene_column Column holding genes
#' @param variant_type_column Column holding variant types
#'
#' @return data frame as needed for onocprint plot
#' 
#' @export
prepare_dataframe_for_oncoprint <- function(variant_data_frame, id_column="sample_id", gene_column="gene", variant_type_column="consequence_s"){
  oncoprint_df <- variant_data_frame %>%
    pivot_wider(id_cols = id_column, names_from = gene_column, values_from = variant_type_column, values_fn = function(x) paste(x, collapse=";"))

    oncoprint_matrix <- as.matrix(oncoprint_df)
    oncoprint_matrix[is.na(oncoprint_matrix)] = ''
    rownames(oncoprint_matrix) = oncoprint_matrix[, 1]
    oncoprint_matrix = oncoprint_matrix[, -1]
    oncoprint_matrix = t(as.matrix(oncoprint_matrix))

    return(oncoprint_matrix)
}
