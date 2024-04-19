# featureCounts_repex
Reproducible examples for my featureCounts related posts on [Bioconductor support](https://support.bioconductor.org).


## Confusing nonOverlap = 0 behavior

The files necessary to reproduce the example discussed [here](https://support.bioconductor.org/p/9157388/) is located in the `nonOverlap_quirk` directory of this repo.

Included is the full annotation file I was assigning reads with respect to, and 4 downsampled, sorted, and indexed bam files:

1. assigned_sorted_readsample.bam: 100 reads that were successfully assigned to annotated genes when `nonOverlap = 0`
2. unassigned_sorted_readsample.bam: 100 reads that were unsuccessfully assigned to annotated genes when `nonOverlap = 0`
3. assigned_sorted_at_1.bam: Subset of the 100 originally unassigned reads that are succesfully assigned when `nonOverlap=1`
4. assigend_sorted_at_5.bam: Subset of the 100 originally unassigned reads that are succesfully assigned when `nonOverlap=5`, but not 1.

IGV screenshots shared in the forum posted are also included in this directory. The call to featureCounts used for this example looked like:

`featureCounts -T 4 -s 1 -a Hs_ensembl_chr.gtf -R CORE -p --countReadPairs -g gene_id -t transcript --nonOverlap 0 --primary -o testout.featureCounts <input bam file>
`


## CORE file ordering

The files and code necessary to reproduce the example discussed [here](https://support.bioconductor.org/p/9156185/) is located in the `ordering_of_hits` directory of this repo.

To reproduce, clone this repository, specify the three relevant paths listed near the top of the repex.R script, and then run. Rsubread and data.table have to be installed to run the full example, though the important part (run featureCounts to generate the CORE file with the target list quirk) only requires Rsubread.

The output I get when running this example on my PC (Windows 11 version 22H2, R version 4.3.1, Rsubread version 2.16.0) is also provided on this repo (example.sam.featureCounts).

Files to reproduce sequencing tracks shown on the Bioconductor support page, as well as screen shot of those tracks, are included in `files_for_tracks/`.
