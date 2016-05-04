#!/bin/bash

set -e

CURRENT_TIME=`date +%Y_%m_%d_%H_%M_%S`

echo "#### 开始时间: "$CURRENT_TIME

PROJECT_NAME="pillbox"
PROJECT_CONFIG_DIR="src/main/resources/conf"
SELF_CONFIG_DIR="src/main/resources/conf_dev"
IS_ROOT_PROJECT=1

USER_HOME=/home/ubuntu
TOMCAT_NAME=apache-tomcat-pillbox
TOMCAT_HOME=$USER_HOME/product/$TOMCAT_NAME
PROJECT_DIR=$USER_HOME/workspace
PUBLISH_DIR=$USER_HOME/publish
PRODUCE_DIR=/opt/box/work/resource
COMPILED_WAR=$PROJECT_NAME.war
COMPILED_PATH=$PUBLISH_DIR/$PROJECT_NAME/target/$COMPILED_WAR

echo "项目路径: "$PROJECT_DIR
echo "发布路径: "$PUBLISH_DIR
echo "生产路径: "$PRODUCE_DIR

echo "#### 更新代码"
cd $PROJECT_DIR/$PROJECT_NAME
git pull origin master

echo "#### 开始拷贝项目到发布路径中"
cd $PUBLISH_DIR
echo "在发布路径["$PUBLISH_DIR"]中删除项目["$PROJECT_NAME"]旧版源代码"
rm -rf $PROJECT_NAME
cp -r $PROJECT_DIR/$PROJECT_NAME $PUBLISH_DIR

# 拷贝配置文件
cp $PUBLISH_DIR/$PROJECT_NAME/$SELF_CONFIG_DIR/* $PUBLISH_DIR/$PROJECT_NAME/$PROJECT_CONFIG_DIR/


echo "#### 开始编译项目"
cd $PROJECT_NAME
mvn -U clean package

if [ ! -f $COMPILED_PATH ];then
    echo "编译出错！！！"$COMPILED_PATH
    exit 1
fi

cd $PUBLISH_DIR
#rm -rf $PROJECT_NAME

echo "#### 关闭tomcat"
pro_num=`jps -v | grep tomcat | awk '{print $1}' | wc -l`
echo '正在运行的('tomcat')程序数量'$pro_num
if [ $pro_num != 0 ];then
    echo "开始杀"$TOMCAT_NAME
    jps -v | grep $TOMCAT_NAME
    #lsof -i :$APP_PORT
    #lsof -i :$APP_PORT | awk 'NR > 1 {print $2}' | xargs kill
    jps -v | grep $TOMCAT_NAME | awk '{print $1}' | xargs kill
fi

echo "#### 删除已部署的项目"
cd $PRODUCE_DIR
rm -f $COMPILED_WAR
cd ..
if [ $IS_ROOT_PROJECT = 1 ];then
    rm -rf ROOT
else
    rm -rf $PROJECT_NAME
fi

echo "#### 拷贝项目到生产目录"
cp $COMPILED_PATH $PRODUCE_DIR

echo "#### 启动tomcat"
sh $TOMCAT_HOME/bin/startup.sh

CURRENT_TIME=`date +%Y_%m_%d_%H_%M_%S`
echo "结束时间: "$CURRENT_TIME