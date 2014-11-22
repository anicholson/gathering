require 'spec_helper'

class Gathering::Gathering
  attr_reader :name, :occasions, :time
end

describe Gathering::Gathering do
  describe 'interface' do
    [:name, :occasions, :time].each do |method|
      it { is_expected.to respond_to method }
    end
  end
end
