// Write your code here!
var tableData = [
    { 'id': '1', 'Book': 'Book1', 'Author': 'Author1', 'Lender': 'UserC', 'Borrower':'UserB', 'Action': '' },
    { 'id': '2', 'Book': 'Book2', 'Author': 'Author2', 'Lender': 'UserC', 'Borrower':'-', 'Action': '' },
    { 'id': '3', 'Book': 'Book3', 'Author': 'Author3', 'Lender': 'UserD', 'Borrower':'UserB', 'Action': '' },
    { 'id': '4', 'Book': 'Book4', 'Author': 'Author4', 'Lender': 'UserA', 'Borrower':'-', 'Action': '' },
    { 'id': '5', 'Book': 'Book5', 'Author': 'Author5', 'Lender': 'UserA', 'Borrower':'-', 'Action': '' },
    { 'id': '6', 'Book': 'Book6', 'Author': 'Author6', 'Lender': 'UserB', 'Borrower':'UserA', 'Action': '' },
]
buildTable(tableData);

function buildTable(data) {
    var table = document.getElementById('info-table');

    for (var i = 0; i < data.length; i++) {
        var row = `<tr>
            <td>${data[i].id}</td>
            <td>${data[i].Book}</td>
            <td>${data[i].Author}</td>
            <td>${data[i].Lender}</td>
            <td>${data[i].Borrower}</td>
            <td>${data[i].Action}</td>

        </tr>`
        table.innerHTML += row;
    }
}

var userHeader = document.getElementById('logged-in-user-name'); // table k uppar message dikhane k liye ki user logged in hai ki nahi
var loginInput = document.getElementById('logged-user'); // input field call kiye hai
var username;

userHeader.innerHTML = "<b>No user logged in</b>";
// Login 
var changeLoggedInUser = () => { //login button function
    if(loginInput.value === username) { // if user input is same as username
        alert("User is already logged in"); 

    } else if(loginInput.value === "") {
        alert("Please enter a username"); // if user didn't enter a username then alert
        userHeader.innerHTML = "<b>No user logged in</b>"; // if user didn't enter a username then user logged in ki message ko remove krna hai
    }
    else {
        username = loginInput.value; //input field k under ka value username mai chala jayega 
        for(var i = 0; i < tableData.length; i++) {
            if(tableData[i].Lender === username) {
                userHeader.innerHTML = "<b>Logged in as: " + username + "</b>";// yaha display ho jayega logged in user ka nam table k uppar
                addBookTableRow (username);
                break; 
            }
            else if(tableData[i].Lender !== username){
                userHeader.innerHTML = "<b>No user logged in</b>";
            }
        }
    }
}

var addBookTableRow = (username) => {
    var infoTable = document.getElementById("info-table");
    infoTable.insertRow(-1).innerHTML =`<tr><td>${infoTable.rows.length-1}</td>
        <td><input type="text" id="book-name" placeholder="title"></td>
        <td><input type="text" id="author-name" placeholder="author"></td>
        <td id="lender-name">${username}</td>
        <td>-</td>
        <td><button id="addbook" onclick="addBook()">Add book</button></td> 
    </tr>`
}

var addBook = () => {
    var bookName = document.getElementById("book-name").value;
    var authorName = document.getElementById("author-name").value;
    var lenderName = document.getElementById("lender-name").innerHTML;
    var book = {
        'id': infoTable.rows.length,
        'Book': bookName,
        'Author': authorName,
        'Lender': lenderName,
        'Borrower': '',
        'Action': '<button onclick="borrowBook(this)">Borrow</button>'
    }
    tableData.push(book);
    buildTable(tableData);
}


const addbutton = () => {
    const tempObject = {};
    tempObject.Id = currentLength;
    tempObject.Title = bookInput.value;
    tempObject.Author = authorInput.value;
    tempObject.Lender = currentUser;
    console.log(tempObject);
    books.push(tempObject);
    mainTable.innerHTML = initialTableContent;
    displayDetails();
    displayAdd();
}

const returnFunction = () => {
    books.forEach(function(book) {
        if(currentUser === book.Borrower) {
            book.Borrower = '';
        }
    })
    mainTable.innerHTML = initialTableContent;
    displayDetails();
    displayAdd();
}

// mainTable.addEventListener('click', function(e) {
//     let id;
//     e.preventDefault();
//     if(e.target.classList.contains('borrow-button')) {
//         id = e.target.getAttribute('id');
//     }
//     //console.log(id);
// })