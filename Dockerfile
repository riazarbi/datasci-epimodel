FROM riazarbi/datasci-r-heavy:stable

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get clean && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get update && \
    apt-get install -y \
    gfortran \
# Clean out cache
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && python3 -m pip install pymc3
 
 
 
