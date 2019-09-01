require 'httparty'
require 'json'

Given(/^user with name \"([^\"]*)\", salary \"([^\"]*)\" and age \"([^\"]*)\" is already registered$/) do 
  |usr_name, usr_salary, usr_age| 
  @postbody = {
    "name": usr_name.to_s,
    "salary": usr_salary.to_s,
    "age": usr_age.to_s
  }.to_json
  @response = APIServices.post('/create', body: @postbody)
  
  expect(@response.code).to eq(200)

  @user_id = JSON.parse(@response.body)["id"]
  #puts "id: #{@user_id}"
end

When(/^user is deleted$/) do
  @response = APIServices.delete("/delete/#{@user_id}")
end

Then(/^the delete response should be 200 ok$/) do
  expect(@response.code).to eq(200)
end

And(/^user should not be present in the db$/) do
  @response = APIServices.get("/employee/#{@user_id}")   
  expect(@response.code).to eq(200)
  expect(@response.body).to eq('false')
end