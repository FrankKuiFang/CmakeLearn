#/bin/bash !


baseDirForScriptSelf=$(cd "$(dirname "$0")"; pwd) #bash中获取被执行的脚本的绝对路径，但是，不适用于source xx;

#3种方法将install/lib中的动态库路径加进来让linker找到：
#方法一：
# echo $0
# InstallDir=${baseDirForScriptSelf}/install
# export LD_LIBRARY_PATH=${InstallDir}/lib/:$LD_LIBRARY_PATH
# echo ${LD_LIBRARY_PATH}
#方法二：
source ${baseDirForScriptSelf}/environment.sh
方法三：
# 在一个terminal中执行source xx/cmake-learn/environment.sh;
# 然后, 在同一个terminal中执行 xx/cmake-learn/install/bin/cmakeLearnApp,之所以在同一个terminal中,是因为这里source设置的环境变量只是
# 针对当前的terminal,新开一个terminal的话,就没了.


${baseDirForScriptSelf}/install/bin/cmakeLearnApp