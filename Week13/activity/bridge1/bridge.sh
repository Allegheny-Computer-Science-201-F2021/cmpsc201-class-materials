#!/bin/sh
pyout=$(python3 add.py)
javac Subt.java
java Subt $pyout