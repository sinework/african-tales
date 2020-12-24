require 'rails_helper'

RSpec.describe "articles/new", type: :view do
  before(:each) do
    assign(:article, Article.new(
      author_id: "MyString",
      title: "MyString",
      text: "MyText",
      image: "MyString",
      vote_count: 1
    ))
  end

  it "renders new article form" do
    render

    assert_select "form[action=?][method=?]", articles_path, "post" do

      assert_select "input[name=?]", "article[author_id]"

      assert_select "input[name=?]", "article[title]"

      assert_select "textarea[name=?]", "article[text]"

      assert_select "input[name=?]", "article[image]"

      assert_select "input[name=?]", "article[vote_count]"
    end
  end
end
