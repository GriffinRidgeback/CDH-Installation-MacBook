All files are in conf.pseudo

alias is in .profile

once files are configured correctly:

$ hadoop namenode -format
$ start-dfs.sh
$ hadoop fs -ls /
## THIS SHOULD SHOW NOTHING, WHICH IS CORRECT!  THERE IS NOTHING UNDER ROOT OF HDFS AT THIS TIME!

$ hadoop fs -mkdir /bogus
$ hadoop fs -ls /


Had to enable remote login from the System preferences for this to work


[09:58] ~ (257) $ start-dfs.sh
17/01/05 10:01:39 WARN util.NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
Starting namenodes on [localhost]
The authenticity of host 'localhost (::1)' can't be established.
ECDSA key fingerprint is SHA256:jKscCzQbwDf1pEnK3xmfFe6/J2X+FVzcYgZWx2wEIl4.
Are you sure you want to continue connecting (yes/no)? yes
localhost: Warning: Permanently added 'localhost' (ECDSA) to the list of known hosts.
Password:
localhost: starting namenode, logging to /Users/kevin.delia/hadoop-2.6.0-cdh5.9.0/logs/hadoop-kevin.delia-namenode-kevindelia-MBP.local.out
Password:
localhost: starting datanode, logging to /Users/kevin.delia/hadoop-2.6.0-cdh5.9.0/logs/hadoop-kevin.delia-datanode-kevindelia-MBP.local.out
Starting secondary namenodes [0.0.0.0]
The authenticity of host '0.0.0.0 (0.0.0.0)' can't be established.
ECDSA key fingerprint is SHA256:jKscCzQbwDf1pEnK3xmfFe6/J2X+FVzcYgZWx2wEIl4.
Are you sure you want to continue connecting (yes/no)? yes
0.0.0.0: Warning: Permanently added '0.0.0.0' (ECDSA) to the list of known hosts.
Password:
0.0.0.0: starting secondarynamenode, logging to /Users/kevin.delia/hadoop-2.6.0-cdh5.9.0/logs/hadoop-kevin.delia-secondarynamenode-kevindelia-MBP.local.out
17/01/05 10:02:28 WARN util.NativeCodeLoader: Unable to load native-hadoop library for your platform... using builtin-java classes where applicable
[10:02] ~ (258) $ 


Then start-yarn.sh

To run SPARK, you need to set this from the command line (for now)

SPARK_DIST_CLASSPATH (in .profile in case you forget)

I had to make the following changes:

In HADOOP_HOME/libexec/hadoop-config.sh look for the if condition below # Attempt to set JAVA_HOME if it is not set

Remove extra parentheses in the export JAVA_HOME lines as below. Change this

   if [ -x /usr/libexec/java_home ]; then
       export JAVA_HOME=($(/usr/libexec/java_home))
   else
       export JAVA_HOME=(/Library/Java/Home)
   fi
to

   if [ -x /usr/libexec/java_home ]; then
       export JAVA_HOME=$(/usr/libexec/java_home)
   else
       export JAVA_HOME=/Library/Java/Home
   fi

Then re-start yarn
