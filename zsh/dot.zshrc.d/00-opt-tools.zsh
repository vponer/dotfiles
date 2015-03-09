GREP=/bin/grep
[ -x /usr/bin/grep ] && GREP=/usr/bin/grep

# Home opt path
if [ -d ${HOME}/opt ]; then
    if ! echo ${PATH} | ${GREP} -q ${HOME}/opt/sbin ; then
        PATH=${HOME}/opt/sbin:${PATH}
        export PATH
    fi
    if ! echo ${PATH} | ${GREP} -q ${HOME}/opt/bin ; then
        PATH=${HOME}/opt/bin:${PATH}
        export PATH
    fi
    if ! echo ${MANPATH} | ${GREP} -q ${HOME}/opt/share/man ; then
        MANPATH=${HOME}/opt/share/man:${MANPATH}
        export PATH
    fi
fi

if [ -d ${HOME}/tools/sbt ]; then
    export SBT_HOME=${HOME}/tools/sbt
    export SBT_OPTS="-XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
    if ! echo ${PATH} | ${GREP} -q ${HOME}/tools/sbt/bin ; then
        PATH=${HOME}/tools/sbt/bin:${PATH}
        export PATH
    fi
fi

if [ -d ${HOME}/tools/scala ]; then
    export SCALA_HOME=${HOME}/tools/scala
    if ! echo ${PATH} | ${GREP} -q ${HOME}/tools/scala/bin ; then
        PATH=${HOME}/tools/scala/bin:${PATH}
        export PATH
    fi
fi

