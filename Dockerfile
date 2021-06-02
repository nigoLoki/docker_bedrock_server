FROM ubuntu
RUN apt-get update && apt-get upgrade -y
RUN apt-get install wget -y
RUN wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.16.221.01.zip
RUN apt-get install unzip -y
RUN unzip bedrock-server-1.16.221.01.zip
RUN chmod +x bedrock_server
RUN touch start_server.sh && chmod +x start_server.sh && echo "LD_LIBRARY_PATH=. ./bedrock_server" >> start_server.sh 
