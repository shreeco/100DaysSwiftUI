import Cocoa

//To check your knowledge, here’s a small task for you: create a struct to store information about a car, including its model, number of seats, and current gear, then add a method to change gears up or down. Have a think about variables and access control: what data should be a variable rather than a constant, and what data should be exposed publicly? Should the gear-changing method validate its input somehow?
enum gearState{
    case up
    case down
}

struct Car{
    private let model : String
    var numSeats : Int
    var gear : gearState
    
    mutating func changeGear(){
        if gear == gearState.up{
            self.gear = gearState.down
        } else {
            self.gear = gearState.up
        }
    }
    
    init(model: String, numSeats: Int, gear: gearState) {
        self.model = model
        self.numSeats = numSeats
        self.gear = gear
    }
    
    func getModel(){
        print(self.model)
    }
}

var test = Car(model: "Toyota", numSeats: 5, gear: gearState.up)
test.getModel()
print(test.numSeats)
print(test.gear)
test.changeGear()
print(test.gear)








