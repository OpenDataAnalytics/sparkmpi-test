 #!/usr/bin/env bash

#export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/"
#export SPARK_HOME="/data/sebastien/SparkMPI/spark-2.1.1-bin-hadoop2.7"
export MPI_SRC=/home/chaudhary/tools/sparkmpi/nikolay/mvapich2-2.2/src
export MV2_SMP_USE_CMA=0
export HYDRA_PROXY_PORT=55555
export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/home/chaudhary/tools/sparkmpi/nikolay/mpi/lib

/home/chaudhary/tools/sparkmpi/nikolay/install/bin/pmiserv -n 4 hello &
spark-submit --master spark://einstein:7077 ./pvw-spark.py
