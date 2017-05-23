


docker run -it -p 8889:8888 -v /Users/evanpease/Development/SparkNotebook:/opt/spark -e SPARK_HOME=/opt/spark/spark-2.1.1-bin-hadoop2.7 -e NOTEBOOK_HOME=/opt/spark/notebooks ezeev/spark-notebook:latest
