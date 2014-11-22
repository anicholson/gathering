require 'spec_helper'

class Gathering::Role
  attr_reader :name, :role_type
end

describe Gathering::Role do
  describe 'interface' do
    [:name, :role_type].each do |method|
      it { is_expected.to respond_to method }
    end
  end
end
