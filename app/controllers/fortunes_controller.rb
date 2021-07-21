class FortunesController < ApplicationController
  def horoscopes
    @sign = params.fetch("the_sign").to_sym
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(@sign)
    @this_zodiac_name = this_zodiac.fetch(:name)
    @horoscope = this_zodiac.fetch(:horoscope)
    
    render({ :template => "signs/main.html.erb"})

  end

end

