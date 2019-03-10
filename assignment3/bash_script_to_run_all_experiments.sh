#! /bin/bash
for experiment in rf pca ica rp; do 
	for dataset in TransformedAdultIncomeData TransformedBankingData; do
		python run_experiment.py --$experiment --$dataset  --threads -2 2>&1 | tee  rp-$dataset-clustering.log
	done
done
