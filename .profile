# Prompt
export PS1="[\A] \w (\!) \$ "

# Aliases
alias ls="ls -altF"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

alias switch_local_cdh5='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8);
    export HADOOP_PREFIX=~/hadoop-2.6.0-cdh5.9.0;
    export HADOOP_COMMON_HOME=${HADOOP_PREFIX};
    export HADOOP_HDFS_HOME=${HADOOP_PREFIX};
    export HADOOP_MAPRED_HOME=${HADOOP_PREFIX};
    export HADOOP_YARN_HOME=${HADOOP_PREFIX};
    export SPARK_HOME=~/spark-1.6.0-cdh5.9.0;
    export PATH=${HADOOP_PREFIX}/bin:${SPARK_HOME}/bin:$PATH;
    export HADOOP_CONF_DIR=~/hadoop-2.6.0-cdh5.9.0/etc/hadoop;'

alias switch_pseudo_cdh5='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8);
    export HADOOP_PREFIX=~/hadoop-2.6.0-cdh5.9.0;
    export HADOOP_COMMON_HOME=${HADOOP_PREFIX};
    export HADOOP_HDFS_HOME=${HADOOP_PREFIX};
    export HADOOP_MAPRED_HOME=${HADOOP_PREFIX};
    export HADOOP_YARN_HOME=${HADOOP_PREFIX};
    export SPARK_HOME=~/spark-1.6.0-cdh5.9.0;
    export PATH=${HADOOP_PREFIX}/sbin:${HADOOP_PREFIX}/bin:${SPARK_HOME}/bin:$PATH;
    export HADOOP_CONF_DIR=~/conf.pseudo;'

export SPARK_DIST_CLASSPATH=/Users/kevin.delia/extra.libs/jackson-databind-2.8.5.jar:/Users/kevin.delia/extra.libs/jackson-core-2.8.5.jar:/Users/kevin.delia/extra.libs/parquet-hadoop-1.2.4.jar:/Users/kevin.delia/extra.libs/jackson-annotations-2.8.5.jar:/Users/kevin.delia/hadoop-2.6.0-cdh5.9.0/etc/hadoop:/Users/kevin.delia/hadoop-2.6.0-cdh5.9.0/share/hadoop/common/lib/*:/Users/kevin.delia/hadoop-2.6.0-cdh5.9.0/share/hadoop/common/*:/Users/kevin.delia/hadoop-2.6.0-cdh5.9.0/share/hadoop/hdfs:/Users/kevin.delia/hadoop-2.6.0-cdh5.9.0/share/hadoop/hdfs/lib/*:/Users/kevin.delia/hadoop-2.6.0-cdh5.9.0/share/hadoop/hdfs/*:/Users/kevin.delia/hadoop-2.6.0-cdh5.9.0/share/hadoop/yarn/lib/*:/Users/kevin.delia/hadoop-2.6.0-cdh5.9.0/share/hadoop/yarn/*:/Users/kevin.delia/hadoop-2.6.0-cdh5.9.0/share/hadoop/mapreduce/lib/*:/Users/kevin.delia/hadoop-2.6.0-cdh5.9.0/share/hadoop/mapreduce/*:/contrib/capacity-scheduler/*.jar
