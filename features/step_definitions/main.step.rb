#require_relative 'main.page.rb'
Given('I am on the AGI homepage') do
    @home = HomePage.new
    visit '/'
end

When('I click on the Institutional category in the navigation menu') do
  @home.institucional.click
end

Then("I should be taken to a page to check the AGis institutional background") do
  expect(page).to have_text "Categoria: Institucional"
end

When("I click on the Products category in the navigation menu") do
  @home.produto.click
end

Then("I should be taken to a page where I can see the AGI's products") do
  expect(page).to have_text "Categoria: Produtos"
end

When('I click on the Services category in the navigation menu') do
  @home.servico.click
end

Then("I should be taken to a page that provides info about AGI's services") do
  expect(page).to have_text "Categoria: Serviços"
end

When("I click on the Financial category in the navigation menu") do
  @home.financa.click
end

Then("I should be taken to a page to check info about finance") do
  expect(page).to have_text "Categoria: Suas finanças"
end

When("I click on the Careers category in the navigation menu") do
  @home.carreira.click
end

Then("I should be taken to a page that talks about carrers") do
  expect(page).to have_text "Categoria: Sua carreira"
end

When("I click on the YouTube channel category in the navigation menu") do
  @home.inscreva.click
end

Then("I should be taken to a page to see the AGI's youtube channel") do
  expect(page).to have_text "Inscreva-se no nosso canal!"
  expect(find('.entry-content'))
end

When('I click on the Investment category in the navigation menu') do
  @home.investimento.click
end

Then("I should be taken to a page so I can see news about Investment") do
  expect(page).to have_text "Categoria: Seus investimentos"
end

When("I click on the Security category in the navigation menu") do
  @home.seguranca.click
end

Then("I should be taken to a page to check the news about security") do
  expect(page).to have_text "Categoria: Sua segurança"
end

