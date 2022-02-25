let id:number = 5;
let company:string = 'Ankit Raj';
let isWorking:boolean = true;
let x:any = 'Ankit';
console.log(id);
console.log(company);

//TODO: Array
let ids:number[] = [1,2,3,4,5];
let companies:string[] = ['Ankit','Raj','Raj','Raj','Raj'];
console.log(ids);
console.log(companies);

//TODO:Typle
let person:[number,string,boolean] = [1,'Ankit',true];
console.log(person);

//Typle Array
let persons:[number,string,boolean][];
persons= [[1,'Ankit',true],[2,'Raj',false]];
console.log(persons);

//TODO: Union
let pid:string | number;
pid = 'Ankit'; //string
//pid = 1; //number
console.log(pid);

//TODO: Enum
enum Direction {
    Up,
    Down,
    Left,
    Right
}
console.log(Direction.Up);
enum Direction2 {
    Up=1,
    Down,
    Left,
    Right
}
console.log(Direction2.Up);
enum Direction3 {
    Up='UP',
    Down='DOWN',
    Left='LEFT',
    Right='RIGHT'
}
console.log(Direction3.Left);

//TODO: Objects
const Users:{
    id:number,
    name:String
}={
    id:1,
    name:'Ankit'
}
console.log(Users);

type User={
    id:number,
    name:String
}

const Users2:User={
    id:68,
    name:'Ankit Raj'
}
console.log(Users2);

//TODO: Type Assertion
let cid:any = 74;
console.log(cid);
// let count = cid as number;
let count:number = <number>cid;
console.log(count);

//TODO: Function
function add(a:number,b:number):number{
    return a+b;
}
console.log(add(8,4));

//Void function
function log(message: string | number):void{
    console.log(message);
}
log('Ankit');
log(91);

//TODO: Interface
interface Userinterface{
    id:number,
    name: string,
    age?: number, //? -> optional bana dega 
}
const users1:Userinterface={
    id:100,
    name:'Ankit',
    age:21
}
const users11:Userinterface={
    id:105,
    name:'Ankit'
}
users11.id=108; //agar random value aa raha toh error aayega
console.log(users1);
console.log(users11);

type point = number | string
const p1:point  = 112; //or, const p1:point  = 'Ankit'; 
// iss k liye interface nahi use kar paye gai,
// i.e. interface point = number| string
console.log(p1);

//TODO: INTERFACE WITH FUNCTION
interface MathFunc{
    (x:number,y:number):number;
}

const adds: MathFunc = (p:number,z:number):number => p + z;
const sub: MathFunc = (p:number,z:number):number => p - z;

console.log(adds(12,6));
console.log(sub(12,7));

//TODO: Classes - classes are use to create objects
class personClass {
    private id: number; // also can do protected
    name: string;

    constructor(id: number, name: string) { //constructor is use to initialize the values and create the object
        this.id = id; //this is refer to the current object of the class
        this.name = name;
    }
    
    //we can also create methods inside the class known as member function
    register(){
        return `${this.id} ${this.name} is now registered`;
    }
}

const brad = new personClass(140, 'Ankit'); //this is use/trigger to run the constructor
const mike = new personClass(142, 'Raj'); 
// brad.id = 144; //we cannot change the value of id because it is private/protected
// we also can't do console.log(brad.id);
brad.name = 'shubham Singh'; 
console.log(brad,mike);
console.log(brad.register());

//subclass
class Employee extends personClass{
    position: string;
    constructor(id: number, name: string, position: string) {
        super(id, name);
        this.position = position;
    }
}
const emp = new Employee(160, 'john', 'Software Engineer');
console.log(emp);

//Generics
function getArray<T>(items: T[]): T[]{ 
    return new Array().concat(items);
}

let numArray = getArray<number>([1,2,3,4,5]);
let strArray = getArray<string>(['Ankit','Shubham','Satyajeet']);

numArray.push(534);

console.log(numArray);