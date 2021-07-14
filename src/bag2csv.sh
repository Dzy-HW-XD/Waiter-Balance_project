# save into .csv files
rostopic echo -b 2021-06-29-18-31-14.bag -p /ball/imu > collected_data/ball_imu.csv
rostopic echo -b 2021-06-29-18-31-14.bag -p /ball/odom > collected_data/ball_odom.csv
rostopic echo -b 2021-06-29-18-31-14.bag -p /ball/force > collected_data/ball_force.csv
rostopic echo -b 2021-06-29-18-31-14.bag -p /theta >collected_data/theta.csv
rostopic echo -b 2021-06-29-18-31-14.bag -p /Ball_Bowl_RelativePose_ > collected_data/Ball_Bowl_RelativePose_.csv
rostopic echo -b 2021-06-29-18-31-14.bag -p /cmd_vel > collected_data/cmd_vel.csv

