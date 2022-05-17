//TODO:17-05-2022 epik classes
var identityNO;
var obj = {
    name: 'abc',
    age: 12,
    idNo: 34
};
function isTeenOrNot(user) {
    if (user.age >= 13 && user.age <= 19) {
        console.log('teen');
    }
    else {
        console.log('not teen');
    }
}
isTeenOrNot({ name: 'hs', idNo: 13, age: 12 });
//difference b/w interfaces and types
//interafaces are extendable 
// interface Animal {
//     name :string;
// }
// interface Animal {
//     legs :number;
// }
//Animal(name,legs)
// this is called declaration meraging (op thing in interface which is not in types)
// interface Bear extends Animal{
//     honey: boolean
// }
// type Animal = {
//     name:string
// }
// type Bear = Animal &{
//     honey: boolean
// }
//type Assertions
// const myCanvas = document.getElementsById("main_canvas") as HTMLCanvasElement;
//during run time all assertion are removed it will be like
//OUTPUT:
// const myCanvas = document.getElementsById("main_canvas");
// literal
var directions;
var nol;
//it is useful for grp of values not of single value like "let a = 67";
directions = 'EAST';
console.log(directions.length);
// cannot have any value appart from which are declared
