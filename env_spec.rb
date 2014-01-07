require 'spec_helper'

describe package('zsh') do
  it { should be_installed }
end

describe command('echo $SHELL') do
  it { should return_stdout '/bin/zsh' }
end

describe file('/home/vagrant/.zshrc') do
  it { should be_file }
  it { should contain 'alias sort="LC_ALL=C sort"' }
  it { should contain 'alias uniq="LC_ALL=C uniq"' }
  it { should contain 'export LANG=ja_JP.UTF-8' }
  it { should contain 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"/usr/local/lib"' }
  it { should contain 'export PATH=$PATH:"/usr/local/bin"' }
end

describe package('emacs') do
  it { should be_installed }
end

describe yumrepo('epel') do
  it { should exist }
  it { should be_enabled }
end

describe package('tmux') do
  it { should be_installed }
end

describe package('git') do
  it { should be_installed }
end
