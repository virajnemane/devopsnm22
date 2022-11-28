#!/bin/sh

. ./build.env

usage()
{
  echo
  echo "Usage: $0 -B <git branch> -V <Version Lable> -M <mode(BUILD|DEPLOY|BUILDNDEPLOY)> -E <environment>";
  echo
  echo "Your input: $0 ${@}"
  echo
  exit 1;
}

if [ $# -lt 4 ] ; then
  usage;
fi

echo 

while getopts B:V:M:E: opt
do
  case "$opt" in
    B)
      export BRANCH_NAME=${OPTARG}
      echo "BRANCH NAME = $BRANCH_NAME"
      ;;
    V)
      export VERSION_NO=$OPTARG
      echo "VERSION NO = $VERSION_NO"
      ;;
    M)
      export MODE=$OPTARG
      echo "MODE= $MODE"
      ;;
    E)
      export BUILD_ENV=$OPTARG
      echo "BUILD_ENV = $BUILD_ENV"
      ;;
    \?)
      usage
      ;;
  esac
done

if [ ! $MODE ]
then
  echo "Build Mode is not given !! "
  usage
fi

if [ ! $BUILD_ENV ]
then
  echo
  echo "Environment is not given !!"
  echo
  usage
elif [ "$BUILD_ENV" != "DEV" ] && [ "$BUILD_ENV" != "QA" ] && [ "$BUILD_ENV" != "DR" ] && [ "$BUILD_ENV" != "PROD" ]
then
  echo
  echo "Invalid environment."
  echo
  usage
fi

echo
echo

cd ${BUILD_HOME}
if [ ! -d "logs" ]
then
  mkdir ${BUILD_HOME}/logs
fi
rm -rf ${BUILD_HOME}/${GIT_REPO_NAME}
if [ "${BRANCH_NAME}" != "" ] ; then
  git clone ${GIT_URL} -b $BRANCH_NAME
  isClone=`echo $?`
  if [ $isClone != 0 ]
  then
    echo "Clone failed !! Might be BRANCH name is not correct !!"
    exit 1
  fi
else
  git clone ${GIT_URL}
fi


cd ${BUILD_HOME}/${GIT_REPO_NAME}
if [ $MODE == "BUILD" ] || [ $MODE == "BUILDNDEPLOY" ]
then
  echo env=$BUILD_ENV > src/main/webapp/WEB-INF/builddetail.txt
  echo version=$VERSION_NO >> src/main/webapp/WEB-INF/builddetail.txt
  mvn clean install > ${BUILD_HOME}/logs/maven.log
  grep " BUILD SUCCESS" ${BUILD_HOME}/logs/maven.log > ${BUILD_HOME}/logs/build.log
  isBuildSuccess=`echo $?`
  if [ $isBuildSuccess != 0 ]
  then
    echo "Compilation failed !!"
    exit 1
  else
    echo
    echo "Compilation completed."
  fi
fi
if [ $MODE == "DEPLOY" ] || [ $MODE == "BUILDNDEPLOY" ]
then
  cp target/basicform.war $TOMCAT_WEBAPP
  echo
  echo "Deployment completed."
  echo
fi