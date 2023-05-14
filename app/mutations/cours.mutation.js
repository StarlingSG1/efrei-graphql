export const coursMutation = `
    createCours(name: String!, matiereId: ID!, salleId: ID!, groupeId: ID!, startTime: String!, endTime: String!, formateurId: ID!): Cours
    updateCours(id: ID!, name: String, matiereId: ID, salleId: ID, groupeId: ID, startTime: String, endTime: String, formateurId: ID): Cours
    deleteCours(id: ID!): Cours
`