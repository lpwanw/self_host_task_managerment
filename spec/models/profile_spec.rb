# frozen_string_literal: true

require "rails_helper"

RSpec.describe Profile, type: :model do
  describe "associations" do
    it { is_expected.to belong_to(:user) }
  end

  describe "validations" do
    subject { build(:profile) }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(100) }

    it { is_expected.to validate_presence_of(:dob) }
    it { expect(subject.avatar).to be_an_instance_of(ActiveStorage::Attached::One) }
  end
end