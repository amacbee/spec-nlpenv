require 'spec_helper'

describe file('/usr/local/bin/python') do
  it { should be_file }
  it { should be_executable }
end

describe file('/usr/local/bin/pip') do
  it { should be_file }
  it { should be_executable }
end

describe command('python -c "import numpy"') do
  it { should return_exit_status 0 }
end

describe command('python -c "import scipy"') do
  it { should return_exit_status 0 }
end

describe command('python -c "import matplotlib"') do
  it { should return_exit_status 0 }
end
