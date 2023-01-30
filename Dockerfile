FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get -y install software-properties-common
RUN add-apt-repository -y ppa:git-core/ppa
RUN apt-get install python3.9 python3.9-dev python3.9-venv python3-pip git openjdk-11-jre-headless build-essential nano -y
RUN python3.9 -m venv ~/redenv
RUN git clone  https://github.com/magwyen/kur.git
RUN mv /kur /root/
RUN chmod -R 775 ~/kur
RUN ./root/kur/install.sh
