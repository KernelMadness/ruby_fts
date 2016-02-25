require "rails_helper"

RSpec.describe "New article form" do

  before do
    visit new_article_path
  end

  it "creates new article with valid data" do
    fill_in :article_title, with: 'Fur sea lion'
    fill_in :article_content, with: 'Fur sea lion is a small seal'
    click_on 'Create Article'
    expect(page).to have_text('Article was successfully created')
  end

  it "throws error on invalid data" do
    click_on 'Create Article'
    expect(page).to have_text('Please review the problems below')
  end
end
