#!/usr/bin/env sh

CAFFE_HOME=../..

SOLVER=./tiny_yolo_solver.prototxt


$CAFFE_HOME/build/tools/caffe train \
    --solver=$SOLVER 

