
Given(/^que ingreso al sitio safari letras$/) do
   visit '/'
end

Then(/^Debo ver el mensaje "(.*?)"$/) do |arg1|
 last_response.body.should =~ /#{arg1}/m
end

