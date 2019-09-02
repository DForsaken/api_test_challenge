# api-test-challenge

Challenge project using HTTParty and Cucumber for API Testing. Examples refer to this Dummy API http://dummy.restapiexample.com

#### Dependencies

You need to previously install 
* Appium 1.8.0
* Webdriver
* Ruby 2.6.3
* Android SDK

In the gem file we have the following dependencies
* Rspec
* Bundler 
* Cucumber 
* appium_lib 
* gherkin

#### Setup
* git clone https://github.com/DForsaken/api_test_challenge
* bundle install
* File features/support/config/appium.txt needs to be modified depending on the device used

platformVersion = "6.0"
uuid = "emulator-5556"

You can get this information by running 
platformVersion -> adb get-serialno
uuid -> adb shell getprop ro.build.version.release

* Need to have Appium server running on default configuration

Host: 0.0.0.0
Port: 4723 

Clone repo
Gti clone git@github.com:/

#### Run

* bundle exec cucumber
