import express from 'express';
import { graphqlHTTP } from 'express-graphql';
import { buildSchema } from 'graphql';
import { mutations } from './app/mutations/_index.js';
import { queries } from './app/query/_index.js';
import { types } from './app/types/_index.js';
import { controllers } from './app/controllers/_index.js';

const app = express();

app.use(express.json());

const schema = buildSchema(`
${types}
${queries}
${mutations}
`);

app.use('/graphql', graphqlHTTP({
    schema: schema,
    rootValue: controllers,
    graphiql: true
}));


app.listen(3000, () => {
    console.log('Server is running on http://localhost:3000');
});