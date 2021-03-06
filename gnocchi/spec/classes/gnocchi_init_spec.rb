#
# Unit tests for gnocchi::init
#
require 'spec_helper'

describe 'gnocchi' do

  shared_examples_for 'gnocchi' do
    it {
      should contain_class('gnocchi::params')
      should contain_exec('post-gnocchi_config')
    }
  end

  context 'on Debian platforms' do
    let :facts do
      { :osfamily => 'Debian' }
    end

    it_configures 'gnocchi'
  end

  context 'on RedHat platforms' do
    let :facts do
      { :osfamily => 'RedHat' }
    end

    it_configures 'gnocchi'
  end
end
