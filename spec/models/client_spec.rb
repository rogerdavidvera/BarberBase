require 'rails_helper'

describe Client do
  let(:attributes) do
    {
      name: "Johnny Greenwood",
      phone_number: "(000) 000-0000",
      email: "barber.base.client.test03@gmail.com"
    }
  end

  let(:missing_name) { attributes.except(:name) }
  let(:missing_phone_number) { attributes.except(:phone_number) }

  it "is considered valid" do
    expect(Client.new(attributes)).to be_valid
  end

  it "is invalid without a name" do
    expect(Client.new(missing_name)).not_to be_valid
  end

  it "is invalid without a phone_number" do
    expect(Client.new(missing_phone_number)).not_to be_valid
  end

end
