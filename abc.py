#! /usr/bin/env python
# -*- coding: utf-8 -*-

import time
import datetime
abc='2019-02-14T03:48:43'

print(datetime.datetime.strptime(abc,'%Y-%m-%dT%H:%M:%S')+ datetime.timedelta(hours=8))