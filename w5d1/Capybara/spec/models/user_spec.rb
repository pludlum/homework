require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(
     email: "fake@website.com",
     password: "password") }

  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }

end

  describe "#reset_session_token!" do
    subject { User.new(
       email: "fake@website.com",
       password: "password") }

    it "sets a new session token" do
      subject.valid?
      old_session_token = subject.session_token
      subject.reset_session_token!
      expect(subject.session_token).to_not eq(old_session_token)
    end
  end

  describe "#is_password?" do
    subject { User.new(
      email: "fake@website.com",
      password: "password") }
   it "returns true when correct" do
     expect(subject.is_password?("password")).to be true
   end

   it "returns false when not the password" do
     expect(subject.is_password?("otherpassword")).to be false
   end
 end

 describe ".find_by_credentials" do
   subject { User.new(
     email: "fake@website.com",
     password: "password") }
   before { subject.save! }

   it "returns user given good credentials" do
     expect(User.find_by_credentials("fake@website.com", "password")).to eq(subject)
   end
 end
