# require 'appium_lib'

# class StartAppium
# # Set the environment variables:
#    SAUCE_USERNAME = nil
#    SAUCE_ACCESS_KEY = nil
#    APP_PATH = 'C:/AutomacaoTreinamentos/INLabs/Mobile/Teste_Appium/AppiumTest/ApkProvaCarros.apk'

# desired_caps = {
#       caps:       {
#         appiumVersion:    '1.1.1',
#         platformName:     'Android',
#         platformVersion:  '7.0',
#         browserName:       '',
#         deviceName:       'Nexus 5 API 24',
#         app:              APP_PATH,
#         name:             'Ruby Appium Test'
#       }
#     }

# driver = Appium::Driver.new(desired_caps)
# driver.start_driver

# # Test Actions here...

# #driver.driver_quit
# end 