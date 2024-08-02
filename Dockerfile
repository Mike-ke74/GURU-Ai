FROM quay.io/gurusensei/gurubhay:latest

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

RUN git clone https://github.com/Guru322/GURU-Ai /home/appuser/guru \
    && chown -R appuser:appgroup /home/appuser/guru

WORKDIR /home/appuser/guru/

RUN npm install --platform=linuxmusl

EXPOSE 5000

USER appuser

CMD ["npm", "start"]
