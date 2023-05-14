export const noteMutation = `
    createNote(note: Int!, eleveId: ID!, matiereId: ID!): Note
    updateNote(id: ID!, note: Int, eleveId: ID, matiereId: ID): Note
`