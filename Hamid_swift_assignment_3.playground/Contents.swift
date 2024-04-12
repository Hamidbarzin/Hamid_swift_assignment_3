

class Ship {
    var name: String
    var year: Int
    var countryOfOrigin : String
    
    init(name:String,year:Int ,countryOfOrigin:String) {
        self.name = name
        self.year = year
        self.countryOfOrigin = countryOfOrigin
        
    }
}


class CruiseShip : Ship {
    let maxCapacity : Int = 20
    var oceanOfOperation : Int = 10
    var currentPassengerCount : Int = 10
    
    var name_ship: String = "ship1"
    var year_ship : Int = 2023
    var countryOfOrigin_ship : String = "Iran"
    
    init() {
        super.init(name: self.name_ship, year: self.year_ship, countryOfOrigin: self.countryOfOrigin_ship)
    }
    
    func add_passanger(){
        if currentPassengerCount < maxCapacity {
            currentPassengerCount = currentPassengerCount + 1
        }else{
            print("ship is full")
        }
    }
    
    func count_passanger(){
        print("currentPassengerCount is ",currentPassengerCount)
    }
    
}


class CargoShip : Ship {
    let maxCargoCapacity : Int = 20
    var currentCargoCount : Int = 10
    var isInternational : Bool = true
    
    var name_ship: String = "ship2"
    var year_ship : Int = 2024
    var countryOfOrigin_ship : String = "India"
    
    init() {
        super.init(name: self.name_ship, year: self.year_ship, countryOfOrigin: self.countryOfOrigin_ship)
    }
    
    func add_Cargo(){
        if currentCargoCount < maxCargoCapacity {
            currentCargoCount = currentCargoCount + 1
        }else{
            print("Cargo is full")
        }
    }
    
    func count_Cargo(){
        print("currentCargoCount is ",currentCargoCount)
    }

}

 
class PirateShip : Ship {
    
    let maxTreasureCapacity : Int = 25
    var currentTreasureCount : Int = 15
    var numberOfCannons : Int = 10
    
    var name_ship: String = "ship3"
    var year_ship : Int = 2024
    var countryOfOrigin_ship : String = "Aragh"
    
    init() {
        super.init(name: self.name_ship, year: self.year_ship, countryOfOrigin: self.countryOfOrigin_ship)
    }
    
    func add_Treasure(){
        if currentTreasureCount < maxTreasureCapacity {
            currentTreasureCount = currentTreasureCount + 1
        }else{
            print("Treasure is full")
        }
    }
    
    func count_Treasure(){
        print("currentTreasureCount is ",currentTreasureCount)
    }
    

}

var ship1 = CruiseShip()
ship1.add_passanger()
ship1.count_passanger()

var ship2 = CargoShip()
ship2.add_Cargo()
ship2.count_Cargo()


var ship3 = PirateShip()
ship3.add_Treasure()
ship3.count_Treasure()
