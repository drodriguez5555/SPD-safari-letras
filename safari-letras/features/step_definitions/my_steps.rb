
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

Then(/^Mostrar letra "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

When(/^Enviar vacio$/) do
  click_button("enviar")
end

Then(/^Mostrar Mesanje "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Given(/^Dado que estas en el juego y ya allas ingresado "(.*?)"$/) do |arg1|    
  visit '/safari'
  fill_in("letra", :with => arg1)
  click_button("enviar")
end

When(/^Ingresar letra repetida "(.*?)"$/) do |arg1|
  fill_in("letra", :with => arg1)
  #click_button("enviar")
    last_response.body.should =~ /#{arg1}/m

end

