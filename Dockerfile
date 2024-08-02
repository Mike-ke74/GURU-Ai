FROM quay.io/gurusensei/gurubhay:latest

RUN addgroup -g 10001 appgroup && adduser -u 10001 -G appgroup -S appuser

RUN git clone https://github.com/Guru322/GURU-Ai /home/appuser/guru \
    && chown -R appuser:appgroup /home/appuser/guru

WORKDIR /home/appuser/guru/

RUN npm install --platform=linuxmusl

EXPOSE 5000

USER 10001

CMD ["npm", "start"]

