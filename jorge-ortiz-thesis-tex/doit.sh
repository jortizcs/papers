#! /bin/sh

latex thesis && \
bibtex thesis && \
latex thesis && \
pdflatex thesis

# with biblatex, it is only necessary to run latex once after bibtex, not twice.
