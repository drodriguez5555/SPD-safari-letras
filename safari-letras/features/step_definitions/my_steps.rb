
Given(/^que ingreso al sitio safari letras$/) do
   visit '/'
end

Then(/^Debo ver el mensaje "(.*?)"$/) do |arg1|
 last_response.body.should =~ /#{arg1}/m
end

Given(/^Dado que estas en el juego$/) do
    visit '/safari'                                                     
end

When(/^Ingresar letra "(.*?)"$/) do |arg1|
  fill_in("letra", :with => arg1)
end

When(/^Enviar letra$/) do
  click_button("enviar")
end

