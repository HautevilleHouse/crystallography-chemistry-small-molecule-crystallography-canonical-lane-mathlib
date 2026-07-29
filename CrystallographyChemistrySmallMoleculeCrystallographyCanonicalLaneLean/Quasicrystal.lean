import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistrySmallMoleculeCrystallographyCanonicalLaneLean

structure QuasicrystalPackage where
  aperiodicOrder : Prop
  diffractionPattern : Prop
  symmetryGroup : String
  higherDimensionalEmbedding : Prop

structure QuasicrystalEvidence (Q : QuasicrystalPackage) where
  aperiodicOrderClosed : Q.aperiodicOrder
  diffractionPatternClosed : Q.diffractionPattern
  higherDimensionalEmbeddingClosed : Q.higherDimensionalEmbedding

def QuasicrystalClosed (Q : QuasicrystalPackage) : Prop :=
  Q.aperiodicOrder ∧ Q.diffractionPattern ∧ Q.higherDimensionalEmbedding

theorem quasicrystal_closed_from_evidence (Q : QuasicrystalPackage) (E : QuasicrystalEvidence Q) :
    QuasicrystalClosed Q := by
  exact And.intro E.apenriodicOrderClosed (And.intro E.diffractionPatternClosed E.higherDimensionalEmbeddingClosed)

end CrystallographyChemistrySmallMoleculeCrystallographyCanonicalLaneLean
end HautevilleHouse