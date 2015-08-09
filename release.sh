rm -rf build/release
mkdir -p build/release
cd build/release
git clone git@github.com:grails-plugins/grails-spring-security-appinfo.git
cd grails-spring-security-appinfo
grails clean
grails compile

./gradlew bintrayUpload --stacktrace
