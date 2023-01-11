#!/bin/bash
#SBATCH --partition=general
#SBATCH --nodes=2
#SBATCH --ntasks=2
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=4
#SBATCH --output=water-%j.out
#SBATCH --error=water-%j.err
#SBATCH --time=10:00
#SBATCH --job-name=water

module purge

module load OpenMPI/4.1.1-GCC-11.2.0
module load Siesta/4.1.5-foss-2021b

mpirun siesta water.fdf
