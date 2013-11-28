require 'spec_helper'

describe file('/usr/local/bin/crf_learn') do
  it { should be_file }
  it { should be_executable }
end

describe file('/usr/local/bin/mecab') do
  it { should be_file }
  it { should be_executable }
end

describe file('/usr/local/lib/mecab/dic/ipadic/') do
  it { should be_directory }
end

describe file('/usr/local/bin/cabocha') do
  it { should be_file }
  it { should be_executable }
end

describe file('/usr/local/etc/cabocharc') do
  it { should be_file }
end
