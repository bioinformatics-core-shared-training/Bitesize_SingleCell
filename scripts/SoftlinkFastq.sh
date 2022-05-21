#!/bin/bash

set -eu

slxdir=${1}

mkdir -p fastq

srchTerm="SLX-[0-9]*.\([A-Z0-9]*\).H[A-Z0-9]*.s_\([1-4]\).\([ri]\)_\([12]\).fq.gz"
replTerm="\1_S\2_L001_\u\3\4_001.fastq.gz"
for fqFile in ${slxdir}/*[12].fq.gz; do
    newName=`basename ${fqFile} | sed "s/${srchTerm}/${replTerm}/"`
    ln -rsT ${fqFile} fastq/${newName}
done

