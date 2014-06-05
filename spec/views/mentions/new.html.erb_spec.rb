require 'rails_helper'

RSpec.describe "mentions/new", :type => :view do
  before(:each) do
    assign(:mention, Mention.new(
      :content => "MyText",
      :article => nil,
      :user => nil
    ))
  end

  it "renders new mention form" do
    render

    assert_select "form[action=?][method=?]", mentions_path, "post" do

      assert_select "textarea#mention_content[name=?]", "mention[content]"

      assert_select "input#mention_article_id[name=?]", "mention[article_id]"

      assert_select "input#mention_user_id[name=?]", "mention[user_id]"
    end
  end
end
