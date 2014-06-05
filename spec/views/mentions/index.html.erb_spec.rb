require 'rails_helper'

RSpec.describe "mentions/index", :type => :view do
  before(:each) do
    assign(:mentions, [
      Mention.create!(
        :content => "MyText",
        :article => nil,
        :user => nil
      ),
      Mention.create!(
        :content => "MyText",
        :article => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of mentions" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
