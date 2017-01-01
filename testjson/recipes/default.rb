#
# Cookbook Name:: testjson
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


properties = {
    'tenant' => {
        'json' => node['House']['Renovation']['json']
    }
}

template "C:/Users/kuvivek/houserennovation.json" do
  source "houserenovation.json.erb"
  owner "tomcat"
  group "tomcat"
  mode 0644
  variables(properties: properties)
end
