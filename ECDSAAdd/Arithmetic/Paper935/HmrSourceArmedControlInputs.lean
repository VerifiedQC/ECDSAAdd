import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlCompiler

namespace ECDSAAdd.Arithmetic.Paper935

local instance (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

def s2FirstArmedControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 845) ∨ (846 ≤ q ∧ q < 901) ∨ (902 ≤ q ∧ q < 917) ∨ (920 ≤ q ∧ q < 921)),Finset.filter_subset _ _⟩

def s2FirstArmedControlLog : HmrArmedControlLog :=
  ⟨[[919, 901, 918, 845, 917, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931], [919, 901, 918, 845, 917, 921, 922, 923, 924, 925]],[919],[[901, 918, 845, 917, 921, 922]],[901],[918, 845],[917, 921, 923, 924, 926, 927],[[901, 918, 845, 917]],[901],[901, 879, 918, 845, 917],[922],[[901, 879, 918, 845, 917, 922, 919, 921, 925, 923, 924, 926, 927, 928], [901, 879, 918, 845, 917, 922, 919, 921]]⟩

def s2FirstArmedControlRecord : List Wire := [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909, 910, 908, 911, 912]
def s2FirstArmedControlCounter : List Wire := [772, 773, 774, 775, 776, 777]
def s2FirstArmedControlG : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 769]
def s2FirstArmedControlTimestamp : List Wire := [827, 786, 812, 839, 849, 844]

theorem s2FirstArmedControl_inputs :
    s2FirstArmedControlCounter.length=6 ∧ 777=s2FirstArmedControlCounter.getLastD 0 ∧
    (916::s2FirstArmedControlRecord).Nodup ∧ (916::s2FirstArmedControlRecord).toFinset⊆s2FirstArmedControlArena.live ∧
    List.Disjoint s2FirstArmedControlCounter (916::s2FirstArmedControlRecord) ∧ List.Disjoint s2FirstArmedControlG (916::s2FirstArmedControlRecord) ∧
    List.Disjoint (916::s2FirstArmedControlRecord) (914::s2FirstArmedControlTimestamp) ∧
    [879,254].toFinset⊆s2FirstArmedControlArena.live ∧ 254∉916::s2FirstArmedControlRecord ∧
    879∉s2FirstArmedControlG++914::s2FirstArmedControlTimestamp := by
  decide +kernel

def s6FirstArmedControlArena : Arena :=
  ⟨arenaWires.filter (fun q => (0 ≤ q ∧ q < 782) ∨ (783 ≤ q ∧ q < 790) ∨ (791 ≤ q ∧ q < 797) ∨ (799 ≤ q ∧ q < 800) ∨ (801 ≤ q ∧ q < 808) ∨ (809 ≤ q ∧ q < 820) ∨ (821 ≤ q ∧ q < 832) ∨ (833 ≤ q ∧ q < 855) ∨ (856 ≤ q ∧ q < 914) ∨ (917 ≤ q ∧ q < 918) ∨ (919 ≤ q ∧ q < 928) ∨ (932 ≤ q ∧ q < 933)),Finset.filter_subset _ _⟩

def s6FirstArmedControlLog : HmrArmedControlLog :=
  ⟨[[820, 915, 808, 855, 798, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782], [820, 915, 808, 855, 798, 790, 914, 916, 800, 918]],[820],[[915, 808, 855, 798, 790, 914]],[915],[808, 855],[798, 790, 916, 800, 797, 832],[[915, 808, 855, 798]],[915],[915, 791, 808, 855, 798],[914],[[915, 791, 808, 855, 798, 914, 820, 790, 918, 916, 800, 797, 832, 928], [915, 791, 808, 855, 798, 914, 820, 790]]⟩

def s6FirstArmedControlRecord : List Wire := [895, 870, 872, 883, 831, 852, 911, 910, 799, 827, 901, 917, 835, 851, 878, 781, 785, 866, 861, 921, 829, 837, 788, 889, 871, 913, 824, 806, 846, 902, 884, 919, 783, 847, 840, 885, 844, 904, 836, 893, 924, 826, 894, 923, 897, 912, 834, 804, 900, 909, 905, 932, 787, 926, 899, 811, 925, 849, 801, 815]
def s6FirstArmedControlCounter : List Wire := [774, 773, 772, 771, 770, 769]
def s6FirstArmedControlG : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 777]
def s6FirstArmedControlTimestamp : List Wire := [843, 874, 892, 881, 879, 877]

theorem s6FirstArmedControl_inputs :
    s6FirstArmedControlCounter.length=6 ∧ 769=s6FirstArmedControlCounter.getLastD 0 ∧
    (842::s6FirstArmedControlRecord).Nodup ∧ (842::s6FirstArmedControlRecord).toFinset⊆s6FirstArmedControlArena.live ∧
    List.Disjoint s6FirstArmedControlCounter (842::s6FirstArmedControlRecord) ∧ List.Disjoint s6FirstArmedControlG (842::s6FirstArmedControlRecord) ∧
    List.Disjoint (842::s6FirstArmedControlRecord) (819::s6FirstArmedControlTimestamp) ∧
    [791,254].toFinset⊆s6FirstArmedControlArena.live ∧ 254∉842::s6FirstArmedControlRecord ∧
    791∉s6FirstArmedControlG++819::s6FirstArmedControlTimestamp := by
  decide +kernel

end ECDSAAdd.Arithmetic.Paper935
