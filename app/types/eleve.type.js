export const eleveType = `
    type Eleve {
    id: ID!
    firstname: String
    lastname: String
    groupeId: Int
    Groupe: Groupe
    Note: [Note]
  }
`