# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.
FROM tomee:8-jre-1.7.2-webprofile
ENV CATALINA_HOME /usr/local/tomee
ENV PATH $CATALINA_HOME/bin:$PATH

#ADD ./target/*.war $CATALINA_HOME/webapps/
ADD /dist/JSF_docker_swarm_poc.war $CATALINA_HOME/webapps/JSF_docker_swarm_poc.war

#EXPOSE 8094
CMD ["catalina.sh", "run"]

#EXPOSE 8080
#CMD ["/bin/sh"]
#ADD /dist/WebApplication1.war WebApplication1.war
#ENTRYPOINT ["java","-jar","WebApplication1.war"]
