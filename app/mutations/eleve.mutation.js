export const eleveMutation = `
    createEleve(firstname: String!, lastname: String!, groupeId: Int!): Eleve
    updateEleve(id: ID!, firstname: String, lastname: String, groupeId: Int): Eleve
    deleteEleve(id: ID!): Eleve
`