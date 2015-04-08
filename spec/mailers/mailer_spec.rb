require "rails_helper"

RSpec.describe Mailer, type: :mailer do
  describe "welcome" do
    let(:mail) { Mailer.welcome }

    it "renders the headers" do
      expect(mail.subject).to eq("Welcome")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "followup" do
    let(:mail) { Mailer.followup }

    it "renders the headers" do
      expect(mail.subject).to eq("Followup")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
