export const groupeType = `
    type Groupe {
    id: ID!
    name: String
    promotionId: Int
    Eleve: [Eleve]
    Promotion: [Promotion]
    Cours: [Cours]
  }
`
