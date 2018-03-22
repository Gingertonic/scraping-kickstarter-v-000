# require libraries/modules here
require 'nokogiri'
require 'pry'


def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  binding.pry
end


create_project_hash

# Flatiron says: projects: kickstarter.css("li.project.grid_4")
# I think: 
projects: kickstarter.css(".project-card")
project.css(".project-thumbnail a img")
title: project.css("h2.bbcard_name strong a").text
imagelink: project.css(".project-thumbnail a img").attribute("src").value
