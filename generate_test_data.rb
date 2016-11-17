#!/usr/bin/ruby

require 'time'

data_files = [ 'some_data0.csv',
               'some_data1.csv',
               'some_data2.csv',
               'some_data3.csv',
               'some_data4.csv'  ]

time_stamp       = Time::new
time_stamp_start = Time::parse("2016-10-20 08:15:30")
time_stamp_stop  = Time::parse("2016-10-20 16:45:00")

data_files.each do |out_file|
  time_stamp = time_stamp_start
  some_value = rand(-100..100)
  File::open("./#{out_file}",'w+') do |f|
    while time_stamp <= time_stamp_stop
      f.write "#{time_stamp.strftime('%Y-%m-%d %H:%M:%S')};#{some_value}\n"
      some_value += rand(50)
      some_value -= rand(50)
      time_stamp += 60
    end
  end
end
