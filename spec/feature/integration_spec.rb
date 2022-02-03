# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Harry Potter'
    fill_in 'Author', with: 'J.K Rowling'
    fill_in 'Price', with: '15.00'
    select '2001', from: 'book_published_date_1i'
    select '01', from: 'book_published_date_2i'
    select '01', from: 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Harry Potter')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Dune'
    fill_in 'Author', with: 'Frank Herbert'
    fill_in 'Price', with: '25.00'
    select '1965', from: 'book_published_date_1i'
    select '05', from: 'book_published_date_2i'
    select '20', from: 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Dune')
  end
end

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Percy Jackson'
    fill_in 'Author', with: 'Rick Riordan'
    fill_in 'Price', with: '20.00'
    select '2005', from: 'book_published_date_1i'
    select '08', from: 'book_published_date_2i'
    select '15', from: 'book_published_date_3i'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Percy Jackson')
  end
end