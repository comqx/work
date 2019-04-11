#!/bin/sh

#GRAFANA_URL='https://grafana.com'
#DING_API='https://dingding.com'
#CG_ENV='bj-v4-n1'
#PROMETHEUS_URL='https://prometheus.com'

sed -i "s#{GRAFANA_URL}#$GRAFANA_URL#g" ./webhook-dingding.py
sed -i "s#{DING_API}#$DING_API#g" ./webhook-dingding.py
sed -i "s#{CG_ENV}#$CG_ENV#g" ./webhook-dingding.py
sed -i "s#{PROMETHEUS_URL}#$PROMETHEUS_URL#g" ./webhook-dingding.py
python3 webhook-dingding.py
