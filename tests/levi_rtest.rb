require 'rubygems'
require 'rspec'
require 'watir-webdriver'

describe "levis.com" do
  let(:b) {@b ||= Watir::Browser.new :chrome}
  before { b.goto "levis.com" }
  after { b.close }

  it "should have a title" do
    b.title.should == "Levi's® Jeans, Jackets & Clothing | Levi's® (US) Official Site"
  end

  it "should have subcats" do
    cats = b.ul(:class=>'subnav-list').h2s
    cats.length.should >= 2
  end 

  it "should follow subcats" do
    close = b.div(:class=>'email-signup').span(:class=>'close')
    close.when_present.fire_event('click')
    cats = b.ul(:class=>'subnav-list').h2s
    rand_cat = cats[rand(cats.length)]

    cat_txt = rand_cat.a.text
    rand_cat.click
   
    b.title.downcase.should include(cat_txt.downcase) 
  end
end
