#!/usr/bin/python
import sys
import datetime

template = """# {date}

## What have I achieved today?

## My biggest blockers are?

## What is puzzling me?

## Tomorrow's top priority are:

## Notes"""

date = (datetime.date.today())
print(template.format(date=date))
