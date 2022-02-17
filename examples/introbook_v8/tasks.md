## Кто летел позавчера рейсом Москва (SVO) — Новосибирск (OVB) на месте 1A, и когда он забронировал свой билет?
### Ticket.joins(:booking, ticket_flights: [:flight, :boarding_pass]).where(flights: {departure_airport: "SVO", arrival_airport: "OVB"}, boarding_pass: {seat_no: "1A"}).where("DATE(flights.scheduled_departure) = DATE(bookings.now()) - INTERVAL '2 day'")
