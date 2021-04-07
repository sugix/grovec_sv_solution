=====
Usage
=====

1) Finish the pre-reqs steps
2) Open different terminals and also terminals should have poetry virtual environment enabled.

.. code-block:: console

    $ source $(poetry env info --path)/bin/activate

3) In terminal_1, run following

.. code-block:: console

    $ make run_airflow_webserver

4) In terminal_2, run following

.. code-block:: console

    $ make run_airflow_scheduler

5) The dag will automatically turn on and backfill from the earliest date available from neo service.

6) You can also go to localhost:9090 (admin, admin), click the DAG name, neo_ingest and make sure it backfilled for past 7 days.

> If you leave the two terminals where you have airflow webserver and scheduler, the above said DAG will keep ingesting data everyday.


7) The date will be created in /tmp/data/neo_parquet and parquet will be partitioned by created_at. You should see different folders.
8) Now, you can query the data to know if and when any hazardous objects will be approaching earth, how close they will get, and save the information to a database

.. code-block:: console

    $ poetry run python grovec_sv_solution/grovec_sv_solution.py

9) The above query the raw parquet partitioned data via DuckDB and also Dask. The duckDB results will be printed to console
and dask will write the answer to parquet file called neo_hazardous_result.parquet under /tmp/data

10) You can view the contents of the parquet manually via

.. code-block:: console

    $ parquet-tools show neo_hazardous_result.parquet
    $ sugiv:created_at=2021-04-01/ $ parquet-tools show part.0.parquet

11) I have also checked in the raw parquet files and also final parquet file. I am not yet inserting the
final results to duckdb.
