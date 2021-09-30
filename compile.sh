#!/bin/sh
# vi: set expandtab shiftwidth=4 softtabstop=4

for f in `ls -1 ./diagrams`; do
	echo "Compiling $f --> $f.png"
	podman run --rm -it --privileged -u root -v ${PWD}:/data minlag/mermaid-cli \
		-i /data/diagrams/$f -o /data/dest/$f.png
done
