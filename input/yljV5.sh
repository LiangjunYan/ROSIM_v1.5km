#!/bin/bash
#SBATCH -J yljV5
#SBATCH -p hcpu128
#SBATCH -n 3091
#SBATCH --error=%J.err
#SBATCH --output=%J.out  
module load intel/2017u5
export NETCDF_ROOT=/data0/home/wangzhaomin/software/netcdf-icc2017/4.4.1
export PATH=$NETCDF_ROOT/bin:$PATH
export LD_LIBRARY_PATH=$NETCDF_ROOT/lib:$LD_LIBRARY_PATH
export CPPFLAGS='-I/data0/home/wangzhaomin/software/netcdf-icc2017/4.4.1/include'
export LDFLAGS='-L/data0/home/wangzhaomin/software/netcdf-icc2017/4.4.1/lib'
mpirun -np 3091 ./mitgcmuv
scontrol show job $SLURM_JOBID
