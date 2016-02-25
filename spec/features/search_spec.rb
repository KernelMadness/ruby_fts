require "rails_helper"

RSpec.describe "Search" do

  let!(:galapagos) do
    Article.create(
        title: 'Galapagos sea lions',
        content: 'The Galapagos sea lion is a species of sea lion that exclusively breeds on the Galápagos Islands')
  end

  let!(:walrus) do
    Article.create(
        title: 'Walrus',
        content: 'The walrus (Odobenus rosmarus) is a large flippered marine mammal')
  end

  before do
    visit root_path
  end

  it "Searches by title" do
    search 'sea lions'
    expect(page).to have_text(galapagos.title)
  end

  it "Searches by content" do
    search 'species'
    expect(page).to have_text(galapagos.content)
  end

  it "Does not display wrong search results" do
    search 'Walrus'
    expect(page).not_to have_text(galapagos.title)
  end

  it "Searches case insensitive" do
    search "FLIPPERED"
    expect(page).to have_text(walrus.content)
  end

  def search(query)
    fill_in :query, with: query
    click_on 'Search'
  end
end

