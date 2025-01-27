[![Actions Status](https://github.com/tbrowder/API-YNAB/actions/workflows/linux.yml/badge.svg)](https://github.com/tbrowder/API-YNAB/actions) [![Actions Status](https://github.com/tbrowder/API-YNAB/actions/workflows/macos.yml/badge.svg)](https://github.com/tbrowder/API-YNAB/actions) [![Actions Status](https://github.com/tbrowder/API-YNAB/actions/workflows/windows.yml/badge.svg)](https://github.com/tbrowder/API-YNAB/actions)

NAME
====

API::YNAB - Provides code for using the YNAB API (ynab.com) to download ones bank and credit card transactions

SYNOPSIS
========

```raku
$ holiday-api
Usage:  <mode> [options]

Modes:
  get           - get the api data sets
  create        - produce the Holidays.rakumod.YYYY modules
  test          - get the free data sets from last year
  show-holidays - dumps the default holidays to STDOUT as a TOML file

Options:
  yyyy       - get or produce modules for year 2yyy [default:  previous year]
  dir=X      - output data to directory X           [default: './data']
  holidays=Y - define a TOML file ('Y') with the user's desired holiday list
  force      - overwrite an existing file
  quiet      - no informative messages
  debug      - for developer use

Note only the unique portion of a node or option need be entered.
```

DESCRIPTION
===========

API::YNAB is a module providing access to the YNAB API and all the user's account data. In order to access the user's account, he must generate a personal token with YNAB's executable and provide its value as the value of an environment variable `YNAB_TOKEN` at every https request.

This module will include a program to obtain various YNAB information in JSON format. Another program will convert the JSON data into OFX format suitable for uploading into the free [GnuCash](https://gnucash.org) double-entry accounting program. Of course the OFX should be able to be used in other programs as well. Note the OFX format is documented at [https://financialdataexchange.org](https://financialdataexchange.org).

The data downloaded from YNAB queries will be kept in an SQLite database for easy recall. The table for that initialy will look like this:

    create table if not exists QUERIES {
    }

OTHER SOLUTIONS
===============

Other projects are available to aid the user in converting data to OFX or CVS format. Some of those are listed below.

  * pdf...

head1 AUTHOR

Tom Browder <tbrowder@acm.org>

COPYRIGHT AND LICENSE
=====================

Copyright 2024 Tom Browder

This library is free software; you may redistribute it or modify it under the Artistic License 2.0.

