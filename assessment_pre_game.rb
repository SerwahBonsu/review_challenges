# TSP went on one tour and played eight shows.
# Mock up some data for each show, including the following
# attributes: venue name, ticket price, venue capacity, actual attendance, CDs sold.
# Figure out a way to put all the data in one array of hashes. I want to be able to call something like shows_array[0][:ticket_price] and return something like 45.50.

# tour = [show_1 = {:venue_name => "united center", :ticket_price => 45.50, :venue_capacity => 100000, :actual_attendance => 10, :cds_sold => 5, :cd_price => 10},
# show_2 = {:venue_name => "united center", :ticket_price => 45.50, :venue_capacity => 100000, :actual_attendance => 10, :cds_sold => 5, :cd_price => 10},
# show_3 = {:venue_name => "united center", :ticket_price => 45.50, :venue_capacity => 100000, :actual_attendance => 10, :cds_sold => 5, :cd_price => 10},
# show_4 = {:venue_name => "united center", :ticket_price => 45.50, :venue_capacity => 100000, :actual_attendance => 10, :cds_sold => 5, :cd_price => 10},
# show_5 = {:venue_name => "united center", :ticket_price => 45.50, :venue_capacity => 100000, :actual_attendance => 10, :cds_sold => 5, :cd_price => 10},
# show_6 = {:venue_name => "united center", :ticket_price => 45.50, :venue_capacity => 100000, :actual_attendance => 10, :cds_sold => 5, :cd_price => 10},
# show_7 = {:venue_name => "united center", :ticket_price => 45.50, :venue_capacity => 100000, :actual_attendance => 10, :cds_sold => 5, :cd_price => 10},
# show_8 = {:venue_name => "united center", :ticket_price => 45.50, :venue_capacity => 100000, :actual_attendance => 10, :cds_sold => 5, :cd_price => 10}]



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

  def cd_revenue(show)
    # show_list << show
    # p show_list
    show.cds_sold * show.cd_price
  end

  def total_cd_revenue(tour)
  end

  def average_ticket_price(tour)
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


end



# erykah_badu = Tour.new({:venue_name => 'united_center', ticket_price: 400, cds_sold: 1000})

# Erykah Tour
# 2 shows Chicago & NYC

tour = [{:venue_name=>"united center", :ticket_price=>60, :venue_capacity=>100000, :actual_attendance=>10, :cds_sold=>5, :cd_price=>10}, {:venue_name=>"Harper Theater", :ticket_price=>10, :venue_capacity=>100000, :actual_attendance=>9, :cds_sold=>5, :cd_price=>10}, {:venue_name=>"united center", :ticket_price=>90, :venue_capacity=>100000, :actual_attendance=>10, :cds_sold=>500, :cd_price=>9}, {:venue_name=>"united center", :ticket_price=>45.5, :venue_capacity=>100000, :actual_attendance=>10, :cds_sold=>100, :cd_price=>10}, {:venue_name=>"united center", :ticket_price=>45.5, :venue_capacity=>100000, :actual_attendance=>10, :cds_sold=>5, :cd_price=>10}, {:venue_name=>"united center", :ticket_price=>40, :venue_capacity=>100000, :actual_attendance=>10, :cds_sold=>5, :cd_price=>10}, {:venue_name=>"united center", :ticket_price=>20, :venue_capacity=>100000, :actual_attendance=>10, :cds_sold=>5, :cd_price=>10}, {:venue_name=>"united center", :ticket_price=>45.5, :venue_capacity=>100000, :actual_attendance=>10, :cds_sold=>5, :cd_price=>7}]



erykah_tour = Tour.new({:band_name => 'badu band'})
chicago = Show.new({:venue_name => 'united_center', ticket_price: 400, cds_sold: 1000, cd_price: 50})
nyc = Show.new({:venue_name => 'united_center', ticket_price: 500, cds_sold: 5000})

# erykah_tour.add_show(chicago)

erykah_tour.cd_revenue(chicago)

# p tour.cd_revenue(chicago)

# p erykah_tour.show_list

# erykah_tour.add_show(nyc)


# tour.show_list[0].cd_revenue, show(cd-revenue)

# Add the following methods:
# tour.cd_revenue
# tour.total_cd_revenue
# tour.average_ticket_price

# Redo a challenge on schema design & SQL






























