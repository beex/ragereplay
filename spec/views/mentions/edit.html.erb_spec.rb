require 'rails_helper'

RSpec.describe "mentions/edit", :type => :view do
  before(:each) do
    @mention = assign(:mention, Mention.create!(
      :content => "MyText",
      :article => nil,
      :user => nil
    ))
  end

  it "renders the edit mention form" do
    render

    assert_select "form[action=?][method=?]", mention_path(@mention), "post" do

      assert_select "textarea#mention_content[name=?]", "mention[content]"

      assert_select "input#mention_article_id[name=?]", "mention[article_id]"

      assert_select "input#mention_user_id[name=?]", "mention[user_id]"
    end
  end
end
