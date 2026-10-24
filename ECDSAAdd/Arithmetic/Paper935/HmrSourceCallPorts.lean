import ECDSAAdd.Arithmetic.Paper935.HmrRowMulSpec

namespace ECDSAAdd.Arithmetic.Paper935

/-- Actual seam roles at source pin 64b5a13, engine.py:2907–2938 (singles_on/on); circuit.py:126,179.
The absent generic multiplier roles have no physical address. -/
structure HmrSeamPorts where
  flag : Wire
  anc : List Wire
  anc_length : anc.length = 24
  distinct : (flag :: anc).Nodup

def HmrSeamPorts.carry (_ : HmrSeamPorts) : Option Wire := none
def HmrSeamPorts.top (_ : HmrSeamPorts) : Option Wire := none
def HmrSeamPorts.tq (_ : HmrSeamPorts) : Option Wire := none
def HmrSeamPorts.clean3 (_ : HmrSeamPorts) : List Wire := []

def s2HmrSeamPorts : HmrSeamPorts := ⟨851, [836, 867, 840, 810, 837, 907, 841, 807, 825, 803, 834, 809, 824, 792, 805, 789, 819, 802, 832, 929, 826, 783, 847, 926], by decide +kernel, by decide +kernel⟩

def s2HmrSourceRow : WindowRow := ⟨(List.range' 4 252).reverse ++ [0, 1, 2, 3, 794, 778, 798, 822, 814, 816, 891, 797, 781, 791, 920, 845, 896, 918, 780, 903, 925, 796, 800, 820, 846, 782, 835, 799], 770⟩

def s2HmrSourceY : List Wire := List.range' 256 256
def s2HmrSourceOut : List Wire := List.range' 512 256

theorem s2HmrSourceRow_length : s2HmrSourceRow.payload.length = 280 := by simp [s2HmrSourceRow]

theorem s2HmrSeamPorts_foldCarry : s2HmrSeamPorts.anc[0]? = some 836 := rfl

def s6HmrSeamPorts : HmrSeamPorts := ⟨784, [794, 891, 853, 818, 850, 792, 867, 880, 821, 863, 841, 864, 814, 868, 823, 802, 888, 796, 848, 930, 869, 807, 922, 797], by decide +kernel, by decide +kernel⟩

def s6HmrSourceRow : WindowRow := ⟨(List.range' 4 252).reverse ++ [0, 1, 2, 3, 907, 768, 845, 838, 822, 780, 809, 908, 813, 779, 896, 855, 812, 808, 887, 906, 918, 858, 805, 886, 803, 862, 839, 890], 776⟩

def s6HmrSourceY : List Wire := List.range' 512 256
def s6HmrSourceOut : List Wire := List.range' 256 256

theorem s6HmrSourceRow_length : s6HmrSourceRow.payload.length = 280 := by simp [s6HmrSourceRow]

theorem s6HmrSeamPorts_foldCarry : s6HmrSeamPorts.anc[0]? = some 794 := rfl


def s2HmrSourceLayout : HmrRowMulLayout where
  row := s2HmrSourceRow
  y := s2HmrSourceY
  out := s2HmrSourceOut
  anc := s2HmrSeamPorts.anc
  flags := {s2HmrSeamPorts.flag}
  row_length := s2HmrSourceRow_length
  y_length := by simp [s2HmrSourceY]
  out_length := by simp [s2HmrSourceOut]
  anc_length := s2HmrSeamPorts.anc_length
  distinct := by
    simp only [s2HmrSourceRow, s2HmrSourceY, s2HmrSourceOut,
      s2HmrSeamPorts, List.nodup_append, List.nodup_cons,
      List.nodup_reverse]
    all_goals simp [List.mem_range',
      List.nodup_range' (s := 4) (n := 252),
      List.nodup_range' (s := 256) (n := 256),
      List.nodup_range' (s := 512) (n := 256)]
    all_goals repeat' first | constructor | intro
    all_goals try dsimp [Wire] at *
    all_goals omega
  flags_separate := by
    simp [s2HmrSourceRow, s2HmrSourceY, s2HmrSourceOut,
      s2HmrSeamPorts, List.mem_range']
    repeat' first | constructor | intro
    all_goals omega

def s6HmrSourceLayout : HmrRowMulLayout where
  row := s6HmrSourceRow
  y := s6HmrSourceY
  out := s6HmrSourceOut
  anc := s6HmrSeamPorts.anc
  flags := {s6HmrSeamPorts.flag}
  row_length := s6HmrSourceRow_length
  y_length := by simp [s6HmrSourceY]
  out_length := by simp [s6HmrSourceOut]
  anc_length := s6HmrSeamPorts.anc_length
  distinct := by
    simp only [s6HmrSourceRow, s6HmrSourceY, s6HmrSourceOut,
      s6HmrSeamPorts, List.nodup_append, List.nodup_cons,
      List.nodup_reverse]
    all_goals simp [List.mem_range',
      List.nodup_range' (s := 4) (n := 252),
      List.nodup_range' (s := 256) (n := 256),
      List.nodup_range' (s := 512) (n := 256)]
    all_goals repeat' first | constructor | intro
    all_goals try dsimp [Wire] at *
    all_goals omega
  flags_separate := by
    simp [s6HmrSourceRow, s6HmrSourceY, s6HmrSourceOut,
      s6HmrSeamPorts, List.mem_range']
    repeat' first | constructor | intro
    all_goals omega


/-- Builder allocation before circuit.py seam mm.on; distinct from walk ownership. -/
def s2HmrBeforeSeam : Arena :=
  ⟨arenaWires \ {783, 789, 792, 802, 803, 805, 807, 809, 810, 819, 824, 825, 826, 832, 834, 836, 837, 840, 841, 847, 851, 867, 907, 921, 923, 924, 926, 927, 928, 929, 930, 931, 932, 933, 934}, Finset.sdiff_subset⟩

theorem s2HmrSeam_reserve :
    ∃ B, s2HmrBeforeSeam.reserve
      (s2HmrSeamPorts.flag :: s2HmrSeamPorts.anc).toFinset = some B := by
  rw [Arena.reserve_success]
  decide +kernel

/-- Builder allocation before circuit.py seam mm.on; distinct from walk ownership. -/
def s6HmrBeforeSeam : Arena :=
  ⟨arenaWires \ {782, 784, 790, 792, 794, 796, 797, 800, 802, 807, 814, 818, 821, 823, 832, 841, 848, 850, 853, 863, 864, 867, 868, 869, 880, 888, 891, 916, 922, 928, 929, 930, 931, 933, 934}, Finset.sdiff_subset⟩

theorem s6HmrSeam_reserve :
    ∃ B, s6HmrBeforeSeam.reserve
      (s6HmrSeamPorts.flag :: s6HmrSeamPorts.anc).toFinset = some B := by
  rw [Arena.reserve_success]
  decide +kernel

/-- Source engine.py:3326–3335: unpark folds back using the demolished y word.
This generated block does not assert its lifecycle preconditions or source refinement. -/
def s2HmrSourceUnpark : RecordedProgram := embedRecorded (
  placedRowFold (fusedPlacementMap (fusedFoldPlacement
    s2HmrSourceLayout.row.payload s2HmrSourceLayout.y s2HmrSourceLayout.anc)) true ++
  placedMagnitude (fusedPlacementMap
    (s2HmrSourceLayout.row.sign :: s2HmrSourceLayout.row.payload ++
      s2HmrSourceLayout.anc)) true)


def s2HmrAfterSeam : Arena :=
  (s2HmrBeforeSeam.reserve (s2HmrSeamPorts.flag :: s2HmrSeamPorts.anc).toFinset).get
    (Option.isSome_iff_exists.mpr s2HmrSeam_reserve)

theorem s2HmrSeam_reserve_eq :
    s2HmrBeforeSeam.reserve (s2HmrSeamPorts.flag :: s2HmrSeamPorts.anc).toFinset =
      some s2HmrAfterSeam :=
  Option.eq_some_of_isSome (Option.isSome_iff_exists.mpr s2HmrSeam_reserve)

def s6HmrAfterSeam : Arena :=
  (s6HmrBeforeSeam.reserve (s6HmrSeamPorts.flag :: s6HmrSeamPorts.anc).toFinset).get
    (Option.isSome_iff_exists.mpr s6HmrSeam_reserve)

theorem s6HmrSeam_reserve_eq :
    s6HmrBeforeSeam.reserve (s6HmrSeamPorts.flag :: s6HmrSeamPorts.anc).toFinset =
      some s6HmrAfterSeam :=
  Option.eq_some_of_isSome (Option.isSome_iff_exists.mpr s6HmrSeam_reserve)

end ECDSAAdd.Arithmetic.Paper935
