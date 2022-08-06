[![Actions Status](https://github.com/tbrowder/API-YNAB/actions/workflows/test.yml/badge.svg)](https://github.com/tbrowder/API-YNAB/actions)

NAME
====

API::YNAB - Provides code for using the YNAB API (ynab.com) to download ones bank and credit card transactions

SYNOPSIS
========

```raku
use API::YNAB;
```

DESCRIPTION
===========

API::YNAB is a module providing access to the YNAB API and all the user's account data. In order to access the user's account, he must generate a personal token with YNAB's executable and provide its value as the value of an environment variable `YNAB_TOKEN` at every https request.

This module will include a program to obtain various YNAB information in JSON format. Another program will convert the JSON data into OFX format suitable for uploading into the free [GnuCash](https://gnucash.org) double-entry accounting program. Of course the OFX should be able to be used in other programs as well. Note the OFX format is documented at [https://financialdataexchange.org](https://financialdataexchange.org).

AUTHOR
======

Tom Browder <tbrowder@acm.org>

COPYRIGHT AND LICENSE
=====================

Copyright 2022 Tom Browder

This library is free software; you may redistribute it or modify it under the Artistic License 2.0.

