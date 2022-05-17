//TODO:17-05-2022 epik classes

// type alias
type ID = number | string;

type NameType = string;

let identityNO :ID;

//if there is 'const' you have to initialize it also then and there if you not want to initialize it then go with 'let'

type Userss = {
    name :string;
    age: number;
    idNo :ID;
}

let obj : Userss = {
    name:'abc',
    age:12,
    idNo:34
}

function isTeenOrNot(user:Userss):void{
    if(user.age >= 13 && user.age <= 19){
        console.log('teen');
    }
    else{
        console.log('not teen')
    }
}

isTeenOrNot({name:'hs', idNo:13, age:12})


//TODo: interfaces
interface Animal {
    name :string;
}

interface Bear extends Animal{
    honey: boolean
}

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

let directions : "NORTH"| "SOUTH" | "EAST" | "WEST";
let nol: 0 | 1 | -1;
//it is useful for grp of values not of single value like "let a = 67";
directions = 'EAST';
console.log(directions.length);
// cannot have any value appart from which are declared