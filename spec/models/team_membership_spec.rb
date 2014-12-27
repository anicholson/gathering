require 'spec_helper'

describe Gathering::TeamMembership do
  describe 'attributes' do
    [:person, :team].each do |attr|
      it { is_expected.to respond_to attr }
    end
  end

end