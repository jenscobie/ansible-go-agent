require 'spec_helper'

describe command('java -version') do
  its(:exit_status) { should eq 0 }
  its(:stderr) { should match /1.7/ }
end

describe package('git') do
  it { should be_installed }
end

describe package('unzip') do
  it { should be_installed }
end

describe command('VBoxManage -v') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match /5.0.0/ }
end