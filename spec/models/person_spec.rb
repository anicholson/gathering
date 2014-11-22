require 'spec_helper'

class Gathering::Person
  attr_reader :name, :contact_number
end

describe Gathering::Person do
  describe 'interface' do
    [:name, :contact_number].each do |method|
      it { is_expected.to respond_to method }
    end
  end
end
