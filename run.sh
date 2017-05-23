
#NOTEBOOK_HOME=$NOTEBOOK_HOME
#ENV SPARK_HOME=$SPARK_HOME
export PATH=$SPARK_HOME:$PATH
export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYSPARK_DRIVER_PYTHON="jupyter"
export PYSPARK_DRIVER_PYTHON_OPTS="notebook"
export PYSPARK_PYTHON=python3

jupyter notebook --ip 0.0.0.0 --port=8888 --no-browser --allow-root
