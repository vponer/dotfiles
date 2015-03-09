if [ -x /usr/libexec/java_home ]; then
    JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
    export JAVA_HOME
fi
