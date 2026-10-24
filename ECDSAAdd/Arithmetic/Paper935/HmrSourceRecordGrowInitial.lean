import ECDSAAdd.Arithmetic.Paper935.HmrLoggedRecordGrow

namespace ECDSAAdd.Arithmetic.Paper935

def s2FirstRecordGrowArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 795)),Finset.filter_subset _ _⟩

def s2FirstRecordGrowAfter : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 796)),Finset.filter_subset _ _⟩

def s2FirstRecordGrowOld : List Wire := []

theorem s2FirstRecordGrow_inputs :
    s2FirstRecordGrowOld.Nodup ∧ s2FirstRecordGrowOld.toFinset⊆s2FirstRecordGrowArena.live ∧ s2FirstRecordGrowOld.length≤1 := by
  decide +kernel

theorem s2FirstRecordGrow_borrow :
    (s2FirstRecordGrowArena.checkBorrow (1-s2FirstRecordGrowOld.length) [795]).map (fun C => C.live.card) =
      some 796 := by
  decide +kernel

/-- Source step 0, actual allocation while j-flags remain live. -/
theorem s2FirstRecordGrow_checked :
    (compileHmrRecordGrowLog s2FirstRecordGrowArena s2FirstRecordGrowOld 1 [795]).map (fun C => C.live.card) =
      some 796 := by
  simpa only [compileHmrRecordGrowLog,if_pos s2FirstRecordGrow_inputs] using s2FirstRecordGrow_borrow

def s2LastRecordGrowArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 912)),Finset.filter_subset _ _⟩

def s2LastRecordGrowAfter : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 913)),Finset.filter_subset _ _⟩

def s2LastRecordGrowOld : List Wire := [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911]

theorem s2LastRecordGrow_inputs :
    s2LastRecordGrowOld.Nodup ∧ s2LastRecordGrowOld.toFinset⊆s2LastRecordGrowArena.live ∧ s2LastRecordGrowOld.length≤60 := by
  decide +kernel

theorem s2LastRecordGrow_borrow :
    (s2LastRecordGrowArena.checkBorrow (60-s2LastRecordGrowOld.length) [912]).map (fun C => C.live.card) =
      some 913 := by
  decide +kernel

/-- Source step 322, actual allocation while j-flags remain live. -/
theorem s2LastRecordGrow_checked :
    (compileHmrRecordGrowLog s2LastRecordGrowArena s2LastRecordGrowOld 60 [912]).map (fun C => C.live.card) =
      some 913 := by
  simpa only [compileHmrRecordGrowLog,if_pos s2LastRecordGrow_inputs] using s2LastRecordGrow_borrow

def s6FirstRecordGrowArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (907 ≤ q ∧ q < 908) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6FirstRecordGrowAfter : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 778) ∨ (779 ≤ q ∧ q < 780) ∨ (793 ≤ q ∧ q < 794) ∨ (795 ≤ q ∧ q < 796) ∨ (802 ≤ q ∧ q < 803) ∨ (807 ≤ q ∧ q < 808) ∨ (813 ≤ q ∧ q < 814) ∨ (857 ≤ q ∧ q < 858) ∨ (859 ≤ q ∧ q < 861) ∨ (862 ≤ q ∧ q < 863) ∨ (868 ≤ q ∧ q < 869) ∨ (874 ≤ q ∧ q < 877) ∨ (887 ≤ q ∧ q < 888) ∨ (895 ≤ q ∧ q < 896) ∨ (907 ≤ q ∧ q < 908) ∨ (927 ≤ q ∧ q < 928)),Finset.filter_subset _ _⟩

def s6FirstRecordGrowOld : List Wire := []

theorem s6FirstRecordGrow_inputs :
    s6FirstRecordGrowOld.Nodup ∧ s6FirstRecordGrowOld.toFinset⊆s6FirstRecordGrowArena.live ∧ s6FirstRecordGrowOld.length≤1 := by
  decide +kernel

theorem s6FirstRecordGrow_borrow :
    (s6FirstRecordGrowArena.checkBorrow (1-s6FirstRecordGrowOld.length) [895]).map (fun C => C.live.card) =
      some 796 := by
  decide +kernel

/-- Source step 0, actual allocation while j-flags remain live. -/
theorem s6FirstRecordGrow_checked :
    (compileHmrRecordGrowLog s6FirstRecordGrowArena s6FirstRecordGrowOld 1 [895]).map (fun C => C.live.card) =
      some 796 := by
  simpa only [compileHmrRecordGrowLog,if_pos s6FirstRecordGrow_inputs] using s6FirstRecordGrow_borrow

def s6LastRecordGrowArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (783 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 815) ∨ (817 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 896) ∨ (897 ≤ q ∧ q < 914) ∨ (915 ≤ q ∧ q < 916) ∨ (917 ≤ q ∧ q < 918) ∨ (919 ≤ q ∧ q < 920) ∨ (921 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6LastRecordGrowAfter : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (783 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 816) ∨ (817 ≤ q ∧ q < 819) ∨ (821 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 842) ∨ (843 ≤ q ∧ q < 896) ∨ (897 ≤ q ∧ q < 914) ∨ (915 ≤ q ∧ q < 916) ∨ (917 ≤ q ∧ q < 918) ∨ (919 ≤ q ∧ q < 920) ∨ (921 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6LastRecordGrowOld : List Wire := [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801]

theorem s6LastRecordGrow_inputs :
    s6LastRecordGrowOld.Nodup ∧ s6LastRecordGrowOld.toFinset⊆s6LastRecordGrowArena.live ∧ s6LastRecordGrowOld.length≤60 := by
  decide +kernel

theorem s6LastRecordGrow_borrow :
    (s6LastRecordGrowArena.checkBorrow (60-s6LastRecordGrowOld.length) [815]).map (fun C => C.live.card) =
      some 913 := by
  decide +kernel

/-- Source step 322, actual allocation while j-flags remain live. -/
theorem s6LastRecordGrow_checked :
    (compileHmrRecordGrowLog s6LastRecordGrowArena s6LastRecordGrowOld 60 [815]).map (fun C => C.live.card) =
      some 913 := by
  simpa only [compileHmrRecordGrowLog,if_pos s6LastRecordGrow_inputs] using s6LastRecordGrow_borrow

end ECDSAAdd.Arithmetic.Paper935
