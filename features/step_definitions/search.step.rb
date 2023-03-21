#features/scenarios/searching.feature

Given('I am on the home page') do
  visit '/'
end

#Search box should be visible on the homepage
When('I click on the serch icon') do
  find('#search-open').click
end

Then('I should see a search box on the homepage') do
  expect(find('.search-field'))
end

#Hide the search box
When('I double cick the search icon') do
    find('#search-open').click
end

Then('the search box should not be placed on the page') do
  expect(page).to have_no_css ('.search-field')
end

#Search for information related to AGI
When('I search for an information in the search box') do 
    info = ['emprestimo', 'cartao', 'financiamento']
    info.each do |i|
      find('.search-field').set(i).send_keys :enter
      expect(page).to have_css('article[id^="post"]')
      expect(page).to have_content i
      find('#search-open').click
    end
end

Then('I should see information related to the information searched in the search results') do
  #assertion right above
end

#Search not found
When('I search for Lucas Roberto in the search box') do
  find('.search-field').set('Lucas roberto').send_keys :enter
end

Then('I should see a message indicating that no results were found for "Lucas Roberto"') do
  expect(page).to have_no_css ('article[id^="post"]')
  expect(page).to have_content 'Nenhum resultado'
end

When('I search for {string} in the search box') do |string|
  find('.search-field').set(string).send_keys :enter
end

Then('I should see search results related to both {string} and {string}') do |string, string2|
  expect(page).to have_content(string)
  expect(page).to have_content(string2)
end




