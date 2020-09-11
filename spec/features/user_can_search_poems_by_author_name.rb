require 'rails_helper'

RSpec.describe "As a user, when I search poems by author name" do
  it "I see 10 poem search results, each listing:
      - title
      - author
      - poem (as single string)
      - tone(s)" do

    visit root_path
    fill_in :author, with: "Emily"
    click_on "Get Poems"

    expect(current_path).to eq(search_path)
    expect(page).to have_css('.poem', count: 10)

    within(first('.poem')) do
      expect(page).to have_css('.title')
      title = find('.title').text
      expect(title).not_to be_empty

      expect(page).to have_css('.author')
      author = find('.author').text
      expect(author).not_to be_empty

      expect(page).to have_css('.poem-text')
      poem_text = find('.poem-text').text
      expect(poem_text).not_to be_empty

      expect(page).to have_css('.tone')
      tone = find('.tone').text
      expect(tone).not_to be_empty
    end
  end
end
