import { coursMutation } from "./cours.mutation.js";
import { eleveMutation } from "./eleve.mutation.js";
import { formateurMutation } from "./formateur.mutation.js";
import { groupeMutation } from "./groupe.mutation.js";
import { matiereMutation } from "./matiere.mutation.js";
import { noteMutation } from "./note.mutation.js";
import { promotionMutation } from "./promotion.mutation.js";
import { salleMutation } from "./salle.mutation.js";

export const mutations = `
    type Mutation
    {
    ${coursMutation}
    ${eleveMutation}
    ${formateurMutation}
    ${groupeMutation}
    ${matiereMutation}
    ${noteMutation}
    ${promotionMutation}
    ${salleMutation}
}
`