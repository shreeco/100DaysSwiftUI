import Cocoa

//Your challenge is this: make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. Your protocol should require the following:

//A property storing how many rooms it has.
//A property storing the cost as an integer (e.g. 500,000 for a building costing $500,000.)
//A property storing the name of the estate agent responsible for selling the building.
//A method for printing the sales summary of the building, describing what it is along with its other properties.

protocol Building{
    var rooms : Int { get set }
    var cost : Int { get set }
    var agentName : String { get set }
    func saleSum() -> String
}

struct House : Building {
    var rooms : Int
    var cost : Int
    var agentName: String
    func saleSum() -> String {
        return """
                    House has \(rooms) rooms.
                    House costs \(cost) dollars.
                    House agent name is \(agentName).
                """
    }
}

struct Office : Building {
    var rooms : Int
    var cost : Int
    var agentName: String
    func saleSum() -> String {
        return """
                    Office has \(rooms) rooms.
                    Office costs \(cost) dollars.
                    Office agent name is \(agentName).
                """
    }
}

var samHouse = House(rooms: 8, cost: 200_000, agentName: "Sally")
print(samHouse.saleSum())
var rackOffice = Office(rooms: 1000, cost: 1_000_000, agentName: "Texas")
print(rackOffice.saleSum())










