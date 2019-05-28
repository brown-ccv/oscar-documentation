#!/bin/bash
#SBATCH -J myTestSingularity
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --time=1:00:00
#SBATCH --mem=14GB
#SBATCH --partition=batch

# Print key runtime properties for records
echo Master process running on `hostname`
echo Directory is `pwd`
echo Starting execution at `date`
echo Current PATH is $PATH

# Launch singulairty container and execute python command to run tf_NN.py
singularity exec $HOME/simgTest/tensorflowPy3.simg python $HOME/simgTest/tf_NN.py