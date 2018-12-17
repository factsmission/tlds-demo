FROM linkedsolutions/tlds
COPY . /usr/src/app/tlds-demo
WORKDIR /usr/src/app/tlds-demo
ENTRYPOINT  ["java", "-jar", "/usr/src/app/tlds/target/tlds-executable.jar"]
CMD ["swissgeo-config.ttl"]