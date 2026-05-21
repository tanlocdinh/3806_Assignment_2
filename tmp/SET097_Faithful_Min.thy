theory SET097_Faithful_Min
  imports Main
begin

typedecl i

consts
  member :: "i ⇒ i ⇒ bool"
  null_class :: i
  singleton :: "i ⇒ i"
  intersection :: "i ⇒ i ⇒ i"
  complement :: "i ⇒ i"

axiomatization where
  null_class_defn:
    "∀U. ¬ member U null_class"
and
  singleton_defn:
    "∀A U. member U (singleton A) ⟷ U = A"
and
  intersection_defn:
    "∀U A B. member U (intersection A B) ⟷ (member U A ∧ member U B)"
and
  complement_defn:
    "∀U A. member U (complement A) ⟷ ¬ member U A"
and
  extensionality:
    "∀A B. A = B ⟷ (∀U. member U A ⟷ member U B)"

lemma number_of_elements_in_class:
  "X = null_class ∨
   (∃Y. singleton Y = X) ∨
   (∃V. member V X ∧
        (∃W. member W (intersection (complement (singleton V)) X)))"
  by (metis complement_defn extensionality intersection_defn null_class_defn singleton_defn)

end
