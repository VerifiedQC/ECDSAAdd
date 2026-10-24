import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step0Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788)),Finset.filter_subset _ _⟩
def s2Step0Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783, 768]
def s2Step0Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 782, 769]
def s2Step0Add0Work : List Wire := [788, 789, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step0Add0_bounded : s2Step0Add0Work.toFinset⊆arenaWires := by
  have h : s2Step0Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step0Add0During : Arena := ⟨s2Step0Add0Arena.live∪s2Step0Add0Work.toFinset,Finset.union_subset s2Step0Add0Arena.bounded s2Step0Add0_bounded⟩
theorem s2Step0Add0_distinct : (786::781::787::(s2Step0Add0A++s2Step0Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0Add0_owned : (786::781::787::(s2Step0Add0A++s2Step0Add0B)).toFinset⊆s2Step0Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step0Add0Arena (fun q => (0≤q ∧ q<788)) rfl
  decide +kernel
theorem s2Step0Add0_apart : Disjoint s2Step0Add0Arena.live s2Step0Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step0Add0Arena (fun q => (0≤q ∧ q<788)) rfl
  decide +kernel
theorem s2Step0Add0_card : s2Step0Add0Arena.live.card=788 := by
  decide +kernel
theorem s2Step0Add0_borrowed : s2Step0Add0Arena.checkBorrow (hmrHybridCount s2Step0Add0Arena s2Step0Add0B.length) s2Step0Add0Work=some s2Step0Add0During := by
  have len : s2Step0Add0Work.length=hmrHybridCount s2Step0Add0Arena s2Step0Add0B.length := by
    rw [hmrHybridCount,s2Step0Add0_card]
    decide +kernel
  have nd : s2Step0Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step0Add0Arena s2Step0Add0During s2Step0Add0Work.toFinset s2Step0Add0_bounded s2Step0Add0_apart rfl
theorem s2Step0Add0_checked : compileHmrHybridCinLog s2Step0Add0Arena 781 786 787 s2Step0Add0A s2Step0Add0B s2Step0Add0Work=some s2Step0Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step0Add0Arena s2Step0Add0During 781 786 787 s2Step0Add0A s2Step0Add0B s2Step0Add0Work
    (by decide +kernel) (by decide +kernel) s2Step0Add0_distinct
    (fun q hq => s2Step0Add0_owned (List.mem_toFinset.mpr hq)) s2Step0Add0_borrowed
def s2Step0Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788)),Finset.filter_subset _ _⟩
def s2Step0Add1A : List Wire := [778, 785, 770]
def s2Step0Add1B : List Wire := [779, 784, 771]
def s2Step0Add1Work : List Wire := [788, 789]
theorem s2Step0Add1_bounded : s2Step0Add1Work.toFinset⊆arenaWires := by
  have h : s2Step0Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step0Add1During : Arena := ⟨s2Step0Add1Arena.live∪s2Step0Add1Work.toFinset,Finset.union_subset s2Step0Add1Arena.bounded s2Step0Add1_bounded⟩
theorem s2Step0Add1_distinct : (786::781::787::(s2Step0Add1A++s2Step0Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step0Add1_owned : (786::781::787::(s2Step0Add1A++s2Step0Add1B)).toFinset⊆s2Step0Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step0Add1Arena (fun q => (0≤q ∧ q<788)) rfl
  decide +kernel
theorem s2Step0Add1_apart : Disjoint s2Step0Add1Arena.live s2Step0Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step0Add1Arena (fun q => (0≤q ∧ q<788)) rfl
  decide +kernel
theorem s2Step0Add1_card : s2Step0Add1Arena.live.card=788 := by
  decide +kernel
theorem s2Step0Add1_borrowed : s2Step0Add1Arena.checkBorrow (hmrHybridCount s2Step0Add1Arena s2Step0Add1B.length) s2Step0Add1Work=some s2Step0Add1During := by
  have len : s2Step0Add1Work.length=hmrHybridCount s2Step0Add1Arena s2Step0Add1B.length := by
    rw [hmrHybridCount,s2Step0Add1_card]
    decide +kernel
  have nd : s2Step0Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step0Add1Arena s2Step0Add1During s2Step0Add1Work.toFinset s2Step0Add1_bounded s2Step0Add1_apart rfl
theorem s2Step0Add1_checked : compileHmrHybridCinLog s2Step0Add1Arena 781 786 787 s2Step0Add1A s2Step0Add1B s2Step0Add1Work=some s2Step0Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step0Add1Arena s2Step0Add1During 781 786 787 s2Step0Add1A s2Step0Add1B s2Step0Add1Work
    (by decide +kernel) (by decide +kernel) s2Step0Add1_distinct
    (fun q hq => s2Step0Add1_owned (List.mem_toFinset.mpr hq)) s2Step0Add1_borrowed
def s2Step1Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782, 768]
def s2Step1Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783, 769]
def s2Step1Add0Work : List Wire := [790, 791, 792, 793, 794, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step1Add0_bounded : s2Step1Add0Work.toFinset⊆arenaWires := by
  have h : s2Step1Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step1Add0During : Arena := ⟨s2Step1Add0Arena.live∪s2Step1Add0Work.toFinset,Finset.union_subset s2Step1Add0Arena.bounded s2Step1Add0_bounded⟩
theorem s2Step1Add0_distinct : (788::784::789::(s2Step1Add0A++s2Step1Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1Add0_owned : (788::784::789::(s2Step1Add0A++s2Step1Add0B)).toFinset⊆s2Step1Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step1Add0Arena (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1Add0_apart : Disjoint s2Step1Add0Arena.live s2Step1Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step1Add0Arena (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1Add0_card : s2Step1Add0Arena.live.card=791 := by
  decide +kernel
theorem s2Step1Add0_borrowed : s2Step1Add0Arena.checkBorrow (hmrHybridCount s2Step1Add0Arena s2Step1Add0B.length) s2Step1Add0Work=some s2Step1Add0During := by
  have len : s2Step1Add0Work.length=hmrHybridCount s2Step1Add0Arena s2Step1Add0B.length := by
    rw [hmrHybridCount,s2Step1Add0_card]
    decide +kernel
  have nd : s2Step1Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step1Add0Arena s2Step1Add0During s2Step1Add0Work.toFinset s2Step1Add0_bounded s2Step1Add0_apart rfl
theorem s2Step1Add0_checked : compileHmrHybridCinLog s2Step1Add0Arena 784 788 789 s2Step1Add0A s2Step1Add0B s2Step1Add0Work=some s2Step1Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step1Add0Arena s2Step1Add0During 784 788 789 s2Step1Add0A s2Step1Add0B s2Step1Add0Work
    (by decide +kernel) (by decide +kernel) s2Step1Add0_distinct
    (fun q hq => s2Step1Add0_owned (List.mem_toFinset.mpr hq)) s2Step1Add0_borrowed
def s2Step1Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step1Add1A : List Wire := [255, 785, 787, 770]
def s2Step1Add1B : List Wire := [779, 780, 786, 771]
def s2Step1Add1Work : List Wire := [790, 791, 792]
theorem s2Step1Add1_bounded : s2Step1Add1Work.toFinset⊆arenaWires := by
  have h : s2Step1Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step1Add1During : Arena := ⟨s2Step1Add1Arena.live∪s2Step1Add1Work.toFinset,Finset.union_subset s2Step1Add1Arena.bounded s2Step1Add1_bounded⟩
theorem s2Step1Add1_distinct : (788::784::789::(s2Step1Add1A++s2Step1Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step1Add1_owned : (788::784::789::(s2Step1Add1A++s2Step1Add1B)).toFinset⊆s2Step1Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step1Add1Arena (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1Add1_apart : Disjoint s2Step1Add1Arena.live s2Step1Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step1Add1Arena (fun q => (0≤q ∧ q<790) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step1Add1_card : s2Step1Add1Arena.live.card=791 := by
  decide +kernel
theorem s2Step1Add1_borrowed : s2Step1Add1Arena.checkBorrow (hmrHybridCount s2Step1Add1Arena s2Step1Add1B.length) s2Step1Add1Work=some s2Step1Add1During := by
  have len : s2Step1Add1Work.length=hmrHybridCount s2Step1Add1Arena s2Step1Add1B.length := by
    rw [hmrHybridCount,s2Step1Add1_card]
    decide +kernel
  have nd : s2Step1Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step1Add1Arena s2Step1Add1During s2Step1Add1Work.toFinset s2Step1Add1_bounded s2Step1Add1_apart rfl
theorem s2Step1Add1_checked : compileHmrHybridCinLog s2Step1Add1Arena 784 788 789 s2Step1Add1A s2Step1Add1B s2Step1Add1Work=some s2Step1Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step1Add1Arena s2Step1Add1During 784 788 789 s2Step1Add1A s2Step1Add1B s2Step1Add1Work
    (by decide +kernel) (by decide +kernel) s2Step1Add1_distinct
    (fun q hq => s2Step1Add1_owned (List.mem_toFinset.mpr hq)) s2Step1Add1_borrowed
def s2Step2Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step2Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783, 768]
def s2Step2Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781, 769]
def s2Step2Add0Work : List Wire := [792, 793, 794, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step2Add0_bounded : s2Step2Add0Work.toFinset⊆arenaWires := by
  have h : s2Step2Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step2Add0During : Arena := ⟨s2Step2Add0Arena.live∪s2Step2Add0Work.toFinset,Finset.union_subset s2Step2Add0Arena.bounded s2Step2Add0_bounded⟩
theorem s2Step2Add0_distinct : (790::782::791::(s2Step2Add0A++s2Step2Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2Add0_owned : (790::782::791::(s2Step2Add0A++s2Step2Add0B)).toFinset⊆s2Step2Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step2Add0Arena (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2Add0_apart : Disjoint s2Step2Add0Arena.live s2Step2Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step2Add0Arena (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2Add0_card : s2Step2Add0Arena.live.card=793 := by
  decide +kernel
theorem s2Step2Add0_borrowed : s2Step2Add0Arena.checkBorrow (hmrHybridCount s2Step2Add0Arena s2Step2Add0B.length) s2Step2Add0Work=some s2Step2Add0During := by
  have len : s2Step2Add0Work.length=hmrHybridCount s2Step2Add0Arena s2Step2Add0B.length := by
    rw [hmrHybridCount,s2Step2Add0_card]
    decide +kernel
  have nd : s2Step2Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step2Add0Arena s2Step2Add0During s2Step2Add0Work.toFinset s2Step2Add0_bounded s2Step2Add0_apart rfl
theorem s2Step2Add0_checked : compileHmrHybridCinLog s2Step2Add0Arena 782 790 791 s2Step2Add0A s2Step2Add0B s2Step2Add0Work=some s2Step2Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step2Add0Arena s2Step2Add0During 782 790 791 s2Step2Add0A s2Step2Add0B s2Step2Add0Work
    (by decide +kernel) (by decide +kernel) s2Step2Add0_distinct
    (fun q hq => s2Step2Add0_owned (List.mem_toFinset.mpr hq)) s2Step2Add0_borrowed
def s2Step2Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step2Add1A : List Wire := [255, 785, 787, 789, 770]
def s2Step2Add1B : List Wire := [779, 778, 780, 788, 771]
def s2Step2Add1Work : List Wire := [792, 793, 794, 796]
theorem s2Step2Add1_bounded : s2Step2Add1Work.toFinset⊆arenaWires := by
  have h : s2Step2Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step2Add1During : Arena := ⟨s2Step2Add1Arena.live∪s2Step2Add1Work.toFinset,Finset.union_subset s2Step2Add1Arena.bounded s2Step2Add1_bounded⟩
theorem s2Step2Add1_distinct : (790::782::791::(s2Step2Add1A++s2Step2Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step2Add1_owned : (790::782::791::(s2Step2Add1A++s2Step2Add1B)).toFinset⊆s2Step2Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step2Add1Arena (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2Add1_apart : Disjoint s2Step2Add1Arena.live s2Step2Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step2Add1Arena (fun q => (0≤q ∧ q<792) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step2Add1_card : s2Step2Add1Arena.live.card=793 := by
  decide +kernel
theorem s2Step2Add1_borrowed : s2Step2Add1Arena.checkBorrow (hmrHybridCount s2Step2Add1Arena s2Step2Add1B.length) s2Step2Add1Work=some s2Step2Add1During := by
  have len : s2Step2Add1Work.length=hmrHybridCount s2Step2Add1Arena s2Step2Add1B.length := by
    rw [hmrHybridCount,s2Step2Add1_card]
    decide +kernel
  have nd : s2Step2Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step2Add1Arena s2Step2Add1During s2Step2Add1Work.toFinset s2Step2Add1_bounded s2Step2Add1_apart rfl
theorem s2Step2Add1_checked : compileHmrHybridCinLog s2Step2Add1Arena 782 790 791 s2Step2Add1A s2Step2Add1B s2Step2Add1Work=some s2Step2Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step2Add1Arena s2Step2Add1During 782 790 791 s2Step2Add1A s2Step2Add1B s2Step2Add1Work
    (by decide +kernel) (by decide +kernel) s2Step2Add1_distinct
    (fun q hq => s2Step2Add1_owned (List.mem_toFinset.mpr hq)) s2Step2Add1_borrowed
def s2Step3Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step3Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781, 768]
def s2Step3Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784, 769]
def s2Step3Add0Work : List Wire := [794, 796, 797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step3Add0_bounded : s2Step3Add0Work.toFinset⊆arenaWires := by
  have h : s2Step3Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step3Add0During : Arena := ⟨s2Step3Add0Arena.live∪s2Step3Add0Work.toFinset,Finset.union_subset s2Step3Add0Arena.bounded s2Step3Add0_bounded⟩
theorem s2Step3Add0_distinct : (792::783::793::(s2Step3Add0A++s2Step3Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3Add0_owned : (792::783::793::(s2Step3Add0A++s2Step3Add0B)).toFinset⊆s2Step3Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step3Add0Arena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3Add0_apart : Disjoint s2Step3Add0Arena.live s2Step3Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step3Add0Arena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3Add0_card : s2Step3Add0Arena.live.card=795 := by
  decide +kernel
theorem s2Step3Add0_borrowed : s2Step3Add0Arena.checkBorrow (hmrHybridCount s2Step3Add0Arena s2Step3Add0B.length) s2Step3Add0Work=some s2Step3Add0During := by
  have len : s2Step3Add0Work.length=hmrHybridCount s2Step3Add0Arena s2Step3Add0B.length := by
    rw [hmrHybridCount,s2Step3Add0_card]
    decide +kernel
  have nd : s2Step3Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step3Add0Arena s2Step3Add0During s2Step3Add0Work.toFinset s2Step3Add0_bounded s2Step3Add0_apart rfl
theorem s2Step3Add0_checked : compileHmrHybridCinLog s2Step3Add0Arena 783 792 793 s2Step3Add0A s2Step3Add0B s2Step3Add0Work=some s2Step3Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step3Add0Arena s2Step3Add0During 783 792 793 s2Step3Add0A s2Step3Add0B s2Step3Add0Work
    (by decide +kernel) (by decide +kernel) s2Step3Add0_distinct
    (fun q hq => s2Step3Add0_owned (List.mem_toFinset.mpr hq)) s2Step3Add0_borrowed
def s2Step3Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)),Finset.filter_subset _ _⟩
def s2Step3Add1A : List Wire := [255, 785, 787, 789, 791, 770]
def s2Step3Add1B : List Wire := [779, 778, 786, 780, 790, 771]
def s2Step3Add1Work : List Wire := [794, 796, 797, 798, 799]
theorem s2Step3Add1_bounded : s2Step3Add1Work.toFinset⊆arenaWires := by
  have h : s2Step3Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step3Add1During : Arena := ⟨s2Step3Add1Arena.live∪s2Step3Add1Work.toFinset,Finset.union_subset s2Step3Add1Arena.bounded s2Step3Add1_bounded⟩
theorem s2Step3Add1_distinct : (792::783::793::(s2Step3Add1A++s2Step3Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step3Add1_owned : (792::783::793::(s2Step3Add1A++s2Step3Add1B)).toFinset⊆s2Step3Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step3Add1Arena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3Add1_apart : Disjoint s2Step3Add1Arena.live s2Step3Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step3Add1Arena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<796)) rfl
  decide +kernel
theorem s2Step3Add1_card : s2Step3Add1Arena.live.card=795 := by
  decide +kernel
theorem s2Step3Add1_borrowed : s2Step3Add1Arena.checkBorrow (hmrHybridCount s2Step3Add1Arena s2Step3Add1B.length) s2Step3Add1Work=some s2Step3Add1During := by
  have len : s2Step3Add1Work.length=hmrHybridCount s2Step3Add1Arena s2Step3Add1B.length := by
    rw [hmrHybridCount,s2Step3Add1_card]
    decide +kernel
  have nd : s2Step3Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step3Add1Arena s2Step3Add1During s2Step3Add1Work.toFinset s2Step3Add1_bounded s2Step3Add1_apart rfl
theorem s2Step3Add1_checked : compileHmrHybridCinLog s2Step3Add1Arena 783 792 793 s2Step3Add1A s2Step3Add1B s2Step3Add1Work=some s2Step3Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step3Add1Arena s2Step3Add1During 783 792 793 s2Step3Add1A s2Step3Add1B s2Step3Add1Work
    (by decide +kernel) (by decide +kernel) s2Step3Add1_distinct
    (fun q hq => s2Step3Add1_owned (List.mem_toFinset.mpr hq)) s2Step3Add1_borrowed
def s2Step4Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797)),Finset.filter_subset _ _⟩
def s2Step4Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784, 768]
def s2Step4Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782, 769]
def s2Step4Add0Work : List Wire := [797, 798, 799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step4Add0_bounded : s2Step4Add0Work.toFinset⊆arenaWires := by
  have h : s2Step4Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step4Add0During : Arena := ⟨s2Step4Add0Arena.live∪s2Step4Add0Work.toFinset,Finset.union_subset s2Step4Add0Arena.bounded s2Step4Add0_bounded⟩
theorem s2Step4Add0_distinct : (794::781::796::(s2Step4Add0A++s2Step4Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4Add0_owned : (794::781::796::(s2Step4Add0A++s2Step4Add0B)).toFinset⊆s2Step4Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step4Add0Arena (fun q => (0≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step4Add0_apart : Disjoint s2Step4Add0Arena.live s2Step4Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step4Add0Arena (fun q => (0≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step4Add0_card : s2Step4Add0Arena.live.card=797 := by
  decide +kernel
theorem s2Step4Add0_borrowed : s2Step4Add0Arena.checkBorrow (hmrHybridCount s2Step4Add0Arena s2Step4Add0B.length) s2Step4Add0Work=some s2Step4Add0During := by
  have len : s2Step4Add0Work.length=hmrHybridCount s2Step4Add0Arena s2Step4Add0B.length := by
    rw [hmrHybridCount,s2Step4Add0_card]
    decide +kernel
  have nd : s2Step4Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step4Add0Arena s2Step4Add0During s2Step4Add0Work.toFinset s2Step4Add0_bounded s2Step4Add0_apart rfl
theorem s2Step4Add0_checked : compileHmrHybridCinLog s2Step4Add0Arena 781 794 796 s2Step4Add0A s2Step4Add0B s2Step4Add0Work=some s2Step4Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step4Add0Arena s2Step4Add0During 781 794 796 s2Step4Add0A s2Step4Add0B s2Step4Add0Work
    (by decide +kernel) (by decide +kernel) s2Step4Add0_distinct
    (fun q hq => s2Step4Add0_owned (List.mem_toFinset.mpr hq)) s2Step4Add0_borrowed
def s2Step4Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797)),Finset.filter_subset _ _⟩
def s2Step4Add1A : List Wire := [255, 785, 787, 789, 791, 793, 770]
def s2Step4Add1B : List Wire := [779, 778, 786, 788, 780, 792, 771]
def s2Step4Add1Work : List Wire := [797, 798, 799, 800, 801, 802]
theorem s2Step4Add1_bounded : s2Step4Add1Work.toFinset⊆arenaWires := by
  have h : s2Step4Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step4Add1During : Arena := ⟨s2Step4Add1Arena.live∪s2Step4Add1Work.toFinset,Finset.union_subset s2Step4Add1Arena.bounded s2Step4Add1_bounded⟩
theorem s2Step4Add1_distinct : (794::781::796::(s2Step4Add1A++s2Step4Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step4Add1_owned : (794::781::796::(s2Step4Add1A++s2Step4Add1B)).toFinset⊆s2Step4Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step4Add1Arena (fun q => (0≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step4Add1_apart : Disjoint s2Step4Add1Arena.live s2Step4Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step4Add1Arena (fun q => (0≤q ∧ q<797)) rfl
  decide +kernel
theorem s2Step4Add1_card : s2Step4Add1Arena.live.card=797 := by
  decide +kernel
theorem s2Step4Add1_borrowed : s2Step4Add1Arena.checkBorrow (hmrHybridCount s2Step4Add1Arena s2Step4Add1B.length) s2Step4Add1Work=some s2Step4Add1During := by
  have len : s2Step4Add1Work.length=hmrHybridCount s2Step4Add1Arena s2Step4Add1B.length := by
    rw [hmrHybridCount,s2Step4Add1_card]
    decide +kernel
  have nd : s2Step4Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step4Add1Arena s2Step4Add1During s2Step4Add1Work.toFinset s2Step4Add1_bounded s2Step4Add1_apart rfl
theorem s2Step4Add1_checked : compileHmrHybridCinLog s2Step4Add1Arena 781 794 796 s2Step4Add1A s2Step4Add1B s2Step4Add1Work=some s2Step4Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step4Add1Arena s2Step4Add1During 781 794 796 s2Step4Add1A s2Step4Add1B s2Step4Add1Work
    (by decide +kernel) (by decide +kernel) s2Step4Add1_distinct
    (fun q hq => s2Step4Add1_owned (List.mem_toFinset.mpr hq)) s2Step4Add1_borrowed
def s2Step5Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799)),Finset.filter_subset _ _⟩
def s2Step5Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782, 768]
def s2Step5Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783, 769]
def s2Step5Add0Work : List Wire := [799, 800, 801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step5Add0_bounded : s2Step5Add0Work.toFinset⊆arenaWires := by
  have h : s2Step5Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step5Add0During : Arena := ⟨s2Step5Add0Arena.live∪s2Step5Add0Work.toFinset,Finset.union_subset s2Step5Add0Arena.bounded s2Step5Add0_bounded⟩
theorem s2Step5Add0_distinct : (797::784::798::(s2Step5Add0A++s2Step5Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5Add0_owned : (797::784::798::(s2Step5Add0A++s2Step5Add0B)).toFinset⊆s2Step5Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step5Add0Arena (fun q => (0≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step5Add0_apart : Disjoint s2Step5Add0Arena.live s2Step5Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step5Add0Arena (fun q => (0≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step5Add0_card : s2Step5Add0Arena.live.card=799 := by
  decide +kernel
theorem s2Step5Add0_borrowed : s2Step5Add0Arena.checkBorrow (hmrHybridCount s2Step5Add0Arena s2Step5Add0B.length) s2Step5Add0Work=some s2Step5Add0During := by
  have len : s2Step5Add0Work.length=hmrHybridCount s2Step5Add0Arena s2Step5Add0B.length := by
    rw [hmrHybridCount,s2Step5Add0_card]
    decide +kernel
  have nd : s2Step5Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step5Add0Arena s2Step5Add0During s2Step5Add0Work.toFinset s2Step5Add0_bounded s2Step5Add0_apart rfl
theorem s2Step5Add0_checked : compileHmrHybridCinLog s2Step5Add0Arena 784 797 798 s2Step5Add0A s2Step5Add0B s2Step5Add0Work=some s2Step5Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step5Add0Arena s2Step5Add0During 784 797 798 s2Step5Add0A s2Step5Add0B s2Step5Add0Work
    (by decide +kernel) (by decide +kernel) s2Step5Add0_distinct
    (fun q hq => s2Step5Add0_owned (List.mem_toFinset.mpr hq)) s2Step5Add0_borrowed
def s2Step5Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<799)),Finset.filter_subset _ _⟩
def s2Step5Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 770]
def s2Step5Add1B : List Wire := [779, 778, 786, 788, 790, 780, 794, 771]
def s2Step5Add1Work : List Wire := [799, 800, 801, 802, 803, 804, 805]
theorem s2Step5Add1_bounded : s2Step5Add1Work.toFinset⊆arenaWires := by
  have h : s2Step5Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step5Add1During : Arena := ⟨s2Step5Add1Arena.live∪s2Step5Add1Work.toFinset,Finset.union_subset s2Step5Add1Arena.bounded s2Step5Add1_bounded⟩
theorem s2Step5Add1_distinct : (797::784::798::(s2Step5Add1A++s2Step5Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step5Add1_owned : (797::784::798::(s2Step5Add1A++s2Step5Add1B)).toFinset⊆s2Step5Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step5Add1Arena (fun q => (0≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step5Add1_apart : Disjoint s2Step5Add1Arena.live s2Step5Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step5Add1Arena (fun q => (0≤q ∧ q<799)) rfl
  decide +kernel
theorem s2Step5Add1_card : s2Step5Add1Arena.live.card=799 := by
  decide +kernel
theorem s2Step5Add1_borrowed : s2Step5Add1Arena.checkBorrow (hmrHybridCount s2Step5Add1Arena s2Step5Add1B.length) s2Step5Add1Work=some s2Step5Add1During := by
  have len : s2Step5Add1Work.length=hmrHybridCount s2Step5Add1Arena s2Step5Add1B.length := by
    rw [hmrHybridCount,s2Step5Add1_card]
    decide +kernel
  have nd : s2Step5Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step5Add1Arena s2Step5Add1During s2Step5Add1Work.toFinset s2Step5Add1_bounded s2Step5Add1_apart rfl
theorem s2Step5Add1_checked : compileHmrHybridCinLog s2Step5Add1Arena 784 797 798 s2Step5Add1A s2Step5Add1B s2Step5Add1Work=some s2Step5Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step5Add1Arena s2Step5Add1During 784 797 798 s2Step5Add1A s2Step5Add1B s2Step5Add1Work
    (by decide +kernel) (by decide +kernel) s2Step5Add1_distinct
    (fun q hq => s2Step5Add1_owned (List.mem_toFinset.mpr hq)) s2Step5Add1_borrowed
def s2Step6Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<801)),Finset.filter_subset _ _⟩
def s2Step6Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783, 768]
def s2Step6Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781, 769]
def s2Step6Add0Work : List Wire := [801, 802, 803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step6Add0_bounded : s2Step6Add0Work.toFinset⊆arenaWires := by
  have h : s2Step6Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step6Add0During : Arena := ⟨s2Step6Add0Arena.live∪s2Step6Add0Work.toFinset,Finset.union_subset s2Step6Add0Arena.bounded s2Step6Add0_bounded⟩
theorem s2Step6Add0_distinct : (799::782::800::(s2Step6Add0A++s2Step6Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6Add0_owned : (799::782::800::(s2Step6Add0A++s2Step6Add0B)).toFinset⊆s2Step6Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step6Add0Arena (fun q => (0≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step6Add0_apart : Disjoint s2Step6Add0Arena.live s2Step6Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step6Add0Arena (fun q => (0≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step6Add0_card : s2Step6Add0Arena.live.card=801 := by
  decide +kernel
theorem s2Step6Add0_borrowed : s2Step6Add0Arena.checkBorrow (hmrHybridCount s2Step6Add0Arena s2Step6Add0B.length) s2Step6Add0Work=some s2Step6Add0During := by
  have len : s2Step6Add0Work.length=hmrHybridCount s2Step6Add0Arena s2Step6Add0B.length := by
    rw [hmrHybridCount,s2Step6Add0_card]
    decide +kernel
  have nd : s2Step6Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step6Add0Arena s2Step6Add0During s2Step6Add0Work.toFinset s2Step6Add0_bounded s2Step6Add0_apart rfl
theorem s2Step6Add0_checked : compileHmrHybridCinLog s2Step6Add0Arena 782 799 800 s2Step6Add0A s2Step6Add0B s2Step6Add0Work=some s2Step6Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step6Add0Arena s2Step6Add0During 782 799 800 s2Step6Add0A s2Step6Add0B s2Step6Add0Work
    (by decide +kernel) (by decide +kernel) s2Step6Add0_distinct
    (fun q hq => s2Step6Add0_owned (List.mem_toFinset.mpr hq)) s2Step6Add0_borrowed
def s2Step6Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<801)),Finset.filter_subset _ _⟩
def s2Step6Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 770]
def s2Step6Add1B : List Wire := [779, 778, 786, 788, 790, 792, 780, 797, 771]
def s2Step6Add1Work : List Wire := [801, 802, 803, 804, 805, 806, 807, 808]
theorem s2Step6Add1_bounded : s2Step6Add1Work.toFinset⊆arenaWires := by
  have h : s2Step6Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step6Add1During : Arena := ⟨s2Step6Add1Arena.live∪s2Step6Add1Work.toFinset,Finset.union_subset s2Step6Add1Arena.bounded s2Step6Add1_bounded⟩
theorem s2Step6Add1_distinct : (799::782::800::(s2Step6Add1A++s2Step6Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step6Add1_owned : (799::782::800::(s2Step6Add1A++s2Step6Add1B)).toFinset⊆s2Step6Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step6Add1Arena (fun q => (0≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step6Add1_apart : Disjoint s2Step6Add1Arena.live s2Step6Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step6Add1Arena (fun q => (0≤q ∧ q<801)) rfl
  decide +kernel
theorem s2Step6Add1_card : s2Step6Add1Arena.live.card=801 := by
  decide +kernel
theorem s2Step6Add1_borrowed : s2Step6Add1Arena.checkBorrow (hmrHybridCount s2Step6Add1Arena s2Step6Add1B.length) s2Step6Add1Work=some s2Step6Add1During := by
  have len : s2Step6Add1Work.length=hmrHybridCount s2Step6Add1Arena s2Step6Add1B.length := by
    rw [hmrHybridCount,s2Step6Add1_card]
    decide +kernel
  have nd : s2Step6Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step6Add1Arena s2Step6Add1During s2Step6Add1Work.toFinset s2Step6Add1_bounded s2Step6Add1_apart rfl
theorem s2Step6Add1_checked : compileHmrHybridCinLog s2Step6Add1Arena 782 799 800 s2Step6Add1A s2Step6Add1B s2Step6Add1Work=some s2Step6Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step6Add1Arena s2Step6Add1During 782 799 800 s2Step6Add1A s2Step6Add1B s2Step6Add1Work
    (by decide +kernel) (by decide +kernel) s2Step6Add1_distinct
    (fun q hq => s2Step6Add1_owned (List.mem_toFinset.mpr hq)) s2Step6Add1_borrowed
def s2Step7Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<803)),Finset.filter_subset _ _⟩
def s2Step7Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781, 768]
def s2Step7Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784, 769]
def s2Step7Add0Work : List Wire := [803, 804, 805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step7Add0_bounded : s2Step7Add0Work.toFinset⊆arenaWires := by
  have h : s2Step7Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step7Add0During : Arena := ⟨s2Step7Add0Arena.live∪s2Step7Add0Work.toFinset,Finset.union_subset s2Step7Add0Arena.bounded s2Step7Add0_bounded⟩
theorem s2Step7Add0_distinct : (801::783::802::(s2Step7Add0A++s2Step7Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7Add0_owned : (801::783::802::(s2Step7Add0A++s2Step7Add0B)).toFinset⊆s2Step7Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step7Add0Arena (fun q => (0≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step7Add0_apart : Disjoint s2Step7Add0Arena.live s2Step7Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step7Add0Arena (fun q => (0≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step7Add0_card : s2Step7Add0Arena.live.card=803 := by
  decide +kernel
theorem s2Step7Add0_borrowed : s2Step7Add0Arena.checkBorrow (hmrHybridCount s2Step7Add0Arena s2Step7Add0B.length) s2Step7Add0Work=some s2Step7Add0During := by
  have len : s2Step7Add0Work.length=hmrHybridCount s2Step7Add0Arena s2Step7Add0B.length := by
    rw [hmrHybridCount,s2Step7Add0_card]
    decide +kernel
  have nd : s2Step7Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step7Add0Arena s2Step7Add0During s2Step7Add0Work.toFinset s2Step7Add0_bounded s2Step7Add0_apart rfl
theorem s2Step7Add0_checked : compileHmrHybridCinLog s2Step7Add0Arena 783 801 802 s2Step7Add0A s2Step7Add0B s2Step7Add0Work=some s2Step7Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step7Add0Arena s2Step7Add0During 783 801 802 s2Step7Add0A s2Step7Add0B s2Step7Add0Work
    (by decide +kernel) (by decide +kernel) s2Step7Add0_distinct
    (fun q hq => s2Step7Add0_owned (List.mem_toFinset.mpr hq)) s2Step7Add0_borrowed
def s2Step7Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<803)),Finset.filter_subset _ _⟩
def s2Step7Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 770]
def s2Step7Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 780, 799, 771]
def s2Step7Add1Work : List Wire := [803, 804, 805, 806, 807, 808, 809, 810, 811]
theorem s2Step7Add1_bounded : s2Step7Add1Work.toFinset⊆arenaWires := by
  have h : s2Step7Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step7Add1During : Arena := ⟨s2Step7Add1Arena.live∪s2Step7Add1Work.toFinset,Finset.union_subset s2Step7Add1Arena.bounded s2Step7Add1_bounded⟩
theorem s2Step7Add1_distinct : (801::783::802::(s2Step7Add1A++s2Step7Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step7Add1_owned : (801::783::802::(s2Step7Add1A++s2Step7Add1B)).toFinset⊆s2Step7Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step7Add1Arena (fun q => (0≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step7Add1_apart : Disjoint s2Step7Add1Arena.live s2Step7Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step7Add1Arena (fun q => (0≤q ∧ q<803)) rfl
  decide +kernel
theorem s2Step7Add1_card : s2Step7Add1Arena.live.card=803 := by
  decide +kernel
theorem s2Step7Add1_borrowed : s2Step7Add1Arena.checkBorrow (hmrHybridCount s2Step7Add1Arena s2Step7Add1B.length) s2Step7Add1Work=some s2Step7Add1During := by
  have len : s2Step7Add1Work.length=hmrHybridCount s2Step7Add1Arena s2Step7Add1B.length := by
    rw [hmrHybridCount,s2Step7Add1_card]
    decide +kernel
  have nd : s2Step7Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step7Add1Arena s2Step7Add1During s2Step7Add1Work.toFinset s2Step7Add1_bounded s2Step7Add1_apart rfl
theorem s2Step7Add1_checked : compileHmrHybridCinLog s2Step7Add1Arena 783 801 802 s2Step7Add1A s2Step7Add1B s2Step7Add1Work=some s2Step7Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step7Add1Arena s2Step7Add1During 783 801 802 s2Step7Add1A s2Step7Add1B s2Step7Add1Work
    (by decide +kernel) (by decide +kernel) s2Step7Add1_distinct
    (fun q hq => s2Step7Add1_owned (List.mem_toFinset.mpr hq)) s2Step7Add1_borrowed
def s2Step8Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<805)),Finset.filter_subset _ _⟩
def s2Step8Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784, 768]
def s2Step8Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782, 769]
def s2Step8Add0Work : List Wire := [805, 806, 807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step8Add0_bounded : s2Step8Add0Work.toFinset⊆arenaWires := by
  have h : s2Step8Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step8Add0During : Arena := ⟨s2Step8Add0Arena.live∪s2Step8Add0Work.toFinset,Finset.union_subset s2Step8Add0Arena.bounded s2Step8Add0_bounded⟩
theorem s2Step8Add0_distinct : (803::781::804::(s2Step8Add0A++s2Step8Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8Add0_owned : (803::781::804::(s2Step8Add0A++s2Step8Add0B)).toFinset⊆s2Step8Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step8Add0Arena (fun q => (0≤q ∧ q<805)) rfl
  decide +kernel
theorem s2Step8Add0_apart : Disjoint s2Step8Add0Arena.live s2Step8Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step8Add0Arena (fun q => (0≤q ∧ q<805)) rfl
  decide +kernel
theorem s2Step8Add0_card : s2Step8Add0Arena.live.card=805 := by
  decide +kernel
theorem s2Step8Add0_borrowed : s2Step8Add0Arena.checkBorrow (hmrHybridCount s2Step8Add0Arena s2Step8Add0B.length) s2Step8Add0Work=some s2Step8Add0During := by
  have len : s2Step8Add0Work.length=hmrHybridCount s2Step8Add0Arena s2Step8Add0B.length := by
    rw [hmrHybridCount,s2Step8Add0_card]
    decide +kernel
  have nd : s2Step8Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step8Add0Arena s2Step8Add0During s2Step8Add0Work.toFinset s2Step8Add0_bounded s2Step8Add0_apart rfl
theorem s2Step8Add0_checked : compileHmrHybridCinLog s2Step8Add0Arena 781 803 804 s2Step8Add0A s2Step8Add0B s2Step8Add0Work=some s2Step8Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step8Add0Arena s2Step8Add0During 781 803 804 s2Step8Add0A s2Step8Add0B s2Step8Add0Work
    (by decide +kernel) (by decide +kernel) s2Step8Add0_distinct
    (fun q hq => s2Step8Add0_owned (List.mem_toFinset.mpr hq)) s2Step8Add0_borrowed
def s2Step8Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<805)),Finset.filter_subset _ _⟩
def s2Step8Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 770]
def s2Step8Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 780, 801, 771]
def s2Step8Add1Work : List Wire := [805, 806, 807, 808, 809, 810, 811, 812, 813, 814]
theorem s2Step8Add1_bounded : s2Step8Add1Work.toFinset⊆arenaWires := by
  have h : s2Step8Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step8Add1During : Arena := ⟨s2Step8Add1Arena.live∪s2Step8Add1Work.toFinset,Finset.union_subset s2Step8Add1Arena.bounded s2Step8Add1_bounded⟩
theorem s2Step8Add1_distinct : (803::781::804::(s2Step8Add1A++s2Step8Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step8Add1_owned : (803::781::804::(s2Step8Add1A++s2Step8Add1B)).toFinset⊆s2Step8Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step8Add1Arena (fun q => (0≤q ∧ q<805)) rfl
  decide +kernel
theorem s2Step8Add1_apart : Disjoint s2Step8Add1Arena.live s2Step8Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step8Add1Arena (fun q => (0≤q ∧ q<805)) rfl
  decide +kernel
theorem s2Step8Add1_card : s2Step8Add1Arena.live.card=805 := by
  decide +kernel
theorem s2Step8Add1_borrowed : s2Step8Add1Arena.checkBorrow (hmrHybridCount s2Step8Add1Arena s2Step8Add1B.length) s2Step8Add1Work=some s2Step8Add1During := by
  have len : s2Step8Add1Work.length=hmrHybridCount s2Step8Add1Arena s2Step8Add1B.length := by
    rw [hmrHybridCount,s2Step8Add1_card]
    decide +kernel
  have nd : s2Step8Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step8Add1Arena s2Step8Add1During s2Step8Add1Work.toFinset s2Step8Add1_bounded s2Step8Add1_apart rfl
theorem s2Step8Add1_checked : compileHmrHybridCinLog s2Step8Add1Arena 781 803 804 s2Step8Add1A s2Step8Add1B s2Step8Add1Work=some s2Step8Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step8Add1Arena s2Step8Add1During 781 803 804 s2Step8Add1A s2Step8Add1B s2Step8Add1Work
    (by decide +kernel) (by decide +kernel) s2Step8Add1_distinct
    (fun q hq => s2Step8Add1_owned (List.mem_toFinset.mpr hq)) s2Step8Add1_borrowed
def s2Step9Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807)),Finset.filter_subset _ _⟩
def s2Step9Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782, 768]
def s2Step9Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783, 769]
def s2Step9Add0Work : List Wire := [807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step9Add0_bounded : s2Step9Add0Work.toFinset⊆arenaWires := by
  have h : s2Step9Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step9Add0During : Arena := ⟨s2Step9Add0Arena.live∪s2Step9Add0Work.toFinset,Finset.union_subset s2Step9Add0Arena.bounded s2Step9Add0_bounded⟩
theorem s2Step9Add0_distinct : (805::784::806::(s2Step9Add0A++s2Step9Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9Add0_owned : (805::784::806::(s2Step9Add0A++s2Step9Add0B)).toFinset⊆s2Step9Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step9Add0Arena (fun q => (0≤q ∧ q<807)) rfl
  decide +kernel
theorem s2Step9Add0_apart : Disjoint s2Step9Add0Arena.live s2Step9Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step9Add0Arena (fun q => (0≤q ∧ q<807)) rfl
  decide +kernel
theorem s2Step9Add0_card : s2Step9Add0Arena.live.card=807 := by
  decide +kernel
theorem s2Step9Add0_borrowed : s2Step9Add0Arena.checkBorrow (hmrHybridCount s2Step9Add0Arena s2Step9Add0B.length) s2Step9Add0Work=some s2Step9Add0During := by
  have len : s2Step9Add0Work.length=hmrHybridCount s2Step9Add0Arena s2Step9Add0B.length := by
    rw [hmrHybridCount,s2Step9Add0_card]
    decide +kernel
  have nd : s2Step9Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step9Add0Arena s2Step9Add0During s2Step9Add0Work.toFinset s2Step9Add0_bounded s2Step9Add0_apart rfl
theorem s2Step9Add0_checked : compileHmrHybridCinLog s2Step9Add0Arena 784 805 806 s2Step9Add0A s2Step9Add0B s2Step9Add0Work=some s2Step9Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step9Add0Arena s2Step9Add0During 784 805 806 s2Step9Add0A s2Step9Add0B s2Step9Add0Work
    (by decide +kernel) (by decide +kernel) s2Step9Add0_distinct
    (fun q hq => s2Step9Add0_owned (List.mem_toFinset.mpr hq)) s2Step9Add0_borrowed
def s2Step9Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807)),Finset.filter_subset _ _⟩
def s2Step9Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 770]
def s2Step9Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 780, 803, 771]
def s2Step9Add1Work : List Wire := [807, 808, 809, 810, 811, 812, 813, 814, 815, 816, 817]
theorem s2Step9Add1_bounded : s2Step9Add1Work.toFinset⊆arenaWires := by
  have h : s2Step9Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step9Add1During : Arena := ⟨s2Step9Add1Arena.live∪s2Step9Add1Work.toFinset,Finset.union_subset s2Step9Add1Arena.bounded s2Step9Add1_bounded⟩
theorem s2Step9Add1_distinct : (805::784::806::(s2Step9Add1A++s2Step9Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step9Add1_owned : (805::784::806::(s2Step9Add1A++s2Step9Add1B)).toFinset⊆s2Step9Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step9Add1Arena (fun q => (0≤q ∧ q<807)) rfl
  decide +kernel
theorem s2Step9Add1_apart : Disjoint s2Step9Add1Arena.live s2Step9Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step9Add1Arena (fun q => (0≤q ∧ q<807)) rfl
  decide +kernel
theorem s2Step9Add1_card : s2Step9Add1Arena.live.card=807 := by
  decide +kernel
theorem s2Step9Add1_borrowed : s2Step9Add1Arena.checkBorrow (hmrHybridCount s2Step9Add1Arena s2Step9Add1B.length) s2Step9Add1Work=some s2Step9Add1During := by
  have len : s2Step9Add1Work.length=hmrHybridCount s2Step9Add1Arena s2Step9Add1B.length := by
    rw [hmrHybridCount,s2Step9Add1_card]
    decide +kernel
  have nd : s2Step9Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step9Add1Arena s2Step9Add1During s2Step9Add1Work.toFinset s2Step9Add1_bounded s2Step9Add1_apart rfl
theorem s2Step9Add1_checked : compileHmrHybridCinLog s2Step9Add1Arena 784 805 806 s2Step9Add1A s2Step9Add1B s2Step9Add1Work=some s2Step9Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step9Add1Arena s2Step9Add1During 784 805 806 s2Step9Add1A s2Step9Add1B s2Step9Add1Work
    (by decide +kernel) (by decide +kernel) s2Step9Add1_distinct
    (fun q hq => s2Step9Add1_owned (List.mem_toFinset.mpr hq)) s2Step9Add1_borrowed
def s2Step10Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783, 768]
def s2Step10Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781, 769]
def s2Step10Add0Work : List Wire := [809, 810, 811, 812, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step10Add0_bounded : s2Step10Add0Work.toFinset⊆arenaWires := by
  have h : s2Step10Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step10Add0During : Arena := ⟨s2Step10Add0Arena.live∪s2Step10Add0Work.toFinset,Finset.union_subset s2Step10Add0Arena.bounded s2Step10Add0_bounded⟩
theorem s2Step10Add0_distinct : (807::782::808::(s2Step10Add0A++s2Step10Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10Add0_owned : (807::782::808::(s2Step10Add0A++s2Step10Add0B)).toFinset⊆s2Step10Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step10Add0Arena (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10Add0_apart : Disjoint s2Step10Add0Arena.live s2Step10Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step10Add0Arena (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10Add0_card : s2Step10Add0Arena.live.card=810 := by
  decide +kernel
theorem s2Step10Add0_borrowed : s2Step10Add0Arena.checkBorrow (hmrHybridCount s2Step10Add0Arena s2Step10Add0B.length) s2Step10Add0Work=some s2Step10Add0During := by
  have len : s2Step10Add0Work.length=hmrHybridCount s2Step10Add0Arena s2Step10Add0B.length := by
    rw [hmrHybridCount,s2Step10Add0_card]
    decide +kernel
  have nd : s2Step10Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step10Add0Arena s2Step10Add0During s2Step10Add0Work.toFinset s2Step10Add0_bounded s2Step10Add0_apart rfl
theorem s2Step10Add0_checked : compileHmrHybridCinLog s2Step10Add0Arena 782 807 808 s2Step10Add0A s2Step10Add0B s2Step10Add0Work=some s2Step10Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step10Add0Arena s2Step10Add0During 782 807 808 s2Step10Add0A s2Step10Add0B s2Step10Add0Work
    (by decide +kernel) (by decide +kernel) s2Step10Add0_distinct
    (fun q hq => s2Step10Add0_owned (List.mem_toFinset.mpr hq)) s2Step10Add0_borrowed
def s2Step10Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step10Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 770]
def s2Step10Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 780, 805, 771]
def s2Step10Add1Work : List Wire := [809, 810, 811, 812, 814, 815, 816, 817, 818, 819, 820, 821]
theorem s2Step10Add1_bounded : s2Step10Add1Work.toFinset⊆arenaWires := by
  have h : s2Step10Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step10Add1During : Arena := ⟨s2Step10Add1Arena.live∪s2Step10Add1Work.toFinset,Finset.union_subset s2Step10Add1Arena.bounded s2Step10Add1_bounded⟩
theorem s2Step10Add1_distinct : (807::782::808::(s2Step10Add1A++s2Step10Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step10Add1_owned : (807::782::808::(s2Step10Add1A++s2Step10Add1B)).toFinset⊆s2Step10Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step10Add1Arena (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10Add1_apart : Disjoint s2Step10Add1Arena.live s2Step10Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step10Add1Arena (fun q => (0≤q ∧ q<809) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step10Add1_card : s2Step10Add1Arena.live.card=810 := by
  decide +kernel
theorem s2Step10Add1_borrowed : s2Step10Add1Arena.checkBorrow (hmrHybridCount s2Step10Add1Arena s2Step10Add1B.length) s2Step10Add1Work=some s2Step10Add1During := by
  have len : s2Step10Add1Work.length=hmrHybridCount s2Step10Add1Arena s2Step10Add1B.length := by
    rw [hmrHybridCount,s2Step10Add1_card]
    decide +kernel
  have nd : s2Step10Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step10Add1Arena s2Step10Add1During s2Step10Add1Work.toFinset s2Step10Add1_bounded s2Step10Add1_apart rfl
theorem s2Step10Add1_checked : compileHmrHybridCinLog s2Step10Add1Arena 782 807 808 s2Step10Add1A s2Step10Add1B s2Step10Add1Work=some s2Step10Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step10Add1Arena s2Step10Add1During 782 807 808 s2Step10Add1A s2Step10Add1B s2Step10Add1Work
    (by decide +kernel) (by decide +kernel) s2Step10Add1_distinct
    (fun q hq => s2Step10Add1_owned (List.mem_toFinset.mpr hq)) s2Step10Add1_borrowed
def s2Step11Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step11Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781, 768]
def s2Step11Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784, 769]
def s2Step11Add0Work : List Wire := [811, 812, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step11Add0_bounded : s2Step11Add0Work.toFinset⊆arenaWires := by
  have h : s2Step11Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step11Add0During : Arena := ⟨s2Step11Add0Arena.live∪s2Step11Add0Work.toFinset,Finset.union_subset s2Step11Add0Arena.bounded s2Step11Add0_bounded⟩
theorem s2Step11Add0_distinct : (809::783::810::(s2Step11Add0A++s2Step11Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11Add0_owned : (809::783::810::(s2Step11Add0A++s2Step11Add0B)).toFinset⊆s2Step11Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step11Add0Arena (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11Add0_apart : Disjoint s2Step11Add0Arena.live s2Step11Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step11Add0Arena (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11Add0_card : s2Step11Add0Arena.live.card=812 := by
  decide +kernel
theorem s2Step11Add0_borrowed : s2Step11Add0Arena.checkBorrow (hmrHybridCount s2Step11Add0Arena s2Step11Add0B.length) s2Step11Add0Work=some s2Step11Add0During := by
  have len : s2Step11Add0Work.length=hmrHybridCount s2Step11Add0Arena s2Step11Add0B.length := by
    rw [hmrHybridCount,s2Step11Add0_card]
    decide +kernel
  have nd : s2Step11Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step11Add0Arena s2Step11Add0During s2Step11Add0Work.toFinset s2Step11Add0_bounded s2Step11Add0_apart rfl
theorem s2Step11Add0_checked : compileHmrHybridCinLog s2Step11Add0Arena 783 809 810 s2Step11Add0A s2Step11Add0B s2Step11Add0Work=some s2Step11Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step11Add0Arena s2Step11Add0During 783 809 810 s2Step11Add0A s2Step11Add0B s2Step11Add0Work
    (by decide +kernel) (by decide +kernel) s2Step11Add0_distinct
    (fun q hq => s2Step11Add0_owned (List.mem_toFinset.mpr hq)) s2Step11Add0_borrowed
def s2Step11Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814)),Finset.filter_subset _ _⟩
def s2Step11Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 770]
def s2Step11Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 780, 807, 771]
def s2Step11Add1Work : List Wire := [811, 812, 814, 815, 816, 817, 818, 819, 820, 821, 822, 823, 824]
theorem s2Step11Add1_bounded : s2Step11Add1Work.toFinset⊆arenaWires := by
  have h : s2Step11Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step11Add1During : Arena := ⟨s2Step11Add1Arena.live∪s2Step11Add1Work.toFinset,Finset.union_subset s2Step11Add1Arena.bounded s2Step11Add1_bounded⟩
theorem s2Step11Add1_distinct : (809::783::810::(s2Step11Add1A++s2Step11Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step11Add1_owned : (809::783::810::(s2Step11Add1A++s2Step11Add1B)).toFinset⊆s2Step11Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step11Add1Arena (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11Add1_apart : Disjoint s2Step11Add1Arena.live s2Step11Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step11Add1Arena (fun q => (0≤q ∧ q<811) ∨ (813≤q ∧ q<814)) rfl
  decide +kernel
theorem s2Step11Add1_card : s2Step11Add1Arena.live.card=812 := by
  decide +kernel
theorem s2Step11Add1_borrowed : s2Step11Add1Arena.checkBorrow (hmrHybridCount s2Step11Add1Arena s2Step11Add1B.length) s2Step11Add1Work=some s2Step11Add1During := by
  have len : s2Step11Add1Work.length=hmrHybridCount s2Step11Add1Arena s2Step11Add1B.length := by
    rw [hmrHybridCount,s2Step11Add1_card]
    decide +kernel
  have nd : s2Step11Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step11Add1Arena s2Step11Add1During s2Step11Add1Work.toFinset s2Step11Add1_bounded s2Step11Add1_apart rfl
theorem s2Step11Add1_checked : compileHmrHybridCinLog s2Step11Add1Arena 783 809 810 s2Step11Add1A s2Step11Add1B s2Step11Add1Work=some s2Step11Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step11Add1Arena s2Step11Add1During 783 809 810 s2Step11Add1A s2Step11Add1B s2Step11Add1Work
    (by decide +kernel) (by decide +kernel) s2Step11Add1_distinct
    (fun q hq => s2Step11Add1_owned (List.mem_toFinset.mpr hq)) s2Step11Add1_borrowed
def s2Step12Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784, 768]
def s2Step12Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782, 769]
def s2Step12Add0Work : List Wire := [814, 815, 816, 817, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step12Add0_bounded : s2Step12Add0Work.toFinset⊆arenaWires := by
  have h : s2Step12Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step12Add0During : Arena := ⟨s2Step12Add0Arena.live∪s2Step12Add0Work.toFinset,Finset.union_subset s2Step12Add0Arena.bounded s2Step12Add0_bounded⟩
theorem s2Step12Add0_distinct : (811::781::812::(s2Step12Add0A++s2Step12Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12Add0_owned : (811::781::812::(s2Step12Add0A++s2Step12Add0B)).toFinset⊆s2Step12Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step12Add0Arena (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12Add0_apart : Disjoint s2Step12Add0Arena.live s2Step12Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step12Add0Arena (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12Add0_card : s2Step12Add0Arena.live.card=815 := by
  decide +kernel
theorem s2Step12Add0_borrowed : s2Step12Add0Arena.checkBorrow (hmrHybridCount s2Step12Add0Arena s2Step12Add0B.length) s2Step12Add0Work=some s2Step12Add0During := by
  have len : s2Step12Add0Work.length=hmrHybridCount s2Step12Add0Arena s2Step12Add0B.length := by
    rw [hmrHybridCount,s2Step12Add0_card]
    decide +kernel
  have nd : s2Step12Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step12Add0Arena s2Step12Add0During s2Step12Add0Work.toFinset s2Step12Add0_bounded s2Step12Add0_apart rfl
theorem s2Step12Add0_checked : compileHmrHybridCinLog s2Step12Add0Arena 781 811 812 s2Step12Add0A s2Step12Add0B s2Step12Add0Work=some s2Step12Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step12Add0Arena s2Step12Add0During 781 811 812 s2Step12Add0A s2Step12Add0B s2Step12Add0Work
    (by decide +kernel) (by decide +kernel) s2Step12Add0_distinct
    (fun q hq => s2Step12Add0_owned (List.mem_toFinset.mpr hq)) s2Step12Add0_borrowed
def s2Step12Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step12Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 770]
def s2Step12Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 780, 809, 771]
def s2Step12Add1Work : List Wire := [814, 815, 816, 817, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828]
theorem s2Step12Add1_bounded : s2Step12Add1Work.toFinset⊆arenaWires := by
  have h : s2Step12Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step12Add1During : Arena := ⟨s2Step12Add1Arena.live∪s2Step12Add1Work.toFinset,Finset.union_subset s2Step12Add1Arena.bounded s2Step12Add1_bounded⟩
theorem s2Step12Add1_distinct : (811::781::812::(s2Step12Add1A++s2Step12Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step12Add1_owned : (811::781::812::(s2Step12Add1A++s2Step12Add1B)).toFinset⊆s2Step12Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step12Add1Arena (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12Add1_apart : Disjoint s2Step12Add1Arena.live s2Step12Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step12Add1Arena (fun q => (0≤q ∧ q<814) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step12Add1_card : s2Step12Add1Arena.live.card=815 := by
  decide +kernel
theorem s2Step12Add1_borrowed : s2Step12Add1Arena.checkBorrow (hmrHybridCount s2Step12Add1Arena s2Step12Add1B.length) s2Step12Add1Work=some s2Step12Add1During := by
  have len : s2Step12Add1Work.length=hmrHybridCount s2Step12Add1Arena s2Step12Add1B.length := by
    rw [hmrHybridCount,s2Step12Add1_card]
    decide +kernel
  have nd : s2Step12Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step12Add1Arena s2Step12Add1During s2Step12Add1Work.toFinset s2Step12Add1_bounded s2Step12Add1_apart rfl
theorem s2Step12Add1_checked : compileHmrHybridCinLog s2Step12Add1Arena 781 811 812 s2Step12Add1A s2Step12Add1B s2Step12Add1Work=some s2Step12Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step12Add1Arena s2Step12Add1During 781 811 812 s2Step12Add1A s2Step12Add1B s2Step12Add1Work
    (by decide +kernel) (by decide +kernel) s2Step12Add1_distinct
    (fun q hq => s2Step12Add1_owned (List.mem_toFinset.mpr hq)) s2Step12Add1_borrowed
def s2Step13Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step13Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782, 768]
def s2Step13Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783, 769]
def s2Step13Add0Work : List Wire := [816, 817, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step13Add0_bounded : s2Step13Add0Work.toFinset⊆arenaWires := by
  have h : s2Step13Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step13Add0During : Arena := ⟨s2Step13Add0Arena.live∪s2Step13Add0Work.toFinset,Finset.union_subset s2Step13Add0Arena.bounded s2Step13Add0_bounded⟩
theorem s2Step13Add0_distinct : (814::784::815::(s2Step13Add0A++s2Step13Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13Add0_owned : (814::784::815::(s2Step13Add0A++s2Step13Add0B)).toFinset⊆s2Step13Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step13Add0Arena (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13Add0_apart : Disjoint s2Step13Add0Arena.live s2Step13Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step13Add0Arena (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13Add0_card : s2Step13Add0Arena.live.card=817 := by
  decide +kernel
theorem s2Step13Add0_borrowed : s2Step13Add0Arena.checkBorrow (hmrHybridCount s2Step13Add0Arena s2Step13Add0B.length) s2Step13Add0Work=some s2Step13Add0During := by
  have len : s2Step13Add0Work.length=hmrHybridCount s2Step13Add0Arena s2Step13Add0B.length := by
    rw [hmrHybridCount,s2Step13Add0_card]
    decide +kernel
  have nd : s2Step13Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step13Add0Arena s2Step13Add0During s2Step13Add0Work.toFinset s2Step13Add0_bounded s2Step13Add0_apart rfl
theorem s2Step13Add0_checked : compileHmrHybridCinLog s2Step13Add0Arena 784 814 815 s2Step13Add0A s2Step13Add0B s2Step13Add0Work=some s2Step13Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step13Add0Arena s2Step13Add0During 784 814 815 s2Step13Add0A s2Step13Add0B s2Step13Add0Work
    (by decide +kernel) (by decide +kernel) s2Step13Add0_distinct
    (fun q hq => s2Step13Add0_owned (List.mem_toFinset.mpr hq)) s2Step13Add0_borrowed
def s2Step13Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819)),Finset.filter_subset _ _⟩
def s2Step13Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 770]
def s2Step13Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 780, 811, 771]
def s2Step13Add1Work : List Wire := [816, 817, 819, 820, 821, 822, 823, 824, 825, 826, 827, 828, 829, 830, 831]
theorem s2Step13Add1_bounded : s2Step13Add1Work.toFinset⊆arenaWires := by
  have h : s2Step13Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step13Add1During : Arena := ⟨s2Step13Add1Arena.live∪s2Step13Add1Work.toFinset,Finset.union_subset s2Step13Add1Arena.bounded s2Step13Add1_bounded⟩
theorem s2Step13Add1_distinct : (814::784::815::(s2Step13Add1A++s2Step13Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step13Add1_owned : (814::784::815::(s2Step13Add1A++s2Step13Add1B)).toFinset⊆s2Step13Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step13Add1Arena (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13Add1_apart : Disjoint s2Step13Add1Arena.live s2Step13Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step13Add1Arena (fun q => (0≤q ∧ q<816) ∨ (818≤q ∧ q<819)) rfl
  decide +kernel
theorem s2Step13Add1_card : s2Step13Add1Arena.live.card=817 := by
  decide +kernel
theorem s2Step13Add1_borrowed : s2Step13Add1Arena.checkBorrow (hmrHybridCount s2Step13Add1Arena s2Step13Add1B.length) s2Step13Add1Work=some s2Step13Add1During := by
  have len : s2Step13Add1Work.length=hmrHybridCount s2Step13Add1Arena s2Step13Add1B.length := by
    rw [hmrHybridCount,s2Step13Add1_card]
    decide +kernel
  have nd : s2Step13Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step13Add1Arena s2Step13Add1During s2Step13Add1Work.toFinset s2Step13Add1_bounded s2Step13Add1_apart rfl
theorem s2Step13Add1_checked : compileHmrHybridCinLog s2Step13Add1Arena 784 814 815 s2Step13Add1A s2Step13Add1B s2Step13Add1Work=some s2Step13Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step13Add1Arena s2Step13Add1During 784 814 815 s2Step13Add1A s2Step13Add1B s2Step13Add1Work
    (by decide +kernel) (by decide +kernel) s2Step13Add1_distinct
    (fun q hq => s2Step13Add1_owned (List.mem_toFinset.mpr hq)) s2Step13Add1_borrowed
def s2Step14Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783, 768]
def s2Step14Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781, 769]
def s2Step14Add0Work : List Wire := [819, 820, 821, 822, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step14Add0_bounded : s2Step14Add0Work.toFinset⊆arenaWires := by
  have h : s2Step14Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step14Add0During : Arena := ⟨s2Step14Add0Arena.live∪s2Step14Add0Work.toFinset,Finset.union_subset s2Step14Add0Arena.bounded s2Step14Add0_bounded⟩
theorem s2Step14Add0_distinct : (816::782::817::(s2Step14Add0A++s2Step14Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14Add0_owned : (816::782::817::(s2Step14Add0A++s2Step14Add0B)).toFinset⊆s2Step14Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step14Add0Arena (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14Add0_apart : Disjoint s2Step14Add0Arena.live s2Step14Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step14Add0Arena (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14Add0_card : s2Step14Add0Arena.live.card=820 := by
  decide +kernel
theorem s2Step14Add0_borrowed : s2Step14Add0Arena.checkBorrow (hmrHybridCount s2Step14Add0Arena s2Step14Add0B.length) s2Step14Add0Work=some s2Step14Add0During := by
  have len : s2Step14Add0Work.length=hmrHybridCount s2Step14Add0Arena s2Step14Add0B.length := by
    rw [hmrHybridCount,s2Step14Add0_card]
    decide +kernel
  have nd : s2Step14Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step14Add0Arena s2Step14Add0During s2Step14Add0Work.toFinset s2Step14Add0_bounded s2Step14Add0_apart rfl
theorem s2Step14Add0_checked : compileHmrHybridCinLog s2Step14Add0Arena 782 816 817 s2Step14Add0A s2Step14Add0B s2Step14Add0Work=some s2Step14Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step14Add0Arena s2Step14Add0During 782 816 817 s2Step14Add0A s2Step14Add0B s2Step14Add0Work
    (by decide +kernel) (by decide +kernel) s2Step14Add0_distinct
    (fun q hq => s2Step14Add0_owned (List.mem_toFinset.mpr hq)) s2Step14Add0_borrowed
def s2Step14Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step14Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 770]
def s2Step14Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 780, 814, 771]
def s2Step14Add1Work : List Wire := [819, 820, 821, 822, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835]
theorem s2Step14Add1_bounded : s2Step14Add1Work.toFinset⊆arenaWires := by
  have h : s2Step14Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step14Add1During : Arena := ⟨s2Step14Add1Arena.live∪s2Step14Add1Work.toFinset,Finset.union_subset s2Step14Add1Arena.bounded s2Step14Add1_bounded⟩
theorem s2Step14Add1_distinct : (816::782::817::(s2Step14Add1A++s2Step14Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step14Add1_owned : (816::782::817::(s2Step14Add1A++s2Step14Add1B)).toFinset⊆s2Step14Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step14Add1Arena (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14Add1_apart : Disjoint s2Step14Add1Arena.live s2Step14Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step14Add1Arena (fun q => (0≤q ∧ q<819) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step14Add1_card : s2Step14Add1Arena.live.card=820 := by
  decide +kernel
theorem s2Step14Add1_borrowed : s2Step14Add1Arena.checkBorrow (hmrHybridCount s2Step14Add1Arena s2Step14Add1B.length) s2Step14Add1Work=some s2Step14Add1During := by
  have len : s2Step14Add1Work.length=hmrHybridCount s2Step14Add1Arena s2Step14Add1B.length := by
    rw [hmrHybridCount,s2Step14Add1_card]
    decide +kernel
  have nd : s2Step14Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step14Add1Arena s2Step14Add1During s2Step14Add1Work.toFinset s2Step14Add1_bounded s2Step14Add1_apart rfl
theorem s2Step14Add1_checked : compileHmrHybridCinLog s2Step14Add1Arena 782 816 817 s2Step14Add1A s2Step14Add1B s2Step14Add1Work=some s2Step14Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step14Add1Arena s2Step14Add1During 782 816 817 s2Step14Add1A s2Step14Add1B s2Step14Add1Work
    (by decide +kernel) (by decide +kernel) s2Step14Add1_distinct
    (fun q hq => s2Step14Add1_owned (List.mem_toFinset.mpr hq)) s2Step14Add1_borrowed
def s2Step15Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step15Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781, 768]
def s2Step15Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784, 769]
def s2Step15Add0Work : List Wire := [821, 822, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step15Add0_bounded : s2Step15Add0Work.toFinset⊆arenaWires := by
  have h : s2Step15Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step15Add0During : Arena := ⟨s2Step15Add0Arena.live∪s2Step15Add0Work.toFinset,Finset.union_subset s2Step15Add0Arena.bounded s2Step15Add0_bounded⟩
theorem s2Step15Add0_distinct : (819::783::820::(s2Step15Add0A++s2Step15Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15Add0_owned : (819::783::820::(s2Step15Add0A++s2Step15Add0B)).toFinset⊆s2Step15Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step15Add0Arena (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15Add0_apart : Disjoint s2Step15Add0Arena.live s2Step15Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step15Add0Arena (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15Add0_card : s2Step15Add0Arena.live.card=822 := by
  decide +kernel
theorem s2Step15Add0_borrowed : s2Step15Add0Arena.checkBorrow (hmrHybridCount s2Step15Add0Arena s2Step15Add0B.length) s2Step15Add0Work=some s2Step15Add0During := by
  have len : s2Step15Add0Work.length=hmrHybridCount s2Step15Add0Arena s2Step15Add0B.length := by
    rw [hmrHybridCount,s2Step15Add0_card]
    decide +kernel
  have nd : s2Step15Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step15Add0Arena s2Step15Add0During s2Step15Add0Work.toFinset s2Step15Add0_bounded s2Step15Add0_apart rfl
theorem s2Step15Add0_checked : compileHmrHybridCinLog s2Step15Add0Arena 783 819 820 s2Step15Add0A s2Step15Add0B s2Step15Add0Work=some s2Step15Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step15Add0Arena s2Step15Add0During 783 819 820 s2Step15Add0A s2Step15Add0B s2Step15Add0Work
    (by decide +kernel) (by decide +kernel) s2Step15Add0_distinct
    (fun q hq => s2Step15Add0_owned (List.mem_toFinset.mpr hq)) s2Step15Add0_borrowed
def s2Step15Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824)),Finset.filter_subset _ _⟩
def s2Step15Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 770]
def s2Step15Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 780, 816, 771]
def s2Step15Add1Work : List Wire := [821, 822, 824, 825, 826, 827, 828, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838]
theorem s2Step15Add1_bounded : s2Step15Add1Work.toFinset⊆arenaWires := by
  have h : s2Step15Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step15Add1During : Arena := ⟨s2Step15Add1Arena.live∪s2Step15Add1Work.toFinset,Finset.union_subset s2Step15Add1Arena.bounded s2Step15Add1_bounded⟩
theorem s2Step15Add1_distinct : (819::783::820::(s2Step15Add1A++s2Step15Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step15Add1_owned : (819::783::820::(s2Step15Add1A++s2Step15Add1B)).toFinset⊆s2Step15Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step15Add1Arena (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15Add1_apart : Disjoint s2Step15Add1Arena.live s2Step15Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step15Add1Arena (fun q => (0≤q ∧ q<821) ∨ (823≤q ∧ q<824)) rfl
  decide +kernel
theorem s2Step15Add1_card : s2Step15Add1Arena.live.card=822 := by
  decide +kernel
theorem s2Step15Add1_borrowed : s2Step15Add1Arena.checkBorrow (hmrHybridCount s2Step15Add1Arena s2Step15Add1B.length) s2Step15Add1Work=some s2Step15Add1During := by
  have len : s2Step15Add1Work.length=hmrHybridCount s2Step15Add1Arena s2Step15Add1B.length := by
    rw [hmrHybridCount,s2Step15Add1_card]
    decide +kernel
  have nd : s2Step15Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step15Add1Arena s2Step15Add1During s2Step15Add1Work.toFinset s2Step15Add1_bounded s2Step15Add1_apart rfl
theorem s2Step15Add1_checked : compileHmrHybridCinLog s2Step15Add1Arena 783 819 820 s2Step15Add1A s2Step15Add1B s2Step15Add1Work=some s2Step15Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step15Add1Arena s2Step15Add1During 783 819 820 s2Step15Add1A s2Step15Add1B s2Step15Add1Work
    (by decide +kernel) (by decide +kernel) s2Step15Add1_distinct
    (fun q hq => s2Step15Add1_owned (List.mem_toFinset.mpr hq)) s2Step15Add1_borrowed

end ECDSAAdd.Arithmetic.Paper935
