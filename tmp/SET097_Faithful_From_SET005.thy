theory SET097_Faithful_From_SET005
  imports Main
begin

typedecl i

consts
  member :: "i ⇒ i ⇒ bool"
  subclass :: "i ⇒ i ⇒ bool"
  universal_class :: i
  unordered_pair :: "i ⇒ i ⇒ i"
  singleton :: "i ⇒ i"
  intersection :: "i ⇒ i ⇒ i"
  complement :: "i ⇒ i"
  null_class :: i

axiomatization where
  subclass_defn:
    "∀X Y. subclass X Y ⟷ (∀U. member U X ⟶ member U Y)"
and
  extensionality:
    "∀X Y. X = Y ⟷ (subclass X Y ∧ subclass Y X)"
and
  unordered_pair_defn:
    "∀U X Y. member U (unordered_pair X Y) ⟷
      (member U universal_class ∧ (U = X ∨ U = Y))"
and
  unordered_pair:
    "∀X Y. member (unordered_pair X Y) universal_class"
and
  singleton_set_defn:
    "∀X. singleton X = unordered_pair X X"
and
  intersection:
    "∀X Y Z. member Z (intersection X Y) ⟷
      (member Z X ∧ member Z Y)"
and
  complement:
    "∀X Z. member Z (complement X) ⟷
      (member Z universal_class ∧ ¬ member Z X)"
and
  null_class_defn:
    "∀X. ¬ member X null_class"

lemma number_of_elements_in_class:
  "X = null_class ∨
   (∃Y. singleton Y = X) ∨
   (∃V. member V X ∧
        (∃W. member W (intersection (complement (singleton V)) X)))"
  by (metis complement extensionality intersection null_class_defn singleton_set_defn subclass_defn unordered_pair_defn)

end
