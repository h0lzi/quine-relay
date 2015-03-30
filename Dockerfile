FROM ubuntu:14.04
ENV PATH /usr/games:$PATH
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:ecere-team/ppa            && \
    add-apt-repository -y ppa:directhex/ppa && \
    add-apt-repository -y ppa:octave/stable && \
    add-apt-repository -y ppa:staticfloat/juliareleases && \
    add-apt-repository -y ppa:staticfloat/julia-deps   
RUN apt-get update
RUN apt-get install -y afnix              && \
    apt-get install -y algol68g           && \
    apt-get install -y aplus-fsf          && \
    apt-get install -y asymptote          && \
    apt-get install -y ats-lang-anairiats && \
    apt-get install -y bash               && \
    apt-get install -y bc                 && \
    apt-get install -y bf                 && \
    apt-get install -y boo                && \
    apt-get install -y bsdgames           && \
    apt-get install -y cduce              && \
    apt-get install -y clisp              && \
    apt-get install -y clojure1.4         && \
    apt-get install -y cmake              && \
    apt-get install -y coffeescript       && \
    apt-get install -y dc                 && \
    apt-get install -y ecere-sdk          && \
    apt-get install -y emacs23            && \
    apt-get install -y erlang             && \
    apt-get install -y f2c                && \
    apt-get install -y falconpl           && \
    apt-get install -y fp-compiler        && \
    apt-get install -y fsharp             && \
    apt-get install -y g++                && \
    apt-get install -y gambas3-script     && \
    apt-get install -y gap                && \
    apt-get install -y gauche             && \
    apt-get install -y gawk               && \
    apt-get install -y gcc                && \
    apt-get install -y gdc                && \
    apt-get install -y genius             && \
    apt-get install -y gforth             && \
    apt-get install -y gfortran           && \
    apt-get install -y ghc                && \
    apt-get install -y ghostscript        && \
    apt-get install -y gnat               && \
    apt-get install -y gnu-smalltalk      && \
    apt-get install -y gnuplot            && \
    apt-get install -y gobjc              && \
    apt-get install -y golang             && \
    apt-get install -y gpt                && \
    apt-get install -y gri                && \
    apt-get install -y groff              && \
    apt-get install -y groovy             && \
    apt-get install -y haxe               && \
    apt-get install -y icont              && \
    apt-get install -y iconx              && \
    apt-get install -y intercal           && \
    apt-get install -y iverilog           && \
    apt-get install -y jasmin-sable       && \
    apt-get install -y julia              && \
    apt-get install -y kaya               && \
    apt-get install -y libgd2-xpm-dev     && \
    apt-get install -y libpng12-dev       && \
    apt-get install -y lisaac             && \
    apt-get install -y llvm               && \
    apt-get install -y lua5.2             && \
    apt-get install -y make               && \
    apt-get install -y maxima             && \
    apt-get install -y mlton              && \
    apt-get install -y mono-devel         && \
    apt-get install -y mono-mcs           && \
    apt-get install -y mono-vbnc          && \
    apt-get install -y nasm               && \
    apt-get install -y neko               && \
    apt-get install -y nickle             && \
    apt-get install -y ocaml              && \
    apt-get install -y octave             && \
    apt-get install -y open-cobol         && \
    apt-get install -y openjdk-6-jdk      && \
    apt-get install -y pari-gp            && \
    apt-get install -y parrot             && \
    apt-get install -y perl               && \
    apt-get install -y php5-cli           && \
    apt-get install -y pike7.8            && \
    apt-get install -y python             && \
    apt-get install -y r-base             && \
    apt-get install -y ratfor             && \
    apt-get install -y regina-rexx        && \
    apt-get install -y rhino              && \
    apt-get install -y ruby2.0            && \
    apt-get install -y scala              && \
    apt-get install -y scilab             && \
    apt-get install -y slsh               && \
    apt-get install -y spl-core           && \
    apt-get install -y swi-prolog         && \
    apt-get install -y tcc                && \
    apt-get install -y tcl                && \
    apt-get install -y ucblogo            && \
    apt-get install -y valac              && \
    apt-get install -y xsltproc           && \
    apt-get install -y yorick             && \
    apt-get install -y zoem              
ADD . /usr/local/share/quine-relay
WORKDIR /usr/local/share/quine-relay
RUN make -C vendor
CMD make CC=tcc
