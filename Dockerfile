FROM quay.io/gurusensei/gurubhay:latest

RUN addgroup -g 10020 appgroup && adduser -u 10020 -G appgroup -S appuser

RUN git clone https://github.com/Guru322/GURU-Ai /home/appuser/guru \
    && chown -R appuser:appgroup /home/appuser/guru

WORKDIR /home/appuser/guru/

RUN npm install --platform=linuxmusl

EXPOSE 5000

USER 10020

CMD ["npm", "start"]

