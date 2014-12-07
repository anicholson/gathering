require 'spec_helper'



describe Gathering::Gathering do
  describe 'interface' do
    [:name, :occasions, :time, :roles].each do |method|
      it { is_expected.to respond_to method }
    end
  end
end
