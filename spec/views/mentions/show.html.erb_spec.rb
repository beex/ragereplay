require 'rails_helper'

RSpec.describe "mentions/show", :type => :view do
  before(:each) do
    @mention = assign(:mention, Mention.create!(
      :content => "MyText",
      :article => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
