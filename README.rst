==================
GroveC-SV-Solution
==================


.. image:: https://img.shields.io/pypi/v/grovec_sv_solution.svg
        :target: https://pypi.python.org/pypi/grovec_sv_solution

.. image:: https://img.shields.io/travis/sugix/grovec_sv_solution.svg
        :target: https://travis-ci.com/sugix/grovec_sv_solution

.. image:: https://readthedocs.org/projects/grovec-sv-solution/badge/?version=latest
        :target: https://grovec-sv-solution.readthedocs.io/en/latest/?badge=latest
        :alt: Documentation Status


.. image:: https://pyup.io/repos/github/sugix/grovec_sv_solution/shield.svg
     :target: https://pyup.io/repos/github/sugix/grovec_sv_solution/
     :alt: Updates



Solution for GroveCo TakeHome Test By SugiV


* Free software: Apache-2.0
* Documentation: https://grovec-sv-solution.readthedocs.io.


Features
--------

* Airflow pipeline to daily ingest of neo data.
* Airflow pipeline will be turned on automatically when you start Airflow
* Afaik, neo webservice allows you to go back only 7 days, the pipeline above will automatically backfill data respeting the earliest date available.
* Ingestion pipeline creates raw data partitioned by created_at (meta-data added) in parquet format.
* I am showing you two ways of querying the above said data and asking the question in the take home exercise README section.
* DuckDB based solution and also Dask Dataframe based solution.


* The data model for the raw neo data will be denormalized (flat) where you can see facts like
miss_distance, diameter and also dimensions like id, name, close_approach_date and also meta-data created_at which is based on DAG run.

