#!/usr/bin/python
import sys
import datetime

template = """# {date}

## Housekeeping

* [ ] Update my hours on Xero
* [ ] Organise my next day agenda
* [ ] Check the rest of my week calendar

## What have I achieved today?

## My biggest blockers are?

## What is puzzling me?

## Tomorrow's top priority are:

## Notes"""

date = (datetime.date.today())
print(template.format(date=date))
