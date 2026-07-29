import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CrystallographyChemistrySmallMoleculeCrystallographyCanonicalLaneLean

structure XRayDiffractionPackage where
  radiationType : String
  wavelength : Prop
  diffractionCondition : Prop
  structureFactor : Prop
  intensityFormula : Prop

structure XRayDiffractionEvidence (X : XRayDiffractionPackage) where
  diffractionConditionClosed : X.diffractionCondition
  structureFactorClosed : X.structureFactor
  intensityFormulaClosed : X.intensityFormula

def XRayDiffractionClosed (X : XRayDiffractionPackage) : Prop :=
  X.diffractionCondition ∧ X.structureFactor ∧ X.intensityFormula

theorem xray_diffraction_closed_from_evidence (X : XRayDiffractionPackage) (E : XRayDiffractionEvidence X) :
    XRayDiffractionClosed X := by
  exact And.intro E.diffractionConditionClosed (And.intro E.structureFactorClosed E.intensityFormulaClosed)

end CrystallographyChemistrySmallMoleculeCrystallographyCanonicalLaneLean
end HautevilleHouse