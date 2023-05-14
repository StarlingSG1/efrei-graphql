export const coursQuery = `
    getCours: [Cours]
    getOneCours(id: ID!): Cours
    getFormateurCours(formateurId: ID!): [Cours]
    getSalleCours(salleId: ID!): [Cours]
`