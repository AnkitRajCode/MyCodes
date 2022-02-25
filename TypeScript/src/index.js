var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var id = 5;
var company = 'Ankit Raj';
var isWorking = true;
var x = 'Ankit';
console.log(id);
console.log(company);
//TODO: Array
var ids = [1, 2, 3, 4, 5];
var companies = ['Ankit', 'Raj', 'Raj', 'Raj', 'Raj'];
console.log(ids);
console.log(companies);
//TODO:Typle
var person = [1, 'Ankit', true];
console.log(person);
//Typle Array
var persons;
persons = [[1, 'Ankit', true], [2, 'Raj', false]];
console.log(persons);
//TODO: Union
var pid;
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
var Users = {
    id: 1,
    name: 'Ankit'
};
console.log(Users);
var Users2 = {
    id: 68,
    name: 'Ankit Raj'
};
console.log(Users2);
//TODO: Type Assertion
var cid = 74;
console.log(cid);
// let count = cid as number;
var count = cid;
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
var users1 = {
    id: 100,
    name: 'Ankit',
    age: 21
};
var users11 = {
    id: 105,
    name: 'Ankit'
};
users11.id = 108; //agar random value aa raha toh error aayega
console.log(users1);
console.log(users11);
var p1 = 112; //or, const p1:point  = 'Ankit'; 
// iss k liye interface nahi use kar paye gai,
// i.e. interface point = number| string
console.log(p1);
var adds = function (p, z) { return p + z; };
var sub = function (p, z) { return p - z; };
console.log(adds(12, 6));
console.log(sub(12, 7));
//TODO: Classes - classes are use to create objects
var personClass = /** @class */ (function () {
    function personClass(id, name) {
        this.id = id; //this is refer to the current object of the class
        this.name = name;
    }
    //we can also create methods inside the class known as member function
    personClass.prototype.register = function () {
        return "".concat(this.id, " ").concat(this.name, " is now registered");
    };
    return personClass;
}());
var brad = new personClass(140, 'Ankit'); //this is use/trigger to run the constructor
var mike = new personClass(142, 'Raj');
// brad.id = 144; //we cannot change the value of id because it is private/protected
// we also can't do console.log(brad.id);
brad.name = 'shubham Singh';
console.log(brad, mike);
console.log(brad.register());
//subclass
var Employee = /** @class */ (function (_super) {
    __extends(Employee, _super);
    function Employee(id, name, position) {
        var _this = _super.call(this, id, name) || this;
        _this.position = position;
        return _this;
    }
    return Employee;
}(personClass));
var emp = new Employee(160, 'john', 'Software Engineer');
console.log(emp);
//Generics
function getArray(items) {
    return new Array().concat(items);
}
var numArray = getArray([1, 2, 3, 4, 5]);
var strArray = getArray(['Ankit', 'Shubham', 'Satyajeet']);
numArray.push(534);
console.log(numArray);
