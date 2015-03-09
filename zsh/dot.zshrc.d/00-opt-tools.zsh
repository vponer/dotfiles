# Home opt path
if [ -d ${HOME}/opt ]; then
    if ! echo ${PATH} | /usr/bin/grep -q ${HOME}/opt/sbin ; then
        PATH=${HOME}/opt/sbin:${PATH}
        export PATH
    fi
    if ! echo ${PATH} | /usr/bin/grep -q ${HOME}/opt/bin ; then
        PATH=${HOME}/opt/bin:${PATH}
        export PATH
    fi
    if ! echo ${MANPATH} | /usr/bin/grep -q ${HOME}/opt/share/man ; then
        MANPATH=${HOME}/opt/share/man:${MANPATH}
        export PATH
    fi
fi

if [ -d ${HOME}/tools/sbt ]; then
    export SBT_HOME=${HOME}/tools/sbt
    export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
    if ! echo ${PATH} | /usr/bin/grep -q ${HOME}/tools/sbt/bin ; then
        PATH=${HOME}/tools/sbt/bin:${PATH}
        export PATH
    fi
fi

if [ -d ${HOME}/tools/scala ]; then
    export SCALA_HOME=${HOME}/tools/scala
    if ! echo ${PATH} | /usr/bin/grep -q ${HOME}/tools/scala/bin ; then
        PATH=${HOME}/tools/scala/bin:${PATH}
        export PATH
    fi
fi

if [ -d ${HOME}/tools/gradle ]; then
    export GRADLE_HOME=${HOME}/tools/gradle
    if ! echo ${PATH} | /usr/bin/grep -q ${HOME}/tools/gradle/bin ; then
        PATH=${HOME}/tools/gradle/bin:${PATH}
        export PATH
    fi
fi

if [ -d ${HOME}/tools/sonarqube ]; then
    export SONAR_HOME=${HOME}/tools/sonarqube
    if ! echo ${PATH} | /usr/bin/grep -q ${HOME}/tools/sonarqube/bin ; then
        PATH=${HOME}/tools/sonarqube/bin:${PATH}
        export PATH
    fi
fi

