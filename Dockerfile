FROM ipfs/go-ipfs

# This just makes sure that: 
# 1. There's an fs-repo, and initializes one if there isn't. 
# 2. The API and Gateway are accessible from outside the container. 

COPY start_ipfs.sh /usr/local/bin/start_ipfs
RUN chmod +x /usr/local/bin/start_ipfs

ENTRYPOINT ["/usr/local/bin/start_ipfs"]