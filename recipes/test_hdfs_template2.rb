#
# Cookbook Name:: webhdfs
# Recipe:: test_hdfs_template2
#
# Copyright 2015, Bloomberg Finance L.P.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,software
# distributed under the License is distributed on an "AS IS"BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# test recipe of action create_if_missing for hdfs_template_spec.rb

webhdfs_hdfs_template '/tmp/hdfs_template_cim.txt' do
  owner 'guest'
  user 'tony'
  hosts 'host:14000'
  owner 'guest'
  source 'hdfs_template_source.txt'
  action :create_if_missing
end

