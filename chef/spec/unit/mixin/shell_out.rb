#
# Author:: Joshua Timberman (<joshua@opscode.com>)
# Copyright:: Copyright (c) 2011 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "spec_helper"))
require 'chef/mixin/shell_out'
require 'rbconfig'

class PathTester
  include Chef::Mixin::ShellOut
end

describe Chef::Mixin::ShellOut do

  before(:each) do
    @path = PathTester.new
  end

  it "should return the path of the binary as a string" do
    binary_name = 'ruby'
    @path.path_for(binary_name).should =~ /^.+#{binary_name}#{RbConfig::CONFIG['EXEEXT']}$/
  end

end
