// This is to show diffrance between Struct and class


struct PersonStruct {   //No Need to init
    var name:String
    var age:Int
    
    mutating func upperCaseName(){ // As Struct is value type, updating the value is like making a new copy
        name = name.uppercased()
    }
    
}

class PersonClassInit1 { // without init gives error example : 1
    var name:String
    var age:Int
    init(_name:String,_age:Int) {
        name = _name
        age = _age
    }
    func upperCaseName(){         // As Class is reference type, updating the value is like updating the onsame reference
        name = name.uppercased()
    }
}

class PersonClassInit2 { // without init gives error example : 2
    var name:String = "Arun_C2"
    var age:Int = 27
    func upperCaseName(){
        name = name.uppercased()
    }
}

var pStruct = PersonStruct(name: "Arun_S", age: 25)  //Struct auto completes params required
let pClass1 = PersonClassInit1(_name: "Arun_C1", _age: 26) // params accourding to init function
let pClass2 = PersonClassInit2() // No need of params

print(pStruct.name) // --- Arun_S ---
print(pClass1.name) // --- Arun_C1 ---
print(pClass2.name) // --- Arun_C2 ---

let pStructCopy = pStruct
pStruct.name = "Arun_S_Updated"

let pClass1Copy = pClass1
pClass1.name = "Arun_C1_Updated"

let pClass2Copy = pClass2
pClass2.name = "Arun_C2_Updated"

print(pStruct.name) // --- Arun_S_Updated ---
print(pStructCopy.name) // --- Arun_S ---           // As its a call by value only pStruct changed its value and not pStructCopy


print(pClass1.name) // --- Arun_C1_Updated ---
print(pClass1Copy.name) // --- Arun_C1_Updated ---  // As its a call by reference so, pClass1 and pClass1Copy both updated after updating pClass1 value.



print(pClass2.name) // --- Arun_C2_Updated ---
print(pClass2Copy.name) // --- Arun_C2_Updated ---



