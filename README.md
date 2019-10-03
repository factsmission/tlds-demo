# tlds-demo

The purpose of this project is to demostrate the use of [TLDS](https://github.com/linked-solutions/tlds).

For this demonstration we're using the SPARQL endpoint at https://ld.geo.admin.ch/query/. The demo is online at https://tlds-demo.factsmission.org/.

## Usage

You can launch tlds-demo either with Java or with Docker.

### Usage with docker

Using our pre-built images:

    docker run -p 5000:5000 --name tlds-demo factsmission/tlds-demo swissgeo-config-localhost.ttl

Access for example: http://localhost:5000/boundaries/municipality/261:2016

To build it yourself, for example after making changes to the renderers, execute: 

    docker build . -t tlds-demo

This builds an image called `tlds-demo` so you'll want to run this image:

    docker run -p 5000:5000 --name tlds-demo tlds-demo swissgeo-config-localhost.ttl

### Usage with Java

You need an executable jar of TLDS, to get one build TLDS with

>In the directory containing tlds run
> ```
> mvn install -P executable
> ```
>
> Note that because this depends on an slds SNAPSHOT version you need to compile that first:
>
>> In the directory containing slds run
>> ```
>> mvn install -P executable
>> ```

Now you have an executable file name like tlds-1.0.0-SNAPSHOT.jar in the target folder. Execute that file from this directory with

```
java -jar <path-to-tlds>/target/tlds-1.0.0-SNAPSHOT.jar swissgeo-config-localhost.ttl
```

Acces for example: http://localhost:5000/boundaries/municipality/261:2016

