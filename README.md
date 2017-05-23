# Spark Notebook

Setting up Jupyter Notebooks to talk to Spark involves a few extra steps.
This can create problems especially if you're installing on your primary
development machine unless you isolate your environment in some way.

## Usage

```
docker run -it -p 8888:8888 \
 -v /path/to/local/spark/:/opt/spark \
 -e SPARK_HOME=/opt/spark/spark-2.1.1-bin-hadoop2.7 \
 -e NOTEBOOK_HOME=/opt/spark/notebooks \
 ezeev/spark-notebook:latest
```

**Data Volume**

Spark is not included in this container. You should download Spark first from https://spark.apache.org/downloads.html. Download and extract Spark. In my case
it is in `/Users/ezeev/Development/spark`

Mount this path or a parent path as a volume to your container at runtime. You should mount this to `/opt/spark`:

`-v /Users/ezeev/Development/spark:/opt/spark`

**SPARK_HOME**

The location of Spark must be passed as an environment variable to the container. Since I extracted Spark
to a volume mounted as `/opt/spark`, the path is `/opt/spark/spark-2.1.1-bin-hadoop2.7`.

`-e SPARK_HOME=/opt/spark/spark-2.1.1-bin-hadoop2.7`
