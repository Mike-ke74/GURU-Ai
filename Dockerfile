FROM node:16-alpine

RUN addgroup -g 10014 appgroup && adduser -u 10014 -G appgroup -S appuser

USER 10014

CMD ["whoami"]
