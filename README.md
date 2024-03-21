# ORCA_run

orca_run is a shell/bash script to help users run electronic structure calculations with ORCA software developed and maintained by prof. Frank Neese and coworkers at Max Planck Institute for Chemical Energy Conversion.

It's official website can be acessed at: **https://orcaforum.kofo.mpg.de**

## About ORCA software for eletronic structures calculations

**The following text was taken from ORCA official website above.**

"The program ORCA is a modern electronic structure program package written by F. Neese, with contributions from many current and former coworkers and several collaborating groups. The binaries of ORCA are available free of charge for academic users for a variety of platforms.
ORCA is a flexible, efficient and easy-to-use general purpose tool for quantum chemistry with specific emphasis on spectroscopic properties of open-shell molecules. It features a wide variety of standard quantum chemical methods ranging from semiempirical methods to DFT to single- and multireference correlated ab initio methods. It can also treat environmental and relativistic effects.
Due to the user-friendly style, ORCA is considered to be a helpful tool not only for computational chemists, but also for chemists, physicists and biologists that are interested in developing the full information content of their experimental data with help of calculations."

**More help using ORCA can be found at ORCA Input Library: https://sites.google.com/site/orcainputlibrary/**

## Usage

To use ORCA_run, first you need to set the path to ORCA (directory) in the ORCAPATH enviroment variable, and the path to the scratch folder in ORCASCR variable. As example, you can export it in your .bash_profile:

> export ORCAPATH="/path/to/orca"
> export ORCASCR="/tmp/orca"

Then, the command to run an ORCA job called from ORCA_run follows the syntax:

> orca_run.sh -i input.inp -o output.out -p nprocs -m maxcore -a "file1.gbw file2.xyz"

Only input is obligatory, default output = input_basename.out.

**nprocs** is the number of processors to be used

**maxcore** is the ORCA maximum memory per core in MB.

**-a** flag sets extra files that you need to run the calculation, as example orbital files .gbw or .xyz files. If it is more than one file, make sure to put them in double quotes. Remember that they do not need to be in the same directory, as long as you specify the full or relative path.

# ORCA_plot_mo

orca_plot_mo makes use of the orca_plot tool to automatically plot ORCA orbitals into Gaussian Cube files. The usage is straightforward:

> orca_plot_mo.sh orbital_file MO_number grid_density

The orbital_file can be any from ORCA multiple orbital files .gbw, .uno, .qro, etc. The grid_density has a default value of 40 (orca_plot default) and, if specified, should contain only one number. A value between 80-100 already gives high resolution plots, and the default value is good for visualization only.

# ORCA_plot_edens

The orca_plot_edens script plots the total electron density from an ORCA .gbw file into a Gaussian cube file. You just need to specify the input.