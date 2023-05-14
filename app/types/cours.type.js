export const coursType = `
    type Cours {
    id: ID!
    name: String
    startTime: String
    endTime: String
    matiereId: Int
    Matiere: Matiere
    salleId: Int
    formateurId: Int
    Formateur: Formateur
    Salle: Salle
    groupeId: Int
    Groupe: Groupe
  }
`