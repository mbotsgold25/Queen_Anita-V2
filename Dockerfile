FROM quay.io/sampandey001/secktor

RUN git clone https://github.com/mbotsgold25/Queen_Anita-V2 /root/mbotsgold25

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/mbotsgold25/node_modules

# Install dependencies
WORKDIR /root/mbotsgold25
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]
