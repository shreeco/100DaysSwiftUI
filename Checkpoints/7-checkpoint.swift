import Cocoa

//Your challenge is this: make a class hierarchy for animals, starting with Animal at the top, then Dog and Cat as subclasses, then Corgi and Poodle as subclasses of Dog, and Persian and Lion as subclasses of Cat.

//But there’s more:

//The Animal class should have a legs integer property that tracks how many legs the animal has.
//The Dog class should have a speak() method that prints a generic dog barking string, but each of the subclasses should print something slightly different.
//The Cat class should have a matching speak() method, again with each subclass printing something different.
//The Cat class should have an isTame Boolean property, provided using an initializer.

class Animal {
    var legs : Int
    var color : String
    
    init(legs: Int, _ color: String) {
        self.legs = legs
        self.color = color
    }
}

class Dog : Animal {
    func speak() {
        print("Dog barking")
    }
    
    init(_ color: String) {
        super.init(legs: 4, color)
    }
}

class Cat : Animal {
    var isTame : Bool
    
    func speak() {
        print("Cat meowing")
    }
    
    init(_ isTame: Bool, _ color: String) {
        self.isTame = isTame
        super.init(legs: 4, color)
    }
    
}

class Corgi : Dog {
    
    var fluffy : Bool
    
    override func speak() {
        print("Corgi barking")
    }
    
    init(fluffy: Bool, _ color: String) {
        self.fluffy = fluffy
        super.init(color)
    }
    
}

class Poodle : Dog {
    
    override func speak() {
        print("Poodle barking")
    }
}

class Persian : Cat {
    
    override func speak() {
        print("Persian meowing")
    }
}

class Lion : Cat {
    
    override func speak() {
        print("Lion meowing")
    }
}

var dog = Dog("Brown")
dog.speak()
print(dog.legs)
print(dog.color)
var cat = Cat(true, "Black")
cat.speak()
print(cat.color)
var persian = Persian(true, "Yellow")
persian.speak()
print(persian.color)
