FROM quay.io/gurusensei/gurubhay:latest

RUN addgroup -g 10014 appgroup && adduser -u 10014 -G appgroup -S appuser

RUN git clone https://github.com/Guru322/GURU-Ai /home/appuser/guru \
    && chown -R appuser:appgroup /home/appuser/guru

WORKDIR /home/appuser/guru/

RUN npm install --platform=linuxmusl

EXPOSE 5000

USER 10014

CMD ["npm", "start"]

