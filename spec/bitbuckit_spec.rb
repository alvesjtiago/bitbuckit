RSpec.describe Bitbuckit do
  it "has a version number" do
    expect(Bitbuckit::VERSION).not_to be nil
  end

  describe ".client" do
    it "creates a Bitbuckit::Client" do
      expect(Bitbuckit.client).to be_kind_of Bitbuckit::Client
    end
  end
end
