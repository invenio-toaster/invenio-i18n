# -*- coding: utf-8 -*-
#
# This file is part of Invenio.
# Copyright (C) 2015-2018 CERN.
#
# Invenio is free software; you can redistribute it and/or modify it
# under the terms of the MIT License; see LICENSE file for more details.

python setup.py compile_catalog && \
pybabel compile -d tests/translations/ && \
pydocstyle invenio_i18n && \
isort -rc -c -df **/*.py && \
check-manifest --ignore ".travis-*" && \
sphinx-build -qnNW docs docs/_build/html && \
python -m pytest && \
sphinx-build -qnNW -b doctest docs docs/_build/doctest
