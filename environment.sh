
#baseDirForScriptSelf=$(cd "$(dirname "$0")"; pwd)  
echo $0
echo ${BASH_SOURCE[0]}
baseDirForScriptSelf="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd && cd-  &> /dev/null)" #获取脚本绝对路径
InstallDir=${baseDirForScriptSelf}/install

echo ${InstallDir}

export LD_LIBRARY_PATH=${InstallDir}/lib/:$LD_LIBRARY_PATH

echo ${LD_LIBRARY_PATH}