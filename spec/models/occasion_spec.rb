require 'spec_helper'

class Gathering::Occasion
  attr_reader :gathering, :date
end

describe Gathering::Occasion do
  describe 'interface' do
    [:gathering, :date].each do |method|
      it { is_expected.to respond_to method }
    end
  end
end
