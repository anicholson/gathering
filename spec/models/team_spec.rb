require 'spec_helper'

describe Gathering::Team do
  describe 'interface' do
    [:name, :people, :leader].each do |method|
      it { is_expected.to respond_to method }
    end
  end
end
