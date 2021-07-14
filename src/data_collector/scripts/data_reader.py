#! /usr/bin/env python
import rosbag
import bagpy
from bagpy import bagreader
import pandas as pd

bag = rosbag.Bag("2021-06-27-14-29-17.bag")
for topic, msg, t in bag.read_messages(topics=['/cmd_vel', '/Ball_Bowl_RelativePose_']):
    print(msg)
bag.close()