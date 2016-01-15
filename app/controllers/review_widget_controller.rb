class ReviewWidgetController < ApplicationController

  layout 'application'
  respond_to :html, :xml, :json

  def index
  	render('basic')
  end

  def basic
  end

  def fetch_reviews
  	
  	review1 = {:name => "Marshall Mixing",
  	  :body => "Marshall did a great job turning a 'tin-like' sound into a warm earthy sound on a song I had recorded. Thanks!", 
	  :rating => "4", 
	  :reviewer => {:name => "Mary Jane Marcus"}
  	}

  	review2 = {:name => "Marshall Mixing",
  	  :body => "Marshall is my favorite pro out there. Thanks!",
	  :rating => "5", 
	  :reviewer => {:name => "Joe Schmoe"}
  	}

  	review3 = {:name => "Marshall Mixing",
  	  :body => "Marshall is without question the best singer I've ever worked with, a true artist and a gentleman. Couldn't recommend him enough!!", 
	  :rating => "4", 
	  :reviewer => {:name => "Brian F."}
  	}

  	@reviews = [review1 , review2, review3]

	respond_to do |format|
		format.html # show.html.erb
		format.json { render json: @reviews }
	end
  end

  def not_authenticated
  	redirect_to(:controller => 'review_widget', :action => 'not_authenticated')
  end
end
