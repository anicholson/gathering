require 'spec_helper'

class Gathering::Team
  attr_reader :name, :people, :leader
end

describe Gathering::Team do
  describe 'interface' do
    [:name, :people, :leader].each do |method|
      it { is_expected.to respond_to method }
    end
  end
end
