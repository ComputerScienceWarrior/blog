class PagesController < ApplicationController
  def home
    @greeting = 'Welcome to my technical Blog!'
  end

  def about
    @greeting = "Welcome to the section all about me! Here you'll find my resume, information about me and my social pages."
  end

  def contact
    @greeting = 'Welcome, here is a form where you can reach out and request my services or contact me for any reason you deem necessary.'
  end
end
