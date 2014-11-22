require 'spec_helper'

describe Gathering::Occasion do
  describe 'interface' do
    [:gathering, :date, :time].each do |method|
      it { is_expected.to respond_to method }
    end
  end
end
