# petsitter.io #

## Description ##

petsitter.io is a fullstack web application that allows users to search for and contact pet sitters. It also allows pet sitters to sign up and make their information available to clients. Clients may search for pet sitters by
pet type, location, and price. The distance between client and sitter is
determined by a third party zip code API, enabling the app to accurately
estimate how many miles they are away from each other. If clients find sitters they are interested in, they may contact them via e-mail.

### Links ###

*Deployed Client*

<https://shawnfraistat.github.io/petsitter-client>

*Deployed Server*

<https://fast-springs-94214.herokuapp.com/>

*Frontend Repo*

<https://github.com/shawnfraistat/petsitter-client>

*Backend Repo*

<https://github.com/shawnfraistat/petsitter-api>


### Technologies Used ###

HTML, CSS, Javascript, Ruby on Rails, React, Bootstrap, Material-UI

### Set Up and Installation ###

To use the app locally, fork and clone both the front-end and back-end repos,
installing them in separate folders.

Install dependencies for the front-end repo by using ```npm install``` in whatever folder you have cloned it into. Run it with ```npm run start```.

Install dependencies for the back-end repo by using ```bundle install``` in
whatever folder you have cloned it into. Run it with ```rails server```.


### API Info ###

*USER Routes*

(1) ```POST /signup```

Used to create a new user account. Expects a request body that is a FormData object, with ```email```, ```password```, ```password_confirmation```, and ```zip_code``` as required entries and ```image``` as an optional one.

(2) ```POST /signin```

Used to sign into an existing account. Expects a request body of the form ```{ credentials: { email: <valid email>, password: <string> }```.

(3) ```DELETE /signout```

Used to log a user out, deleting their token. Expects a request header with a
valid token.

(4) ```PATCH /edit-profile```

Updates an existing user acccount. Expects a request body that is a FormData object, with ```email```, ```password```, ```password_confirmation```, and ```zip_code``` as required entries and ```image``` as an optional one.

*CLIENT Routes*

(1) ```POST /clients```

Creates a new client account. Expects a request body with ```{ client: { about: <string> } }``` and a header with a valid token.

(2) ```PATCH /clients/:id```

Updates an existing client account. Expects a request body with ```{ client: { about: <string> } }``` and a header with a valid token.

*SITTER Routes*

(1) ```GET /sitters```

Gets the info for all existing sitter accounts. Expects a request header with a
valid token.

(2) ```POST /sitters```

Creates a new sitter account. Expects a request body with ```{ sitter: { name: <string>, about: <string>, price: <integer>, service_range: <integer>, animal_types: <string> } }```, as well as a header with a valid token.

(3) ```PATCH /sitters/:id```

Updates an existing client account. Expects a request body with ```{ sitter: { name: <string>, about: <string>, price: <integer>, service_range: <integer>, animal_types: <string> } }```, where all of the fields are optional, as well as a header with a valid token.

*FAVORITE Routes*

(1) ```GET /favorites```

Returns existing favorites from the server. The request header must contain a valid token.

(2) ```POST /favorites```

Creates a new favorite. Expects a request body of the format ```{ favorite: {
client_id: <existing client_id>, sitter_id: <existing sitter_id> } }```, as well as a request header with valid token.

(3) ```DELETE /favorites/:id```

Deletes an existing favorite. Requires a request header with avalid token.
## Process Info ##

### Strategy ###

I began this project by carefully considering the requirements for a minimum viable product. I then wrote out user stories to help guide the rest of my planning process. My next step was to plan my resources and data structures, drawing out an ERD. Once that was completed, I started work on my front-end,
mocking up a basic version of the website. (I did this so I could refine my
data structure if I thought of additional bits of functionality I wanted to
implement.) I then created my back-end and hooked it up. Once I verified
that the app was working as I intended and met MVP goals, I began implementing a few of the stretch goals I set for myself. Finally, I polished the site's styling.

### Planning Documents ###

*Petsitter ERD*

<https://projects.invisionapp.com/freehand/document/E2aBXw36c>

*Petsitter Wireframes*

<https://projects.invisionapp.com/freehand/document/630C8HW3L>

### User Stories ###

*General*

    As a user, I want to be able to create an account.
    As a user, I want to be able to sign in.
    As a user, I want to be able to sign out.
    As a user, I want to be able to change my password.
    As a user, I want to be able to create a client account.
    As a user, I want to be able to create a sitter account.
    As a user, I want to be able to switch between accounts.

*Client Stories*

    As a user, I want to be able to find petsitters.
    As a user, I want to be able to filter my searches by location.
    As a user, I want to be able to filter my searches by pet type.
    As a user, I want to be able to filter my searches by price.
    As a user, I want to be able to contact petsitters.

*Sitter Stories*

    As a user, I want clients to able to search for me.
    As a user, I want clients to be able to read about my prices.
    As a user, I want clients to know what kinds of pets I sit for.
    As a user, I want clients to be able to contact me.

### Future Goals and Unsolved Problems ####

1. Add ability to for sitters to define availability, and clients to search by date range.
2. Add ability for clients and sitters to "match" and chat.
3. Add ability for sitters to view profiles of clients who request them.
4. Add ability for clients to create substantial profiles. (Pics of pets,  etc.)
5. As corollary of goal #4, add pets as a separate resource.
6. Add ability for clients to review sitters.
7. Refactor React logic.
8. Adjust styling problems with footer.
