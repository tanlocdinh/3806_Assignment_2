theory SET171_Faithful
  imports Main
begin

typedecl i

consts
  member :: "i ⇒ i ⇒ bool"
  union :: "i ⇒ i ⇒ i"
  intersection :: "i ⇒ i ⇒ i"
  subset :: "i ⇒ i ⇒ bool"

axiomatization where
  union_defn:
    "∀B C D. member D (union B C) ⟷ (member D B ∨ member D C)"
and
  intersection_defn:
    "∀B C D. member D (intersection B C) ⟷ (member D B ∧ member D C)"
and
  equal_defn:
    "∀B C. B = C ⟷ (subset B C ∧ subset C B)"
and
  commutativity_of_union:
    "∀B C. union B C = union C B"
and
  commutativity_of_intersection:
    "∀B C. intersection B C = intersection C B"
and
  subset_defn:
    "∀B C. subset B C ⟷ (∀D. member D B ⟶ member D C)"
and
  reflexivity_of_subset:
    "∀B. subset B B"
and
  equal_member_defn:
    "∀B C. B = C ⟷ (∀D. member D B ⟷ member D C)"

lemma prove_union_distributes_over_intersection:
  "union B (intersection C D) = intersection (union B C) (union B D)"
  by (metis equal_member_defn intersection_defn union_defn)

end
