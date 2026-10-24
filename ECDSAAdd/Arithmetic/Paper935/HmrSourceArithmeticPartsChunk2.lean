import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk1

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step32Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 764, 781, 768]
def s2Step32Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779, 786, 780, 769]
def s2Step32Add0Work : List Wire := [846, 847, 849, 851, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step32Add0_bounded : s2Step32Add0Work.toFinset⊆arenaWires := by
  have h : s2Step32Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step32Add0During : Arena := ⟨s2Step32Add0Arena.live∪s2Step32Add0Work.toFinset,Finset.union_subset s2Step32Add0Arena.bounded s2Step32Add0_bounded⟩
theorem s2Step32Add0_distinct : (844::839::845::(s2Step32Add0A++s2Step32Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32Add0_owned : (844::839::845::(s2Step32Add0A++s2Step32Add0B)).toFinset⊆s2Step32Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step32Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32Add0_apart : Disjoint s2Step32Add0Arena.live s2Step32Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step32Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32Add0_card : s2Step32Add0Arena.live.card=851 := by
  decide +kernel
theorem s2Step32Add0_borrowed : s2Step32Add0Arena.checkBorrow (hmrHybridCount s2Step32Add0Arena s2Step32Add0B.length) s2Step32Add0Work=some s2Step32Add0During := by
  have len : s2Step32Add0Work.length=hmrHybridCount s2Step32Add0Arena s2Step32Add0B.length := by
    rw [hmrHybridCount,s2Step32Add0_card]
    decide +kernel
  have nd : s2Step32Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step32Add0Arena s2Step32Add0During s2Step32Add0Work.toFinset s2Step32Add0_bounded s2Step32Add0_apart rfl
theorem s2Step32Add0_checked : compileHmrHybridCinLog s2Step32Add0Arena 839 844 845 s2Step32Add0A s2Step32Add0B s2Step32Add0Work=some s2Step32Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step32Add0Arena s2Step32Add0During 839 844 845 s2Step32Add0A s2Step32Add0B s2Step32Add0Work
    (by decide +kernel) (by decide +kernel) s2Step32Add0_distinct
    (fun q hq => s2Step32Add0_owned (List.mem_toFinset.mpr hq)) s2Step32Add0_borrowed
def s2Step32Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step32Add1A : List Wire := [255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 785, 770]
def s2Step32Add1B : List Wire := [767, 766, 765, 788, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 791, 787, 771]
def s2Step32Add1Work : List Wire := [846, 847, 849, 851, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880]
theorem s2Step32Add1_bounded : s2Step32Add1Work.toFinset⊆arenaWires := by
  have h : s2Step32Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step32Add1During : Arena := ⟨s2Step32Add1Arena.live∪s2Step32Add1Work.toFinset,Finset.union_subset s2Step32Add1Arena.bounded s2Step32Add1_bounded⟩
theorem s2Step32Add1_distinct : (844::839::845::(s2Step32Add1A++s2Step32Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step32Add1_owned : (844::839::845::(s2Step32Add1A++s2Step32Add1B)).toFinset⊆s2Step32Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step32Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32Add1_apart : Disjoint s2Step32Add1Arena.live s2Step32Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step32Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step32Add1_card : s2Step32Add1Arena.live.card=851 := by
  decide +kernel
theorem s2Step32Add1_borrowed : s2Step32Add1Arena.checkBorrow (hmrHybridCount s2Step32Add1Arena s2Step32Add1B.length) s2Step32Add1Work=some s2Step32Add1During := by
  have len : s2Step32Add1Work.length=hmrHybridCount s2Step32Add1Arena s2Step32Add1B.length := by
    rw [hmrHybridCount,s2Step32Add1_card]
    decide +kernel
  have nd : s2Step32Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step32Add1Arena s2Step32Add1During s2Step32Add1Work.toFinset s2Step32Add1_bounded s2Step32Add1_apart rfl
theorem s2Step32Add1_checked : compileHmrHybridCinLog s2Step32Add1Arena 839 844 845 s2Step32Add1A s2Step32Add1B s2Step32Add1Work=some s2Step32Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step32Add1Arena s2Step32Add1During 839 844 845 s2Step32Add1A s2Step32Add1B s2Step32Add1Work
    (by decide +kernel) (by decide +kernel) s2Step32Add1_distinct
    (fun q hq => s2Step32Add1_owned (List.mem_toFinset.mpr hq)) s2Step32Add1_borrowed
def s2Step33Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step33Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 763, 787, 768]
def s2Step33Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 779, 791, 769]
def s2Step33Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step33Add0_bounded : s2Step33Add0Work.toFinset⊆arenaWires := by
  have h : s2Step33Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step33Add0During : Arena := ⟨s2Step33Add0Arena.live∪s2Step33Add0Work.toFinset,Finset.union_subset s2Step33Add0Arena.bounded s2Step33Add0_bounded⟩
theorem s2Step33Add0_distinct : (786::788::780::(s2Step33Add0A++s2Step33Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33Add0_owned : (786::788::780::(s2Step33Add0A++s2Step33Add0B)).toFinset⊆s2Step33Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step33Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33Add0_apart : Disjoint s2Step33Add0Arena.live s2Step33Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step33Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33Add0_card : s2Step33Add0Arena.live.card=849 := by
  decide +kernel
theorem s2Step33Add0_borrowed : s2Step33Add0Arena.checkBorrow (hmrHybridCount s2Step33Add0Arena s2Step33Add0B.length) s2Step33Add0Work=some s2Step33Add0During := by
  have len : s2Step33Add0Work.length=hmrHybridCount s2Step33Add0Arena s2Step33Add0B.length := by
    rw [hmrHybridCount,s2Step33Add0_card]
    decide +kernel
  have nd : s2Step33Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step33Add0Arena s2Step33Add0During s2Step33Add0Work.toFinset s2Step33Add0_bounded s2Step33Add0_apart rfl
theorem s2Step33Add0_checked : compileHmrHybridCinLog s2Step33Add0Arena 788 786 780 s2Step33Add0A s2Step33Add0B s2Step33Add0Work=some s2Step33Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step33Add0Arena s2Step33Add0During 788 786 780 s2Step33Add0A s2Step33Add0B s2Step33Add0Work
    (by decide +kernel) (by decide +kernel) s2Step33Add0_distinct
    (fun q hq => s2Step33Add0_owned (List.mem_toFinset.mpr hq)) s2Step33Add0_borrowed
def s2Step33Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)),Finset.filter_subset _ _⟩
def s2Step33Add1A : List Wire := [255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 770]
def s2Step33Add1B : List Wire := [767, 766, 765, 764, 790, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 785, 771]
def s2Step33Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878]
theorem s2Step33Add1_bounded : s2Step33Add1Work.toFinset⊆arenaWires := by
  have h : s2Step33Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step33Add1During : Arena := ⟨s2Step33Add1Arena.live∪s2Step33Add1Work.toFinset,Finset.union_subset s2Step33Add1Arena.bounded s2Step33Add1_bounded⟩
theorem s2Step33Add1_distinct : (786::788::780::(s2Step33Add1A++s2Step33Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step33Add1_owned : (786::788::780::(s2Step33Add1A++s2Step33Add1B)).toFinset⊆s2Step33Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step33Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33Add1_apart : Disjoint s2Step33Add1Arena.live s2Step33Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step33Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<855)) rfl
  decide +kernel
theorem s2Step33Add1_card : s2Step33Add1Arena.live.card=849 := by
  decide +kernel
theorem s2Step33Add1_borrowed : s2Step33Add1Arena.checkBorrow (hmrHybridCount s2Step33Add1Arena s2Step33Add1B.length) s2Step33Add1Work=some s2Step33Add1During := by
  have len : s2Step33Add1Work.length=hmrHybridCount s2Step33Add1Arena s2Step33Add1B.length := by
    rw [hmrHybridCount,s2Step33Add1_card]
    decide +kernel
  have nd : s2Step33Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step33Add1Arena s2Step33Add1During s2Step33Add1Work.toFinset s2Step33Add1_bounded s2Step33Add1_apart rfl
theorem s2Step33Add1_checked : compileHmrHybridCinLog s2Step33Add1Arena 788 786 780 s2Step33Add1A s2Step33Add1B s2Step33Add1Work=some s2Step33Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step33Add1Arena s2Step33Add1During 788 786 780 s2Step33Add1A s2Step33Add1B s2Step33Add1Work
    (by decide +kernel) (by decide +kernel) s2Step33Add1_distinct
    (fun q hq => s2Step33Add1_owned (List.mem_toFinset.mpr hq)) s2Step33Add1_borrowed
def s2Step34Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step34Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 787, 768]
def s2Step34Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 785, 769]
def s2Step34Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step34Add0_bounded : s2Step34Add0Work.toFinset⊆arenaWires := by
  have h : s2Step34Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step34Add0During : Arena := ⟨s2Step34Add0Arena.live∪s2Step34Add0Work.toFinset,Finset.union_subset s2Step34Add0Arena.bounded s2Step34Add0_bounded⟩
theorem s2Step34Add0_distinct : (786::790::780::(s2Step34Add0A++s2Step34Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34Add0_owned : (786::790::780::(s2Step34Add0A++s2Step34Add0B)).toFinset⊆s2Step34Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step34Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34Add0_apart : Disjoint s2Step34Add0Arena.live s2Step34Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step34Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34Add0_card : s2Step34Add0Arena.live.card=850 := by
  decide +kernel
theorem s2Step34Add0_borrowed : s2Step34Add0Arena.checkBorrow (hmrHybridCount s2Step34Add0Arena s2Step34Add0B.length) s2Step34Add0Work=some s2Step34Add0During := by
  have len : s2Step34Add0Work.length=hmrHybridCount s2Step34Add0Arena s2Step34Add0B.length := by
    rw [hmrHybridCount,s2Step34Add0_card]
    decide +kernel
  have nd : s2Step34Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step34Add0Arena s2Step34Add0During s2Step34Add0Work.toFinset s2Step34Add0_bounded s2Step34Add0_apart rfl
theorem s2Step34Add0_checked : compileHmrHybridCinLog s2Step34Add0Arena 790 786 780 s2Step34Add0A s2Step34Add0B s2Step34Add0Work=some s2Step34Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step34Add0Arena s2Step34Add0During 790 786 780 s2Step34Add0A s2Step34Add0B s2Step34Add0Work
    (by decide +kernel) (by decide +kernel) s2Step34Add0_distinct
    (fun q hq => s2Step34Add0_owned (List.mem_toFinset.mpr hq)) s2Step34Add0_borrowed
def s2Step34Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step34Add1A : List Wire := [255, 254, 253, 252, 251, 793, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 791, 770]
def s2Step34Add1B : List Wire := [767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 779, 771]
def s2Step34Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880]
theorem s2Step34Add1_bounded : s2Step34Add1Work.toFinset⊆arenaWires := by
  have h : s2Step34Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step34Add1During : Arena := ⟨s2Step34Add1Arena.live∪s2Step34Add1Work.toFinset,Finset.union_subset s2Step34Add1Arena.bounded s2Step34Add1_bounded⟩
theorem s2Step34Add1_distinct : (786::790::780::(s2Step34Add1A++s2Step34Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step34Add1_owned : (786::790::780::(s2Step34Add1A++s2Step34Add1B)).toFinset⊆s2Step34Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step34Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34Add1_apart : Disjoint s2Step34Add1Arena.live s2Step34Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step34Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step34Add1_card : s2Step34Add1Arena.live.card=850 := by
  decide +kernel
theorem s2Step34Add1_borrowed : s2Step34Add1Arena.checkBorrow (hmrHybridCount s2Step34Add1Arena s2Step34Add1B.length) s2Step34Add1Work=some s2Step34Add1During := by
  have len : s2Step34Add1Work.length=hmrHybridCount s2Step34Add1Arena s2Step34Add1B.length := by
    rw [hmrHybridCount,s2Step34Add1_card]
    decide +kernel
  have nd : s2Step34Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step34Add1Arena s2Step34Add1During s2Step34Add1Work.toFinset s2Step34Add1_bounded s2Step34Add1_apart rfl
theorem s2Step34Add1_checked : compileHmrHybridCinLog s2Step34Add1Arena 790 786 780 s2Step34Add1A s2Step34Add1B s2Step34Add1Work=some s2Step34Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step34Add1Arena s2Step34Add1During 790 786 780 s2Step34Add1A s2Step34Add1B s2Step34Add1Work
    (by decide +kernel) (by decide +kernel) s2Step34Add1_distinct
    (fun q hq => s2Step34Add1_owned (List.mem_toFinset.mpr hq)) s2Step34Add1_borrowed
def s2Step35Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step35Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 762, 791, 768]
def s2Step35Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790, 779, 769]
def s2Step35Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step35Add0_bounded : s2Step35Add0Work.toFinset⊆arenaWires := by
  have h : s2Step35Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step35Add0During : Arena := ⟨s2Step35Add0Arena.live∪s2Step35Add0Work.toFinset,Finset.union_subset s2Step35Add0Arena.bounded s2Step35Add0_bounded⟩
theorem s2Step35Add0_distinct : (786::793::780::(s2Step35Add0A++s2Step35Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35Add0_owned : (786::793::780::(s2Step35Add0A++s2Step35Add0B)).toFinset⊆s2Step35Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step35Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35Add0_apart : Disjoint s2Step35Add0Arena.live s2Step35Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step35Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35Add0_card : s2Step35Add0Arena.live.card=850 := by
  decide +kernel
theorem s2Step35Add0_borrowed : s2Step35Add0Arena.checkBorrow (hmrHybridCount s2Step35Add0Arena s2Step35Add0B.length) s2Step35Add0Work=some s2Step35Add0During := by
  have len : s2Step35Add0Work.length=hmrHybridCount s2Step35Add0Arena s2Step35Add0B.length := by
    rw [hmrHybridCount,s2Step35Add0_card]
    decide +kernel
  have nd : s2Step35Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step35Add0Arena s2Step35Add0During s2Step35Add0Work.toFinset s2Step35Add0_bounded s2Step35Add0_apart rfl
theorem s2Step35Add0_checked : compileHmrHybridCinLog s2Step35Add0Arena 793 786 780 s2Step35Add0A s2Step35Add0B s2Step35Add0Work=some s2Step35Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step35Add0Arena s2Step35Add0During 793 786 780 s2Step35Add0A s2Step35Add0B s2Step35Add0Work
    (by decide +kernel) (by decide +kernel) s2Step35Add0_distinct
    (fun q hq => s2Step35Add0_owned (List.mem_toFinset.mpr hq)) s2Step35Add0_borrowed
def s2Step35Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)),Finset.filter_subset _ _⟩
def s2Step35Add1A : List Wire := [255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 770]
def s2Step35Add1B : List Wire := [767, 766, 765, 764, 763, 792, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 787, 771]
def s2Step35Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880]
theorem s2Step35Add1_bounded : s2Step35Add1Work.toFinset⊆arenaWires := by
  have h : s2Step35Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step35Add1During : Arena := ⟨s2Step35Add1Arena.live∪s2Step35Add1Work.toFinset,Finset.union_subset s2Step35Add1Arena.bounded s2Step35Add1_bounded⟩
theorem s2Step35Add1_distinct : (786::793::780::(s2Step35Add1A++s2Step35Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step35Add1_owned : (786::793::780::(s2Step35Add1A++s2Step35Add1B)).toFinset⊆s2Step35Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step35Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35Add1_apart : Disjoint s2Step35Add1Arena.live s2Step35Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step35Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856)) rfl
  decide +kernel
theorem s2Step35Add1_card : s2Step35Add1Arena.live.card=850 := by
  decide +kernel
theorem s2Step35Add1_borrowed : s2Step35Add1Arena.checkBorrow (hmrHybridCount s2Step35Add1Arena s2Step35Add1B.length) s2Step35Add1Work=some s2Step35Add1During := by
  have len : s2Step35Add1Work.length=hmrHybridCount s2Step35Add1Arena s2Step35Add1B.length := by
    rw [hmrHybridCount,s2Step35Add1_card]
    decide +kernel
  have nd : s2Step35Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step35Add1Arena s2Step35Add1During s2Step35Add1Work.toFinset s2Step35Add1_bounded s2Step35Add1_apart rfl
theorem s2Step35Add1_checked : compileHmrHybridCinLog s2Step35Add1Arena 793 786 780 s2Step35Add1A s2Step35Add1B s2Step35Add1Work=some s2Step35Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step35Add1Arena s2Step35Add1During 793 786 780 s2Step35Add1A s2Step35Add1B s2Step35Add1Work
    (by decide +kernel) (by decide +kernel) s2Step35Add1_distinct
    (fun q hq => s2Step35Add1_owned (List.mem_toFinset.mpr hq)) s2Step35Add1_borrowed
def s2Step36Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 793, 779, 768]
def s2Step36Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 790, 791, 769]
def s2Step36Add0Work : List Wire := [846, 847, 849, 851, 856, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step36Add0_bounded : s2Step36Add0Work.toFinset⊆arenaWires := by
  have h : s2Step36Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step36Add0During : Arena := ⟨s2Step36Add0Arena.live∪s2Step36Add0Work.toFinset,Finset.union_subset s2Step36Add0Arena.bounded s2Step36Add0_bounded⟩
theorem s2Step36Add0_distinct : (844::787::845::(s2Step36Add0A++s2Step36Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36Add0_owned : (844::787::845::(s2Step36Add0A++s2Step36Add0B)).toFinset⊆s2Step36Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step36Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36Add0_apart : Disjoint s2Step36Add0Arena.live s2Step36Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step36Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36Add0_card : s2Step36Add0Arena.live.card=853 := by
  decide +kernel
theorem s2Step36Add0_borrowed : s2Step36Add0Arena.checkBorrow (hmrHybridCount s2Step36Add0Arena s2Step36Add0B.length) s2Step36Add0Work=some s2Step36Add0During := by
  have len : s2Step36Add0Work.length=hmrHybridCount s2Step36Add0Arena s2Step36Add0B.length := by
    rw [hmrHybridCount,s2Step36Add0_card]
    decide +kernel
  have nd : s2Step36Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step36Add0Arena s2Step36Add0During s2Step36Add0Work.toFinset s2Step36Add0_bounded s2Step36Add0_apart rfl
theorem s2Step36Add0_checked : compileHmrHybridCinLog s2Step36Add0Arena 787 844 845 s2Step36Add0A s2Step36Add0B s2Step36Add0Work=some s2Step36Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step36Add0Arena s2Step36Add0During 787 844 845 s2Step36Add0A s2Step36Add0B s2Step36Add0Work
    (by decide +kernel) (by decide +kernel) s2Step36Add0_distinct
    (fun q hq => s2Step36Add0_owned (List.mem_toFinset.mpr hq)) s2Step36Add0_borrowed
def s2Step36Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step36Add1A : List Wire := [255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 780, 770]
def s2Step36Add1B : List Wire := [767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 786, 771]
def s2Step36Add1Work : List Wire := [846, 847, 849, 851, 856, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884]
theorem s2Step36Add1_bounded : s2Step36Add1Work.toFinset⊆arenaWires := by
  have h : s2Step36Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step36Add1During : Arena := ⟨s2Step36Add1Arena.live∪s2Step36Add1Work.toFinset,Finset.union_subset s2Step36Add1Arena.bounded s2Step36Add1_bounded⟩
theorem s2Step36Add1_distinct : (844::787::845::(s2Step36Add1A++s2Step36Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step36Add1_owned : (844::787::845::(s2Step36Add1A++s2Step36Add1B)).toFinset⊆s2Step36Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step36Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36Add1_apart : Disjoint s2Step36Add1Arena.live s2Step36Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step36Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step36Add1_card : s2Step36Add1Arena.live.card=853 := by
  decide +kernel
theorem s2Step36Add1_borrowed : s2Step36Add1Arena.checkBorrow (hmrHybridCount s2Step36Add1Arena s2Step36Add1B.length) s2Step36Add1Work=some s2Step36Add1During := by
  have len : s2Step36Add1Work.length=hmrHybridCount s2Step36Add1Arena s2Step36Add1B.length := by
    rw [hmrHybridCount,s2Step36Add1_card]
    decide +kernel
  have nd : s2Step36Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step36Add1Arena s2Step36Add1During s2Step36Add1Work.toFinset s2Step36Add1_bounded s2Step36Add1_apart rfl
theorem s2Step36Add1_checked : compileHmrHybridCinLog s2Step36Add1Arena 787 844 845 s2Step36Add1A s2Step36Add1B s2Step36Add1Work=some s2Step36Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step36Add1Arena s2Step36Add1During 787 844 845 s2Step36Add1A s2Step36Add1B s2Step36Add1Work
    (by decide +kernel) (by decide +kernel) s2Step36Add1_distinct
    (fun q hq => s2Step36Add1_owned (List.mem_toFinset.mpr hq)) s2Step36Add1_borrowed
def s2Step37Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step37Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 780, 768]
def s2Step37Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 786, 769]
def s2Step37Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 856, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step37Add0_bounded : s2Step37Add0Work.toFinset⊆arenaWires := by
  have h : s2Step37Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step37Add0During : Arena := ⟨s2Step37Add0Arena.live∪s2Step37Add0Work.toFinset,Finset.union_subset s2Step37Add0Arena.bounded s2Step37Add0_bounded⟩
theorem s2Step37Add0_distinct : (790::792::791::(s2Step37Add0A++s2Step37Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37Add0_owned : (790::792::791::(s2Step37Add0A++s2Step37Add0B)).toFinset⊆s2Step37Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step37Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37Add0_apart : Disjoint s2Step37Add0Arena.live s2Step37Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step37Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37Add0_card : s2Step37Add0Arena.live.card=851 := by
  decide +kernel
theorem s2Step37Add0_borrowed : s2Step37Add0Arena.checkBorrow (hmrHybridCount s2Step37Add0Arena s2Step37Add0B.length) s2Step37Add0Work=some s2Step37Add0During := by
  have len : s2Step37Add0Work.length=hmrHybridCount s2Step37Add0Arena s2Step37Add0B.length := by
    rw [hmrHybridCount,s2Step37Add0_card]
    decide +kernel
  have nd : s2Step37Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step37Add0Arena s2Step37Add0During s2Step37Add0Work.toFinset s2Step37Add0_bounded s2Step37Add0_apart rfl
theorem s2Step37Add0_checked : compileHmrHybridCinLog s2Step37Add0Arena 792 790 791 s2Step37Add0A s2Step37Add0B s2Step37Add0Work=some s2Step37Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step37Add0Arena s2Step37Add0During 792 790 791 s2Step37Add0A s2Step37Add0B s2Step37Add0Work
    (by decide +kernel) (by decide +kernel) s2Step37Add0_distinct
    (fun q hq => s2Step37Add0_owned (List.mem_toFinset.mpr hq)) s2Step37Add0_borrowed
def s2Step37Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)),Finset.filter_subset _ _⟩
def s2Step37Add1A : List Wire := [255, 254, 253, 252, 251, 250, 796, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 770]
def s2Step37Add1B : List Wire := [767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 771]
def s2Step37Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 856, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882]
theorem s2Step37Add1_bounded : s2Step37Add1Work.toFinset⊆arenaWires := by
  have h : s2Step37Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step37Add1During : Arena := ⟨s2Step37Add1Arena.live∪s2Step37Add1Work.toFinset,Finset.union_subset s2Step37Add1Arena.bounded s2Step37Add1_bounded⟩
theorem s2Step37Add1_distinct : (790::792::791::(s2Step37Add1A++s2Step37Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step37Add1_owned : (790::792::791::(s2Step37Add1A++s2Step37Add1B)).toFinset⊆s2Step37Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step37Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37Add1_apart : Disjoint s2Step37Add1Arena.live s2Step37Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step37Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858)) rfl
  decide +kernel
theorem s2Step37Add1_card : s2Step37Add1Arena.live.card=851 := by
  decide +kernel
theorem s2Step37Add1_borrowed : s2Step37Add1Arena.checkBorrow (hmrHybridCount s2Step37Add1Arena s2Step37Add1B.length) s2Step37Add1Work=some s2Step37Add1During := by
  have len : s2Step37Add1Work.length=hmrHybridCount s2Step37Add1Arena s2Step37Add1B.length := by
    rw [hmrHybridCount,s2Step37Add1_card]
    decide +kernel
  have nd : s2Step37Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step37Add1Arena s2Step37Add1During s2Step37Add1Work.toFinset s2Step37Add1_bounded s2Step37Add1_apart rfl
theorem s2Step37Add1_checked : compileHmrHybridCinLog s2Step37Add1Arena 792 790 791 s2Step37Add1A s2Step37Add1B s2Step37Add1Work=some s2Step37Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step37Add1Arena s2Step37Add1During 792 790 791 s2Step37Add1A s2Step37Add1B s2Step37Add1Work
    (by decide +kernel) (by decide +kernel) s2Step37Add1_distinct
    (fun q hq => s2Step37Add1_owned (List.mem_toFinset.mpr hq)) s2Step37Add1_borrowed
def s2Step38Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step38Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 761, 786, 768]
def s2Step38Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 792, 780, 769]
def s2Step38Add0Work : List Wire := [846, 847, 849, 851, 856, 858, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step38Add0_bounded : s2Step38Add0Work.toFinset⊆arenaWires := by
  have h : s2Step38Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step38Add0During : Arena := ⟨s2Step38Add0Arena.live∪s2Step38Add0Work.toFinset,Finset.union_subset s2Step38Add0Arena.bounded s2Step38Add0_bounded⟩
theorem s2Step38Add0_distinct : (844::796::845::(s2Step38Add0A++s2Step38Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38Add0_owned : (844::796::845::(s2Step38Add0A++s2Step38Add0B)).toFinset⊆s2Step38Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step38Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38Add0_apart : Disjoint s2Step38Add0Arena.live s2Step38Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step38Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38Add0_card : s2Step38Add0Arena.live.card=854 := by
  decide +kernel
theorem s2Step38Add0_borrowed : s2Step38Add0Arena.checkBorrow (hmrHybridCount s2Step38Add0Arena s2Step38Add0B.length) s2Step38Add0Work=some s2Step38Add0During := by
  have len : s2Step38Add0Work.length=hmrHybridCount s2Step38Add0Arena s2Step38Add0B.length := by
    rw [hmrHybridCount,s2Step38Add0_card]
    decide +kernel
  have nd : s2Step38Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step38Add0Arena s2Step38Add0During s2Step38Add0Work.toFinset s2Step38Add0_bounded s2Step38Add0_apart rfl
theorem s2Step38Add0_checked : compileHmrHybridCinLog s2Step38Add0Arena 796 844 845 s2Step38Add0A s2Step38Add0B s2Step38Add0Work=some s2Step38Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step38Add0Arena s2Step38Add0During 796 844 845 s2Step38Add0A s2Step38Add0B s2Step38Add0Work
    (by decide +kernel) (by decide +kernel) s2Step38Add0_distinct
    (fun q hq => s2Step38Add0_owned (List.mem_toFinset.mpr hq)) s2Step38Add0_borrowed
def s2Step38Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step38Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 791, 770]
def s2Step38Add1B : List Wire := [767, 766, 765, 764, 763, 762, 794, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 790, 771]
def s2Step38Add1Work : List Wire := [846, 847, 849, 851, 856, 858, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886]
theorem s2Step38Add1_bounded : s2Step38Add1Work.toFinset⊆arenaWires := by
  have h : s2Step38Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step38Add1During : Arena := ⟨s2Step38Add1Arena.live∪s2Step38Add1Work.toFinset,Finset.union_subset s2Step38Add1Arena.bounded s2Step38Add1_bounded⟩
theorem s2Step38Add1_distinct : (844::796::845::(s2Step38Add1A++s2Step38Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step38Add1_owned : (844::796::845::(s2Step38Add1A++s2Step38Add1B)).toFinset⊆s2Step38Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step38Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38Add1_apart : Disjoint s2Step38Add1Arena.live s2Step38Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step38Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step38Add1_card : s2Step38Add1Arena.live.card=854 := by
  decide +kernel
theorem s2Step38Add1_borrowed : s2Step38Add1Arena.checkBorrow (hmrHybridCount s2Step38Add1Arena s2Step38Add1B.length) s2Step38Add1Work=some s2Step38Add1During := by
  have len : s2Step38Add1Work.length=hmrHybridCount s2Step38Add1Arena s2Step38Add1B.length := by
    rw [hmrHybridCount,s2Step38Add1_card]
    decide +kernel
  have nd : s2Step38Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step38Add1Arena s2Step38Add1During s2Step38Add1Work.toFinset s2Step38Add1_bounded s2Step38Add1_apart rfl
theorem s2Step38Add1_checked : compileHmrHybridCinLog s2Step38Add1Arena 796 844 845 s2Step38Add1A s2Step38Add1B s2Step38Add1Work=some s2Step38Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step38Add1Arena s2Step38Add1During 796 844 845 s2Step38Add1A s2Step38Add1B s2Step38Add1Work
    (by decide +kernel) (by decide +kernel) s2Step38Add1_distinct
    (fun q hq => s2Step38Add1_owned (List.mem_toFinset.mpr hq)) s2Step38Add1_borrowed
def s2Step39Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step39Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 790, 768]
def s2Step39Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 794, 769]
def s2Step39Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 856, 858, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step39Add0_bounded : s2Step39Add0Work.toFinset⊆arenaWires := by
  have h : s2Step39Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step39Add0During : Arena := ⟨s2Step39Add0Arena.live∪s2Step39Add0Work.toFinset,Finset.union_subset s2Step39Add0Arena.bounded s2Step39Add0_bounded⟩
theorem s2Step39Add0_distinct : (792::787::780::(s2Step39Add0A++s2Step39Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39Add0_owned : (792::787::780::(s2Step39Add0A++s2Step39Add0B)).toFinset⊆s2Step39Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step39Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39Add0_apart : Disjoint s2Step39Add0Arena.live s2Step39Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step39Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39Add0_card : s2Step39Add0Arena.live.card=852 := by
  decide +kernel
theorem s2Step39Add0_borrowed : s2Step39Add0Arena.checkBorrow (hmrHybridCount s2Step39Add0Arena s2Step39Add0B.length) s2Step39Add0Work=some s2Step39Add0During := by
  have len : s2Step39Add0Work.length=hmrHybridCount s2Step39Add0Arena s2Step39Add0B.length := by
    rw [hmrHybridCount,s2Step39Add0_card]
    decide +kernel
  have nd : s2Step39Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step39Add0Arena s2Step39Add0During s2Step39Add0Work.toFinset s2Step39Add0_bounded s2Step39Add0_apart rfl
theorem s2Step39Add0_checked : compileHmrHybridCinLog s2Step39Add0Arena 787 792 780 s2Step39Add0A s2Step39Add0B s2Step39Add0Work=some s2Step39Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step39Add0Arena s2Step39Add0During 787 792 780 s2Step39Add0A s2Step39Add0B s2Step39Add0Work
    (by decide +kernel) (by decide +kernel) s2Step39Add0_distinct
    (fun q hq => s2Step39Add0_owned (List.mem_toFinset.mpr hq)) s2Step39Add0_borrowed
def s2Step39Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step39Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 798, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 770]
def s2Step39Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 791, 771]
def s2Step39Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 856, 858, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884]
theorem s2Step39Add1_bounded : s2Step39Add1Work.toFinset⊆arenaWires := by
  have h : s2Step39Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step39Add1During : Arena := ⟨s2Step39Add1Arena.live∪s2Step39Add1Work.toFinset,Finset.union_subset s2Step39Add1Arena.bounded s2Step39Add1_bounded⟩
theorem s2Step39Add1_distinct : (792::787::780::(s2Step39Add1A++s2Step39Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step39Add1_owned : (792::787::780::(s2Step39Add1A++s2Step39Add1B)).toFinset⊆s2Step39Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step39Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39Add1_apart : Disjoint s2Step39Add1Arena.live s2Step39Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step39Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<858) ∨ (859≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step39Add1_card : s2Step39Add1Arena.live.card=852 := by
  decide +kernel
theorem s2Step39Add1_borrowed : s2Step39Add1Arena.checkBorrow (hmrHybridCount s2Step39Add1Arena s2Step39Add1B.length) s2Step39Add1Work=some s2Step39Add1During := by
  have len : s2Step39Add1Work.length=hmrHybridCount s2Step39Add1Arena s2Step39Add1B.length := by
    rw [hmrHybridCount,s2Step39Add1_card]
    decide +kernel
  have nd : s2Step39Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step39Add1Arena s2Step39Add1During s2Step39Add1Work.toFinset s2Step39Add1_bounded s2Step39Add1_apart rfl
theorem s2Step39Add1_checked : compileHmrHybridCinLog s2Step39Add1Arena 787 792 780 s2Step39Add1A s2Step39Add1B s2Step39Add1Work=some s2Step39Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step39Add1Arena s2Step39Add1During 787 792 780 s2Step39Add1A s2Step39Add1B s2Step39Add1Work
    (by decide +kernel) (by decide +kernel) s2Step39Add1_distinct
    (fun q hq => s2Step39Add1_owned (List.mem_toFinset.mpr hq)) s2Step39Add1_borrowed
def s2Step40Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step40Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 760, 794, 768]
def s2Step40Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 787, 790, 769]
def s2Step40Add0Work : List Wire := [846, 847, 849, 851, 856, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step40Add0_bounded : s2Step40Add0Work.toFinset⊆arenaWires := by
  have h : s2Step40Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step40Add0During : Arena := ⟨s2Step40Add0Arena.live∪s2Step40Add0Work.toFinset,Finset.union_subset s2Step40Add0Arena.bounded s2Step40Add0_bounded⟩
theorem s2Step40Add0_distinct : (844::791::845::(s2Step40Add0A++s2Step40Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40Add0_owned : (844::791::845::(s2Step40Add0A++s2Step40Add0B)).toFinset⊆s2Step40Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step40Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40Add0_apart : Disjoint s2Step40Add0Arena.live s2Step40Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step40Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40Add0_card : s2Step40Add0Arena.live.card=855 := by
  decide +kernel
theorem s2Step40Add0_borrowed : s2Step40Add0Arena.checkBorrow (hmrHybridCount s2Step40Add0Arena s2Step40Add0B.length) s2Step40Add0Work=some s2Step40Add0During := by
  have len : s2Step40Add0Work.length=hmrHybridCount s2Step40Add0Arena s2Step40Add0B.length := by
    rw [hmrHybridCount,s2Step40Add0_card]
    decide +kernel
  have nd : s2Step40Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step40Add0Arena s2Step40Add0During s2Step40Add0Work.toFinset s2Step40Add0_bounded s2Step40Add0_apart rfl
theorem s2Step40Add0_checked : compileHmrHybridCinLog s2Step40Add0Arena 791 844 845 s2Step40Add0A s2Step40Add0B s2Step40Add0Work=some s2Step40Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step40Add0Arena s2Step40Add0During 791 844 845 s2Step40Add0A s2Step40Add0B s2Step40Add0Work
    (by decide +kernel) (by decide +kernel) s2Step40Add0_distinct
    (fun q hq => s2Step40Add0_owned (List.mem_toFinset.mpr hq)) s2Step40Add0_borrowed
def s2Step40Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step40Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 770]
def s2Step40Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 797, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 792, 771]
def s2Step40Add1Work : List Wire := [846, 847, 849, 851, 856, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888]
theorem s2Step40Add1_bounded : s2Step40Add1Work.toFinset⊆arenaWires := by
  have h : s2Step40Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step40Add1During : Arena := ⟨s2Step40Add1Arena.live∪s2Step40Add1Work.toFinset,Finset.union_subset s2Step40Add1Arena.bounded s2Step40Add1_bounded⟩
theorem s2Step40Add1_distinct : (844::791::845::(s2Step40Add1A++s2Step40Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step40Add1_owned : (844::791::845::(s2Step40Add1A++s2Step40Add1B)).toFinset⊆s2Step40Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step40Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40Add1_apart : Disjoint s2Step40Add1Arena.live s2Step40Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step40Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step40Add1_card : s2Step40Add1Arena.live.card=855 := by
  decide +kernel
theorem s2Step40Add1_borrowed : s2Step40Add1Arena.checkBorrow (hmrHybridCount s2Step40Add1Arena s2Step40Add1B.length) s2Step40Add1Work=some s2Step40Add1During := by
  have len : s2Step40Add1Work.length=hmrHybridCount s2Step40Add1Arena s2Step40Add1B.length := by
    rw [hmrHybridCount,s2Step40Add1_card]
    decide +kernel
  have nd : s2Step40Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step40Add1Arena s2Step40Add1During s2Step40Add1Work.toFinset s2Step40Add1_bounded s2Step40Add1_apart rfl
theorem s2Step40Add1_checked : compileHmrHybridCinLog s2Step40Add1Arena 791 844 845 s2Step40Add1A s2Step40Add1B s2Step40Add1Work=some s2Step40Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step40Add1Arena s2Step40Add1During 791 844 845 s2Step40Add1A s2Step40Add1B s2Step40Add1Work
    (by decide +kernel) (by decide +kernel) s2Step40Add1_distinct
    (fun q hq => s2Step40Add1_owned (List.mem_toFinset.mpr hq)) s2Step40Add1_borrowed
def s2Step41Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step41Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 794, 768]
def s2Step41Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 792, 769]
def s2Step41Add0Work : List Wire := [846, 847, 849, 851, 856, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step41Add0_bounded : s2Step41Add0Work.toFinset⊆arenaWires := by
  have h : s2Step41Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step41Add0During : Arena := ⟨s2Step41Add0Arena.live∪s2Step41Add0Work.toFinset,Finset.union_subset s2Step41Add0Arena.bounded s2Step41Add0_bounded⟩
theorem s2Step41Add0_distinct : (844::797::845::(s2Step41Add0A++s2Step41Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41Add0_owned : (844::797::845::(s2Step41Add0A++s2Step41Add0B)).toFinset⊆s2Step41Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step41Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41Add0_apart : Disjoint s2Step41Add0Arena.live s2Step41Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step41Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41Add0_card : s2Step41Add0Arena.live.card=855 := by
  decide +kernel
theorem s2Step41Add0_borrowed : s2Step41Add0Arena.checkBorrow (hmrHybridCount s2Step41Add0Arena s2Step41Add0B.length) s2Step41Add0Work=some s2Step41Add0During := by
  have len : s2Step41Add0Work.length=hmrHybridCount s2Step41Add0Arena s2Step41Add0B.length := by
    rw [hmrHybridCount,s2Step41Add0_card]
    decide +kernel
  have nd : s2Step41Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step41Add0Arena s2Step41Add0During s2Step41Add0Work.toFinset s2Step41Add0_bounded s2Step41Add0_apart rfl
theorem s2Step41Add0_checked : compileHmrHybridCinLog s2Step41Add0Arena 797 844 845 s2Step41Add0A s2Step41Add0B s2Step41Add0Work=some s2Step41Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step41Add0Arena s2Step41Add0During 797 844 845 s2Step41Add0A s2Step41Add0B s2Step41Add0Work
    (by decide +kernel) (by decide +kernel) s2Step41Add0_distinct
    (fun q hq => s2Step41Add0_owned (List.mem_toFinset.mpr hq)) s2Step41Add0_borrowed
def s2Step41Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)),Finset.filter_subset _ _⟩
def s2Step41Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 790, 770]
def s2Step41Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 791, 787, 771]
def s2Step41Add1Work : List Wire := [846, 847, 849, 851, 856, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889]
theorem s2Step41Add1_bounded : s2Step41Add1Work.toFinset⊆arenaWires := by
  have h : s2Step41Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step41Add1During : Arena := ⟨s2Step41Add1Arena.live∪s2Step41Add1Work.toFinset,Finset.union_subset s2Step41Add1Arena.bounded s2Step41Add1_bounded⟩
theorem s2Step41Add1_distinct : (844::797::845::(s2Step41Add1A++s2Step41Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step41Add1_owned : (844::797::845::(s2Step41Add1A++s2Step41Add1B)).toFinset⊆s2Step41Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step41Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41Add1_apart : Disjoint s2Step41Add1Arena.live s2Step41Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step41Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860)) rfl
  decide +kernel
theorem s2Step41Add1_card : s2Step41Add1Arena.live.card=855 := by
  decide +kernel
theorem s2Step41Add1_borrowed : s2Step41Add1Arena.checkBorrow (hmrHybridCount s2Step41Add1Arena s2Step41Add1B.length) s2Step41Add1Work=some s2Step41Add1During := by
  have len : s2Step41Add1Work.length=hmrHybridCount s2Step41Add1Arena s2Step41Add1B.length := by
    rw [hmrHybridCount,s2Step41Add1_card]
    decide +kernel
  have nd : s2Step41Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step41Add1Arena s2Step41Add1During s2Step41Add1Work.toFinset s2Step41Add1_bounded s2Step41Add1_apart rfl
theorem s2Step41Add1_checked : compileHmrHybridCinLog s2Step41Add1Arena 797 844 845 s2Step41Add1A s2Step41Add1B s2Step41Add1Work=some s2Step41Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step41Add1Arena s2Step41Add1During 797 844 845 s2Step41Add1A s2Step41Add1B s2Step41Add1Work
    (by decide +kernel) (by decide +kernel) s2Step41Add1_distinct
    (fun q hq => s2Step41Add1_owned (List.mem_toFinset.mpr hq)) s2Step41Add1_borrowed
def s2Step42Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step42Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 759, 790, 768]
def s2Step42Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 787, 769]
def s2Step42Add0Work : List Wire := [846, 847, 849, 851, 856, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step42Add0_bounded : s2Step42Add0Work.toFinset⊆arenaWires := by
  have h : s2Step42Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step42Add0During : Arena := ⟨s2Step42Add0Arena.live∪s2Step42Add0Work.toFinset,Finset.union_subset s2Step42Add0Arena.bounded s2Step42Add0_bounded⟩
theorem s2Step42Add0_distinct : (844::791::845::(s2Step42Add0A++s2Step42Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42Add0_owned : (844::791::845::(s2Step42Add0A++s2Step42Add0B)).toFinset⊆s2Step42Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step42Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42Add0_apart : Disjoint s2Step42Add0Arena.live s2Step42Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step42Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42Add0_card : s2Step42Add0Arena.live.card=856 := by
  decide +kernel
theorem s2Step42Add0_borrowed : s2Step42Add0Arena.checkBorrow (hmrHybridCount s2Step42Add0Arena s2Step42Add0B.length) s2Step42Add0Work=some s2Step42Add0During := by
  have len : s2Step42Add0Work.length=hmrHybridCount s2Step42Add0Arena s2Step42Add0B.length := by
    rw [hmrHybridCount,s2Step42Add0_card]
    decide +kernel
  have nd : s2Step42Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step42Add0Arena s2Step42Add0During s2Step42Add0Work.toFinset s2Step42Add0_bounded s2Step42Add0_apart rfl
theorem s2Step42Add0_checked : compileHmrHybridCinLog s2Step42Add0Arena 791 844 845 s2Step42Add0A s2Step42Add0B s2Step42Add0Work=some s2Step42Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step42Add0Arena s2Step42Add0During 791 844 845 s2Step42Add0A s2Step42Add0B s2Step42Add0Work
    (by decide +kernel) (by decide +kernel) s2Step42Add0_distinct
    (fun q hq => s2Step42Add0_owned (List.mem_toFinset.mpr hq)) s2Step42Add0_borrowed
def s2Step42Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step42Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 800, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 792, 770]
def s2Step42Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 799, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 771]
def s2Step42Add1Work : List Wire := [846, 847, 849, 851, 856, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890]
theorem s2Step42Add1_bounded : s2Step42Add1Work.toFinset⊆arenaWires := by
  have h : s2Step42Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step42Add1During : Arena := ⟨s2Step42Add1Arena.live∪s2Step42Add1Work.toFinset,Finset.union_subset s2Step42Add1Arena.bounded s2Step42Add1_bounded⟩
theorem s2Step42Add1_distinct : (844::791::845::(s2Step42Add1A++s2Step42Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step42Add1_owned : (844::791::845::(s2Step42Add1A++s2Step42Add1B)).toFinset⊆s2Step42Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step42Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42Add1_apart : Disjoint s2Step42Add1Arena.live s2Step42Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step42Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step42Add1_card : s2Step42Add1Arena.live.card=856 := by
  decide +kernel
theorem s2Step42Add1_borrowed : s2Step42Add1Arena.checkBorrow (hmrHybridCount s2Step42Add1Arena s2Step42Add1B.length) s2Step42Add1Work=some s2Step42Add1During := by
  have len : s2Step42Add1Work.length=hmrHybridCount s2Step42Add1Arena s2Step42Add1B.length := by
    rw [hmrHybridCount,s2Step42Add1_card]
    decide +kernel
  have nd : s2Step42Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step42Add1Arena s2Step42Add1During s2Step42Add1Work.toFinset s2Step42Add1_bounded s2Step42Add1_apart rfl
theorem s2Step42Add1_checked : compileHmrHybridCinLog s2Step42Add1Arena 791 844 845 s2Step42Add1A s2Step42Add1B s2Step42Add1Work=some s2Step42Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step42Add1Arena s2Step42Add1During 791 844 845 s2Step42Add1A s2Step42Add1B s2Step42Add1Work
    (by decide +kernel) (by decide +kernel) s2Step42Add1_distinct
    (fun q hq => s2Step42Add1_owned (List.mem_toFinset.mpr hq)) s2Step42Add1_borrowed
def s2Step43Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step43Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 758, 792, 768]
def s2Step43Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 800, 769]
def s2Step43Add0Work : List Wire := [846, 847, 849, 851, 856, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step43Add0_bounded : s2Step43Add0Work.toFinset⊆arenaWires := by
  have h : s2Step43Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step43Add0During : Arena := ⟨s2Step43Add0Arena.live∪s2Step43Add0Work.toFinset,Finset.union_subset s2Step43Add0Arena.bounded s2Step43Add0_bounded⟩
theorem s2Step43Add0_distinct : (844::799::845::(s2Step43Add0A++s2Step43Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43Add0_owned : (844::799::845::(s2Step43Add0A++s2Step43Add0B)).toFinset⊆s2Step43Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step43Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43Add0_apart : Disjoint s2Step43Add0Arena.live s2Step43Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step43Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43Add0_card : s2Step43Add0Arena.live.card=856 := by
  decide +kernel
theorem s2Step43Add0_borrowed : s2Step43Add0Arena.checkBorrow (hmrHybridCount s2Step43Add0Arena s2Step43Add0B.length) s2Step43Add0Work=some s2Step43Add0During := by
  have len : s2Step43Add0Work.length=hmrHybridCount s2Step43Add0Arena s2Step43Add0B.length := by
    rw [hmrHybridCount,s2Step43Add0_card]
    decide +kernel
  have nd : s2Step43Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step43Add0Arena s2Step43Add0During s2Step43Add0Work.toFinset s2Step43Add0_bounded s2Step43Add0_apart rfl
theorem s2Step43Add0_checked : compileHmrHybridCinLog s2Step43Add0Arena 799 844 845 s2Step43Add0A s2Step43Add0B s2Step43Add0Work=some s2Step43Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step43Add0Arena s2Step43Add0During 799 844 845 s2Step43Add0A s2Step43Add0B s2Step43Add0Work
    (by decide +kernel) (by decide +kernel) s2Step43Add0_distinct
    (fun q hq => s2Step43Add0_owned (List.mem_toFinset.mpr hq)) s2Step43Add0_borrowed
def s2Step43Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step43Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 802, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 791, 787, 770]
def s2Step43Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 801, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 790, 771]
def s2Step43Add1Work : List Wire := [846, 847, 849, 851, 856, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891]
theorem s2Step43Add1_bounded : s2Step43Add1Work.toFinset⊆arenaWires := by
  have h : s2Step43Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step43Add1During : Arena := ⟨s2Step43Add1Arena.live∪s2Step43Add1Work.toFinset,Finset.union_subset s2Step43Add1Arena.bounded s2Step43Add1_bounded⟩
theorem s2Step43Add1_distinct : (844::799::845::(s2Step43Add1A++s2Step43Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step43Add1_owned : (844::799::845::(s2Step43Add1A++s2Step43Add1B)).toFinset⊆s2Step43Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step43Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43Add1_apart : Disjoint s2Step43Add1Arena.live s2Step43Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step43Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<856) ∨ (857≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step43Add1_card : s2Step43Add1Arena.live.card=856 := by
  decide +kernel
theorem s2Step43Add1_borrowed : s2Step43Add1Arena.checkBorrow (hmrHybridCount s2Step43Add1Arena s2Step43Add1B.length) s2Step43Add1Work=some s2Step43Add1During := by
  have len : s2Step43Add1Work.length=hmrHybridCount s2Step43Add1Arena s2Step43Add1B.length := by
    rw [hmrHybridCount,s2Step43Add1_card]
    decide +kernel
  have nd : s2Step43Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step43Add1Arena s2Step43Add1During s2Step43Add1Work.toFinset s2Step43Add1_bounded s2Step43Add1_apart rfl
theorem s2Step43Add1_checked : compileHmrHybridCinLog s2Step43Add1Arena 799 844 845 s2Step43Add1A s2Step43Add1B s2Step43Add1Work=some s2Step43Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step43Add1Arena s2Step43Add1During 799 844 845 s2Step43Add1A s2Step43Add1B s2Step43Add1Work
    (by decide +kernel) (by decide +kernel) s2Step43Add1_distinct
    (fun q hq => s2Step43Add1_owned (List.mem_toFinset.mpr hq)) s2Step43Add1_borrowed
def s2Step44Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step44Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 790, 768]
def s2Step44Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 802, 769]
def s2Step44Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step44Add0_bounded : s2Step44Add0Work.toFinset⊆arenaWires := by
  have h : s2Step44Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step44Add0During : Arena := ⟨s2Step44Add0Arena.live∪s2Step44Add0Work.toFinset,Finset.union_subset s2Step44Add0Arena.bounded s2Step44Add0_bounded⟩
theorem s2Step44Add0_distinct : (792::801::800::(s2Step44Add0A++s2Step44Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44Add0_owned : (792::801::800::(s2Step44Add0A++s2Step44Add0B)).toFinset⊆s2Step44Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step44Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44Add0_apart : Disjoint s2Step44Add0Arena.live s2Step44Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step44Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44Add0_card : s2Step44Add0Arena.live.card=855 := by
  decide +kernel
theorem s2Step44Add0_borrowed : s2Step44Add0Arena.checkBorrow (hmrHybridCount s2Step44Add0Arena s2Step44Add0B.length) s2Step44Add0Work=some s2Step44Add0During := by
  have len : s2Step44Add0Work.length=hmrHybridCount s2Step44Add0Arena s2Step44Add0B.length := by
    rw [hmrHybridCount,s2Step44Add0_card]
    decide +kernel
  have nd : s2Step44Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step44Add0Arena s2Step44Add0During s2Step44Add0Work.toFinset s2Step44Add0_bounded s2Step44Add0_apart rfl
theorem s2Step44Add0_checked : compileHmrHybridCinLog s2Step44Add0Arena 801 792 800 s2Step44Add0A s2Step44Add0B s2Step44Add0Work=some s2Step44Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step44Add0Arena s2Step44Add0During 801 792 800 s2Step44Add0A s2Step44Add0B s2Step44Add0Work
    (by decide +kernel) (by decide +kernel) s2Step44Add0_distinct
    (fun q hq => s2Step44Add0_owned (List.mem_toFinset.mpr hq)) s2Step44Add0_borrowed
def s2Step44Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step44Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 804, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 787, 770]
def s2Step44Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 791, 771]
def s2Step44Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890]
theorem s2Step44Add1_bounded : s2Step44Add1Work.toFinset⊆arenaWires := by
  have h : s2Step44Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step44Add1During : Arena := ⟨s2Step44Add1Arena.live∪s2Step44Add1Work.toFinset,Finset.union_subset s2Step44Add1Arena.bounded s2Step44Add1_bounded⟩
theorem s2Step44Add1_distinct : (792::801::800::(s2Step44Add1A++s2Step44Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step44Add1_owned : (792::801::800::(s2Step44Add1A++s2Step44Add1B)).toFinset⊆s2Step44Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step44Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44Add1_apart : Disjoint s2Step44Add1Arena.live s2Step44Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step44Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step44Add1_card : s2Step44Add1Arena.live.card=855 := by
  decide +kernel
theorem s2Step44Add1_borrowed : s2Step44Add1Arena.checkBorrow (hmrHybridCount s2Step44Add1Arena s2Step44Add1B.length) s2Step44Add1Work=some s2Step44Add1During := by
  have len : s2Step44Add1Work.length=hmrHybridCount s2Step44Add1Arena s2Step44Add1B.length := by
    rw [hmrHybridCount,s2Step44Add1_card]
    decide +kernel
  have nd : s2Step44Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step44Add1Arena s2Step44Add1During s2Step44Add1Work.toFinset s2Step44Add1_bounded s2Step44Add1_apart rfl
theorem s2Step44Add1_checked : compileHmrHybridCinLog s2Step44Add1Arena 801 792 800 s2Step44Add1A s2Step44Add1B s2Step44Add1Work=some s2Step44Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step44Add1Arena s2Step44Add1During 801 792 800 s2Step44Add1A s2Step44Add1B s2Step44Add1Work
    (by decide +kernel) (by decide +kernel) s2Step44Add1_distinct
    (fun q hq => s2Step44Add1_owned (List.mem_toFinset.mpr hq)) s2Step44Add1_borrowed
def s2Step45Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step45Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 757, 787, 768]
def s2Step45Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 801, 791, 769]
def s2Step45Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step45Add0_bounded : s2Step45Add0Work.toFinset⊆arenaWires := by
  have h : s2Step45Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step45Add0During : Arena := ⟨s2Step45Add0Arena.live∪s2Step45Add0Work.toFinset,Finset.union_subset s2Step45Add0Arena.bounded s2Step45Add0_bounded⟩
theorem s2Step45Add0_distinct : (792::804::800::(s2Step45Add0A++s2Step45Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45Add0_owned : (792::804::800::(s2Step45Add0A++s2Step45Add0B)).toFinset⊆s2Step45Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step45Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45Add0_apart : Disjoint s2Step45Add0Arena.live s2Step45Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step45Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45Add0_card : s2Step45Add0Arena.live.card=855 := by
  decide +kernel
theorem s2Step45Add0_borrowed : s2Step45Add0Arena.checkBorrow (hmrHybridCount s2Step45Add0Arena s2Step45Add0B.length) s2Step45Add0Work=some s2Step45Add0During := by
  have len : s2Step45Add0Work.length=hmrHybridCount s2Step45Add0Arena s2Step45Add0B.length := by
    rw [hmrHybridCount,s2Step45Add0_card]
    decide +kernel
  have nd : s2Step45Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step45Add0Arena s2Step45Add0During s2Step45Add0Work.toFinset s2Step45Add0_bounded s2Step45Add0_apart rfl
theorem s2Step45Add0_checked : compileHmrHybridCinLog s2Step45Add0Arena 804 792 800 s2Step45Add0A s2Step45Add0B s2Step45Add0Work=some s2Step45Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step45Add0Arena s2Step45Add0During 804 792 800 s2Step45Add0A s2Step45Add0B s2Step45Add0Work
    (by decide +kernel) (by decide +kernel) s2Step45Add0_distinct
    (fun q hq => s2Step45Add0_owned (List.mem_toFinset.mpr hq)) s2Step45Add0_borrowed
def s2Step45Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step45Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 770]
def s2Step45Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 803, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 790, 771]
def s2Step45Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 860, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890]
theorem s2Step45Add1_bounded : s2Step45Add1Work.toFinset⊆arenaWires := by
  have h : s2Step45Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step45Add1During : Arena := ⟨s2Step45Add1Arena.live∪s2Step45Add1Work.toFinset,Finset.union_subset s2Step45Add1Arena.bounded s2Step45Add1_bounded⟩
theorem s2Step45Add1_distinct : (792::804::800::(s2Step45Add1A++s2Step45Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step45Add1_owned : (792::804::800::(s2Step45Add1A++s2Step45Add1B)).toFinset⊆s2Step45Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step45Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45Add1_apart : Disjoint s2Step45Add1Arena.live s2Step45Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step45Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<860) ∨ (861≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step45Add1_card : s2Step45Add1Arena.live.card=855 := by
  decide +kernel
theorem s2Step45Add1_borrowed : s2Step45Add1Arena.checkBorrow (hmrHybridCount s2Step45Add1Arena s2Step45Add1B.length) s2Step45Add1Work=some s2Step45Add1During := by
  have len : s2Step45Add1Work.length=hmrHybridCount s2Step45Add1Arena s2Step45Add1B.length := by
    rw [hmrHybridCount,s2Step45Add1_card]
    decide +kernel
  have nd : s2Step45Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step45Add1Arena s2Step45Add1During s2Step45Add1Work.toFinset s2Step45Add1_bounded s2Step45Add1_apart rfl
theorem s2Step45Add1_checked : compileHmrHybridCinLog s2Step45Add1Arena 804 792 800 s2Step45Add1A s2Step45Add1B s2Step45Add1Work=some s2Step45Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step45Add1Arena s2Step45Add1During 804 792 800 s2Step45Add1A s2Step45Add1B s2Step45Add1Work
    (by decide +kernel) (by decide +kernel) s2Step45Add1_distinct
    (fun q hq => s2Step45Add1_owned (List.mem_toFinset.mpr hq)) s2Step45Add1_borrowed
def s2Step46Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step46Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 756, 787, 768]
def s2Step46Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 790, 769]
def s2Step46Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step46Add0_bounded : s2Step46Add0Work.toFinset⊆arenaWires := by
  have h : s2Step46Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step46Add0During : Arena := ⟨s2Step46Add0Arena.live∪s2Step46Add0Work.toFinset,Finset.union_subset s2Step46Add0Arena.bounded s2Step46Add0_bounded⟩
theorem s2Step46Add0_distinct : (792::803::800::(s2Step46Add0A++s2Step46Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46Add0_owned : (792::803::800::(s2Step46Add0A++s2Step46Add0B)).toFinset⊆s2Step46Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step46Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46Add0_apart : Disjoint s2Step46Add0Arena.live s2Step46Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step46Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46Add0_card : s2Step46Add0Arena.live.card=856 := by
  decide +kernel
theorem s2Step46Add0_borrowed : s2Step46Add0Arena.checkBorrow (hmrHybridCount s2Step46Add0Arena s2Step46Add0B.length) s2Step46Add0Work=some s2Step46Add0During := by
  have len : s2Step46Add0Work.length=hmrHybridCount s2Step46Add0Arena s2Step46Add0B.length := by
    rw [hmrHybridCount,s2Step46Add0_card]
    decide +kernel
  have nd : s2Step46Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step46Add0Arena s2Step46Add0During s2Step46Add0Work.toFinset s2Step46Add0_bounded s2Step46Add0_apart rfl
theorem s2Step46Add0_checked : compileHmrHybridCinLog s2Step46Add0Arena 803 792 800 s2Step46Add0A s2Step46Add0B s2Step46Add0Work=some s2Step46Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step46Add0Arena s2Step46Add0During 803 792 800 s2Step46Add0A s2Step46Add0B s2Step46Add0Work
    (by decide +kernel) (by decide +kernel) s2Step46Add0_distinct
    (fun q hq => s2Step46Add0_owned (List.mem_toFinset.mpr hq)) s2Step46Add0_borrowed
def s2Step46Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step46Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 806, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 770]
def s2Step46Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 805, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 771]
def s2Step46Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892]
theorem s2Step46Add1_bounded : s2Step46Add1Work.toFinset⊆arenaWires := by
  have h : s2Step46Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step46Add1During : Arena := ⟨s2Step46Add1Arena.live∪s2Step46Add1Work.toFinset,Finset.union_subset s2Step46Add1Arena.bounded s2Step46Add1_bounded⟩
theorem s2Step46Add1_distinct : (792::803::800::(s2Step46Add1A++s2Step46Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step46Add1_owned : (792::803::800::(s2Step46Add1A++s2Step46Add1B)).toFinset⊆s2Step46Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step46Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46Add1_apart : Disjoint s2Step46Add1Arena.live s2Step46Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step46Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step46Add1_card : s2Step46Add1Arena.live.card=856 := by
  decide +kernel
theorem s2Step46Add1_borrowed : s2Step46Add1Arena.checkBorrow (hmrHybridCount s2Step46Add1Arena s2Step46Add1B.length) s2Step46Add1Work=some s2Step46Add1During := by
  have len : s2Step46Add1Work.length=hmrHybridCount s2Step46Add1Arena s2Step46Add1B.length := by
    rw [hmrHybridCount,s2Step46Add1_card]
    decide +kernel
  have nd : s2Step46Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step46Add1Arena s2Step46Add1During s2Step46Add1Work.toFinset s2Step46Add1_bounded s2Step46Add1_apart rfl
theorem s2Step46Add1_checked : compileHmrHybridCinLog s2Step46Add1Arena 803 792 800 s2Step46Add1A s2Step46Add1B s2Step46Add1Work=some s2Step46Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step46Add1Arena s2Step46Add1During 803 792 800 s2Step46Add1A s2Step46Add1B s2Step46Add1Work
    (by decide +kernel) (by decide +kernel) s2Step46Add1_distinct
    (fun q hq => s2Step46Add1_owned (List.mem_toFinset.mpr hq)) s2Step46Add1_borrowed
def s2Step47Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step47Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 806, 768]
def s2Step47Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 805, 769]
def s2Step47Add0Work : List Wire := [792, 800, 844, 845, 846, 847, 849, 851, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step47Add0_bounded : s2Step47Add0Work.toFinset⊆arenaWires := by
  have h : s2Step47Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step47Add0During : Arena := ⟨s2Step47Add0Arena.live∪s2Step47Add0Work.toFinset,Finset.union_subset s2Step47Add0Arena.bounded s2Step47Add0_bounded⟩
theorem s2Step47Add0_distinct : (787::798::790::(s2Step47Add0A++s2Step47Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47Add0_owned : (787::798::790::(s2Step47Add0A++s2Step47Add0B)).toFinset⊆s2Step47Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step47Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47Add0_apart : Disjoint s2Step47Add0Arena.live s2Step47Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step47Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47Add0_card : s2Step47Add0Arena.live.card=854 := by
  decide +kernel
theorem s2Step47Add0_borrowed : s2Step47Add0Arena.checkBorrow (hmrHybridCount s2Step47Add0Arena s2Step47Add0B.length) s2Step47Add0Work=some s2Step47Add0During := by
  have len : s2Step47Add0Work.length=hmrHybridCount s2Step47Add0Arena s2Step47Add0B.length := by
    rw [hmrHybridCount,s2Step47Add0_card]
    decide +kernel
  have nd : s2Step47Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step47Add0Arena s2Step47Add0During s2Step47Add0Work.toFinset s2Step47Add0_bounded s2Step47Add0_apart rfl
theorem s2Step47Add0_checked : compileHmrHybridCinLog s2Step47Add0Arena 798 787 790 s2Step47Add0A s2Step47Add0B s2Step47Add0Work=some s2Step47Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step47Add0Arena s2Step47Add0During 798 787 790 s2Step47Add0A s2Step47Add0B s2Step47Add0Work
    (by decide +kernel) (by decide +kernel) s2Step47Add0_distinct
    (fun q hq => s2Step47Add0_owned (List.mem_toFinset.mpr hq)) s2Step47Add0_borrowed
def s2Step47Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)),Finset.filter_subset _ _⟩
def s2Step47Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 770]
def s2Step47Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 771]
def s2Step47Add1Work : List Wire := [792, 800, 844, 845, 846, 847, 849, 851, 862, 863, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890]
theorem s2Step47Add1_bounded : s2Step47Add1Work.toFinset⊆arenaWires := by
  have h : s2Step47Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step47Add1During : Arena := ⟨s2Step47Add1Arena.live∪s2Step47Add1Work.toFinset,Finset.union_subset s2Step47Add1Arena.bounded s2Step47Add1_bounded⟩
theorem s2Step47Add1_distinct : (787::798::790::(s2Step47Add1A++s2Step47Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step47Add1_owned : (787::798::790::(s2Step47Add1A++s2Step47Add1B)).toFinset⊆s2Step47Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step47Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47Add1_apart : Disjoint s2Step47Add1Arena.live s2Step47Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step47Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862)) rfl
  decide +kernel
theorem s2Step47Add1_card : s2Step47Add1Arena.live.card=854 := by
  decide +kernel
theorem s2Step47Add1_borrowed : s2Step47Add1Arena.checkBorrow (hmrHybridCount s2Step47Add1Arena s2Step47Add1B.length) s2Step47Add1Work=some s2Step47Add1During := by
  have len : s2Step47Add1Work.length=hmrHybridCount s2Step47Add1Arena s2Step47Add1B.length := by
    rw [hmrHybridCount,s2Step47Add1_card]
    decide +kernel
  have nd : s2Step47Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step47Add1Arena s2Step47Add1During s2Step47Add1Work.toFinset s2Step47Add1_bounded s2Step47Add1_apart rfl
theorem s2Step47Add1_checked : compileHmrHybridCinLog s2Step47Add1Arena 798 787 790 s2Step47Add1A s2Step47Add1B s2Step47Add1Work=some s2Step47Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step47Add1Arena s2Step47Add1During 798 787 790 s2Step47Add1A s2Step47Add1B s2Step47Add1Work
    (by decide +kernel) (by decide +kernel) s2Step47Add1_distinct
    (fun q hq => s2Step47Add1_owned (List.mem_toFinset.mpr hq)) s2Step47Add1_borrowed

end ECDSAAdd.Arithmetic.Paper935
