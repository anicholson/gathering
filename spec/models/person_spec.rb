require 'spec_helper'

describe Gathering::Person do
  describe 'interface' do
    [:name, :contact_number, :teams].each do |method|
      it { is_expected.to respond_to method }
    end
  end
end
