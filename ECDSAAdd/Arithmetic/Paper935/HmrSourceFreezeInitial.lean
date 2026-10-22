import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFreeze
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFreezeEnd

namespace ECDSAAdd.Arithmetic.Paper935

/- Generated from the first armed step of each pinned walk. These are
selected accepted layouts, not a certificate for all 533 steps. -/

def s2FirstFreezeArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (846 ≤ q ∧ q < 901) ∨ (902 ≤ q ∧ q < 917) ∨ (920 ≤ q ∧ q < 921)),Finset.filter_subset _ _⟩

def s2FirstFreezeEndArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (846 ≤ q ∧ q < 879) ∨ (880 ≤ q ∧ q < 901) ∨ (902 ≤ q ∧ q < 917) ∨ (919 ≤ q ∧ q < 921) ∨ (925 ≤ q ∧ q < 926) ∨ (931 ≤ q ∧ q < 932)),Finset.filter_subset _ _⟩

def s2FirstFreezeReturnedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (846 ≤ q ∧ q < 879) ∨ (880 ≤ q ∧ q < 901) ∨ (902 ≤ q ∧ q < 917) ∨ (920 ≤ q ∧ q < 921)),Finset.filter_subset _ _⟩

def s2FirstFreezePlans : List HmrBlockPlan :=
  [⟨⟨0,false⟩, [⟨⟨1,false⟩,919⟩, ⟨⟨2,false⟩,901⟩, ⟨⟨3,false⟩,918⟩, ⟨⟨4,false⟩,845⟩, ⟨⟨5,false⟩,917⟩, ⟨⟨6,false⟩,921⟩, ⟨⟨7,false⟩,922⟩, ⟨⟨8,false⟩,923⟩, ⟨⟨9,false⟩,924⟩, ⟨⟨10,false⟩,925⟩, ⟨⟨11,false⟩,926⟩, ⟨⟨12,false⟩,927⟩, ⟨⟨13,false⟩,928⟩, ⟨⟨14,false⟩,929⟩, ⟨⟨15,false⟩,930⟩], 931⟩,
   ⟨⟨931,true⟩, [⟨⟨16,false⟩,919⟩, ⟨⟨17,false⟩,901⟩, ⟨⟨18,false⟩,918⟩, ⟨⟨19,false⟩,845⟩, ⟨⟨20,false⟩,917⟩, ⟨⟨21,false⟩,921⟩, ⟨⟨22,false⟩,922⟩, ⟨⟨23,false⟩,923⟩, ⟨⟨769,false⟩,924⟩], 925⟩]

def s2FirstFreezeLogs : List (List Wire) := [[919, 901, 918, 845, 917, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931], [919, 901, 918, 845, 917, 921, 922, 923, 924, 925]]
def s2FirstFreezeCleanupLogs : List (List Wire) := [[901, 879, 918, 845, 917, 922, 919, 921, 925, 923, 924, 926, 927, 928], [901, 879, 918, 845, 917, 922, 919, 921]]

theorem s2FirstFreeze_checked :
    (compileHmrFreezeLog s2FirstFreezeArena [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 769] 914 [827, 786, 812, 839, 849, 844] 1
      s2FirstFreezeLogs [919]).map (fun (C,P) => (C.live.card,P.zeroPlans.map HmrBlockPlan.keeper,P.fire)) =
      some (919,s2FirstFreezePlans.map HmrBlockPlan.keeper,919) := by
  decide +kernel

def s6FirstFreezeArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (783 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 914) ∨ (917 ≤ q ∧ q < 918) ∨ (919 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstFreezeEndArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 790) ∨ (792 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 914) ∨ (917 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstFreezeReturnedArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (783 ≤ q ∧ q < 790) ∨ (792 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 914) ∨ (917 ≤ q ∧ q < 918) ∨ (919 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstFreezePlans : List HmrBlockPlan :=
  [⟨⟨0,false⟩, [⟨⟨1,false⟩,820⟩, ⟨⟨2,false⟩,915⟩, ⟨⟨3,false⟩,808⟩, ⟨⟨4,false⟩,855⟩, ⟨⟨5,false⟩,798⟩, ⟨⟨6,false⟩,790⟩, ⟨⟨7,false⟩,914⟩, ⟨⟨8,false⟩,916⟩, ⟨⟨9,false⟩,800⟩, ⟨⟨10,false⟩,918⟩, ⟨⟨11,false⟩,797⟩, ⟨⟨12,false⟩,832⟩, ⟨⟨13,false⟩,928⟩, ⟨⟨14,false⟩,930⟩, ⟨⟨15,false⟩,931⟩], 782⟩,
   ⟨⟨782,true⟩, [⟨⟨16,false⟩,820⟩, ⟨⟨17,false⟩,915⟩, ⟨⟨18,false⟩,808⟩, ⟨⟨19,false⟩,855⟩, ⟨⟨20,false⟩,798⟩, ⟨⟨21,false⟩,790⟩, ⟨⟨22,false⟩,914⟩, ⟨⟨23,false⟩,916⟩, ⟨⟨777,false⟩,800⟩], 918⟩]

def s6FirstFreezeLogs : List (List Wire) := [[820, 915, 808, 855, 798, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782], [820, 915, 808, 855, 798, 790, 914, 916, 800, 918]]
def s6FirstFreezeCleanupLogs : List (List Wire) := [[915, 791, 808, 855, 798, 914, 820, 790, 918, 916, 800, 797, 832, 928], [915, 791, 808, 855, 798, 914, 820, 790]]

theorem s6FirstFreeze_checked :
    (compileHmrFreezeLog s6FirstFreezeArena [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 777] 819 [843, 874, 892, 881, 879, 877] 1
      s6FirstFreezeLogs [820]).map (fun (C,P) => (C.live.card,P.zeroPlans.map HmrBlockPlan.keeper,P.fire)) =
      some (919,s6FirstFreezePlans.map HmrBlockPlan.keeper,820) := by
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
