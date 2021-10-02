Multi-decision-maker Requirements Prioritization

This repository contains code, artefacts, and configuration that provide techniques and tools supporting multi-decision-maker requirements prioritization.

Repository Structure:
- resources/input: various input files required by the tool
- src: java source and test files
- pom.xml: maven build file
- plot_pareto.R: simple R script for ploting the pareto front
- plot_pareto.sh: a simple bash script to launch the R script

To build:
`mvn package [-DskipTests]`

To execute:
`java -jar target/iga-0.0.1-SNAPSHOT-jar-with-dependencies.jar INPUT_DIR OUTPUT_DIR`


An example of a run:
`java -jar target/iga-0.0.1-SNAPSHOT-jar-with-dependencies.jar resources/input/PRESTO/SceneSelection .`

To generate a plot of the resulting pareto front, a simple script is provided to be applied on the resulting csv file produced by the tool. The plot will be written to a file named "pareto.pdf" in the same directory.

An example of a run:
`./plot_pareto.sh KENDALL_INPUT_pareto.csv`

The work in this repository was developed as part of the [SUPERSEDE project](https://github.com/supersede-project). For details on how it's used, checkout the [github repository](https://github.com/supersede-project/dm_game) of the project.  
The contents of this project are licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0)

Main contact: Fitsum Kifetew <kifetew@fbk.eu>

