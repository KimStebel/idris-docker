FROM haskell:8.0.2

RUN apt-get update && apt-get -y install build-essential && \
    cabal update && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get -y install build-essential && \
    cabal update && cabal install idris-1.1.1 && \
    apt-get remove -y build-essential && \
    rm -rf /var/lib/apt/lists/*

CMD ["idris"]
