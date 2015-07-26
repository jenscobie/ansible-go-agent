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

describe package('python') do
  it { should be_installed.with_version('2.6.6') }
end