set -e
mpd&
sleep 2
mpiexec -n 4 ./f90tst_parallel
mpiexec -n 4 ./f90tst_parallel2
mpiexec -n 4 ./f90tst_parallel3
mpiexec -n 8 ./f90tst_nc4_par1
mpiexec -n 8 ./f90tst_nc4_par
#mpiexec -n 4 ./f90tst_parallel_fill
