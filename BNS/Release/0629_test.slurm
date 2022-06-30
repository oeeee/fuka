#!/bin/bash
#SBATCH --output=slurm-%j.out
#SBATCH --job-name=Fuka_BH
#SBATCH --mail-type=END,FAIL 
#SBATCH --mail-user=llozonoo@gmail.com
#SBATCH --partition=s_test
#SBATCH --nodes=1
#SBATCH --time=03:00:00
module purge
source ~/.bashrc
module load tools/cmake mpi/openmpi/4.1.2-gcc-10.2.0 compiler/gcc/10.2.0 
cd ~/fuka/codes/FUKAv2_Solvers/BNS/bin/Release
mpirun -np 36 ./solve 
