import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistrySmallMoleculeCrystallographyCanonicalLaneLean

structure SpaceGroupPackage where
  groupNumber : Nat
  hmbSymbol : String
  pointGroup : String
  latticeType : String
  centering : String
  symmetryOperations : Prop
  wyckoffPositions : Prop

structure SpaceGroupEvidence (S : SpaceGroupPackage) where
  symmetryOperationsClosed : S.symmetryOperations
  wyckoffPositionsClosed : S.wyckoffPositions

def SpaceGroupClosed (S : SpaceGroupPackage) : Prop :=
  S.symmetryOperations ∧ S.wyckoffPositions

theorem space_group_closed_from_evidence (S : SpaceGroupPackage) (E : SpaceGroupEvidence S) :
    SpaceGroupClosed S := by
  exact And.intro E.symmetryOperationsClosed E.wyckoffPositionsClosed

end CrystallographyChemistrySmallMoleculeCrystallographyCanonicalLaneLean
end HautevilleHouse