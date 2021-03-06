# Run the pipeline on a computational cluster

snakemake \
--configfile config.yaml \
--cluster-config cluster_config.json \
--use-conda \
--cores 50 \
--local-cores 10 \
-p \
--cluster \
"sbatch \
--cpus-per-task={cluster.threads} \
--mem={cluster.mem} \
--qos={cluster.queue} \
--time={cluster.time} \
--output={params.LOG_cluster_log}-%j-%N.log \
-p shi"
