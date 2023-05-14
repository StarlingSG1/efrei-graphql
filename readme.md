# efrei-graphql

## Installation
- Use the command `npm i` to install the dependencies
- Use the command `npx prisma db seed` to seed the database
- You can use `npx prisma migrate reset` to reset the database and seed it again

## Usage
- On the url `http://localhost:3000/graphql` you can access the GraphQL playground

## Queries
- You can use the queries inside the `queryGraphQL.txt` to get data from the database

## Architecture
- The project is divided in 3 files/folders:
    - The `prisma` folder contains the database schema and the seed data
    - The `server.js` file is the entry point of the application
    - The `app` folder contains 4 folders : 
        - `controllers` contains all the controllers of each entity
        - `mutations` contains all the mutations of each entity
        - `queries` contains all the queries of each entity
        - `types` contains all the types of each entity