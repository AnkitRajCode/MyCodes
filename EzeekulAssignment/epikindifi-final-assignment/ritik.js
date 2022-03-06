// Write your code here!

document.querySelector("#logged-in-user-name").textContent='No user Logged In';

const table = document.getElementById('info-table');

let initialContent = table.innerHTML;

let currentLength;


//Array of Users 

const users = ['UserA','UserB','UserC','UserD'];

//Array of Objects

var myArray = [
               {
                 'id':'1',
                 'title':'Book 1',
                 'author':'Author 1',
                 'user':'UserC',
                 'borrower':'UserB',
                 'action':'-'
               },
               {
                'id':'2',
                'title':'Book 2',
                'author':'Author 2',
                'user':'UserC',
                'borrower':'-',
                'action':'-'
               },
               {
                 'id':'3',
                 'title':'Book 3',
                 'author':'Author 3',
                 'user':'UserD',
                 'borrower':'UserC',
                 'action':'-'
                },
               {
                 'id':'4',
                 'title':'Book 4',
                 'author':'Author 4',
                 'user':'UserA',
                 'borrower':'-',
                 'action':'-'
                },
                {
                 'id':'5',
                 'title':'Book 5',
                'author':'Author 5',
                'user':'UserA',
                'borrower':'-',
                'action':'-'
                },
               {
                'id':'6',
                'title':'Book 6',
                'author':'Author 6',
                'user':'UserB',
                'borrower':'UserA',
                'action':'-'
               },
              ];

//borrorw button function

function borrowButton(val)
{
  myArray[val-1].action = `<button id = "${myArray[val-1].id}" onClick="returnButton(this.id)">Return</button>`; 
  myArray[val-1].borrower = document.getElementById("logged-user").value;
  Refresher();
  addRow();
}

//return button function

function returnButton(val)
{
  myArray[val-1].borrower = '-';
  myArray[val-1].action = `<button id = "${myArray[val-1].id}" onClick="borrowButton(this.id)">Borrow</button>`;
  Refresher();
  addRow();

}

//Refeshes the table 

function Refresher()
{
  table.innerHTML = initialContent;
  buildTable(myArray);
}

//When user LogIN

function changeLoggedInUser()
 {
    let username = document.getElementById("logged-user").value;
    if(users.includes(username) == true){
      document.querySelector("#logged-in-user-name").textContent=`Logged in user : ${username}`;
      for(let i=0;i<myArray.length;i++){
        if(myArray[i].borrower === '-' && myArray[i].user != username )
        {
          myArray[i].action = `<button id = "${myArray[i].id}" onClick="borrowButton(this.id)">Borrow</button>`;
          Refresher();
        }
        else if(myArray[i].borrower === username )
        {
          myArray[i].action = `<button id = "${myArray[i].id}" onClick="returnButton(this.id)">Return</button>`;
          Refresher();
        }
        else if(myArray[i].borrower != username)
        {
          myArray[i].action = '-';
          Refresher();
        }
        else if(myArray[i].user === username)
        {
          myArray[i].action = '-';
          Refresher();
        }
      }
      addRow(); 
    }

    else{
      username='';
      myArray.forEach(function(arr){
        arr.action='-';
      })
      document.querySelector("#logged-in-user-name").textContent=' ';
      document.querySelector("#logged-in-user-name").textContent='No user Logged In';
      alert('User does not exist'); 
      Refresher();
    }
}

//Display the current latest update in table 

function buildTable(data){
    for(var i = 1 ;i <= data.length; i++){
        var row = `<tr>
                      <td>${data[i-1].id}</td>
                      <td>${data[i-1].title}</td>
                      <td>${data[i-1].author}</td>
                      <td>${data[i-1].user}</td>
                      <td>${data[i-1].borrower}</td>
                      <td>${data[i-1].action}</td>
                    </tr>`
         table.innerHTML += row;
        }
      }

    buildTable(myArray);


    //Add a row when user exists/ identified

    function addRow()
    {
        var table = document.getElementById('info-table');
        currentLength = myArray.length;
        var row = 
        `<tr>
          <td>${String(++currentLength)}</td>
          <td>${'<input type="text" id="bookName" name="bookName" placeholder="Title Name"></input>'}</td>
          <td>${'<input type="text" id="aname" name="aname" placeholder="Author Name"></input>'}</td>
          <td>${document.getElementById("logged-user").value}</td>
          <td>${'-'}</td>
          <td>${'<button onClick="addButton()" id="add_book">Add book</button>'}</td>
        </tr>`
      table.innerHTML += row;
    }

    
    //Add button function
  
    const addButton = () => {
      const bookName = document.getElementById('bookName');
      const aname = document.getElementById('aname');
      const tempObject = {};
      tempObject.id = String(currentLength);
      tempObject.title = bookName.value;
      tempObject.author = aname.value;
      tempObject.user = document.getElementById("logged-user").value;
      tempObject.borrower = '-';
      tempObject.action = '-';

      if(tempObject.title === '' || tempObject.author === '' || tempObject.title === '' && tempObject.author === '')
      {
        alert("Title and Author cannot be empty!");
      }

      else 
      {
       let check=true;

       myArray.some(function(t)
       {
         if(t.title === tempObject.title)
         {
          alert(" Book exist! Please add a unique book ");
          check = false;
         }
       }
       )

       if(check) 
       {
        myArray.push(tempObject);
        Refresher();
        addRow();
       }
      }
    }