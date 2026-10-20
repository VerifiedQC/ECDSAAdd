import ECDSAAdd.Arithmetic.Paper935.ProbeCompilerReady
import ECDSAAdd.Arithmetic.Paper935.WindowPostLayout

namespace ECDSAAdd.Arithmetic.Paper935

def postStaticCheck (P : WindowPostLayout) : Prop :=
  (BlockedZero.Valid P.one P.zf P.blocks) ∧
  (P.recordWires.Nodup) ∧
  (P.zf≠P.frozen) ∧
  (P.fire≠P.frozen) ∧
  (P.fire∉P.recordWires) ∧
  (P.frozen∉P.recordWires) ∧
  (P.armed=true → P.offset<2^P.recordWires.length) ∧
  (P.active≠P.fire) ∧
  (P.active≠P.frozen) ∧
  (P.active∉P.recordWires) ∧
  (P.active≠P.zf) ∧
  (P.zf≠P.fire) ∧
  (P.zf∉P.recordWires) ∧
  (∀ w∈P.one::BlockedZero.ports P.blocks, w≠P.active ∧ w≠P.fire ∧ w≠P.frozen ∧ w∉P.recordWires) ∧
  ((P.one::P.witness::P.record.flatMap ZeroBit.wires).Nodup) ∧
  (P.witness≠P.fire) ∧
  (P.frozen≠P.witness) ∧
  (P.fire∉P.record.map ZeroBit.work) ∧
  (∀ w∈P.witness::P.record.map ZeroBit.work, w≠P.active ∧ w≠P.fire ∧ w≠P.frozen ∧ w∉P.recordWires) ∧
  ((P.frozen::P.fire::P.record.flatMap ZeroBit.wires).Nodup)

theorem postStaticCheck_iff (P : WindowPostLayout) : postStaticCheck P ↔ P.Valid := by
  constructor
  · rintro ⟨probe,record,zfFrozen,fireFrozen,fireRecord,frozenRecord,offsetFits,activeFire,activeFrozen,activeRecord,activeZf,zfFire,zfRecord,stable,compare,witnessFire,frozenWitness,fireWork,workFrame,remint⟩
    exact ⟨probe,record,zfFrozen,fireFrozen,fireRecord,frozenRecord,offsetFits,activeFire,activeFrozen,activeRecord,activeZf,zfFire,zfRecord,stable,compare,witnessFire,frozenWitness,fireWork,workFrame,remint⟩
  · intro h
    exact ⟨h.probe,h.record,h.zfFrozen,h.fireFrozen,h.fireRecord,h.frozenRecord,h.offsetFits,h.activeFire,h.activeFrozen,h.activeRecord,h.activeZf,h.zfFire,h.zfRecord,h.stable,h.compare,h.witnessFire,h.frozenWitness,h.fireWork,h.workFrame,h.remint⟩

instance (P : WindowPostLayout) : Decidable P.Valid :=
  have : Decidable (postStaticCheck P) := by unfold postStaticCheck; infer_instance
  decidable_of_iff (postStaticCheck P) (postStaticCheck_iff P)

end ECDSAAdd.Arithmetic.Paper935
