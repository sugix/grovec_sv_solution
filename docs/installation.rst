.. highlight:: shell

============
Installation
============


Stable release
--------------

To install GroveC-SV-Solution, run this command in your terminal:

.. code-block:: console

    $ pip install grovec_sv_solution (you do not have to install this package)

This is the preferred method to install GroveC-SV-Solution, as it will always install the most recent stable release.

If you don't have `pip`_ installed, this `Python installation guide`_ can guide
you through the process.

.. _pip: https://pip.pypa.io
.. _Python installation guide: http://docs.python-guide.org/en/latest/starting/installation/

Pre-Req
-------

.. code-block:: console

    $ cd grovec_sv_solution
    $ curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
    $ source $(poetry env info --path)/bin/activate
    $ poetry install --no-root (take a coffee break)


From source (You do not need follow this unless you want use the solution as module)
-----------

The source for GroveC-SV-Solution can be downloaded from the `Github repo`_.

You can either clone the public repository:

.. code-block:: console

    $ git clone git://github.com/sugix/grovec_sv_solution

Or download the `tarball`_:

.. code-block:: console

    $ curl -OJL https://github.com/sugix/grovec_sv_solution/tarball/master

Once you have a copy of the source, you can install it with:

.. code-block:: console

    $ pip install .

.. _Github repo: https://github.com/sugix/grovec_sv_solution
.. _tarball: https://github.com/sugix/grovec_sv_solution/tarball/master
