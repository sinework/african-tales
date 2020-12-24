require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        author_id: "Author",
        title: "Title",
        text: "MyText",
        image: "Image",
        vote_count: 2
      ),
      Article.create!(
        author_id: "Author",
        title: "Title",
        text: "MyText",
        image: "Image",
        vote_count: 2
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", text: "Author".to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Image".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
