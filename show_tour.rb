# Add the following methods:
# tour.cd_revenue
# tour.total_cd_revenue
# tour.average_ticket_price

tour = [{:venue_name=>"united center", :ticket_price=>60, :venue_capacity=>100000, :actual_attendance=>10, :cds_sold=>5, :cd_price=>10},
  {:venue_name=>"Harper Theater", :ticket_price=>10, :venue_capacity=>100000, :actual_attendance=>9, :cds_sold=>5, :cd_price=>10},
  {:venue_name=>"united center", :ticket_price=>90, :venue_capacity=>100000, :actual_attendance=>10, :cds_sold=>500, :cd_price=>9}, {:venue_name=>"united center", :ticket_price=>45.5, :venue_capacity=>100000, :actual_attendance=>10, :cds_sold=>100, :cd_price=>10}, {:venue_name=>"united center", :ticket_price=>45.5, :venue_capacity=>100000, :actual_attendance=>10, :cds_sold=>5, :cd_price=>10}, {:venue_name=>"united center", :ticket_price=>40, :venue_capacity=>100000, :actual_attendance=>10, :cds_sold=>5, :cd_price=>10}, {:venue_name=>"united center", :ticket_price=>20, :venue_capacity=>100000, :actual_attendance=>10, :cds_sold=>5, :cd_price=>10}, {:venue_name=>"united center", :ticket_price=>45.5, :venue_capacity=>100000, :actual_attendance=>10, :cds_sold=>5, :cd_price=>7}]

# This is a variable (an array of hashes)

class Tour

  attr_reader :show_list

  def initialize(args={})
    @band_name = args[:band_name]
    @shows = args[:show]
    @show_list = []
  end

  def add_show(show)
    show_list << show
  end


  def total_cd_revenue

      show_list.inject(0) do |total, show|
        show.cd_revenue + total
      end

#   total = 0
#     show_list.each do |show|
#       total += show.cd_revenue
#     end
#   total
  end

  def average_ticket_price(tour)
    show_list.inject(0) do |total, show|
      show.ticket_price/show_list.length
    end
  end

end


class Show

attr_accessor :venue_name, :ticket_price, :venue_capacity, :actual_attendance, :cds_sold, :cd_price

  def initialize(args={})
    @venue_name = args[:venue_name]
    @ticket_price = args[:ticket_price]
    @venue_capacity = args[:venue_capacity]
    @actual_attendance = args[:actual_attendance]
    @cds_sold = args[:cds_sold]
    @cd_price = args[:cd_price]
  end

  def cd_revenue
    # show_list << show
    # p show_list
    cds_sold * cd_price
  end

end

# **************************DRIVER CODE********************
# some driver code (everything after line 68, once I am not in that class definition I can run commands):
erykah_tour = Tour.new({:band_name => 'badu band'})
chicago = Show.new({:venue_name => 'united_center', ticket_price: 400, cds_sold: 1000, cd_price: 50})
nyc = Show.new({:venue_name => 'united_center', ticket_price: 500, cds_sold: 5000})
chicago.cd_revenue
# $50,000


# I take tour (the first object) and use .each for each hash in tour and we push (or add elements) to erykah_tour's instance variable show_list (which is an array). This allows me to add our big fat hash into show_list so we can operate on it and call methos. The name we use to refer to this object is now erykah_tour.show_list. When I use Show.new, the show_elements get passed into the Show class enabling me to accept the keys of the hash in the initialize method.
  tour.each do |show_element|
    erykah_tour.show_list << Show.new(show_element)

    #erykah_tour.cd_revenue(tour)
  end

erykah_tour.show_list

# *******************TOUR DRIVER CODE *************************
erykah_tour.total_cd_revenue
# 5785

erykah_tour.average_ticket_price(tour)
# 5.6875
