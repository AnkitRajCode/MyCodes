// Write your code here!

const mainTable = document.querySelector('.book-table');
const loginInput = document.querySelector('#logged-user');
const mainHeader = document.querySelector('#logged-in-user-name');
let bookInput = document.querySelector('.book-input');
let authorInput = document.querySelector('.author-input');

const BookDetails1 = {
    Id: '1',
    Title: 'Book1',
    Author: 'Author1',
    Lender: 'UserC',
    Borrower: 'UserB'
}
const BookDetails2 = {
    Id: '2',
    Title: 'Book2',
    Author: 'Author2',
    Lender: 'UserC'
}
const BookDetails3 = {
    Id: '3',
    Title: 'Book3',
    Author: 'Author3',
    Lender: 'UserD',
    Borrower: 'UserC'
}
const BookDetails4 = {
    Id: '4',
    Title: 'Book4',
    Author: 'Author4',
    Lender: 'UserA'
}
const BookDetails5 = {
    Id: '5',
    Title: 'Book5',
    Author: 'Author5',
    Lender: 'UserA'
}
const BookDetails6 = {
    Id: '6',
    Title: 'Book6',
    Author: 'Author6',
    Lender: 'UserB',
    Borrower: 'UserA'
}

const books = [BookDetails1, BookDetails2, BookDetails3, BookDetails4, BookDetails5, BookDetails6];

const users = ['UserA', 'UserB', 'UserC', 'UserD'];

let currentUser, currentLength;

const initialTableContent = mainTable.innerHTML;

const tableInitialData = () => {
    mainTable.innerHTML = initialTableContent;
    displayDetails();
    displayAdd();
}

const displayHeader = () => {
    if(currentUser) {
        mainHeader.textContent = `Logged in user: ${currentUser}`;
    } else {
        mainHeader.textContent = 'No user Logged in';
    }
}

const displayDetails = () => {
    books.forEach(function(book) {
        const html = `
        <tr>
            <td>${book.Id}</td>
            <td>${book.Title}</td>
            <td>${book.Author}</td>
            <td>${book.Lender}</td>
            <td>${book.Borrower ? book.Borrower : '-'}</td>
            <td>${
                !currentUser ? '-' : `${
                    currentUser === book.Borrower ? `<button onClick="returnFunction(this.id)" class="return-button" id="${book.Id}">return</button>` : `${
                        (currentUser === book.Lender) ? '-' : `${
                            books.includes(book) && book.Borrower ? '-' : `<button onClick="borrowFunction(this.id)" class="borrow-button" id="${book.Id}">borrow</button>`
                        }`
                    }`
                }`
            }</td>
        </tr>
        `;
        mainTable.insertAdjacentHTML('beforeend',html);
    })
}

displayHeader();
displayDetails();

const changeLoggedInUser =  () => {
    if(loginInput.value === currentUser) {
        alert("Already logged in!");
        return;
    }
    if(users.includes(loginInput.value))
        currentUser = loginInput.value;
    else{
        currentUser='';
        displayHeader();
        mainTable.innerHTML = initialTableContent;
        displayDetails();
        alert("No Such User Exists");
        return;
    }
    displayHeader();
    tableInitialData();
    loginInput.value = '';
}

const displayAdd = () => {
        currentLength = books.length;
        const html = `
        <tr>
            <td>${String(++currentLength)}</td>
            <td>${'<input class="book-input" type="text" placeholder="title">'}</td>
            <td>${'<input class="author-input" type="text" placeholder="author">'}</td>
            <td>${currentUser}</td>
            <td>-</td>
            <td><button onClick="addbutton()" class="btn-add">add</button></td>
        </tr>
        `;
        mainTable.insertAdjacentHTML('beforeend',html);
}

const addbutton = () => {
    bookInput = document.querySelector('.book-input');
    authorInput = document.querySelector('.author-input');
    const tempObject = {};
    tempObject.Id = String(currentLength);
    tempObject.Title = bookInput.value;
    tempObject.Author = authorInput.value;
    tempObject.Lender = currentUser;
    let check = true;
    if(tempObject.Title === '' || tempObject.Author === '') {
        alert("Please enter both book and author name");
        return;
    }
    books.some(function(book) {
        if(book.Title === tempObject.Title) {
            check = false;
        }
    })
    if(check) {
        books.push(tempObject);
        tableInitialData();
    }
    else{
        alert("Book already exists!");
    }
}

const returnFunction = (clicked) => {
    books.forEach(function(book) {
        if(book.Id === clicked) {
            book.Borrower = ''
        }
    })
    tableInitialData();
}

const borrowFunction = (clicked) => {
    books.forEach(function(book) {
        if(book.Id === clicked) {
            book.Borrower = currentUser;
            tableInitialData();
        }
    })
}