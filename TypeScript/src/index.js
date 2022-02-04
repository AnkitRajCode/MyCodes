var id = 5;
var company = 'Ankit Raj';
var isWorking = true;
var x = 'Ankit';
console.log(id);
console.log(company);
//array
var ids = [1, 2, 3, 4, 5];
var companies = ['Ankit', 'Raj', 'Raj', 'Raj', 'Raj'];
console.log(ids);
console.log(companies);
//Typle
var person = [1, 'Ankit', true];
console.log(person);
//Typle Array
var persons;
persons = [[1, 'Ankit', true], [2, 'Raj', false]];
console.log(persons);
//Union
var pid;
pid = 'Ankit'; //string
//pid = 1; //number
console.log(pid);
//Enum
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
