if [ -d "${HOME}/tools/adobe/flex_sdk_3.6a" ]; then
    [ -z "$FLEXSDK" ] && export FLEXSDK="${HOME}/tools/adobe/flex_sdk_3.6a"
fi

if [ -d "${HOME}/tools/adobe/flex_sdk_4.6" ]; then
    [ -z "$FLEX4SDK" ] && export FLEX4SDK="${HOME}/tools/adobe/flex_sdk_4.6"
    [ -z "$FLEXSDK4" ] && export FLEXSDK4="${HOME}/tools/adobe/flex_sdk_4.6"
fi

if [ -d "${HOME}/tools/adobe/air_sdk_4.0.0.1628" ]; then
    [ -z "$AIRSDK" ] && export AIRSDK="${HOME}/tools/adobe/air_sdk_4.0.0.1628"
    [ -z "$AIRSDK" ] && export AIRSDK="${HOME}/tools/adobe/air_sdk_4.0.0.1628"
fi

