{
  "id": "/service/tomcat",
  "cmd": "mv *.war apache-tomcat-*/webapps && cd apache-tomcat-* && sed \"s/8080/$PORT/g\" < ./conf/server.xml > ./conf/server-mesos.xml && ./bin/catalina.sh run -config ./conf/server-mesos.xml",
  "cpus": 1,
  "mem": 512,
  "disk": 0,
  "instances": 1,
  "acceptedResourceRoles": [],
  "portDefinitions": [
    {
      "port": 10001,
      "protocol": "tcp",
      "name": "default",
      "labels": {}
    }
  ],
  "uris": [
    "http://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.0.M19/bin/apache-tomcat-9.0.0.M19.tar.gz",
    "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/gwt-examples/Calendar.war"
  ],
  "fetch": [
    {
      "uri": "http://www-us.apache.org/dist/tomcat/tomcat-9/v9.0.0.M19/bin/apache-tomcat-9.0.0.M19.tar.gz",
      "extract": true,
      "executable": false,
      "cache": false
    },
    {
      "uri": "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/gwt-examples/Calendar.war",
      "extract": false,
      "executable": false,
      "cache": false
    }
  ]
}
