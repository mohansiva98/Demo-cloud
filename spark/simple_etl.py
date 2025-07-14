from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("SimpleETL").getOrCreate()
df = spark.read.option("header", True).csv("s3://your-bucket/input/")
df.filter("value > 100").write.mode("overwrite").parquet("s3://your-bucket/output/")

