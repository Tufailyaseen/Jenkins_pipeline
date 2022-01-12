FROM centos



LABEL Remarks="This is a Dockerfile for CentOS System"

#Update Software Repository
RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install nginx

#COPY  /var/www/project-website-template-master/index.html /usr/share/nginx/html/index.html
#COPY . /usr/share/nginx/html
#COPY  /home/zigron/Dockerfilels/newindex/indexhtml  usr/share/nginx/html/index.html
#COPY /usr/share/nginx/html
COPY .  /usr/share/nginx/html 


ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
