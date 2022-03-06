// Write your code here!
var tableData = [
    { 'id': '1', 'Book': 'Book1', 'Author': 'Author1', 'Lender': 'UserC', 'Borrower':'UserB', 'Action': '-' },
    { 'id': '2', 'Book': 'Book2', 'Author': 'Author2', 'Lender': 'UserC', 'Borrower':'-', 'Action': '-' },
    { 'id': '3', 'Book': 'Book3', 'Author': 'Author3', 'Lender': 'UserD', 'Borrower':'UserB', 'Action': '-' },
    { 'id': '4', 'Book': 'Book4', 'Author': 'Author4', 'Lender': 'UserA', 'Borrower':'-', 'Action': '-' },
    { 'id': '5', 'Book': 'Book5', 'Author': 'Author5', 'Lender': 'UserA', 'Borrower':'-', 'Action': '-' },
    { 'id': '6', 'Book': 'Book6', 'Author': 'Author6', 'Lender': 'UserB', 'Borrower':'UserA', 'Action': '-' },
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

var userHeader = document.getElementById('logged-in-user-name'); 
var loginInput = document.getElementById('logged-user'); 
var username;
var userlogin = 0;
userHeader.innerHTML = "<b>No user logged in</b>";
// Login 
var changeLoggedInUser = () => { 
    buildTable.innerHTML = initialTable;
    if(loginInput.value === username) {
        alert("User is already logged in"); 

    } else if(loginInput.value === "") {
        alert("Please enter a username"); 
        userHeader.innerHTML = "<b>No user logged in</b>"; 
    }
    else {
        username = loginInput.value; 
        for(var i = 0; i < tableData.length; i++) {
            if(tableData[i].Lender === username) {
                userHeader.innerHTML = "<b>Logged in as: " + username + "</b>";
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
    infoTable.insertRow(-1).innerHTML =`<tr>
        <td>${infoTable.rows.length-1}</td>
        <td><input type="text" id="book-name" placeholder="Title"></td>
        <td><input type="text" id="author-name" placeholder="Author"></td>
        <td id="lender-name">${username}</td>
        <td>-</td>
        <td><button id="addbook" onclick="addBook()">Add Book</button></td> 
    </tr>`;
}

var emptyFields = () => {
    if (titleName.length === 0 && authorName.length === 0){
        alert("Enter Author & Book Name!");
    }
    else if (authorName.length === 0){
        alert("Enter The Author Name!");
    }
    else{
        alert("Enter The Book Name!");
    }
}

function addNewBook() {
    console.log("daskhcahd");
    var titleName = document.getElementById("titleId").value;

    var authorName = document.getElementById("authorId").value;
    if (titleName.length > 0 && authorName.length > 0 && title.indexOf(titleName) === -1) {
        title.push(titleName);
        var tableRef = document.getElementById("info-table");
        var rowCount = tableRef.rows.length;
        tableRef.deleteRow(rowCount - 1);
        tableRef.insertRow(-1).innerHTML = `<tr>
            <td>${tableRef.rows.length-1}</td>
            <td>${titleName}</td>
            <td>${authorName}</td>
            <td>${username}</td>
            <td>-</td>
            <td>-</td>
        </tr>`;
        addBookRow(username);
    } 
    else if (title.indexOf(titleName) !== -1){
        alert("Book already exists!");
    } 
    else{
        emptyFields();
    }
}


var returnBtn = (i) => {
    document.getElementById("info-table").rows[i].cells[5].innerHTML = `<button id="borrow" onclick="borrowBtn(${i})">Borrow</button>`;
    document.getElementById("info-table").rows[i].cells[4].innerHTML = "-";
}

var borrowBtn = (i) => {
    document.getElementById("info-table").rows[i].cells[5].innerHTML = `<button id="return" onclick="returnBtn(${i})">Return</button>`;
    document.getElementById("info-table").rows[i].cells[4].innerHTML = username;
}