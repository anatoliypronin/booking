### Кто летел позавчера рейсом Москва (SVO) — Новосибирск (OVB) на месте 1A, и когда он забронировал свой билет?
####
      Ticket.joins(:booking, ticket_flights: [:flight, :boarding_pass])
            .where(flights: {departure_airport: "SVO", arrival_airport: "OVB"}, boarding_pass: {seat_no: "1A"})
            .where("DATE(flights.scheduled_departure) = DATE(bookings.now()) - INTERVAL '2 day'")

### Сколько мест осталось незанятыми вчера на рейсе PG0404
####
      Seat.joins(aircraft: :flights)
           .where(flights: {flight_no: "PG0404"})
           .where("DATE(flights.scheduled_departure) = DATE(bookings.now()) - INTERVAL '1 day'").count -
      BoardingPass.joins(ticket_flight: {flight: :aircraft})
                  .joins("RIGHT OUTER JOIN seats ON boarding_passes.seat_no = seats.seat_no AND seats.aircraft_code = flights.aircraft_code")
                  .where(flights: {flight_no: "PG0404"})
                  .where("DATE(flights.scheduled_departure) = DATE(bookings.now()) - INTERVAL '1 day'").count
