# IBIS_creator-docker_compose
現在作成中です．


# Start
```bash
git clone https://github.com/srmtlab/IBIS_creator-docker_compose.git IBIS_creator
cd IBIS_creator
cp  local_settings_template.json  local_settings.json
```

Open `local_settings.json` and modify below variable
- ALLOWED_HOSTS : the host/domain names that IBIS CREATOR can serve
```json
"ALLOWED_HOSTS": ["ibiscreator.com"],
```

If you publish data in IBIS CREATOR as Linked Open Data, you should set below variable
	- LOD : true
	- LOD_RESOURCE : IBIS CREATOR concept namespace to append app's element ID (Theme, node, ...)
    - LOD_GRAPH_URI : URI to identify RDF graph
    - VIRTUOSO_USER : user which has the permission to edit Virtuoso RDF store
    - VIRTUOSO_PASSWORD : password for VIRTUOSO_USER
    - VIRTUOSO_UPDATE_ENDPOINT : endpoint to renew RDF store

```bash
docker-compose up
```


