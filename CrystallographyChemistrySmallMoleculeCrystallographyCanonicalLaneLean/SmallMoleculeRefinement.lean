import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistrySmallMoleculeCrystallographyCanonicalLaneLean

structure SmallMoleculeRefinementPackage where
  initialModel : Prop
  leastSquaresMinimization : Prop
  convergenceCriteria : Prop
  finalResiduals : Prop
  structureValidated : Prop

structure SmallMoleculeRefinementEvidence (R : SmallMoleculeRefinementPackage) where
  leastSquaresMinimizationClosed : R.leastSquaresMinimization
  convergenceCriteriaClosed : R.convergenceCriteria
  finalResidualsClosed : R.finalResiduals
  structureValidatedClosed : R.structureValidated

def SmallMoleculeRefinementClosed (R : SmallMoleculeRefinementPackage) : Prop :=
  R.leastSquaresMinimization ∧ R.convergenceCriteria ∧ R.finalResiduals ∧ R.structureValidated

theorem small_molecule_refinement_closed_from_evidence (R : SmallMoleculeRefinementPackage) (E : SmallMoleculeRefinementEvidence R) :
    SmallMoleculeRefinementClosed R := by
  exact And.intro E.leastSquaresMinimizationClosed (And.intro E.convergenceCriteriaClosed (And.intro E.finalResidualsClosed E.structureValidatedClosed))

end CrystallographyChemistrySmallMoleculeCrystallographyCanonicalLaneLean
end HautevilleHouse