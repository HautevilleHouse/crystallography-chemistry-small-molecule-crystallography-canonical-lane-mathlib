import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistrySmallMoleculeCrystallographyCanonicalLaneLean

structure BravaisLatticePackage where
  latticeSystem : String
  centeringType : String
  unitCellParameters : Prop
  unitCellVolume : Prop
  reducedCell : Prop

structure BravaisLatticeEvidence (B : BravaisLatticePackage) where
  unitCellParametersClosed : B.unitCellParameters
  unitCellVolumeClosed : B.unitCellVolume
  reducedCellClosed : B.reducedCell

def BravaisLatticeClosed (B : BravaisLatticePackage) : Prop :=
  B.unitCellParameters ∧ B.unitCellVolume ∧ B.reducedCell

theorem bravais_lattice_closed_from_evidence (B : BravaisLatticePackage) (E : BravaisLatticeEvidence B) :
    BravaisLatticeClosed B := by
  exact And.intro E.unitCellParametersClosed (And.intro E.unitCellVolumeClosed E.reducedCellClosed)

end CrystallographyChemistrySmallMoleculeCrystallographyCanonicalLaneLean
end HautevilleHouse