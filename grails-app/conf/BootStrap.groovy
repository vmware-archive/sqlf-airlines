import com.pivotal.sqlfire.Airline

class BootStrap {

    def init = { servletContext ->
		Airline a1 = new Airline(
			airline: 'AA',
			airlineFull:'Amazonian Airways',
			basicRate:  0.18,
			distanceDiscount: 0.03,
			businessLevelFactor: 0.5,
			firstClassLevelFactor: 1.5,
			economySeats: 20,
			businessSeats: 10,
			firstClassSeats: 5
			)
	a1.save(flush:true)
	Airline a2 = new Airline(
		airline: 'US',
		airlineFull:'Union Standard Airlines',
		basicRate:  0.19,
		distanceDiscount: 0.05,
		businessLevelFactor: 0.4,
		firstClassLevelFactor: 1.6,
		economySeats: 20,
		businessSeats: 10,
		firstClassSeats: 5
		)
	a2.save(flush:true)
    }
    def destroy = {
    }
}
