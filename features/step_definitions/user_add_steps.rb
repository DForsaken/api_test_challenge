require 'httparty'
require 'json'

Given(/^user with name \"([^\"]*)\", salary \"([^\"]*)\" and age \"([^\"]*)\" is not registered$/) do 
  |usr_name, usr_salary, usr_age| 
  @postbody = {
		"name": usr_name.to_s,
		"salary": usr_salary.to_s,
		"age": usr_age.to_s
	}.to_json
end

When(/^user is created$/) do
  @response = APIServices.post('/create', body: @postbody)	
  @code = @response.code
  @user_id = JSON.parse(@response.body)["id"]
  #puts "id: #{@user_id}"
end

Then(/^the create response should be 200 ok$/) do
  expect(@response.code).to eq(200)
end

And(/^user should be present in the db$/) do
  @response = APIServices.get("/employee/#{@user_id}")
  expect(@response.code).to eq(200)
end