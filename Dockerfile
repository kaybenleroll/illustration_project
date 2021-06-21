FROM rocker/verse:4.0.5

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    graphviz \
    less \
    liblapack-dev \
    libtk8.6 \
    pbzip2 \
    p7zip-full \
    tk8.6 \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* \
  && install2.r --error \
    actuar \
    arules \
    arulesCBA \
    arulesNBMiner \
    arulesSequences \
    arulesViz \
    BiocManager \
    BTYD \
    BTYDplus \
    broom \
    conflicted \
    cowplot \
    DataExplorer \
    DT \
    directlabels \
    evir \
    fitdistrplus \
    fs \
    furrr \
    ggraph \
    lobstr \
    pryr \
    rfm \
    rmdformats \
    shinythemes \
    snakecase \
    tidygraph \
    tidyquant \
    tidytext \
    timetk \
    visNetwork

RUN Rscript -e 'BiocManager::install("Rgraphviz")'

WORKDIR /home/rstudio

