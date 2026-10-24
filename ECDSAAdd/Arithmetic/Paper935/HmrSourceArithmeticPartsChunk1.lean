import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk0

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step16Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step16Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784, 768]
def s2Step16Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782, 769]
def s2Step16Add0Work : List Wire := [824, 825, 826, 827, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step16Add0_bounded : s2Step16Add0Work.toFinset⊆arenaWires := by
  have h : s2Step16Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step16Add0During : Arena := ⟨s2Step16Add0Arena.live∪s2Step16Add0Work.toFinset,Finset.union_subset s2Step16Add0Arena.bounded s2Step16Add0_bounded⟩
theorem s2Step16Add0_distinct : (821::781::822::(s2Step16Add0A++s2Step16Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16Add0_owned : (821::781::822::(s2Step16Add0A++s2Step16Add0B)).toFinset⊆s2Step16Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step16Add0Arena (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16Add0_apart : Disjoint s2Step16Add0Arena.live s2Step16Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step16Add0Arena (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16Add0_card : s2Step16Add0Arena.live.card=825 := by
  decide +kernel
theorem s2Step16Add0_borrowed : s2Step16Add0Arena.checkBorrow (hmrHybridCount s2Step16Add0Arena s2Step16Add0B.length) s2Step16Add0Work=some s2Step16Add0During := by
  have len : s2Step16Add0Work.length=hmrHybridCount s2Step16Add0Arena s2Step16Add0B.length := by
    rw [hmrHybridCount,s2Step16Add0_card]
    decide +kernel
  have nd : s2Step16Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step16Add0Arena s2Step16Add0During s2Step16Add0Work.toFinset s2Step16Add0_bounded s2Step16Add0_apart rfl
theorem s2Step16Add0_checked : compileHmrHybridCinLog s2Step16Add0Arena 781 821 822 s2Step16Add0A s2Step16Add0B s2Step16Add0Work=some s2Step16Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step16Add0Arena s2Step16Add0During 781 821 822 s2Step16Add0A s2Step16Add0B s2Step16Add0Work
    (by decide +kernel) (by decide +kernel) s2Step16Add0_distinct
    (fun q hq => s2Step16Add0_owned (List.mem_toFinset.mpr hq)) s2Step16Add0_borrowed
def s2Step16Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step16Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 770]
def s2Step16Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 780, 819, 771]
def s2Step16Add1Work : List Wire := [824, 825, 826, 827, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842]
theorem s2Step16Add1_bounded : s2Step16Add1Work.toFinset⊆arenaWires := by
  have h : s2Step16Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step16Add1During : Arena := ⟨s2Step16Add1Arena.live∪s2Step16Add1Work.toFinset,Finset.union_subset s2Step16Add1Arena.bounded s2Step16Add1_bounded⟩
theorem s2Step16Add1_distinct : (821::781::822::(s2Step16Add1A++s2Step16Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step16Add1_owned : (821::781::822::(s2Step16Add1A++s2Step16Add1B)).toFinset⊆s2Step16Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step16Add1Arena (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16Add1_apart : Disjoint s2Step16Add1Arena.live s2Step16Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step16Add1Arena (fun q => (0≤q ∧ q<824) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step16Add1_card : s2Step16Add1Arena.live.card=825 := by
  decide +kernel
theorem s2Step16Add1_borrowed : s2Step16Add1Arena.checkBorrow (hmrHybridCount s2Step16Add1Arena s2Step16Add1B.length) s2Step16Add1Work=some s2Step16Add1During := by
  have len : s2Step16Add1Work.length=hmrHybridCount s2Step16Add1Arena s2Step16Add1B.length := by
    rw [hmrHybridCount,s2Step16Add1_card]
    decide +kernel
  have nd : s2Step16Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step16Add1Arena s2Step16Add1During s2Step16Add1Work.toFinset s2Step16Add1_bounded s2Step16Add1_apart rfl
theorem s2Step16Add1_checked : compileHmrHybridCinLog s2Step16Add1Arena 781 821 822 s2Step16Add1A s2Step16Add1B s2Step16Add1Work=some s2Step16Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step16Add1Arena s2Step16Add1During 781 821 822 s2Step16Add1A s2Step16Add1B s2Step16Add1Work
    (by decide +kernel) (by decide +kernel) s2Step16Add1_distinct
    (fun q hq => s2Step16Add1_owned (List.mem_toFinset.mpr hq)) s2Step16Add1_borrowed
def s2Step17Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step17Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782, 768]
def s2Step17Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783, 769]
def s2Step17Add0Work : List Wire := [826, 827, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step17Add0_bounded : s2Step17Add0Work.toFinset⊆arenaWires := by
  have h : s2Step17Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step17Add0During : Arena := ⟨s2Step17Add0Arena.live∪s2Step17Add0Work.toFinset,Finset.union_subset s2Step17Add0Arena.bounded s2Step17Add0_bounded⟩
theorem s2Step17Add0_distinct : (824::784::825::(s2Step17Add0A++s2Step17Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17Add0_owned : (824::784::825::(s2Step17Add0A++s2Step17Add0B)).toFinset⊆s2Step17Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step17Add0Arena (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17Add0_apart : Disjoint s2Step17Add0Arena.live s2Step17Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step17Add0Arena (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17Add0_card : s2Step17Add0Arena.live.card=827 := by
  decide +kernel
theorem s2Step17Add0_borrowed : s2Step17Add0Arena.checkBorrow (hmrHybridCount s2Step17Add0Arena s2Step17Add0B.length) s2Step17Add0Work=some s2Step17Add0During := by
  have len : s2Step17Add0Work.length=hmrHybridCount s2Step17Add0Arena s2Step17Add0B.length := by
    rw [hmrHybridCount,s2Step17Add0_card]
    decide +kernel
  have nd : s2Step17Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step17Add0Arena s2Step17Add0During s2Step17Add0Work.toFinset s2Step17Add0_bounded s2Step17Add0_apart rfl
theorem s2Step17Add0_checked : compileHmrHybridCinLog s2Step17Add0Arena 784 824 825 s2Step17Add0A s2Step17Add0B s2Step17Add0Work=some s2Step17Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step17Add0Arena s2Step17Add0During 784 824 825 s2Step17Add0A s2Step17Add0B s2Step17Add0Work
    (by decide +kernel) (by decide +kernel) s2Step17Add0_distinct
    (fun q hq => s2Step17Add0_owned (List.mem_toFinset.mpr hq)) s2Step17Add0_borrowed
def s2Step17Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829)),Finset.filter_subset _ _⟩
def s2Step17Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 770]
def s2Step17Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 780, 821, 771]
def s2Step17Add1Work : List Wire := [826, 827, 829, 830, 831, 832, 833, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845]
theorem s2Step17Add1_bounded : s2Step17Add1Work.toFinset⊆arenaWires := by
  have h : s2Step17Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step17Add1During : Arena := ⟨s2Step17Add1Arena.live∪s2Step17Add1Work.toFinset,Finset.union_subset s2Step17Add1Arena.bounded s2Step17Add1_bounded⟩
theorem s2Step17Add1_distinct : (824::784::825::(s2Step17Add1A++s2Step17Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step17Add1_owned : (824::784::825::(s2Step17Add1A++s2Step17Add1B)).toFinset⊆s2Step17Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step17Add1Arena (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17Add1_apart : Disjoint s2Step17Add1Arena.live s2Step17Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step17Add1Arena (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829)) rfl
  decide +kernel
theorem s2Step17Add1_card : s2Step17Add1Arena.live.card=827 := by
  decide +kernel
theorem s2Step17Add1_borrowed : s2Step17Add1Arena.checkBorrow (hmrHybridCount s2Step17Add1Arena s2Step17Add1B.length) s2Step17Add1Work=some s2Step17Add1During := by
  have len : s2Step17Add1Work.length=hmrHybridCount s2Step17Add1Arena s2Step17Add1B.length := by
    rw [hmrHybridCount,s2Step17Add1_card]
    decide +kernel
  have nd : s2Step17Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step17Add1Arena s2Step17Add1During s2Step17Add1Work.toFinset s2Step17Add1_bounded s2Step17Add1_apart rfl
theorem s2Step17Add1_checked : compileHmrHybridCinLog s2Step17Add1Arena 784 824 825 s2Step17Add1A s2Step17Add1B s2Step17Add1Work=some s2Step17Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step17Add1Arena s2Step17Add1During 784 824 825 s2Step17Add1A s2Step17Add1B s2Step17Add1Work
    (by decide +kernel) (by decide +kernel) s2Step17Add1_distinct
    (fun q hq => s2Step17Add1_owned (List.mem_toFinset.mpr hq)) s2Step17Add1_borrowed
def s2Step18Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step18Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783, 768]
def s2Step18Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781, 769]
def s2Step18Add0Work : List Wire := [829, 830, 831, 832, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step18Add0_bounded : s2Step18Add0Work.toFinset⊆arenaWires := by
  have h : s2Step18Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step18Add0During : Arena := ⟨s2Step18Add0Arena.live∪s2Step18Add0Work.toFinset,Finset.union_subset s2Step18Add0Arena.bounded s2Step18Add0_bounded⟩
theorem s2Step18Add0_distinct : (826::782::827::(s2Step18Add0A++s2Step18Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18Add0_owned : (826::782::827::(s2Step18Add0A++s2Step18Add0B)).toFinset⊆s2Step18Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step18Add0Arena (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18Add0_apart : Disjoint s2Step18Add0Arena.live s2Step18Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step18Add0Arena (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18Add0_card : s2Step18Add0Arena.live.card=830 := by
  decide +kernel
theorem s2Step18Add0_borrowed : s2Step18Add0Arena.checkBorrow (hmrHybridCount s2Step18Add0Arena s2Step18Add0B.length) s2Step18Add0Work=some s2Step18Add0During := by
  have len : s2Step18Add0Work.length=hmrHybridCount s2Step18Add0Arena s2Step18Add0B.length := by
    rw [hmrHybridCount,s2Step18Add0_card]
    decide +kernel
  have nd : s2Step18Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step18Add0Arena s2Step18Add0During s2Step18Add0Work.toFinset s2Step18Add0_bounded s2Step18Add0_apart rfl
theorem s2Step18Add0_checked : compileHmrHybridCinLog s2Step18Add0Arena 782 826 827 s2Step18Add0A s2Step18Add0B s2Step18Add0Work=some s2Step18Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step18Add0Arena s2Step18Add0During 782 826 827 s2Step18Add0A s2Step18Add0B s2Step18Add0Work
    (by decide +kernel) (by decide +kernel) s2Step18Add0_distinct
    (fun q hq => s2Step18Add0_owned (List.mem_toFinset.mpr hq)) s2Step18Add0_borrowed
def s2Step18Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step18Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 770]
def s2Step18Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 780, 824, 771]
def s2Step18Add1Work : List Wire := [829, 830, 831, 832, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849]
theorem s2Step18Add1_bounded : s2Step18Add1Work.toFinset⊆arenaWires := by
  have h : s2Step18Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step18Add1During : Arena := ⟨s2Step18Add1Arena.live∪s2Step18Add1Work.toFinset,Finset.union_subset s2Step18Add1Arena.bounded s2Step18Add1_bounded⟩
theorem s2Step18Add1_distinct : (826::782::827::(s2Step18Add1A++s2Step18Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step18Add1_owned : (826::782::827::(s2Step18Add1A++s2Step18Add1B)).toFinset⊆s2Step18Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step18Add1Arena (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18Add1_apart : Disjoint s2Step18Add1Arena.live s2Step18Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step18Add1Arena (fun q => (0≤q ∧ q<829) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step18Add1_card : s2Step18Add1Arena.live.card=830 := by
  decide +kernel
theorem s2Step18Add1_borrowed : s2Step18Add1Arena.checkBorrow (hmrHybridCount s2Step18Add1Arena s2Step18Add1B.length) s2Step18Add1Work=some s2Step18Add1During := by
  have len : s2Step18Add1Work.length=hmrHybridCount s2Step18Add1Arena s2Step18Add1B.length := by
    rw [hmrHybridCount,s2Step18Add1_card]
    decide +kernel
  have nd : s2Step18Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step18Add1Arena s2Step18Add1During s2Step18Add1Work.toFinset s2Step18Add1_bounded s2Step18Add1_apart rfl
theorem s2Step18Add1_checked : compileHmrHybridCinLog s2Step18Add1Arena 782 826 827 s2Step18Add1A s2Step18Add1B s2Step18Add1Work=some s2Step18Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step18Add1Arena s2Step18Add1During 782 826 827 s2Step18Add1A s2Step18Add1B s2Step18Add1Work
    (by decide +kernel) (by decide +kernel) s2Step18Add1_distinct
    (fun q hq => s2Step18Add1_owned (List.mem_toFinset.mpr hq)) s2Step18Add1_borrowed
def s2Step19Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step19Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781, 768]
def s2Step19Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784, 769]
def s2Step19Add0Work : List Wire := [831, 832, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step19Add0_bounded : s2Step19Add0Work.toFinset⊆arenaWires := by
  have h : s2Step19Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step19Add0During : Arena := ⟨s2Step19Add0Arena.live∪s2Step19Add0Work.toFinset,Finset.union_subset s2Step19Add0Arena.bounded s2Step19Add0_bounded⟩
theorem s2Step19Add0_distinct : (829::783::830::(s2Step19Add0A++s2Step19Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19Add0_owned : (829::783::830::(s2Step19Add0A++s2Step19Add0B)).toFinset⊆s2Step19Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step19Add0Arena (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19Add0_apart : Disjoint s2Step19Add0Arena.live s2Step19Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step19Add0Arena (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19Add0_card : s2Step19Add0Arena.live.card=832 := by
  decide +kernel
theorem s2Step19Add0_borrowed : s2Step19Add0Arena.checkBorrow (hmrHybridCount s2Step19Add0Arena s2Step19Add0B.length) s2Step19Add0Work=some s2Step19Add0During := by
  have len : s2Step19Add0Work.length=hmrHybridCount s2Step19Add0Arena s2Step19Add0B.length := by
    rw [hmrHybridCount,s2Step19Add0_card]
    decide +kernel
  have nd : s2Step19Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step19Add0Arena s2Step19Add0During s2Step19Add0Work.toFinset s2Step19Add0_bounded s2Step19Add0_apart rfl
theorem s2Step19Add0_checked : compileHmrHybridCinLog s2Step19Add0Arena 783 829 830 s2Step19Add0A s2Step19Add0B s2Step19Add0Work=some s2Step19Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step19Add0Arena s2Step19Add0During 783 829 830 s2Step19Add0A s2Step19Add0B s2Step19Add0Work
    (by decide +kernel) (by decide +kernel) s2Step19Add0_distinct
    (fun q hq => s2Step19Add0_owned (List.mem_toFinset.mpr hq)) s2Step19Add0_borrowed
def s2Step19Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834)),Finset.filter_subset _ _⟩
def s2Step19Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 770]
def s2Step19Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 780, 826, 771]
def s2Step19Add1Work : List Wire := [831, 832, 834, 835, 836, 837, 838, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852]
theorem s2Step19Add1_bounded : s2Step19Add1Work.toFinset⊆arenaWires := by
  have h : s2Step19Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step19Add1During : Arena := ⟨s2Step19Add1Arena.live∪s2Step19Add1Work.toFinset,Finset.union_subset s2Step19Add1Arena.bounded s2Step19Add1_bounded⟩
theorem s2Step19Add1_distinct : (829::783::830::(s2Step19Add1A++s2Step19Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step19Add1_owned : (829::783::830::(s2Step19Add1A++s2Step19Add1B)).toFinset⊆s2Step19Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step19Add1Arena (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19Add1_apart : Disjoint s2Step19Add1Arena.live s2Step19Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step19Add1Arena (fun q => (0≤q ∧ q<831) ∨ (833≤q ∧ q<834)) rfl
  decide +kernel
theorem s2Step19Add1_card : s2Step19Add1Arena.live.card=832 := by
  decide +kernel
theorem s2Step19Add1_borrowed : s2Step19Add1Arena.checkBorrow (hmrHybridCount s2Step19Add1Arena s2Step19Add1B.length) s2Step19Add1Work=some s2Step19Add1During := by
  have len : s2Step19Add1Work.length=hmrHybridCount s2Step19Add1Arena s2Step19Add1B.length := by
    rw [hmrHybridCount,s2Step19Add1_card]
    decide +kernel
  have nd : s2Step19Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step19Add1Arena s2Step19Add1During s2Step19Add1Work.toFinset s2Step19Add1_bounded s2Step19Add1_apart rfl
theorem s2Step19Add1_checked : compileHmrHybridCinLog s2Step19Add1Arena 783 829 830 s2Step19Add1A s2Step19Add1B s2Step19Add1Work=some s2Step19Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step19Add1Arena s2Step19Add1During 783 829 830 s2Step19Add1A s2Step19Add1B s2Step19Add1Work
    (by decide +kernel) (by decide +kernel) s2Step19Add1_distinct
    (fun q hq => s2Step19Add1_owned (List.mem_toFinset.mpr hq)) s2Step19Add1_borrowed
def s2Step20Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step20Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784, 768]
def s2Step20Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782, 769]
def s2Step20Add0Work : List Wire := [834, 835, 836, 837, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step20Add0_bounded : s2Step20Add0Work.toFinset⊆arenaWires := by
  have h : s2Step20Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step20Add0During : Arena := ⟨s2Step20Add0Arena.live∪s2Step20Add0Work.toFinset,Finset.union_subset s2Step20Add0Arena.bounded s2Step20Add0_bounded⟩
theorem s2Step20Add0_distinct : (831::781::832::(s2Step20Add0A++s2Step20Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20Add0_owned : (831::781::832::(s2Step20Add0A++s2Step20Add0B)).toFinset⊆s2Step20Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step20Add0Arena (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20Add0_apart : Disjoint s2Step20Add0Arena.live s2Step20Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step20Add0Arena (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20Add0_card : s2Step20Add0Arena.live.card=835 := by
  decide +kernel
theorem s2Step20Add0_borrowed : s2Step20Add0Arena.checkBorrow (hmrHybridCount s2Step20Add0Arena s2Step20Add0B.length) s2Step20Add0Work=some s2Step20Add0During := by
  have len : s2Step20Add0Work.length=hmrHybridCount s2Step20Add0Arena s2Step20Add0B.length := by
    rw [hmrHybridCount,s2Step20Add0_card]
    decide +kernel
  have nd : s2Step20Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step20Add0Arena s2Step20Add0During s2Step20Add0Work.toFinset s2Step20Add0_bounded s2Step20Add0_apart rfl
theorem s2Step20Add0_checked : compileHmrHybridCinLog s2Step20Add0Arena 781 831 832 s2Step20Add0A s2Step20Add0B s2Step20Add0Work=some s2Step20Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step20Add0Arena s2Step20Add0During 781 831 832 s2Step20Add0A s2Step20Add0B s2Step20Add0Work
    (by decide +kernel) (by decide +kernel) s2Step20Add0_distinct
    (fun q hq => s2Step20Add0_owned (List.mem_toFinset.mpr hq)) s2Step20Add0_borrowed
def s2Step20Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step20Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 770]
def s2Step20Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 780, 829, 771]
def s2Step20Add1Work : List Wire := [834, 835, 836, 837, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856]
theorem s2Step20Add1_bounded : s2Step20Add1Work.toFinset⊆arenaWires := by
  have h : s2Step20Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step20Add1During : Arena := ⟨s2Step20Add1Arena.live∪s2Step20Add1Work.toFinset,Finset.union_subset s2Step20Add1Arena.bounded s2Step20Add1_bounded⟩
theorem s2Step20Add1_distinct : (831::781::832::(s2Step20Add1A++s2Step20Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step20Add1_owned : (831::781::832::(s2Step20Add1A++s2Step20Add1B)).toFinset⊆s2Step20Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step20Add1Arena (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20Add1_apart : Disjoint s2Step20Add1Arena.live s2Step20Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step20Add1Arena (fun q => (0≤q ∧ q<834) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step20Add1_card : s2Step20Add1Arena.live.card=835 := by
  decide +kernel
theorem s2Step20Add1_borrowed : s2Step20Add1Arena.checkBorrow (hmrHybridCount s2Step20Add1Arena s2Step20Add1B.length) s2Step20Add1Work=some s2Step20Add1During := by
  have len : s2Step20Add1Work.length=hmrHybridCount s2Step20Add1Arena s2Step20Add1B.length := by
    rw [hmrHybridCount,s2Step20Add1_card]
    decide +kernel
  have nd : s2Step20Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step20Add1Arena s2Step20Add1During s2Step20Add1Work.toFinset s2Step20Add1_bounded s2Step20Add1_apart rfl
theorem s2Step20Add1_checked : compileHmrHybridCinLog s2Step20Add1Arena 781 831 832 s2Step20Add1A s2Step20Add1B s2Step20Add1Work=some s2Step20Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step20Add1Arena s2Step20Add1During 781 831 832 s2Step20Add1A s2Step20Add1B s2Step20Add1Work
    (by decide +kernel) (by decide +kernel) s2Step20Add1_distinct
    (fun q hq => s2Step20Add1_owned (List.mem_toFinset.mpr hq)) s2Step20Add1_borrowed
def s2Step21Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step21Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 782, 768]
def s2Step21Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 781, 783, 769]
def s2Step21Add0Work : List Wire := [836, 837, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step21Add0_bounded : s2Step21Add0Work.toFinset⊆arenaWires := by
  have h : s2Step21Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step21Add0During : Arena := ⟨s2Step21Add0Arena.live∪s2Step21Add0Work.toFinset,Finset.union_subset s2Step21Add0Arena.bounded s2Step21Add0_bounded⟩
theorem s2Step21Add0_distinct : (834::784::835::(s2Step21Add0A++s2Step21Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21Add0_owned : (834::784::835::(s2Step21Add0A++s2Step21Add0B)).toFinset⊆s2Step21Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step21Add0Arena (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21Add0_apart : Disjoint s2Step21Add0Arena.live s2Step21Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step21Add0Arena (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21Add0_card : s2Step21Add0Arena.live.card=837 := by
  decide +kernel
theorem s2Step21Add0_borrowed : s2Step21Add0Arena.checkBorrow (hmrHybridCount s2Step21Add0Arena s2Step21Add0B.length) s2Step21Add0Work=some s2Step21Add0During := by
  have len : s2Step21Add0Work.length=hmrHybridCount s2Step21Add0Arena s2Step21Add0B.length := by
    rw [hmrHybridCount,s2Step21Add0_card]
    decide +kernel
  have nd : s2Step21Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step21Add0Arena s2Step21Add0During s2Step21Add0Work.toFinset s2Step21Add0_bounded s2Step21Add0_apart rfl
theorem s2Step21Add0_checked : compileHmrHybridCinLog s2Step21Add0Arena 784 834 835 s2Step21Add0A s2Step21Add0B s2Step21Add0Work=some s2Step21Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step21Add0Arena s2Step21Add0During 784 834 835 s2Step21Add0A s2Step21Add0B s2Step21Add0Work
    (by decide +kernel) (by decide +kernel) s2Step21Add0_distinct
    (fun q hq => s2Step21Add0_owned (List.mem_toFinset.mpr hq)) s2Step21Add0_borrowed
def s2Step21Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839)),Finset.filter_subset _ _⟩
def s2Step21Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 770]
def s2Step21Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 780, 831, 771]
def s2Step21Add1Work : List Wire := [836, 837, 839, 840, 841, 842, 843, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859]
theorem s2Step21Add1_bounded : s2Step21Add1Work.toFinset⊆arenaWires := by
  have h : s2Step21Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step21Add1During : Arena := ⟨s2Step21Add1Arena.live∪s2Step21Add1Work.toFinset,Finset.union_subset s2Step21Add1Arena.bounded s2Step21Add1_bounded⟩
theorem s2Step21Add1_distinct : (834::784::835::(s2Step21Add1A++s2Step21Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step21Add1_owned : (834::784::835::(s2Step21Add1A++s2Step21Add1B)).toFinset⊆s2Step21Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step21Add1Arena (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21Add1_apart : Disjoint s2Step21Add1Arena.live s2Step21Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step21Add1Arena (fun q => (0≤q ∧ q<836) ∨ (838≤q ∧ q<839)) rfl
  decide +kernel
theorem s2Step21Add1_card : s2Step21Add1Arena.live.card=837 := by
  decide +kernel
theorem s2Step21Add1_borrowed : s2Step21Add1Arena.checkBorrow (hmrHybridCount s2Step21Add1Arena s2Step21Add1B.length) s2Step21Add1Work=some s2Step21Add1During := by
  have len : s2Step21Add1Work.length=hmrHybridCount s2Step21Add1Arena s2Step21Add1B.length := by
    rw [hmrHybridCount,s2Step21Add1_card]
    decide +kernel
  have nd : s2Step21Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step21Add1Arena s2Step21Add1During s2Step21Add1Work.toFinset s2Step21Add1_bounded s2Step21Add1_apart rfl
theorem s2Step21Add1_checked : compileHmrHybridCinLog s2Step21Add1Arena 784 834 835 s2Step21Add1A s2Step21Add1B s2Step21Add1Work=some s2Step21Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step21Add1Arena s2Step21Add1During 784 834 835 s2Step21Add1A s2Step21Add1B s2Step21Add1Work
    (by decide +kernel) (by decide +kernel) s2Step21Add1_distinct
    (fun q hq => s2Step21Add1_owned (List.mem_toFinset.mpr hq)) s2Step21Add1_borrowed
def s2Step22Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step22Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 783, 768]
def s2Step22Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 784, 781, 769]
def s2Step22Add0Work : List Wire := [839, 840, 841, 842, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step22Add0_bounded : s2Step22Add0Work.toFinset⊆arenaWires := by
  have h : s2Step22Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step22Add0During : Arena := ⟨s2Step22Add0Arena.live∪s2Step22Add0Work.toFinset,Finset.union_subset s2Step22Add0Arena.bounded s2Step22Add0_bounded⟩
theorem s2Step22Add0_distinct : (836::782::837::(s2Step22Add0A++s2Step22Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22Add0_owned : (836::782::837::(s2Step22Add0A++s2Step22Add0B)).toFinset⊆s2Step22Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step22Add0Arena (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22Add0_apart : Disjoint s2Step22Add0Arena.live s2Step22Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step22Add0Arena (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22Add0_card : s2Step22Add0Arena.live.card=840 := by
  decide +kernel
theorem s2Step22Add0_borrowed : s2Step22Add0Arena.checkBorrow (hmrHybridCount s2Step22Add0Arena s2Step22Add0B.length) s2Step22Add0Work=some s2Step22Add0During := by
  have len : s2Step22Add0Work.length=hmrHybridCount s2Step22Add0Arena s2Step22Add0B.length := by
    rw [hmrHybridCount,s2Step22Add0_card]
    decide +kernel
  have nd : s2Step22Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step22Add0Arena s2Step22Add0During s2Step22Add0Work.toFinset s2Step22Add0_bounded s2Step22Add0_apart rfl
theorem s2Step22Add0_checked : compileHmrHybridCinLog s2Step22Add0Arena 782 836 837 s2Step22Add0A s2Step22Add0B s2Step22Add0Work=some s2Step22Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step22Add0Arena s2Step22Add0During 782 836 837 s2Step22Add0A s2Step22Add0B s2Step22Add0Work
    (by decide +kernel) (by decide +kernel) s2Step22Add0_distinct
    (fun q hq => s2Step22Add0_owned (List.mem_toFinset.mpr hq)) s2Step22Add0_borrowed
def s2Step22Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step22Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 770]
def s2Step22Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 780, 834, 771]
def s2Step22Add1Work : List Wire := [839, 840, 841, 842, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863]
theorem s2Step22Add1_bounded : s2Step22Add1Work.toFinset⊆arenaWires := by
  have h : s2Step22Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step22Add1During : Arena := ⟨s2Step22Add1Arena.live∪s2Step22Add1Work.toFinset,Finset.union_subset s2Step22Add1Arena.bounded s2Step22Add1_bounded⟩
theorem s2Step22Add1_distinct : (836::782::837::(s2Step22Add1A++s2Step22Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step22Add1_owned : (836::782::837::(s2Step22Add1A++s2Step22Add1B)).toFinset⊆s2Step22Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step22Add1Arena (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22Add1_apart : Disjoint s2Step22Add1Arena.live s2Step22Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step22Add1Arena (fun q => (0≤q ∧ q<839) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step22Add1_card : s2Step22Add1Arena.live.card=840 := by
  decide +kernel
theorem s2Step22Add1_borrowed : s2Step22Add1Arena.checkBorrow (hmrHybridCount s2Step22Add1Arena s2Step22Add1B.length) s2Step22Add1Work=some s2Step22Add1During := by
  have len : s2Step22Add1Work.length=hmrHybridCount s2Step22Add1Arena s2Step22Add1B.length := by
    rw [hmrHybridCount,s2Step22Add1_card]
    decide +kernel
  have nd : s2Step22Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step22Add1Arena s2Step22Add1During s2Step22Add1Work.toFinset s2Step22Add1_bounded s2Step22Add1_apart rfl
theorem s2Step22Add1_checked : compileHmrHybridCinLog s2Step22Add1Arena 782 836 837 s2Step22Add1A s2Step22Add1B s2Step22Add1Work=some s2Step22Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step22Add1Arena s2Step22Add1During 782 836 837 s2Step22Add1A s2Step22Add1B s2Step22Add1Work
    (by decide +kernel) (by decide +kernel) s2Step22Add1_distinct
    (fun q hq => s2Step22Add1_owned (List.mem_toFinset.mpr hq)) s2Step22Add1_borrowed
def s2Step23Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step23Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 781, 768]
def s2Step23Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 782, 784, 769]
def s2Step23Add0Work : List Wire := [841, 842, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step23Add0_bounded : s2Step23Add0Work.toFinset⊆arenaWires := by
  have h : s2Step23Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step23Add0During : Arena := ⟨s2Step23Add0Arena.live∪s2Step23Add0Work.toFinset,Finset.union_subset s2Step23Add0Arena.bounded s2Step23Add0_bounded⟩
theorem s2Step23Add0_distinct : (839::783::840::(s2Step23Add0A++s2Step23Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23Add0_owned : (839::783::840::(s2Step23Add0A++s2Step23Add0B)).toFinset⊆s2Step23Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step23Add0Arena (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23Add0_apart : Disjoint s2Step23Add0Arena.live s2Step23Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step23Add0Arena (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23Add0_card : s2Step23Add0Arena.live.card=842 := by
  decide +kernel
theorem s2Step23Add0_borrowed : s2Step23Add0Arena.checkBorrow (hmrHybridCount s2Step23Add0Arena s2Step23Add0B.length) s2Step23Add0Work=some s2Step23Add0During := by
  have len : s2Step23Add0Work.length=hmrHybridCount s2Step23Add0Arena s2Step23Add0B.length := by
    rw [hmrHybridCount,s2Step23Add0_card]
    decide +kernel
  have nd : s2Step23Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step23Add0Arena s2Step23Add0During s2Step23Add0Work.toFinset s2Step23Add0_bounded s2Step23Add0_apart rfl
theorem s2Step23Add0_checked : compileHmrHybridCinLog s2Step23Add0Arena 783 839 840 s2Step23Add0A s2Step23Add0B s2Step23Add0Work=some s2Step23Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step23Add0Arena s2Step23Add0During 783 839 840 s2Step23Add0A s2Step23Add0B s2Step23Add0Work
    (by decide +kernel) (by decide +kernel) s2Step23Add0_distinct
    (fun q hq => s2Step23Add0_owned (List.mem_toFinset.mpr hq)) s2Step23Add0_borrowed
def s2Step23Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844)),Finset.filter_subset _ _⟩
def s2Step23Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 770]
def s2Step23Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 780, 836, 771]
def s2Step23Add1Work : List Wire := [841, 842, 844, 845, 846, 847, 848, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866]
theorem s2Step23Add1_bounded : s2Step23Add1Work.toFinset⊆arenaWires := by
  have h : s2Step23Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step23Add1During : Arena := ⟨s2Step23Add1Arena.live∪s2Step23Add1Work.toFinset,Finset.union_subset s2Step23Add1Arena.bounded s2Step23Add1_bounded⟩
theorem s2Step23Add1_distinct : (839::783::840::(s2Step23Add1A++s2Step23Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step23Add1_owned : (839::783::840::(s2Step23Add1A++s2Step23Add1B)).toFinset⊆s2Step23Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step23Add1Arena (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23Add1_apart : Disjoint s2Step23Add1Arena.live s2Step23Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step23Add1Arena (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844)) rfl
  decide +kernel
theorem s2Step23Add1_card : s2Step23Add1Arena.live.card=842 := by
  decide +kernel
theorem s2Step23Add1_borrowed : s2Step23Add1Arena.checkBorrow (hmrHybridCount s2Step23Add1Arena s2Step23Add1B.length) s2Step23Add1Work=some s2Step23Add1During := by
  have len : s2Step23Add1Work.length=hmrHybridCount s2Step23Add1Arena s2Step23Add1B.length := by
    rw [hmrHybridCount,s2Step23Add1_card]
    decide +kernel
  have nd : s2Step23Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step23Add1Arena s2Step23Add1During s2Step23Add1Work.toFinset s2Step23Add1_bounded s2Step23Add1_apart rfl
theorem s2Step23Add1_checked : compileHmrHybridCinLog s2Step23Add1Arena 783 839 840 s2Step23Add1A s2Step23Add1B s2Step23Add1Work=some s2Step23Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step23Add1Arena s2Step23Add1During 783 839 840 s2Step23Add1A s2Step23Add1B s2Step23Add1Work
    (by decide +kernel) (by decide +kernel) s2Step23Add1_distinct
    (fun q hq => s2Step23Add1_owned (List.mem_toFinset.mpr hq)) s2Step23Add1_borrowed
def s2Step24Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 767, 784, 768]
def s2Step24Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 783, 782, 769]
def s2Step24Add0Work : List Wire := [844, 845, 846, 847, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step24Add0_bounded : s2Step24Add0Work.toFinset⊆arenaWires := by
  have h : s2Step24Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step24Add0During : Arena := ⟨s2Step24Add0Arena.live∪s2Step24Add0Work.toFinset,Finset.union_subset s2Step24Add0Arena.bounded s2Step24Add0_bounded⟩
theorem s2Step24Add0_distinct : (841::781::842::(s2Step24Add0A++s2Step24Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24Add0_owned : (841::781::842::(s2Step24Add0A++s2Step24Add0B)).toFinset⊆s2Step24Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step24Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24Add0_apart : Disjoint s2Step24Add0Arena.live s2Step24Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step24Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24Add0_card : s2Step24Add0Arena.live.card=845 := by
  decide +kernel
theorem s2Step24Add0_borrowed : s2Step24Add0Arena.checkBorrow (hmrHybridCount s2Step24Add0Arena s2Step24Add0B.length) s2Step24Add0Work=some s2Step24Add0During := by
  have len : s2Step24Add0Work.length=hmrHybridCount s2Step24Add0Arena s2Step24Add0B.length := by
    rw [hmrHybridCount,s2Step24Add0_card]
    decide +kernel
  have nd : s2Step24Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step24Add0Arena s2Step24Add0During s2Step24Add0Work.toFinset s2Step24Add0_bounded s2Step24Add0_apart rfl
theorem s2Step24Add0_checked : compileHmrHybridCinLog s2Step24Add0Arena 781 841 842 s2Step24Add0A s2Step24Add0B s2Step24Add0Work=some s2Step24Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step24Add0Arena s2Step24Add0During 781 841 842 s2Step24Add0A s2Step24Add0B s2Step24Add0Work
    (by decide +kernel) (by decide +kernel) s2Step24Add0_distinct
    (fun q hq => s2Step24Add0_owned (List.mem_toFinset.mpr hq)) s2Step24Add0_borrowed
def s2Step24Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step24Add1A : List Wire := [255, 785, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 840, 770]
def s2Step24Add1B : List Wire := [779, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 780, 839, 771]
def s2Step24Add1Work : List Wire := [844, 845, 846, 847, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870]
theorem s2Step24Add1_bounded : s2Step24Add1Work.toFinset⊆arenaWires := by
  have h : s2Step24Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step24Add1During : Arena := ⟨s2Step24Add1Arena.live∪s2Step24Add1Work.toFinset,Finset.union_subset s2Step24Add1Arena.bounded s2Step24Add1_bounded⟩
theorem s2Step24Add1_distinct : (841::781::842::(s2Step24Add1A++s2Step24Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step24Add1_owned : (841::781::842::(s2Step24Add1A++s2Step24Add1B)).toFinset⊆s2Step24Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step24Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24Add1_apart : Disjoint s2Step24Add1Arena.live s2Step24Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step24Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step24Add1_card : s2Step24Add1Arena.live.card=845 := by
  decide +kernel
theorem s2Step24Add1_borrowed : s2Step24Add1Arena.checkBorrow (hmrHybridCount s2Step24Add1Arena s2Step24Add1B.length) s2Step24Add1Work=some s2Step24Add1During := by
  have len : s2Step24Add1Work.length=hmrHybridCount s2Step24Add1Arena s2Step24Add1B.length := by
    rw [hmrHybridCount,s2Step24Add1_card]
    decide +kernel
  have nd : s2Step24Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step24Add1Arena s2Step24Add1During s2Step24Add1Work.toFinset s2Step24Add1_bounded s2Step24Add1_apart rfl
theorem s2Step24Add1_checked : compileHmrHybridCinLog s2Step24Add1Arena 781 841 842 s2Step24Add1A s2Step24Add1B s2Step24Add1Work=some s2Step24Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step24Add1Arena s2Step24Add1During 781 841 842 s2Step24Add1A s2Step24Add1B s2Step24Add1Work
    (by decide +kernel) (by decide +kernel) s2Step24Add1_distinct
    (fun q hq => s2Step24Add1_owned (List.mem_toFinset.mpr hq)) s2Step24Add1_borrowed
def s2Step25Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step25Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 839, 768]
def s2Step25Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 781, 780, 769]
def s2Step25Add0Work : List Wire := [841, 842, 844, 845, 846, 847, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step25Add0_bounded : s2Step25Add0Work.toFinset⊆arenaWires := by
  have h : s2Step25Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step25Add0During : Arena := ⟨s2Step25Add0Arena.live∪s2Step25Add0Work.toFinset,Finset.union_subset s2Step25Add0Arena.bounded s2Step25Add0_bounded⟩
theorem s2Step25Add0_distinct : (783::785::782::(s2Step25Add0A++s2Step25Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25Add0_owned : (783::785::782::(s2Step25Add0A++s2Step25Add0B)).toFinset⊆s2Step25Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step25Add0Arena (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25Add0_apart : Disjoint s2Step25Add0Arena.live s2Step25Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step25Add0Arena (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25Add0_card : s2Step25Add0Arena.live.card=843 := by
  decide +kernel
theorem s2Step25Add0_borrowed : s2Step25Add0Arena.checkBorrow (hmrHybridCount s2Step25Add0Arena s2Step25Add0B.length) s2Step25Add0Work=some s2Step25Add0During := by
  have len : s2Step25Add0Work.length=hmrHybridCount s2Step25Add0Arena s2Step25Add0B.length := by
    rw [hmrHybridCount,s2Step25Add0_card]
    decide +kernel
  have nd : s2Step25Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step25Add0Arena s2Step25Add0During s2Step25Add0Work.toFinset s2Step25Add0_bounded s2Step25Add0_apart rfl
theorem s2Step25Add0_checked : compileHmrHybridCinLog s2Step25Add0Arena 785 783 782 s2Step25Add0A s2Step25Add0B s2Step25Add0Work=some s2Step25Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step25Add0Arena s2Step25Add0During 785 783 782 s2Step25Add0A s2Step25Add0B s2Step25Add0Work
    (by decide +kernel) (by decide +kernel) s2Step25Add0_distinct
    (fun q hq => s2Step25Add0_owned (List.mem_toFinset.mpr hq)) s2Step25Add0_borrowed
def s2Step25Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)),Finset.filter_subset _ _⟩
def s2Step25Add1A : List Wire := [255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 770]
def s2Step25Add1B : List Wire := [767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 771]
def s2Step25Add1Work : List Wire := [841, 842, 844, 845, 846, 847, 849, 850, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868]
theorem s2Step25Add1_bounded : s2Step25Add1Work.toFinset⊆arenaWires := by
  have h : s2Step25Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step25Add1During : Arena := ⟨s2Step25Add1Arena.live∪s2Step25Add1Work.toFinset,Finset.union_subset s2Step25Add1Arena.bounded s2Step25Add1_bounded⟩
theorem s2Step25Add1_distinct : (783::785::782::(s2Step25Add1A++s2Step25Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step25Add1_owned : (783::785::782::(s2Step25Add1A++s2Step25Add1B)).toFinset⊆s2Step25Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step25Add1Arena (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25Add1_apart : Disjoint s2Step25Add1Arena.live s2Step25Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step25Add1Arena (fun q => (0≤q ∧ q<841) ∨ (843≤q ∧ q<844) ∨ (848≤q ∧ q<849)) rfl
  decide +kernel
theorem s2Step25Add1_card : s2Step25Add1Arena.live.card=843 := by
  decide +kernel
theorem s2Step25Add1_borrowed : s2Step25Add1Arena.checkBorrow (hmrHybridCount s2Step25Add1Arena s2Step25Add1B.length) s2Step25Add1Work=some s2Step25Add1During := by
  have len : s2Step25Add1Work.length=hmrHybridCount s2Step25Add1Arena s2Step25Add1B.length := by
    rw [hmrHybridCount,s2Step25Add1_card]
    decide +kernel
  have nd : s2Step25Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step25Add1Arena s2Step25Add1During s2Step25Add1Work.toFinset s2Step25Add1_bounded s2Step25Add1_apart rfl
theorem s2Step25Add1_checked : compileHmrHybridCinLog s2Step25Add1Arena 785 783 782 s2Step25Add1A s2Step25Add1B s2Step25Add1Work=some s2Step25Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step25Add1Arena s2Step25Add1During 785 783 782 s2Step25Add1A s2Step25Add1B s2Step25Add1Work
    (by decide +kernel) (by decide +kernel) s2Step25Add1_distinct
    (fun q hq => s2Step25Add1_owned (List.mem_toFinset.mpr hq)) s2Step25Add1_borrowed
def s2Step26Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step26Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 780, 768]
def s2Step26Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 785, 781, 769]
def s2Step26Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step26Add0_bounded : s2Step26Add0Work.toFinset⊆arenaWires := by
  have h : s2Step26Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step26Add0During : Arena := ⟨s2Step26Add0Arena.live∪s2Step26Add0Work.toFinset,Finset.union_subset s2Step26Add0Arena.bounded s2Step26Add0_bounded⟩
theorem s2Step26Add0_distinct : (841::839::842::(s2Step26Add0A++s2Step26Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26Add0_owned : (841::839::842::(s2Step26Add0A++s2Step26Add0B)).toFinset⊆s2Step26Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step26Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26Add0_apart : Disjoint s2Step26Add0Arena.live s2Step26Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step26Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26Add0_card : s2Step26Add0Arena.live.card=846 := by
  decide +kernel
theorem s2Step26Add0_borrowed : s2Step26Add0Arena.checkBorrow (hmrHybridCount s2Step26Add0Arena s2Step26Add0B.length) s2Step26Add0Work=some s2Step26Add0During := by
  have len : s2Step26Add0Work.length=hmrHybridCount s2Step26Add0Arena s2Step26Add0B.length := by
    rw [hmrHybridCount,s2Step26Add0_card]
    decide +kernel
  have nd : s2Step26Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step26Add0Arena s2Step26Add0During s2Step26Add0Work.toFinset s2Step26Add0_bounded s2Step26Add0_apart rfl
theorem s2Step26Add0_checked : compileHmrHybridCinLog s2Step26Add0Arena 839 841 842 s2Step26Add0A s2Step26Add0B s2Step26Add0Work=some s2Step26Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step26Add0Arena s2Step26Add0During 839 841 842 s2Step26Add0A s2Step26Add0B s2Step26Add0Work
    (by decide +kernel) (by decide +kernel) s2Step26Add0_distinct
    (fun q hq => s2Step26Add0_owned (List.mem_toFinset.mpr hq)) s2Step26Add0_borrowed
def s2Step26Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step26Add1A : List Wire := [255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 770]
def s2Step26Add1B : List Wire := [767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 779, 783, 771]
def s2Step26Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872]
theorem s2Step26Add1_bounded : s2Step26Add1Work.toFinset⊆arenaWires := by
  have h : s2Step26Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step26Add1During : Arena := ⟨s2Step26Add1Arena.live∪s2Step26Add1Work.toFinset,Finset.union_subset s2Step26Add1Arena.bounded s2Step26Add1_bounded⟩
theorem s2Step26Add1_distinct : (841::839::842::(s2Step26Add1A++s2Step26Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step26Add1_owned : (841::839::842::(s2Step26Add1A++s2Step26Add1B)).toFinset⊆s2Step26Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step26Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26Add1_apart : Disjoint s2Step26Add1Arena.live s2Step26Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step26Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step26Add1_card : s2Step26Add1Arena.live.card=846 := by
  decide +kernel
theorem s2Step26Add1_borrowed : s2Step26Add1Arena.checkBorrow (hmrHybridCount s2Step26Add1Arena s2Step26Add1B.length) s2Step26Add1Work=some s2Step26Add1During := by
  have len : s2Step26Add1Work.length=hmrHybridCount s2Step26Add1Arena s2Step26Add1B.length := by
    rw [hmrHybridCount,s2Step26Add1_card]
    decide +kernel
  have nd : s2Step26Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step26Add1Arena s2Step26Add1During s2Step26Add1Work.toFinset s2Step26Add1_bounded s2Step26Add1_apart rfl
theorem s2Step26Add1_checked : compileHmrHybridCinLog s2Step26Add1Arena 839 841 842 s2Step26Add1A s2Step26Add1B s2Step26Add1Work=some s2Step26Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step26Add1Arena s2Step26Add1During 839 841 842 s2Step26Add1A s2Step26Add1B s2Step26Add1Work
    (by decide +kernel) (by decide +kernel) s2Step26Add1_distinct
    (fun q hq => s2Step26Add1_owned (List.mem_toFinset.mpr hq)) s2Step26Add1_borrowed
def s2Step27Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step27Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 766, 781, 768]
def s2Step27Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 839, 785, 769]
def s2Step27Add0Work : List Wire := [846, 847, 849, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step27Add0_bounded : s2Step27Add0Work.toFinset⊆arenaWires := by
  have h : s2Step27Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step27Add0During : Arena := ⟨s2Step27Add0Arena.live∪s2Step27Add0Work.toFinset,Finset.union_subset s2Step27Add0Arena.bounded s2Step27Add0_bounded⟩
theorem s2Step27Add0_distinct : (844::780::845::(s2Step27Add0A++s2Step27Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27Add0_owned : (844::780::845::(s2Step27Add0A++s2Step27Add0B)).toFinset⊆s2Step27Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step27Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27Add0_apart : Disjoint s2Step27Add0Arena.live s2Step27Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step27Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27Add0_card : s2Step27Add0Arena.live.card=848 := by
  decide +kernel
theorem s2Step27Add0_borrowed : s2Step27Add0Arena.checkBorrow (hmrHybridCount s2Step27Add0Arena s2Step27Add0B.length) s2Step27Add0Work=some s2Step27Add0During := by
  have len : s2Step27Add0Work.length=hmrHybridCount s2Step27Add0Arena s2Step27Add0B.length := by
    rw [hmrHybridCount,s2Step27Add0_card]
    decide +kernel
  have nd : s2Step27Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step27Add0Arena s2Step27Add0During s2Step27Add0Work.toFinset s2Step27Add0_bounded s2Step27Add0_apart rfl
theorem s2Step27Add0_checked : compileHmrHybridCinLog s2Step27Add0Arena 780 844 845 s2Step27Add0A s2Step27Add0B s2Step27Add0Work=some s2Step27Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step27Add0Arena s2Step27Add0During 780 844 845 s2Step27Add0A s2Step27Add0B s2Step27Add0Work
    (by decide +kernel) (by decide +kernel) s2Step27Add0_distinct
    (fun q hq => s2Step27Add0_owned (List.mem_toFinset.mpr hq)) s2Step27Add0_borrowed
def s2Step27Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)),Finset.filter_subset _ _⟩
def s2Step27Add1A : List Wire := [255, 254, 787, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 770]
def s2Step27Add1B : List Wire := [767, 778, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 779, 841, 771]
def s2Step27Add1Work : List Wire := [846, 847, 849, 851, 852, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875]
theorem s2Step27Add1_bounded : s2Step27Add1Work.toFinset⊆arenaWires := by
  have h : s2Step27Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step27Add1During : Arena := ⟨s2Step27Add1Arena.live∪s2Step27Add1Work.toFinset,Finset.union_subset s2Step27Add1Arena.bounded s2Step27Add1_bounded⟩
theorem s2Step27Add1_distinct : (844::780::845::(s2Step27Add1A++s2Step27Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step27Add1_owned : (844::780::845::(s2Step27Add1A++s2Step27Add1B)).toFinset⊆s2Step27Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step27Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27Add1_apart : Disjoint s2Step27Add1Arena.live s2Step27Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step27Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851)) rfl
  decide +kernel
theorem s2Step27Add1_card : s2Step27Add1Arena.live.card=848 := by
  decide +kernel
theorem s2Step27Add1_borrowed : s2Step27Add1Arena.checkBorrow (hmrHybridCount s2Step27Add1Arena s2Step27Add1B.length) s2Step27Add1Work=some s2Step27Add1During := by
  have len : s2Step27Add1Work.length=hmrHybridCount s2Step27Add1Arena s2Step27Add1B.length := by
    rw [hmrHybridCount,s2Step27Add1_card]
    decide +kernel
  have nd : s2Step27Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step27Add1Arena s2Step27Add1During s2Step27Add1Work.toFinset s2Step27Add1_bounded s2Step27Add1_apart rfl
theorem s2Step27Add1_checked : compileHmrHybridCinLog s2Step27Add1Arena 780 844 845 s2Step27Add1A s2Step27Add1B s2Step27Add1Work=some s2Step27Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step27Add1Arena s2Step27Add1During 780 844 845 s2Step27Add1A s2Step27Add1B s2Step27Add1Work
    (by decide +kernel) (by decide +kernel) s2Step27Add1_distinct
    (fun q hq => s2Step27Add1_owned (List.mem_toFinset.mpr hq)) s2Step27Add1_borrowed
def s2Step28Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 781, 768]
def s2Step28Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 780, 841, 769]
def s2Step28Add0Work : List Wire := [846, 847, 849, 851, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step28Add0_bounded : s2Step28Add0Work.toFinset⊆arenaWires := by
  have h : s2Step28Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step28Add0During : Arena := ⟨s2Step28Add0Arena.live∪s2Step28Add0Work.toFinset,Finset.union_subset s2Step28Add0Arena.bounded s2Step28Add0_bounded⟩
theorem s2Step28Add0_distinct : (844::779::845::(s2Step28Add0A++s2Step28Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28Add0_owned : (844::779::845::(s2Step28Add0A++s2Step28Add0B)).toFinset⊆s2Step28Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step28Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28Add0_apart : Disjoint s2Step28Add0Arena.live s2Step28Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step28Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28Add0_card : s2Step28Add0Arena.live.card=849 := by
  decide +kernel
theorem s2Step28Add0_borrowed : s2Step28Add0Arena.checkBorrow (hmrHybridCount s2Step28Add0Arena s2Step28Add0B.length) s2Step28Add0Work=some s2Step28Add0During := by
  have len : s2Step28Add0Work.length=hmrHybridCount s2Step28Add0Arena s2Step28Add0B.length := by
    rw [hmrHybridCount,s2Step28Add0_card]
    decide +kernel
  have nd : s2Step28Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step28Add0Arena s2Step28Add0During s2Step28Add0Work.toFinset s2Step28Add0_bounded s2Step28Add0_apart rfl
theorem s2Step28Add0_checked : compileHmrHybridCinLog s2Step28Add0Arena 779 844 845 s2Step28Add0A s2Step28Add0B s2Step28Add0Work=some s2Step28Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step28Add0Arena s2Step28Add0During 779 844 845 s2Step28Add0A s2Step28Add0B s2Step28Add0Work
    (by decide +kernel) (by decide +kernel) s2Step28Add0_distinct
    (fun q hq => s2Step28Add0_owned (List.mem_toFinset.mpr hq)) s2Step28Add0_borrowed
def s2Step28Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step28Add1A : List Wire := [255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 785, 770]
def s2Step28Add1B : List Wire := [767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 771]
def s2Step28Add1Work : List Wire := [846, 847, 849, 851, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877]
theorem s2Step28Add1_bounded : s2Step28Add1Work.toFinset⊆arenaWires := by
  have h : s2Step28Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step28Add1During : Arena := ⟨s2Step28Add1Arena.live∪s2Step28Add1Work.toFinset,Finset.union_subset s2Step28Add1Arena.bounded s2Step28Add1_bounded⟩
theorem s2Step28Add1_distinct : (844::779::845::(s2Step28Add1A++s2Step28Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step28Add1_owned : (844::779::845::(s2Step28Add1A++s2Step28Add1B)).toFinset⊆s2Step28Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step28Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28Add1_apart : Disjoint s2Step28Add1Arena.live s2Step28Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step28Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step28Add1_card : s2Step28Add1Arena.live.card=849 := by
  decide +kernel
theorem s2Step28Add1_borrowed : s2Step28Add1Arena.checkBorrow (hmrHybridCount s2Step28Add1Arena s2Step28Add1B.length) s2Step28Add1Work=some s2Step28Add1During := by
  have len : s2Step28Add1Work.length=hmrHybridCount s2Step28Add1Arena s2Step28Add1B.length := by
    rw [hmrHybridCount,s2Step28Add1_card]
    decide +kernel
  have nd : s2Step28Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step28Add1Arena s2Step28Add1During s2Step28Add1Work.toFinset s2Step28Add1_bounded s2Step28Add1_apart rfl
theorem s2Step28Add1_checked : compileHmrHybridCinLog s2Step28Add1Arena 779 844 845 s2Step28Add1A s2Step28Add1B s2Step28Add1Work=some s2Step28Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step28Add1Arena s2Step28Add1During 779 844 845 s2Step28Add1A s2Step28Add1B s2Step28Add1Work
    (by decide +kernel) (by decide +kernel) s2Step28Add1_distinct
    (fun q hq => s2Step28Add1_owned (List.mem_toFinset.mpr hq)) s2Step28Add1_borrowed
def s2Step29Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step29Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 765, 781, 768]
def s2Step29Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 779, 785, 769]
def s2Step29Add0Work : List Wire := [846, 847, 849, 851, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step29Add0_bounded : s2Step29Add0Work.toFinset⊆arenaWires := by
  have h : s2Step29Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step29Add0During : Arena := ⟨s2Step29Add0Arena.live∪s2Step29Add0Work.toFinset,Finset.union_subset s2Step29Add0Arena.bounded s2Step29Add0_bounded⟩
theorem s2Step29Add0_distinct : (844::839::845::(s2Step29Add0A++s2Step29Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29Add0_owned : (844::839::845::(s2Step29Add0A++s2Step29Add0B)).toFinset⊆s2Step29Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step29Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29Add0_apart : Disjoint s2Step29Add0Arena.live s2Step29Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step29Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29Add0_card : s2Step29Add0Arena.live.card=849 := by
  decide +kernel
theorem s2Step29Add0_borrowed : s2Step29Add0Arena.checkBorrow (hmrHybridCount s2Step29Add0Arena s2Step29Add0B.length) s2Step29Add0Work=some s2Step29Add0During := by
  have len : s2Step29Add0Work.length=hmrHybridCount s2Step29Add0Arena s2Step29Add0B.length := by
    rw [hmrHybridCount,s2Step29Add0_card]
    decide +kernel
  have nd : s2Step29Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step29Add0Arena s2Step29Add0During s2Step29Add0Work.toFinset s2Step29Add0_bounded s2Step29Add0_apart rfl
theorem s2Step29Add0_checked : compileHmrHybridCinLog s2Step29Add0Arena 839 844 845 s2Step29Add0A s2Step29Add0B s2Step29Add0Work=some s2Step29Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step29Add0Arena s2Step29Add0During 839 844 845 s2Step29Add0A s2Step29Add0B s2Step29Add0Work
    (by decide +kernel) (by decide +kernel) s2Step29Add0_distinct
    (fun q hq => s2Step29Add0_owned (List.mem_toFinset.mpr hq)) s2Step29Add0_borrowed
def s2Step29Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)),Finset.filter_subset _ _⟩
def s2Step29Add1A : List Wire := [255, 254, 253, 789, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 770]
def s2Step29Add1B : List Wire := [767, 766, 786, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 787, 780, 771]
def s2Step29Add1Work : List Wire := [846, 847, 849, 851, 853, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877]
theorem s2Step29Add1_bounded : s2Step29Add1Work.toFinset⊆arenaWires := by
  have h : s2Step29Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step29Add1During : Arena := ⟨s2Step29Add1Arena.live∪s2Step29Add1Work.toFinset,Finset.union_subset s2Step29Add1Arena.bounded s2Step29Add1_bounded⟩
theorem s2Step29Add1_distinct : (844::839::845::(s2Step29Add1A++s2Step29Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step29Add1_owned : (844::839::845::(s2Step29Add1A++s2Step29Add1B)).toFinset⊆s2Step29Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step29Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29Add1_apart : Disjoint s2Step29Add1Arena.live s2Step29Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step29Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<853)) rfl
  decide +kernel
theorem s2Step29Add1_card : s2Step29Add1Arena.live.card=849 := by
  decide +kernel
theorem s2Step29Add1_borrowed : s2Step29Add1Arena.checkBorrow (hmrHybridCount s2Step29Add1Arena s2Step29Add1B.length) s2Step29Add1Work=some s2Step29Add1During := by
  have len : s2Step29Add1Work.length=hmrHybridCount s2Step29Add1Arena s2Step29Add1B.length := by
    rw [hmrHybridCount,s2Step29Add1_card]
    decide +kernel
  have nd : s2Step29Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step29Add1Arena s2Step29Add1During s2Step29Add1Work.toFinset s2Step29Add1_bounded s2Step29Add1_apart rfl
theorem s2Step29Add1_checked : compileHmrHybridCinLog s2Step29Add1Arena 839 844 845 s2Step29Add1A s2Step29Add1B s2Step29Add1Work=some s2Step29Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step29Add1Arena s2Step29Add1During 839 844 845 s2Step29Add1A s2Step29Add1B s2Step29Add1Work
    (by decide +kernel) (by decide +kernel) s2Step29Add1_distinct
    (fun q hq => s2Step29Add1_owned (List.mem_toFinset.mpr hq)) s2Step29Add1_borrowed
def s2Step30Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781, 768]
def s2Step30Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 839, 780, 769]
def s2Step30Add0Work : List Wire := [846, 847, 849, 851, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step30Add0_bounded : s2Step30Add0Work.toFinset⊆arenaWires := by
  have h : s2Step30Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step30Add0During : Arena := ⟨s2Step30Add0Arena.live∪s2Step30Add0Work.toFinset,Finset.union_subset s2Step30Add0Arena.bounded s2Step30Add0_bounded⟩
theorem s2Step30Add0_distinct : (844::787::845::(s2Step30Add0A++s2Step30Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30Add0_owned : (844::787::845::(s2Step30Add0A++s2Step30Add0B)).toFinset⊆s2Step30Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step30Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30Add0_apart : Disjoint s2Step30Add0Arena.live s2Step30Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step30Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30Add0_card : s2Step30Add0Arena.live.card=850 := by
  decide +kernel
theorem s2Step30Add0_borrowed : s2Step30Add0Arena.checkBorrow (hmrHybridCount s2Step30Add0Arena s2Step30Add0B.length) s2Step30Add0Work=some s2Step30Add0During := by
  have len : s2Step30Add0Work.length=hmrHybridCount s2Step30Add0Arena s2Step30Add0B.length := by
    rw [hmrHybridCount,s2Step30Add0_card]
    decide +kernel
  have nd : s2Step30Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step30Add0Arena s2Step30Add0During s2Step30Add0Work.toFinset s2Step30Add0_bounded s2Step30Add0_apart rfl
theorem s2Step30Add0_checked : compileHmrHybridCinLog s2Step30Add0Arena 787 844 845 s2Step30Add0A s2Step30Add0B s2Step30Add0Work=some s2Step30Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step30Add0Arena s2Step30Add0During 787 844 845 s2Step30Add0A s2Step30Add0B s2Step30Add0Work
    (by decide +kernel) (by decide +kernel) s2Step30Add0_distinct
    (fun q hq => s2Step30Add0_owned (List.mem_toFinset.mpr hq)) s2Step30Add0_borrowed
def s2Step30Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step30Add1A : List Wire := [255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 785, 770]
def s2Step30Add1B : List Wire := [767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 786, 779, 771]
def s2Step30Add1Work : List Wire := [846, 847, 849, 851, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879]
theorem s2Step30Add1_bounded : s2Step30Add1Work.toFinset⊆arenaWires := by
  have h : s2Step30Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step30Add1During : Arena := ⟨s2Step30Add1Arena.live∪s2Step30Add1Work.toFinset,Finset.union_subset s2Step30Add1Arena.bounded s2Step30Add1_bounded⟩
theorem s2Step30Add1_distinct : (844::787::845::(s2Step30Add1A++s2Step30Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step30Add1_owned : (844::787::845::(s2Step30Add1A++s2Step30Add1B)).toFinset⊆s2Step30Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step30Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30Add1_apart : Disjoint s2Step30Add1Arena.live s2Step30Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step30Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step30Add1_card : s2Step30Add1Arena.live.card=850 := by
  decide +kernel
theorem s2Step30Add1_borrowed : s2Step30Add1Arena.checkBorrow (hmrHybridCount s2Step30Add1Arena s2Step30Add1B.length) s2Step30Add1Work=some s2Step30Add1During := by
  have len : s2Step30Add1Work.length=hmrHybridCount s2Step30Add1Arena s2Step30Add1B.length := by
    rw [hmrHybridCount,s2Step30Add1_card]
    decide +kernel
  have nd : s2Step30Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step30Add1Arena s2Step30Add1During s2Step30Add1Work.toFinset s2Step30Add1_bounded s2Step30Add1_apart rfl
theorem s2Step30Add1_checked : compileHmrHybridCinLog s2Step30Add1Arena 787 844 845 s2Step30Add1A s2Step30Add1B s2Step30Add1Work=some s2Step30Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step30Add1Arena s2Step30Add1During 787 844 845 s2Step30Add1A s2Step30Add1B s2Step30Add1Work
    (by decide +kernel) (by decide +kernel) s2Step30Add1_distinct
    (fun q hq => s2Step30Add1_owned (List.mem_toFinset.mpr hq)) s2Step30Add1_borrowed
def s2Step31Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step31Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781, 768]
def s2Step31Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 787, 785, 769]
def s2Step31Add0Work : List Wire := [846, 847, 849, 851, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step31Add0_bounded : s2Step31Add0Work.toFinset⊆arenaWires := by
  have h : s2Step31Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step31Add0During : Arena := ⟨s2Step31Add0Arena.live∪s2Step31Add0Work.toFinset,Finset.union_subset s2Step31Add0Arena.bounded s2Step31Add0_bounded⟩
theorem s2Step31Add0_distinct : (844::779::845::(s2Step31Add0A++s2Step31Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31Add0_owned : (844::779::845::(s2Step31Add0A++s2Step31Add0B)).toFinset⊆s2Step31Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step31Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31Add0_apart : Disjoint s2Step31Add0Arena.live s2Step31Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step31Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31Add0_card : s2Step31Add0Arena.live.card=850 := by
  decide +kernel
theorem s2Step31Add0_borrowed : s2Step31Add0Arena.checkBorrow (hmrHybridCount s2Step31Add0Arena s2Step31Add0B.length) s2Step31Add0Work=some s2Step31Add0During := by
  have len : s2Step31Add0Work.length=hmrHybridCount s2Step31Add0Arena s2Step31Add0B.length := by
    rw [hmrHybridCount,s2Step31Add0_card]
    decide +kernel
  have nd : s2Step31Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step31Add0Arena s2Step31Add0During s2Step31Add0Work.toFinset s2Step31Add0_bounded s2Step31Add0_apart rfl
theorem s2Step31Add0_checked : compileHmrHybridCinLog s2Step31Add0Arena 779 844 845 s2Step31Add0A s2Step31Add0B s2Step31Add0Work=some s2Step31Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step31Add0Arena s2Step31Add0During 779 844 845 s2Step31Add0A s2Step31Add0B s2Step31Add0Work
    (by decide +kernel) (by decide +kernel) s2Step31Add0_distinct
    (fun q hq => s2Step31Add0_owned (List.mem_toFinset.mpr hq)) s2Step31Add0_borrowed
def s2Step31Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)),Finset.filter_subset _ _⟩
def s2Step31Add1A : List Wire := [255, 254, 253, 252, 791, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 780, 770]
def s2Step31Add1B : List Wire := [767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 789, 839, 771]
def s2Step31Add1Work : List Wire := [846, 847, 849, 851, 854, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879]
theorem s2Step31Add1_bounded : s2Step31Add1Work.toFinset⊆arenaWires := by
  have h : s2Step31Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step31Add1During : Arena := ⟨s2Step31Add1Arena.live∪s2Step31Add1Work.toFinset,Finset.union_subset s2Step31Add1Arena.bounded s2Step31Add1_bounded⟩
theorem s2Step31Add1_distinct : (844::779::845::(s2Step31Add1A++s2Step31Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step31Add1_owned : (844::779::845::(s2Step31Add1A++s2Step31Add1B)).toFinset⊆s2Step31Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step31Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31Add1_apart : Disjoint s2Step31Add1Arena.live s2Step31Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step31Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<854)) rfl
  decide +kernel
theorem s2Step31Add1_card : s2Step31Add1Arena.live.card=850 := by
  decide +kernel
theorem s2Step31Add1_borrowed : s2Step31Add1Arena.checkBorrow (hmrHybridCount s2Step31Add1Arena s2Step31Add1B.length) s2Step31Add1Work=some s2Step31Add1During := by
  have len : s2Step31Add1Work.length=hmrHybridCount s2Step31Add1Arena s2Step31Add1B.length := by
    rw [hmrHybridCount,s2Step31Add1_card]
    decide +kernel
  have nd : s2Step31Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step31Add1Arena s2Step31Add1During s2Step31Add1Work.toFinset s2Step31Add1_bounded s2Step31Add1_apart rfl
theorem s2Step31Add1_checked : compileHmrHybridCinLog s2Step31Add1Arena 779 844 845 s2Step31Add1A s2Step31Add1B s2Step31Add1Work=some s2Step31Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step31Add1Arena s2Step31Add1During 779 844 845 s2Step31Add1A s2Step31Add1B s2Step31Add1Work
    (by decide +kernel) (by decide +kernel) s2Step31Add1_distinct
    (fun q hq => s2Step31Add1_owned (List.mem_toFinset.mpr hq)) s2Step31Add1_borrowed

end ECDSAAdd.Arithmetic.Paper935
