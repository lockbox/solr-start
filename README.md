# solr start

Template repo to manage local solr instance for indexing documents and websites.

By default the solr instance is running in [schemaless](https://solr.apache.org/guide/solr/latest/indexing-guide/schemaless-mode.html) mode.

## Quickstart

```bash
$ docker compose up -d
# runs solr admin ui on port 8983
```

## Details

The default behavior runs a solr instance in docker compose, and automatically indexes everything
in `./local_data/`. If you want to index websites, then add a shell script under `./initdb.d/` that
does so see [solr in Docker](https://solr.apache.org/guide/solr/latest/deployment-guide/solr-in-docker.html#loading-your-own-data) for more.

Note that the `solr` command used in the current `initialize_data.sh` script corresponds to
[this](https://github.com/apache/solr/blob/main/solr/bin/solr) shell script in the container.
