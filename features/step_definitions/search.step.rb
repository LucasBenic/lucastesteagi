
Given('I am on the home page') do
  visit '/'
end

#Show search box
When('I click on the lupe') do
  find('#search-open').click
end

Then('the search box must be shown') do
  expect(find('.search-field'))
end

#Hide the search box
When('click on it again') do
    find('#search-open').click
end

Then('the search box must no be placed on the page') do
  expect(page).to have_no_css ('.search-field')
end

#Valid search
When('search for an information related to the agi') do
    info = ['emprestimo', 'cartao', 'financiamento']
    info.each do |i|
      find('.search-field').set(i).send_keys :enter
      expect(page).to have_css('article[id^="post"]')
      expect(page).to have_content i
      find('#search-open').click
    end
end

Then('the information related must be shown') do
  #assertion is right above
end

#Search not found
When('search for an information that is not on the page') do
    find('.search-field').set('Lucas roberto').send_keys :enter
end

Then('a message explaning the infomation was not found must be shown') do
    expect(page).to have_no_css ('article[id^="post"]')
    expect(page).to have_content 'Nenhum resultado'
end

