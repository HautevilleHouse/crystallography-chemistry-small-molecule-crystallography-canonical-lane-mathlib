import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistrySmallMoleculeCrystallographyCanonicalLaneLean

structure CrystallographyAdmittedObject where
  unitCellCrystalSystem : Prop
  spaceGroupDetermined : Prop
  diffractionPatternIndexed : Prop
  structureRefined : Prop
  conclusion : unitCellCrystalSystem ∧ spaceGroupDetermined ∧ diffractionPatternIndexed ∧ structureRefined

structure AdmissibleClass where
  object : CrystallographyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CrystallographyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CrystallographyChemistrySmallMoleculeCrystallographyCanonicalLaneLean
end HautevilleHouse