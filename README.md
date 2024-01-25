# featureCounts_repex
Reproducible example for featureCounts bug posted to Bioconductor support.

To reproduce, clone this repository, specify the three relevant paths listed near the top of the repex.R script, and then run. Rsubread and data.table have to be installed to run the full example, though the important part (run featureCounts to generate the CORE file with the target list quirk) only requires Rsubread.
