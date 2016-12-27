require 'rubygems'
require 'test/unit'
require 'watir-webdriver'

class LevisTest < Test::Unit::TestCase
  def setup
    @b ||= Watir::Browser.new :chrome
  end

  def teardown
    #@b.close
  end

  def go_home
    @b.goto "levis.com"
  end

  def test_title
    go_home 

    assert @b.title == "Levi's® Jeans, Jackets & Clothing | Levi's® (US) Official Site"
  end

   def test_random_cat
     go_home

     @b.span(:class=>'close').when_present.click
     
     cats = @b.ul(:class=>'subnav-list').h2s
     rand_cat = cats[rand(cats.length)]
     randcat_txt = rand_cat.a.text

     rand_cat.a.click

     assert @b.title.match(randcat_txt)
  end

end
