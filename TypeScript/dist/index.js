"use strict";
let id = 5;
let company = 'Ankit Raj';
let isWorking = true;
let x = 'Ankit';
console.log(id);
console.log(company);
//TODO: Array
let ids = [1, 2, 3, 4, 5];
let companies = ['Ankit', 'Raj', 'Raj', 'Raj', 'Raj'];
console.log(ids);
console.log(companies);
//TODO:Typle
let person = [1, 'Ankit', true];
console.log(person);
//Typle Array
let persons;
persons = [[1, 'Ankit', true], [2, 'Raj', false]];
console.log(persons);
//TODO: Union
let pid;
pid = 'Ankit'; //string
//pid = 1; //number
console.log(pid);
//TODO: Enum
var Direction;
(function (Direction) {
    Direction[Direction["Up"] = 0] = "Up";
    Direction[Direction["Down"] = 1] = "Down";
    Direction[Direction["Left"] = 2] = "Left";
    Direction[Direction["Right"] = 3] = "Right";
})(Direction || (Direction = {}));
console.log(Direction.Up);
var Direction2;
(function (Direction2) {
    Direction2[Direction2["Up"] = 1] = "Up";
    Direction2[Direction2["Down"] = 2] = "Down";
    Direction2[Direction2["Left"] = 3] = "Left";
    Direction2[Direction2["Right"] = 4] = "Right";
})(Direction2 || (Direction2 = {}));
console.log(Direction2.Up);
var Direction3;
(function (Direction3) {
    Direction3["Up"] = "UP";
    Direction3["Down"] = "DOWN";
    Direction3["Left"] = "LEFT";
    Direction3["Right"] = "RIGHT";
})(Direction3 || (Direction3 = {}));
console.log(Direction3.Left);
//TODO: Objects
const Users = {
    id: 1,
    name: 'Ankit'
};
console.log(Users);
const Users2 = {
    id: 68,
    name: 'Ankit Raj'
};
console.log(Users2);
//TODO: Type Assertion
let cid = 74;
console.log(cid);
// let count = cid as number;
let count = cid;
console.log(count);
//TODO: Function
function add(a, b) {
    return a + b;
}
console.log(add(8, 4));
//Void function
function log(message) {
    console.log(message);
}
log('Ankit');
log(91);
const users1 = {
    id: 100,
    name: 'Ankit',
    age: 21
};
const users11 = {
    id: 105,
    name: 'Ankit'
};
users11.id = 108; //agar random value aa raha toh error aayega
console.log(users1);
console.log(users11);
const p1 = 112; //or, const p1:point  = 'Ankit'; 
// iss k liye interface nahi use kar paye gai,
// i.e. interface point = number| string
console.log(p1);
const adds = (p, z) => p + z;
const sub = (p, z) => p - z;
console.log(adds(12, 6));
console.log(sub(12, 7));
//TODO: Classes - classes are use to create objects
class personClass {
    constructor(id, name) {
        this.id = id; //this is refer to the current object of the class
        this.name = name;
    }
    //we can also create methods inside the class known as member function
    register() {
        return `${this.id} ${this.name} is now registered`;
    }
}
const brad = new personClass(140, 'Ankit'); //this is use/trigger to run the constructor
const mike = new personClass(142, 'Raj');
// brad.id = 144; //we cannot change the value of id because it is private/protected
// we also can't do console.log(brad.id);
brad.name = 'shubham Singh';
console.log(brad, mike);
console.log(brad.register());
//subclass
class Employee extends personClass {
    constructor(id, name, position) {
        super(id, name);
        this.position = position;
    }
}
const emp = new Employee(160, 'john', 'Software Engineer');
console.log(emp);
//Generics
function getArray(items) {
    return new Array().concat(items);
}
let numArray = getArray([1, 2, 3, 4, 5]);
let strArray = getArray(['Ankit', 'Shubham', 'Satyajeet']);
numArray.push(534);
console.log(numArray);
