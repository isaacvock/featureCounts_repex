# featureCounts_repex
Reproducible example for featureCounts bug posted to [Bioconductor support](https://support.bioconductor.org/p/9156185/).

To reproduce, clone this repository, specify the three relevant paths listed near the top of the repex.R script, and then run. Rsubread and data.table have to be installed to run the full example, though the important part (run featureCounts to generate the CORE file with the target list quirk) only requires Rsubread.

The output I get when running this example on my PC (Windows 11 version 22H2, R version 4.3.1, Rsubread version 2.16.0) is also provided on this repo (example.sam.featureCounts).

Files to reproduce sequencing tracks shown on the Bioconductor support page, as well as screen shot of those tracks, are included in `files_for_tracks/`.
