FROM projectriff/node-function-invoker:latest
ENV FUNCTION_URI /functions/
COPY . ${FUNCTION_URI}
RUN (cd ${FUNCTION_URI} && npm install --production  --unsafe-perm)
