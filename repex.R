### PURPOSE OF THIS SCRIPT
## Reproduce example of featureCounts quirk where reads assigned to same
## set of transcript isoforms are given different target list strings. These
## strings contain the same set of transcript IDs but in slightly different
## orders.

### Load dependencies
library(Rsubread)
library(data.table)


### Paths to run example
samfile_path <- "path/to/example.sam"
gtf_path <- "path/to/small_annotation.gtf"
output_dir <- "directory/to/output/CORE/file/"



### Run FeatureCounts, assigning reads to set of transcript IDs with which they are completely consistent
featureCounts(file = samfile_path,
              annot.ext = gtf_path,
              isGTFAnnotationFile = TRUE,
              strandSpecific = 1,
              isPairedEnd = TRUE,
              countReadPairs = TRUE,
              nonOverlap = 0,
              reportReads = "CORE",
              reportReadsPath = output_dir,
              nthreads = 4,
              primaryOnly = TRUE,
              allowMultiOverlap = TRUE,
              GTF.featureType = "exon",
              GTF.attrType = "transcript_id")


### Assess results
core_file <- list.files(path = output_dir,
                        pattern = "featureCounts",
                        full.names = TRUE)[1]

results <- fread(core_file,
                 sep = "\t")

# Print counts for different target lists
results[,.N, by = V4]