host="fabmedical-552746.mongo.cosmos.azure.com"
username="fabmedical-552746"
password="lPo38Nbfr48YtZ1BqaCvDomfyXMTnOe3EVIAqa3H4xgdsisUr9dhgQ5glSI4EIr0Wj2Lus74ks9edlQjQaiLyw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
