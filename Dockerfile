FROM tomcat:7.0.96

# Copy our custom context.xml to Tomcat conf
COPY lib/context.xml /usr/local/tomcat/conf/

# Copy our custom jars to Tomcat lib
COPY lib/mysql-connector-java-5.1.48.jar /usr/local/tomcat/lib/
COPY lib/vipuserservices-1.0.jar /usr/local/tomcat/lib/

# Update Tomcat logging to omit sensitive information
RUN echo "org.apache.catalina.startup.VersionLoggerListener.level = WARNING" >> /usr/local/tomcat/conf/logging.properties
