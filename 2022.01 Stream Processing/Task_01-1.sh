Authenticating with public key "Imported-Openssh-Key: D:\\Prog\\MobaXterm\\keys\\id_rsa_student559_13"
    -----------------------------------------------------------------------¬
    ¦                 • MobaXterm Personal Edition v21.3 •                 ¦
    ¦               (SSH client, X server and network tools)               ¦
    ¦                                                                      ¦
    ¦ > SSH session to student559_13@37.139.41.176                         ¦
    ¦   • Direct SSH      :  +                                             ¦
    ¦   • SSH compression :  +                                             ¦
    ¦   • SSH-browser     :  +                                             ¦
    ¦   • X11-forwarding  :  -  (disabled or not supported by server)      ¦
    ¦                                                                      ¦
    ¦ > For more info, ctrl+click on help or visit our website.            ¦
    L-----------------------------------------------------------------------

Last login: Sun Jan 16 12:23:12 2022 from 109.229.109.61
[student559_13@bigdataanalytics-worker-3 ~]$ pyspark
SPARK_MAJOR_VERSION is set to 2, using Spark2
Python 2.7.5 (default, Nov 16 2020, 22:23:17)
[GCC 4.8.5 20150623 (Red Hat 4.8.5-44)] on linux2
Type "help", "copyright", "credits" or "license" for more information.
Setting default log level to "WARN".
To adjust logging level use sc.setLogLevel(newLevel). For SparkR, use setLogLevel(newLevel).
22/01/16 14:33:29 WARN Utils: Service 'SparkUI' could not bind on port 4040. Attempting port 4041.
22/01/16 14:33:29 WARN Utils: Service 'SparkUI' could not bind on port 4041. Attempting port 4042.
Welcome to
      ____              __
     / __/__  ___ _____/ /__
    _\ \/ _ \/ _ `/ __/  '_/
   /__ / .__/\_,_/_/ /_/\_\   version 2.3.2.3.1.4.0-315
      /_/

Using Python version 2.7.5 (default, Nov 16 2020 22:23:17)
SparkSession available as 'spark'.
>>> from pyspark.sql import functions as F
>>> raw_rate = spark.readStream.format("rate").load()
>>> raw_rate.printSchema()
root
 |-- timestamp: timestamp (nullable = true)
 |-- value: long (nullable = true)

>>> raw_rate.isStreaming
True
>>> stream = raw_rate \
...     .writeStream \
...     .trigger(processingTime='30 seconds') \
...     .format("console") \
...     .options(truncate=False) \
...     .start()
>>> -------------------------------------------
Batch: 0
-------------------------------------------
+---------+-----+
|timestamp|value|
+---------+-----+
+---------+-----+

-------------------------------------------
Batch: 1
-------------------------------------------
+----------------------+-----+
|timestamp             |value|
+----------------------+-----+
|2022-01-16 14:49:54.76|0    |
|2022-01-16 14:49:55.76|1    |
|2022-01-16 14:49:56.76|2    |
|2022-01-16 14:49:57.76|3    |
|2022-01-16 14:49:58.76|4    |
+----------------------+-----+

-------------------------------------------
Batch: 2
-------------------------------------------
+----------------------+-----+
|timestamp             |value|
+----------------------+-----+
|2022-01-16 14:49:59.76|5    |
|2022-01-16 14:50:00.76|6    |
|2022-01-16 14:50:01.76|7    |
|2022-01-16 14:50:02.76|8    |
|2022-01-16 14:50:03.76|9    |
|2022-01-16 14:50:04.76|10   |
|2022-01-16 14:50:05.76|11   |
|2022-01-16 14:50:06.76|12   |
|2022-01-16 14:50:07.76|13   |
|2022-01-16 14:50:08.76|14   |
|2022-01-16 14:50:09.76|15   |
|2022-01-16 14:50:10.76|16   |
|2022-01-16 14:50:11.76|17   |
|2022-01-16 14:50:12.76|18   |
|2022-01-16 14:50:13.76|19   |
|2022-01-16 14:50:14.76|20   |
|2022-01-16 14:50:15.76|21   |
|2022-01-16 14:50:16.76|22   |
|2022-01-16 14:50:17.76|23   |
|2022-01-16 14:50:18.76|24   |
+----------------------+-----+
only showing top 20 rows


Traceback (most recent call last):
  File "/usr/hdp/current/spark2-client/python/pyspark/context.py", line 261, in signal_handler
    raise KeyboardInterrupt()
KeyboardInterrupt
>>> -------------------------------------------
Batch: 3
-------------------------------------------
+----------------------+-----+
|timestamp             |value|
+----------------------+-----+
|2022-01-16 14:50:29.76|35   |
|2022-01-16 14:50:30.76|36   |
|2022-01-16 14:50:31.76|37   |
|2022-01-16 14:50:32.76|38   |
|2022-01-16 14:50:33.76|39   |
|2022-01-16 14:50:34.76|40   |
|2022-01-16 14:50:35.76|41   |
|2022-01-16 14:50:36.76|42   |
|2022-01-16 14:50:37.76|43   |
|2022-01-16 14:50:38.76|44   |
|2022-01-16 14:50:39.76|45   |
|2022-01-16 14:50:40.76|46   |
|2022-01-16 14:50:41.76|47   |
|2022-01-16 14:50:42.76|48   |
|2022-01-16 14:50:43.76|49   |
|2022-01-16 14:50:44.76|50   |
|2022-01-16 14:50:45.76|51   |
|2022-01-16 14:50:46.76|52   |
|2022-01-16 14:50:47.76|53   |
|2022-01-16 14:50:48.76|54   |
+----------------------+-----+
only showing top 20 rows

-------------------------------------------
Batch: 4
-------------------------------------------
+----------------------+-----+
|timestamp             |value|
+----------------------+-----+
|2022-01-16 14:50:59.76|65   |
|2022-01-16 14:51:00.76|66   |
|2022-01-16 14:51:01.76|67   |
|2022-01-16 14:51:02.76|68   |
|2022-01-16 14:51:03.76|69   |
|2022-01-16 14:51:04.76|70   |
|2022-01-16 14:51:05.76|71   |
|2022-01-16 14:51:06.76|72   |
|2022-01-16 14:51:07.76|73   |
|2022-01-16 14:51:08.76|74   |
|2022-01-16 14:51:09.76|75   |
|2022-01-16 14:51:10.76|76   |
|2022-01-16 14:51:11.76|77   |
|2022-01-16 14:51:12.76|78   |
|2022-01-16 14:51:13.76|79   |
|2022-01-16 14:51:14.76|80   |
|2022-01-16 14:51:15.76|81   |
|2022-01-16 14:51:16.76|82   |
|2022-01-16 14:51:17.76|83   |
|2022-01-16 14:51:18.76|84   |
+----------------------+-----+
only showing top 20 rows


Traceback (most recent call last):
  File "/usr/hdp/current/spark2-client/python/pyspark/context.py", line 261, in signal_handler
    raise KeyboardInterrupt()
KeyboardInterrupt
>>> sream.stop()
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
NameError: name 'sream' is not defined
>>> stream.stop()
>>> stream = raw_rate \
...     .writeStream \
...     .trigger(processingTime='15 seconds') \
...     .format("console") \
...     .options(truncate=False) \
...     .start()
>>> -------------------------------------------
Batch: 0
-------------------------------------------
+---------+-----+
|timestamp|value|
+---------+-----+
+---------+-----+

-------------------------------------------
Batch: 1
-------------------------------------------
+-----------------------+-----+
|timestamp              |value|
+-----------------------+-----+
|2022-01-16 15:02:03.322|0    |
|2022-01-16 15:02:04.322|1    |
|2022-01-16 15:02:05.322|2    |
|2022-01-16 15:02:06.322|3    |
|2022-01-16 15:02:07.322|4    |
|2022-01-16 15:02:08.322|5    |
|2022-01-16 15:02:09.322|6    |
|2022-01-16 15:02:10.322|7    |
|2022-01-16 15:02:11.322|8    |
|2022-01-16 15:02:12.322|9    |
|2022-01-16 15:02:13.322|10   |
+-----------------------+-----+

-------------------------------------------
Batch: 2
-------------------------------------------
+-----------------------+-----+
|timestamp              |value|
+-----------------------+-----+
|2022-01-16 15:02:14.322|11   |
|2022-01-16 15:02:15.322|12   |
|2022-01-16 15:02:16.322|13   |
|2022-01-16 15:02:17.322|14   |
|2022-01-16 15:02:18.322|15   |
|2022-01-16 15:02:19.322|16   |
|2022-01-16 15:02:20.322|17   |
|2022-01-16 15:02:21.322|18   |
|2022-01-16 15:02:22.322|19   |
|2022-01-16 15:02:23.322|20   |
|2022-01-16 15:02:24.322|21   |
|2022-01-16 15:02:25.322|22   |
|2022-01-16 15:02:26.322|23   |
|2022-01-16 15:02:27.322|24   |
|2022-01-16 15:02:28.322|25   |
+-----------------------+-----+


Traceback (most recent call last):
  File "/usr/hdp/current/spark2-client/python/pyspark/context.py", line 261, in signal_handler
    raise KeyboardInterrupt()
KeyboardInterrupt
>>> stream.stop()
>>> stream.explain()
== Physical Plan ==
WriteToDataSourceV2 org.apache.spark.sql.execution.streaming.sources.MicroBatchWriter@200f08a3
+- Scan ExistingRDD[timestamp#129,value#130L]
>>> stream.lastProgress
{u'stateOperators': [], u'name': None, u'timestamp': u'2022-01-16T15:02:30.000Z', u'processedRowsPerSecond': 120.0, u'inputRowsPerSecond': 1.0000666711114075, u'numInputRows': 15, u'batchId': 2, u'sources': [{u'description': u'RateSource[rowsPerSecond=1, rampUpTimeSeconds=0, numPartitions=2]', u'endOffset': 26, u'processedRowsPerSecond': 120.0, u'inputRowsPerSecond': 1.0000666711114075, u'numInputRows': 15, u'startOffset': 11}], u'durationMs': {u'queryPlanning': 7, u'getOffset': 0, u'addBatch': 82, u'getBatch': 9, u'walCommit': 27, u'triggerExecution': 125}, u'runId': u'a1beefa0-76a1-4ebd-aab2-a2d0d9845a95', u'id': u'50eeef1b-d68c-4b02-96f4-10256afa871b', u'sink': {u'description': u'org.apache.spark.sql.execution.streaming.ConsoleSinkProvider@5f1b4b88'}}
>>> stream.status
{u'message': u'Stopped', u'isTriggerActive': False, u'isDataAvailable': False}
>>> def console_output(df, freq):
...     return df.writeStream \
...         .format("console") \
...         .trigger(processingTime='%s seconds' % freq ) \
...         .options(truncate=False) \
...         .start()
... filtered_rate = raw_rate \
  File "<stdin>", line 7
    filtered_rate = raw_rate \
                ^
SyntaxError: invalid syntax
>>>     .filter( F.col("value") % F.lit("2") == 0 )
Traceback (most recent call last):
  File "/usr/hdp/current/spark2-client/python/pyspark/context.py", line 261, in signal_handler
    raise KeyboardInterrupt()
KeyboardInterrupt
>>> def console_output(df, freq):
...     return df.writeStream \
...         .format("console") \
...         .trigger(processingTime='%s seconds' % freq ) \
...         .options(truncate=False) \
...         .start()
...
>>> filtered_rate = raw_rate \
...     .filter( F.col("value") % F.lit("2") == 0 )
>>>
>>> out = console_output(filtered_rate, 5)
>>> -------------------------------------------
Batch: 0
-------------------------------------------
+---------+-----+
|timestamp|value|
+---------+-----+
+---------+-----+

-------------------------------------------
Batch: 1
-------------------------------------------
+-----------------------+-----+
|timestamp              |value|
+-----------------------+-----+
|2022-01-16 15:16:02.355|0    |
+-----------------------+-----+

-------------------------------------------
Batch: 2
-------------------------------------------
+-----------------------+-----+
|timestamp              |value|
+-----------------------+-----+
|2022-01-16 15:16:04.355|2    |
|2022-01-16 15:16:06.355|4    |
|2022-01-16 15:16:08.355|6    |
+-----------------------+-----+


Traceback (most recent call last):
  File "/usr/hdp/current/spark2-client/python/pyspark/context.py", line 261, in signal_handler
    raise KeyboardInterrupt()
KeyboardInterrupt
>>> out.stop()
22/01/16 15:16:15 WARN DataStreamer: DataStreamer Exception
java.io.InterruptedIOException: Call interrupted
        at org.apache.hadoop.ipc.Client.getRpcResponse(Client.java:1492)
        at org.apache.hadoop.ipc.Client.call(Client.java:1444)
        at org.apache.hadoop.ipc.Client.call(Client.java:1354)
        at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:228)
        at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:116)
        at com.sun.proxy.$Proxy11.addBlock(Unknown Source)
        at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolTranslatorPB.addBlock(ClientNamenodeProtocolTranslatorPB.java:510)
        at sun.reflect.GeneratedMethodAccessor34.invoke(Unknown Source)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:498)
        at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:422)
        at org.apache.hadoop.io.retry.RetryInvocationHandler$Call.invokeMethod(RetryInvocationHandler.java:165)
        at org.apache.hadoop.io.retry.RetryInvocationHandler$Call.invoke(RetryInvocationHandler.java:157)
        at org.apache.hadoop.io.retry.RetryInvocationHandler$Call.invokeOnce(RetryInvocationHandler.java:95)
        at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:359)
        at com.sun.proxy.$Proxy12.addBlock(Unknown Source)
        at org.apache.hadoop.hdfs.DFSOutputStream.addBlock(DFSOutputStream.java:1078)
        at org.apache.hadoop.hdfs.DataStreamer.locateFollowingBlock(DataStreamer.java:1865)
        at org.apache.hadoop.hdfs.DataStreamer.nextBlockOutputStream(DataStreamer.java:1668)
        at org.apache.hadoop.hdfs.DataStreamer.run(DataStreamer.java:716)
>>> extra_rate = filtered_rate \
...     .withColumn("my_value",
...                 F.when((F.col("value") % F.lit(10) == 0), F.lit("jubilee"))
...                     .otherwise(F.lit("not yet")))
>>> out = console_output(extra_rate, 5)
>>> -------------------------------------------
Batch: 0
-------------------------------------------
+---------+-----+--------+
|timestamp|value|my_value|
+---------+-----+--------+
+---------+-----+--------+

-------------------------------------------
Batch: 1
-------------------------------------------
+-----------------------+-----+--------+
|timestamp              |value|my_value|
+-----------------------+-----+--------+
|2022-01-16 15:18:14.985|0    |jubilee |
|2022-01-16 15:18:16.985|2    |not yet |
|2022-01-16 15:18:18.985|4    |not yet |
+-----------------------+-----+--------+

-------------------------------------------
Batch: 2
-------------------------------------------
+-----------------------+-----+--------+
|timestamp              |value|my_value|
+-----------------------+-----+--------+
|2022-01-16 15:18:20.985|6    |not yet |
|2022-01-16 15:18:22.985|8    |not yet |
+-----------------------+-----+--------+

-------------------------------------------
Batch: 3
-------------------------------------------
+-----------------------+-----+--------+
|timestamp              |value|my_value|
+-----------------------+-----+--------+
|2022-01-16 15:18:24.985|10   |jubilee |
|2022-01-16 15:18:26.985|12   |not yet |
|2022-01-16 15:18:28.985|14   |not yet |
+-----------------------+-----+--------+


Traceback (most recent call last):
  File "/usr/hdp/current/spark2-client/python/pyspark/context.py", line 261, in signal_handler
    raise KeyboardInterrupt()
KeyboardInterrupt
>>> out.stop()
>>> def killAll():
...     for active_stream in spark.streams.active:
...         print("Stopping %s by killAll" % active_stream)
...         active_stream.stop()
...
>>> console_output(extra_rate, 5)
<pyspark.sql.streaming.StreamingQuery object at 0x7f8cdff757d0>
>>> -------------------------------------------
Batch: 0
-------------------------------------------
+---------+-----+--------+
|timestamp|value|my_value|
+---------+-----+--------+
+---------+-----+--------+

-------------------------------------------
Batch: 1
-------------------------------------------
+-----------------------+-----+--------+
|timestamp              |value|my_value|
+-----------------------+-----+--------+
|2022-01-16 15:44:46.398|0    |jubilee |
|2022-01-16 15:44:48.398|2    |not yet |
+-----------------------+-----+--------+

-------------------------------------------
Batch: 2
-------------------------------------------
+-----------------------+-----+--------+
|timestamp              |value|my_value|
+-----------------------+-----+--------+
|2022-01-16 15:44:50.398|4    |not yet |
|2022-01-16 15:44:52.398|6    |not yet |
+-----------------------+-----+--------+

-------------------------------------------
Batch: 3
-------------------------------------------
+-----------------------+-----+--------+
|timestamp              |value|my_value|
+-----------------------+-----+--------+
|2022-01-16 15:44:54.398|8    |not yet |
|2022-01-16 15:44:56.398|10   |jubilee |
|2022-01-16 15:44:58.398|12   |not yet |
+-----------------------+-----+--------+

killAll()
Stopping <pyspark.sql.streaming.StreamingQuery object at 0x7f8cdff75710> by killAll
>>> exit()
[student559_13@bigdataanalytics-worker-3 ~]$
