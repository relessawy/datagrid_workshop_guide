#!/bin/bash
  echo provisioning workshop guide in project rhdg-workshop-guide

  oc new-project rhdg-workshop-guide

  oc new-app --name=rhdg-guide --docker-image=quay.io/osevg/workshopper:latest -e WORKSHOPS_URLS=https://raw.githubusercontent.com/relessawy/datagrid_workshop_guide/master/_datagrid_workshop-module1.yml -e CONTENT_URL_PREFIX=https://raw.githubusercontent.com/relessawy/datagrid_workshop_guide/master/

  sleep 30

  oc expose svc/rhdg-guide
  
