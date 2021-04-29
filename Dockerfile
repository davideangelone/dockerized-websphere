FROM ibmcom/websphere-traditional:latest
ENTRYPOINT /work/set_password.sh && \
echo '>>>>>>> Console user: wsadmin - Console password: '$(cat /tmp/PASSWORD) '<<<<<<<' && \
/opt/IBM/WebSphere/AppServer/bin/wsadmin.sh -conntype NONE -c securityoff && \
/work/start_server.sh
