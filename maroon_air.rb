# Usage:
#    ruby maroon_air.rb /flights
#    ruby maroon_air.rb /flights/{date}/{flight_number}
#
#    For example:
#    ruby maroon_air.rb /flights/2017-06-02/777

def display_all
  # 1. TO DO: use the Flight class instead, e.g.:
  #    Flight.all
  #
  #    and then use the returned data to generate the template below.

  puts "Date       Flt# Dest Leaves At Arrives At Miles Earned"
  puts "---------- ---- ---- --------- ---------- ------------"

  puts "2017-06-01  768  MIA   0900       1256        1197"
  puts "2017-06-01  960  DFW   1000       1226        802"
  puts "2017-06-01  256  DET   1100       1320        253"
  puts "2017-06-01  128  STL   1200       1255        258"
  puts "2017-06-02  512  PDX   0900       1116        1739"
  puts "2017-06-02  777  JFK   1000       1310        740"
  puts "2017-06-02  384  BOS   1100       1408        867"
  puts "2017-06-02  128  STL   1200       1255        258"
  puts "2017-06-03  128  STL   0900       0955        258"
  puts "2017-06-03  384  BOS   1000       1308        867"
  puts "2017-06-03  768  MIA   1100       1456        1197"
  puts "2017-06-03  320  ABQ   1200       1340        1118"

end

def show_flight_details(the_date, the_flight_number)
  # 2. TO DO: use the following instead:
  #    Flight.find_by(date: the_date, flight_number: the_flight_number)
  #
  #    and then display flight information just like the template below.

  puts "Date: 2017-06-02"
  puts "Flight #777"
  puts "From: ORD"
  puts "To  : JFK"
  puts
  puts "Departs At: 10:00am"
  puts "Arrives At:  1:10pm"
  puts
  puts "Frequent Flyer Miles: 740"
  puts
  puts "All times shown are local."
end

#################################################
# Main Program - Do Not Touch
#################################################

path = ARGV.first

if path == '/flights'
  display_all
else
  date, flight_number = path.split('/')[1..2]
  show_flight_details(date, flight_number)
end
