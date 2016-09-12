#!/bin/sh

JWS_HOME=$(cd $(dirname $0);pwd)

export LANG="zh_CN.UTF-8"
export LD_LIBRARY_PATH=${JWS_HOME}/runtime/lib:$LD_LIBRARY_PATH

# export MONO_IOMAP="all"
# export MONO_MANAGED_WATCHER="disable"
# export MONO_EXTERNAL_ENCODINGS="gbk:gb18030:gb2312"
# export MONO_STRICT_MS_COMPLIANT="yes"
# export MONO_GC_PARAMS="max-heap-size=4g"
# export MONO_DISABLE_AIO=1
export MONO_ASPNET_WEBCONFIG_CACHESIZE=8192
export MONO_THREADS_PER_CPU=2000

ulimit -SHn 20000 >/dev/null 2>&1

/usr/jexus/jwss