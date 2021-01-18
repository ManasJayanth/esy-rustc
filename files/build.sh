#! /bin/sh

curl -o source.tar.gz https://static.rust-lang.org/dist/rustc-1.49.0-src.tar.gz#sha256:b50aefa8df1fdfc9bccafdbf37aee611c8dfe81bf5648d5f43699c50289dc779

      # inreplace "src/stage0.txt", "1.48.0", "1.49.0"
      # inreplace "src/stage0.txt", "2020-11-19", "2020-12-31"

./configure --release-channel=stable
make
