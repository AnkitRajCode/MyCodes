let id:number = 5;
let company:string = 'Ankit Raj';
let isWorking:boolean = true;
let x:any = 'Ankit';

console.log(id);
console.log(company);
//array
let ids:number[] = [1,2,3,4,5];
let companies:string[] = ['Ankit','Raj','Raj','Raj','Raj'];
console.log(ids);
console.log(companies);

//Typle
let person:[number,string,boolean] = [1,'Ankit',true];
console.log(person);

//Typle Array
let persons:[number,string,boolean][];
persons= [[1,'Ankit',true],[2,'Raj',false]];
console.log(persons);

//Union
let pid:string | number;
pid = 'Ankit'; //string
//pid = 1; //number
console.log(pid);

//Enum
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