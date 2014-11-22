require 'spec_helper'

describe Gathering::Role do
  describe 'interface' do
    [:name, :role_type].each do |method|
      it { is_expected.to respond_to method }
    end
  end
end
