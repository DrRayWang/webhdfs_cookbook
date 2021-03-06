#
# Cookbook Name:: webhdfs
# Recipe:: test_hdfs_file
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
# Recipe for chefspec test case of hdfs_file_spec.rb

webhdfs_hdfs_file '/tmp/only_with_owner.txt' do
  owner 'hdfs'
  user 'tony'
  hosts 'host:14000'
  action :create
end

webhdfs_hdfs_file '/tmp/only_with_group.txt' do
  group 'hdfs'
  user 'tony'
  hosts 'host:14000'
  action :create
end

webhdfs_hdfs_file '/tmp/with_group_owner.txt' do
  user 'tony'
  owner 'guest'
  hosts 'host:14000'
  group 'supergroup'
  action :create
end 

webhdfs_hdfs_file '/tmp/with_mode.txt' do
  user 'tony'
  mode '650'
  action :create
end 

webhdfs_hdfs_file '/tmp/create_if_missing.txt' do
  user 'tony'
  hosts 'host:14000'
  action :create_if_missing
end 

webhdfs_hdfs_file '/tmp/touch.txt' do
  user 'tony'
  hosts 'host:14000'
  action :touch
end

webhdfs_hdfs_file '/user/tony/with_delete.txt' do
  user 'tony'
  hosts 'host:14000'
  action :delete
end

webhdfs_hdfs_file '/tmp/with_content.txt' do
  user 'tony'
  hosts 'host:14000'
  content 'with content attributes to create a file on hdfs'
  action :create
end
