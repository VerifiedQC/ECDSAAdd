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
def s2Step498Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<923)),Finset.filter_subset _ _⟩
def s2Step498Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 901, 918, 768]
def s2Step498Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 845, 917, 769]
def s2Step498Add0Work : List Wire := [923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step498Add0_bounded : s2Step498Add0Work.toFinset⊆arenaWires := by
  have h : s2Step498Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step498Add0During : Arena := ⟨s2Step498Add0Arena.live∪s2Step498Add0Work.toFinset,Finset.union_subset s2Step498Add0Arena.bounded s2Step498Add0_bounded⟩
theorem s2Step498Add0_distinct : (921::916::922::(s2Step498Add0A++s2Step498Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step498Add0_owned : (921::916::922::(s2Step498Add0A++s2Step498Add0B)).toFinset⊆s2Step498Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step498Add0Arena (fun q => (0≤q ∧ q<923)) rfl
  decide +kernel
theorem s2Step498Add0_apart : Disjoint s2Step498Add0Arena.live s2Step498Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step498Add0Arena (fun q => (0≤q ∧ q<923)) rfl
  decide +kernel
theorem s2Step498Add0_card : s2Step498Add0Arena.live.card=923 := by
  decide +kernel
theorem s2Step498Add0_borrowed : s2Step498Add0Arena.checkBorrow (hmrHybridCount s2Step498Add0Arena s2Step498Add0B.length) s2Step498Add0Work=some s2Step498Add0During := by
  have len : s2Step498Add0Work.length=hmrHybridCount s2Step498Add0Arena s2Step498Add0B.length := by
    rw [hmrHybridCount,s2Step498Add0_card]
    decide +kernel
  have nd : s2Step498Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step498Add0Arena s2Step498Add0During s2Step498Add0Work.toFinset s2Step498Add0_bounded s2Step498Add0_apart rfl
theorem s2Step498Add0_checked : compileHmrHybridCinLog s2Step498Add0Arena 916 921 922 s2Step498Add0A s2Step498Add0B s2Step498Add0Work=some s2Step498Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step498Add0Arena s2Step498Add0During 916 921 922 s2Step498Add0A s2Step498Add0B s2Step498Add0Work
    (by decide +kernel) (by decide +kernel) s2Step498Add0_distinct
    (fun q hq => s2Step498Add0_owned (List.mem_toFinset.mpr hq)) s2Step498Add0_borrowed
def s2Step498Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<923)),Finset.filter_subset _ _⟩
def s2Step498Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 821, 832, 896, 882, 903, 819, 826, 831, 805, 835, 803, 785, 877, 915, 810, 809, 840, 867, 825, 851, 787, 817, 788, 804, 794, 778, 798, 822, 814, 816, 891, 797, 781, 791, 920, 770]
def s2Step498Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 622, 623, 621, 620, 619, 618, 617, 616, 615, 614, 613, 611, 612, 609, 610, 608, 607, 606, 605, 604, 603, 602, 601, 600, 599, 597, 598, 596, 595, 594, 593, 592, 591, 590, 589, 588, 587, 586, 585, 584, 582, 583, 581, 579, 580, 578, 577, 576, 575, 573, 574, 572, 571, 570, 569, 568, 567, 566, 565, 564, 563, 562, 561, 560, 559, 558, 556, 557, 555, 554, 553, 552, 551, 550, 549, 548, 547, 546, 545, 544, 543, 542, 541, 540, 539, 538, 536, 537, 820, 780, 847, 783, 796, 789, 842, 802, 907, 846, 800, 837, 811, 782, 824, 792, 799, 836, 834, 841, 807, 830, 793, 779, 829, 815, 885, 806, 894, 784, 913, 808, 801, 790, 919, 771]
def s2Step498Add1Work : List Wire := [923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step498Add1_bounded : s2Step498Add1Work.toFinset⊆arenaWires := by
  have h : s2Step498Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step498Add1During : Arena := ⟨s2Step498Add1Arena.live∪s2Step498Add1Work.toFinset,Finset.union_subset s2Step498Add1Arena.bounded s2Step498Add1_bounded⟩
theorem s2Step498Add1_distinct : (921::916::922::(s2Step498Add1A++s2Step498Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step498Add1_owned : (921::916::922::(s2Step498Add1A++s2Step498Add1B)).toFinset⊆s2Step498Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step498Add1Arena (fun q => (0≤q ∧ q<923)) rfl
  decide +kernel
theorem s2Step498Add1_apart : Disjoint s2Step498Add1Arena.live s2Step498Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step498Add1Arena (fun q => (0≤q ∧ q<923)) rfl
  decide +kernel
theorem s2Step498Add1_card : s2Step498Add1Arena.live.card=923 := by
  decide +kernel
theorem s2Step498Add1_borrowed : s2Step498Add1Arena.checkBorrow (hmrHybridCount s2Step498Add1Arena s2Step498Add1B.length) s2Step498Add1Work=some s2Step498Add1During := by
  have len : s2Step498Add1Work.length=hmrHybridCount s2Step498Add1Arena s2Step498Add1B.length := by
    rw [hmrHybridCount,s2Step498Add1_card]
    decide +kernel
  have nd : s2Step498Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step498Add1Arena s2Step498Add1During s2Step498Add1Work.toFinset s2Step498Add1_bounded s2Step498Add1_apart rfl
theorem s2Step498Add1_checked : compileHmrHybridCinLog s2Step498Add1Arena 916 921 922 s2Step498Add1A s2Step498Add1B s2Step498Add1Work=some s2Step498Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step498Add1Arena s2Step498Add1During 916 921 922 s2Step498Add1A s2Step498Add1B s2Step498Add1Work
    (by decide +kernel) (by decide +kernel) s2Step498Add1_distinct
    (fun q hq => s2Step498Add1_owned (List.mem_toFinset.mpr hq)) s2Step498Add1_borrowed
def s6Step0Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩
def s6Step0Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 807, 795]
def s6Step0Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255, 862, 777]
def s6Step0Add0Work : List Wire := [927, 802, 875, 779, 868, 857, 907, 895, 858, 908, 845, 890, 805, 873, 796, 863, 856, 823, 865, 880, 789, 864, 818, 828, 892, 870, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step0Add0_bounded : s6Step0Add0Work.toFinset⊆arenaWires := by
  have h : s6Step0Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step0Add0During : Arena := ⟨s6Step0Add0Arena.live∪s6Step0Add0Work.toFinset,Finset.union_subset s6Step0Add0Arena.bounded s6Step0Add0_bounded⟩
theorem s6Step0Add0_distinct : (874::813::793::(s6Step0Add0A++s6Step0Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step0Add0_owned : (874::813::793::(s6Step0Add0A++s6Step0Add0B)).toFinset⊆s6Step0Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step0Add0Arena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel
theorem s6Step0Add0_apart : Disjoint s6Step0Add0Arena.live s6Step0Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step0Add0Arena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel
theorem s6Step0Add0_card : s6Step0Add0Arena.live.card=788 := by
  decide +kernel
theorem s6Step0Add0_borrowed : s6Step0Add0Arena.checkBorrow (hmrHybridCount s6Step0Add0Arena s6Step0Add0B.length) s6Step0Add0Work=some s6Step0Add0During := by
  have len : s6Step0Add0Work.length=hmrHybridCount s6Step0Add0Arena s6Step0Add0B.length := by
    rw [hmrHybridCount,s6Step0Add0_card]
    decide +kernel
  have nd : s6Step0Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step0Add0Arena s6Step0Add0During s6Step0Add0Work.toFinset s6Step0Add0_bounded s6Step0Add0_apart rfl
theorem s6Step0Add0_checked : compileHmrHybridCinLog s6Step0Add0Arena 813 874 793 s6Step0Add0A s6Step0Add0B s6Step0Add0Work=some s6Step0Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step0Add0Arena s6Step0Add0During 813 874 793 s6Step0Add0A s6Step0Add0B s6Step0Add0Work
    (by decide +kernel) (by decide +kernel) s6Step0Add0_distinct
    (fun q hq => s6Step0Add0_owned (List.mem_toFinset.mpr hq)) s6Step0Add0_borrowed
def s6Step0Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)),Finset.filter_subset _ _⟩
def s6Step0Add1A : List Wire := [768, 876, 776]
def s6Step0Add1B : List Wire := [859, 860, 775]
def s6Step0Add1Work : List Wire := [927, 802]
theorem s6Step0Add1_bounded : s6Step0Add1Work.toFinset⊆arenaWires := by
  have h : s6Step0Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step0Add1During : Arena := ⟨s6Step0Add1Arena.live∪s6Step0Add1Work.toFinset,Finset.union_subset s6Step0Add1Arena.bounded s6Step0Add1_bounded⟩
theorem s6Step0Add1_distinct : (874::813::793::(s6Step0Add1A++s6Step0Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step0Add1_owned : (874::813::793::(s6Step0Add1A++s6Step0Add1B)).toFinset⊆s6Step0Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step0Add1Arena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel
theorem s6Step0Add1_apart : Disjoint s6Step0Add1Arena.live s6Step0Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step0Add1Arena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888)) rfl
  decide +kernel
theorem s6Step0Add1_card : s6Step0Add1Arena.live.card=788 := by
  decide +kernel
theorem s6Step0Add1_borrowed : s6Step0Add1Arena.checkBorrow (hmrHybridCount s6Step0Add1Arena s6Step0Add1B.length) s6Step0Add1Work=some s6Step0Add1During := by
  have len : s6Step0Add1Work.length=hmrHybridCount s6Step0Add1Arena s6Step0Add1B.length := by
    rw [hmrHybridCount,s6Step0Add1_card]
    decide +kernel
  have nd : s6Step0Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step0Add1Arena s6Step0Add1During s6Step0Add1Work.toFinset s6Step0Add1_bounded s6Step0Add1_apart rfl
theorem s6Step0Add1_checked : compileHmrHybridCinLog s6Step0Add1Arena 813 874 793 s6Step0Add1A s6Step0Add1B s6Step0Add1Work=some s6Step0Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step0Add1Arena s6Step0Add1During 813 874 793 s6Step0Add1A s6Step0Add1B s6Step0Add1Work
    (by decide +kernel) (by decide +kernel) s6Step0Add1_distinct
    (fun q hq => s6Step0Add1_owned (List.mem_toFinset.mpr hq)) s6Step0Add1_borrowed
def s6Step1Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step1Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 280, 281, 282, 283, 284, 285, 286, 287, 288, 289, 290, 291, 292, 293, 294, 295, 296, 297, 298, 299, 300, 301, 302, 303, 304, 305, 306, 307, 308, 309, 310, 311, 312, 313, 314, 315, 316, 317, 318, 319, 320, 321, 322, 323, 324, 325, 326, 327, 328, 329, 330, 331, 332, 333, 334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344, 345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366, 367, 368, 369, 370, 371, 372, 373, 374, 375, 376, 377, 378, 379, 380, 381, 382, 383, 384, 385, 386, 387, 388, 389, 390, 391, 392, 393, 394, 395, 396, 397, 398, 399, 400, 401, 402, 403, 404, 405, 406, 407, 408, 409, 410, 411, 412, 413, 414, 415, 416, 417, 418, 419, 420, 421, 422, 423, 424, 425, 426, 427, 428, 429, 430, 431, 432, 433, 434, 435, 436, 437, 438, 439, 440, 441, 442, 443, 444, 445, 446, 447, 448, 449, 450, 451, 452, 453, 454, 455, 456, 457, 458, 459, 460, 461, 462, 463, 464, 465, 466, 467, 468, 469, 470, 471, 472, 473, 474, 475, 476, 477, 478, 479, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 492, 493, 494, 495, 496, 497, 498, 499, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 862, 795]
def s6Step1Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 813, 807, 777]
def s6Step1Add0Work : List Wire := [875, 779, 868, 857, 907, 858, 908, 845, 890, 805, 873, 796, 863, 856, 823, 865, 880, 789, 864, 818, 828, 892, 870, 822, 882, 780, 833, 872, 888, 886, 778, 838, 883, 814, 821, 869, 843, 831, 854, 830, 898, 848, 852, 841, 839, 794, 850, 911, 881, 853, 867, 786, 910, 877, 855, 803, 922, 799, 879, 827, 784, 901, 917, 835, 851, 861, 878, 785, 781, 921, 866, 837, 829, 788, 889, 871, 891, 846, 913, 806, 824, 902, 783, 919, 884, 847, 903, 885, 791, 840, 844, 825, 836, 904, 810, 924, 893, 894, 826, 923, 809, 897, 912, 817, 804, 812, 834, 900, 909, 905, 915, 932, 906, 899, 926, 787, 792, 849, 811, 925, 801, 815, 816, 819, 920, 842, 798, 808, 820, 896, 790, 914, 916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step1Add0_bounded : s6Step1Add0Work.toFinset⊆arenaWires := by
  have h : s6Step1Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step1Add0During : Arena := ⟨s6Step1Add0Arena.live∪s6Step1Add0Work.toFinset,Finset.union_subset s6Step1Add0Arena.bounded s6Step1Add0_bounded⟩
theorem s6Step1Add0_distinct : (927::860::802::(s6Step1Add0A++s6Step1Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step1Add0_owned : (927::860::802::(s6Step1Add0A++s6Step1Add0B)).toFinset⊆s6Step1Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step1Add0Arena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step1Add0_apart : Disjoint s6Step1Add0Arena.live s6Step1Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step1Add0Arena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step1Add0_card : s6Step1Add0Arena.live.card=791 := by
  decide +kernel
theorem s6Step1Add0_borrowed : s6Step1Add0Arena.checkBorrow (hmrHybridCount s6Step1Add0Arena s6Step1Add0B.length) s6Step1Add0Work=some s6Step1Add0During := by
  have len : s6Step1Add0Work.length=hmrHybridCount s6Step1Add0Arena s6Step1Add0B.length := by
    rw [hmrHybridCount,s6Step1Add0_card]
    decide +kernel
  have nd : s6Step1Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step1Add0Arena s6Step1Add0During s6Step1Add0Work.toFinset s6Step1Add0_bounded s6Step1Add0_apart rfl
theorem s6Step1Add0_checked : compileHmrHybridCinLog s6Step1Add0Arena 860 927 802 s6Step1Add0A s6Step1Add0B s6Step1Add0Work=some s6Step1Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step1Add0Arena s6Step1Add0During 860 927 802 s6Step1Add0A s6Step1Add0B s6Step1Add0Work
    (by decide +kernel) (by decide +kernel) s6Step1Add0_distinct
    (fun q hq => s6Step1Add0_owned (List.mem_toFinset.mpr hq)) s6Step1Add0_borrowed
def s6Step1Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)),Finset.filter_subset _ _⟩
def s6Step1Add1A : List Wire := [255, 876, 793, 776]
def s6Step1Add1B : List Wire := [859, 887, 874, 775]
def s6Step1Add1Work : List Wire := [875, 779, 868]
theorem s6Step1Add1_bounded : s6Step1Add1Work.toFinset⊆arenaWires := by
  have h : s6Step1Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step1Add1During : Arena := ⟨s6Step1Add1Arena.live∪s6Step1Add1Work.toFinset,Finset.union_subset s6Step1Add1Arena.bounded s6Step1Add1_bounded⟩
theorem s6Step1Add1_distinct : (927::860::802::(s6Step1Add1A++s6Step1Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step1Add1_owned : (927::860::802::(s6Step1Add1A++s6Step1Add1B)).toFinset⊆s6Step1Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step1Add1Arena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step1Add1_apart : Disjoint s6Step1Add1Arena.live s6Step1Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step1Add1Arena (fun q => (0≤q ∧ q<778) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<796) ∨ (802≤q ∧ q<803) ∨ (807≤q ∧ q<808) ∨ (813≤q ∧ q<814) ∨ (859≤q ∧ q<861) ∨ (862≤q ∧ q<863) ∨ (874≤q ∧ q<875) ∨ (876≤q ∧ q<877) ∨ (887≤q ∧ q<888) ∨ (895≤q ∧ q<896) ∨ (927≤q ∧ q<928)) rfl
  decide +kernel
theorem s6Step1Add1_card : s6Step1Add1Arena.live.card=791 := by
  decide +kernel
theorem s6Step1Add1_borrowed : s6Step1Add1Arena.checkBorrow (hmrHybridCount s6Step1Add1Arena s6Step1Add1B.length) s6Step1Add1Work=some s6Step1Add1During := by
  have len : s6Step1Add1Work.length=hmrHybridCount s6Step1Add1Arena s6Step1Add1B.length := by
    rw [hmrHybridCount,s6Step1Add1_card]
    decide +kernel
  have nd : s6Step1Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step1Add1Arena s6Step1Add1During s6Step1Add1Work.toFinset s6Step1Add1_bounded s6Step1Add1_apart rfl
theorem s6Step1Add1_checked : compileHmrHybridCinLog s6Step1Add1Arena 860 927 802 s6Step1Add1A s6Step1Add1B s6Step1Add1Work=some s6Step1Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step1Add1Arena s6Step1Add1During 860 927 802 s6Step1Add1A s6Step1Add1B s6Step1Add1Work
    (by decide +kernel) (by decide +kernel) s6Step1Add1_distinct
    (fun q hq => s6Step1Add1_owned (List.mem_toFinset.mpr hq)) s6Step1Add1_borrowed
def s6Step498Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩
def s6Step498Add0A : List Wire := [256, 257, 258, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 269, 270, 271, 272, 273, 274, 275, 276, 277, 278, 279, 915, 808, 795]
def s6Step498Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 855, 798, 777]
def s6Step498Add0Work : List Wire := [916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step498Add0_bounded : s6Step498Add0Work.toFinset⊆arenaWires := by
  have h : s6Step498Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step498Add0During : Arena := ⟨s6Step498Add0Arena.live∪s6Step498Add0Work.toFinset,Finset.union_subset s6Step498Add0Arena.bounded s6Step498Add0_bounded⟩
theorem s6Step498Add0_distinct : (790::842::914::(s6Step498Add0A++s6Step498Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step498Add0_owned : (790::842::914::(s6Step498Add0A++s6Step498Add0B)).toFinset⊆s6Step498Add0Arena.live := by
  apply hmrLayout_owned_of_filter s6Step498Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498Add0_apart : Disjoint s6Step498Add0Arena.live s6Step498Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step498Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498Add0_card : s6Step498Add0Arena.live.card=923 := by
  decide +kernel
theorem s6Step498Add0_borrowed : s6Step498Add0Arena.checkBorrow (hmrHybridCount s6Step498Add0Arena s6Step498Add0B.length) s6Step498Add0Work=some s6Step498Add0During := by
  have len : s6Step498Add0Work.length=hmrHybridCount s6Step498Add0Arena s6Step498Add0B.length := by
    rw [hmrHybridCount,s6Step498Add0_card]
    decide +kernel
  have nd : s6Step498Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step498Add0Arena s6Step498Add0During s6Step498Add0Work.toFinset s6Step498Add0_bounded s6Step498Add0_apart rfl
theorem s6Step498Add0_checked : compileHmrHybridCinLog s6Step498Add0Arena 842 790 914 s6Step498Add0A s6Step498Add0B s6Step498Add0Work=some s6Step498Add0During := by
  exact compileHmrHybridCinLog_of_parts s6Step498Add0Arena s6Step498Add0During 842 790 914 s6Step498Add0A s6Step498Add0B s6Step498Add0Work
    (by decide +kernel) (by decide +kernel) s6Step498Add0_distinct
    (fun q hq => s6Step498Add0_owned (List.mem_toFinset.mpr hq)) s6Step498Add0_borrowed
def s6Step498Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)),Finset.filter_subset _ _⟩
def s6Step498Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98, 97, 96, 95, 94, 93, 92, 91, 90, 89, 88, 87, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 778, 848, 812, 825, 906, 888, 869, 898, 823, 839, 863, 876, 903, 920, 818, 864, 853, 891, 821, 784, 793, 833, 927, 856, 907, 768, 845, 838, 822, 780, 809, 908, 813, 779, 896, 776]
def s6Step498Add1B : List Wire := [511, 510, 509, 508, 507, 506, 505, 504, 503, 502, 501, 500, 499, 498, 497, 496, 495, 494, 493, 492, 491, 490, 489, 488, 487, 486, 485, 484, 483, 482, 480, 481, 479, 478, 477, 475, 476, 474, 473, 472, 471, 470, 469, 468, 466, 467, 464, 465, 463, 462, 461, 460, 459, 458, 457, 456, 455, 454, 453, 452, 451, 450, 449, 448, 447, 446, 445, 444, 443, 442, 441, 440, 439, 438, 437, 436, 435, 434, 433, 432, 431, 430, 429, 428, 427, 425, 426, 424, 423, 422, 421, 419, 420, 418, 417, 416, 415, 414, 413, 412, 411, 409, 410, 408, 406, 407, 404, 405, 403, 402, 401, 400, 399, 398, 397, 396, 395, 394, 393, 391, 392, 390, 389, 388, 387, 385, 386, 384, 383, 382, 381, 380, 379, 378, 377, 376, 375, 374, 373, 372, 371, 370, 369, 368, 366, 367, 365, 364, 363, 362, 361, 360, 359, 358, 357, 355, 356, 353, 354, 352, 351, 350, 349, 348, 347, 346, 345, 344, 343, 341, 342, 340, 339, 338, 337, 336, 335, 334, 333, 332, 331, 330, 329, 328, 326, 327, 325, 323, 324, 322, 321, 320, 319, 317, 318, 316, 315, 314, 313, 312, 311, 310, 309, 308, 307, 306, 305, 304, 303, 302, 300, 301, 299, 298, 297, 296, 295, 294, 293, 292, 291, 290, 289, 288, 287, 286, 285, 284, 283, 282, 280, 281, 886, 887, 922, 807, 858, 802, 786, 796, 792, 803, 805, 850, 828, 862, 814, 868, 890, 794, 841, 867, 880, 830, 857, 859, 854, 882, 810, 865, 817, 860, 816, 789, 873, 875, 820, 775]
def s6Step498Add1Work : List Wire := [916, 800, 918, 797, 832, 928, 930, 931, 782, 933, 929, 934]
theorem s6Step498Add1_bounded : s6Step498Add1Work.toFinset⊆arenaWires := by
  have h : s6Step498Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s6Step498Add1During : Arena := ⟨s6Step498Add1Arena.live∪s6Step498Add1Work.toFinset,Finset.union_subset s6Step498Add1Arena.bounded s6Step498Add1_bounded⟩
theorem s6Step498Add1_distinct : (790::842::914::(s6Step498Add1A++s6Step498Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s6Step498Add1_owned : (790::842::914::(s6Step498Add1A++s6Step498Add1B)).toFinset⊆s6Step498Add1Arena.live := by
  apply hmrLayout_owned_of_filter s6Step498Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498Add1_apart : Disjoint s6Step498Add1Arena.live s6Step498Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s6Step498Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<832) ∨ (833≤q ∧ q<916) ∨ (917≤q ∧ q<918) ∨ (919≤q ∧ q<928) ∨ (932≤q ∧ q<933)) rfl
  decide +kernel
theorem s6Step498Add1_card : s6Step498Add1Arena.live.card=923 := by
  decide +kernel
theorem s6Step498Add1_borrowed : s6Step498Add1Arena.checkBorrow (hmrHybridCount s6Step498Add1Arena s6Step498Add1B.length) s6Step498Add1Work=some s6Step498Add1During := by
  have len : s6Step498Add1Work.length=hmrHybridCount s6Step498Add1Arena s6Step498Add1B.length := by
    rw [hmrHybridCount,s6Step498Add1_card]
    decide +kernel
  have nd : s6Step498Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s6Step498Add1Arena s6Step498Add1During s6Step498Add1Work.toFinset s6Step498Add1_bounded s6Step498Add1_apart rfl
theorem s6Step498Add1_checked : compileHmrHybridCinLog s6Step498Add1Arena 842 790 914 s6Step498Add1A s6Step498Add1B s6Step498Add1Work=some s6Step498Add1During := by
  exact compileHmrHybridCinLog_of_parts s6Step498Add1Arena s6Step498Add1During 842 790 914 s6Step498Add1A s6Step498Add1B s6Step498Add1Work
    (by decide +kernel) (by decide +kernel) s6Step498Add1_distinct
    (fun q hq => s6Step498Add1_owned (List.mem_toFinset.mpr hq)) s6Step498Add1_borrowed
end ECDSAAdd.Arithmetic.Paper935
