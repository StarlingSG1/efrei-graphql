import { coursQuery } from "./cours.query.js";
import { eleveQuery } from "./eleve.query.js";
import { formateurQuery } from "./formateur.query.js";
import { groupeQuery } from "./groupe.query.js";
import { matiereQuery } from "./matiere.query.js";
import { noteQuery } from "./note.query.js";
import { promotionQuery } from "./promotion.query.js";
import { salleQuery } from "./salle.query.js";

export const queries = `
    type Query 
    {${coursQuery}
    ${eleveQuery}
    ${formateurQuery}
    ${groupeQuery}
    ${matiereQuery}
    ${noteQuery}
    ${promotionQuery}
    ${salleQuery}
}
`