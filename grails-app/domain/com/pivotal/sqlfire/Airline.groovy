package com.pivotal.sqlfire

class Airline {
	String airline 
	String airlineFull
	Double basicRate
	Double distanceDiscount 
	Double businessLevelFactor 
	Double firstClassLevelFactor 
	int economySeats 
	int businessSeats 
	int firstClassSeats 

	static mappings = {
		table 'airlines'
		version false
		id column: 'AIRLINE'
		airline column: 'AIRLINE_FULL'
		basicRate column: 'BASIC_RATE'
		distanceCount column: 'DISTANCE_DISCOUNT'
		businessLevelFactor column: 'BUSINESS_LEVEL_FACTOR'
		firstClassLevelFactor column: 'FIRSTCLASS_LEVEL_FACTOR'
		economySeats column: 'ECONOMY_SEATS'
		businessSeats column: 'BUSINESS_SEATS'
		firstClassSeats column: 'FIRSTCLASS_SEATS'
	}

	    static constraints = {
			
    }
}
