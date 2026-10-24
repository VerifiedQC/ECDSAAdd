import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrSourceArithmeticPartsChunk2

namespace ECDSAAdd.Arithmetic.Paper935
def s2Step48Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step48Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 805, 768]
def s2Step48Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 806, 769]
def s2Step48Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 862, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step48Add0_bounded : s2Step48Add0Work.toFinset⊆arenaWires := by
  have h : s2Step48Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step48Add0During : Arena := ⟨s2Step48Add0Arena.live∪s2Step48Add0Work.toFinset,Finset.union_subset s2Step48Add0Arena.bounded s2Step48Add0_bounded⟩
theorem s2Step48Add0_distinct : (792::803::800::(s2Step48Add0A++s2Step48Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48Add0_owned : (792::803::800::(s2Step48Add0A++s2Step48Add0B)).toFinset⊆s2Step48Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step48Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48Add0_apart : Disjoint s2Step48Add0Arena.live s2Step48Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step48Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48Add0_card : s2Step48Add0Arena.live.card=857 := by
  decide +kernel
theorem s2Step48Add0_borrowed : s2Step48Add0Arena.checkBorrow (hmrHybridCount s2Step48Add0Arena s2Step48Add0B.length) s2Step48Add0Work=some s2Step48Add0During := by
  have len : s2Step48Add0Work.length=hmrHybridCount s2Step48Add0Arena s2Step48Add0B.length := by
    rw [hmrHybridCount,s2Step48Add0_card]
    decide +kernel
  have nd : s2Step48Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step48Add0Arena s2Step48Add0During s2Step48Add0Work.toFinset s2Step48Add0_bounded s2Step48Add0_apart rfl
theorem s2Step48Add0_checked : compileHmrHybridCinLog s2Step48Add0Arena 803 792 800 s2Step48Add0A s2Step48Add0B s2Step48Add0Work=some s2Step48Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step48Add0Arena s2Step48Add0During 803 792 800 s2Step48Add0A s2Step48Add0B s2Step48Add0Work
    (by decide +kernel) (by decide +kernel) s2Step48Add0_distinct
    (fun q hq => s2Step48Add0_owned (List.mem_toFinset.mpr hq)) s2Step48Add0_borrowed
def s2Step48Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step48Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 808, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 790, 770]
def s2Step48Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 787, 771]
def s2Step48Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 862, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894]
theorem s2Step48Add1_bounded : s2Step48Add1Work.toFinset⊆arenaWires := by
  have h : s2Step48Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step48Add1During : Arena := ⟨s2Step48Add1Arena.live∪s2Step48Add1Work.toFinset,Finset.union_subset s2Step48Add1Arena.bounded s2Step48Add1_bounded⟩
theorem s2Step48Add1_distinct : (792::803::800::(s2Step48Add1A++s2Step48Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step48Add1_owned : (792::803::800::(s2Step48Add1A++s2Step48Add1B)).toFinset⊆s2Step48Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step48Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48Add1_apart : Disjoint s2Step48Add1Arena.live s2Step48Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step48Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step48Add1_card : s2Step48Add1Arena.live.card=857 := by
  decide +kernel
theorem s2Step48Add1_borrowed : s2Step48Add1Arena.checkBorrow (hmrHybridCount s2Step48Add1Arena s2Step48Add1B.length) s2Step48Add1Work=some s2Step48Add1During := by
  have len : s2Step48Add1Work.length=hmrHybridCount s2Step48Add1Arena s2Step48Add1B.length := by
    rw [hmrHybridCount,s2Step48Add1_card]
    decide +kernel
  have nd : s2Step48Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step48Add1Arena s2Step48Add1During s2Step48Add1Work.toFinset s2Step48Add1_bounded s2Step48Add1_apart rfl
theorem s2Step48Add1_checked : compileHmrHybridCinLog s2Step48Add1Arena 803 792 800 s2Step48Add1A s2Step48Add1B s2Step48Add1Work=some s2Step48Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step48Add1Arena s2Step48Add1During 803 792 800 s2Step48Add1A s2Step48Add1B s2Step48Add1Work
    (by decide +kernel) (by decide +kernel) s2Step48Add1_distinct
    (fun q hq => s2Step48Add1_owned (List.mem_toFinset.mpr hq)) s2Step48Add1_borrowed
def s2Step49Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step49Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 755, 790, 768]
def s2Step49Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 803, 787, 769]
def s2Step49Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 862, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step49Add0_bounded : s2Step49Add0Work.toFinset⊆arenaWires := by
  have h : s2Step49Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step49Add0During : Arena := ⟨s2Step49Add0Arena.live∪s2Step49Add0Work.toFinset,Finset.union_subset s2Step49Add0Arena.bounded s2Step49Add0_bounded⟩
theorem s2Step49Add0_distinct : (792::808::800::(s2Step49Add0A++s2Step49Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49Add0_owned : (792::808::800::(s2Step49Add0A++s2Step49Add0B)).toFinset⊆s2Step49Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step49Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49Add0_apart : Disjoint s2Step49Add0Arena.live s2Step49Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step49Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49Add0_card : s2Step49Add0Arena.live.card=857 := by
  decide +kernel
theorem s2Step49Add0_borrowed : s2Step49Add0Arena.checkBorrow (hmrHybridCount s2Step49Add0Arena s2Step49Add0B.length) s2Step49Add0Work=some s2Step49Add0During := by
  have len : s2Step49Add0Work.length=hmrHybridCount s2Step49Add0Arena s2Step49Add0B.length := by
    rw [hmrHybridCount,s2Step49Add0_card]
    decide +kernel
  have nd : s2Step49Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step49Add0Arena s2Step49Add0During s2Step49Add0Work.toFinset s2Step49Add0_bounded s2Step49Add0_apart rfl
theorem s2Step49Add0_checked : compileHmrHybridCinLog s2Step49Add0Arena 808 792 800 s2Step49Add0A s2Step49Add0B s2Step49Add0Work=some s2Step49Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step49Add0Arena s2Step49Add0During 808 792 800 s2Step49Add0A s2Step49Add0B s2Step49Add0Work
    (by decide +kernel) (by decide +kernel) s2Step49Add0_distinct
    (fun q hq => s2Step49Add0_owned (List.mem_toFinset.mpr hq)) s2Step49Add0_borrowed
def s2Step49Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step49Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 770]
def s2Step49Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 807, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 805, 771]
def s2Step49Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 862, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894]
theorem s2Step49Add1_bounded : s2Step49Add1Work.toFinset⊆arenaWires := by
  have h : s2Step49Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step49Add1During : Arena := ⟨s2Step49Add1Arena.live∪s2Step49Add1Work.toFinset,Finset.union_subset s2Step49Add1Arena.bounded s2Step49Add1_bounded⟩
theorem s2Step49Add1_distinct : (792::808::800::(s2Step49Add1A++s2Step49Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step49Add1_owned : (792::808::800::(s2Step49Add1A++s2Step49Add1B)).toFinset⊆s2Step49Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step49Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49Add1_apart : Disjoint s2Step49Add1Arena.live s2Step49Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step49Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<862) ∨ (863≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step49Add1_card : s2Step49Add1Arena.live.card=857 := by
  decide +kernel
theorem s2Step49Add1_borrowed : s2Step49Add1Arena.checkBorrow (hmrHybridCount s2Step49Add1Arena s2Step49Add1B.length) s2Step49Add1Work=some s2Step49Add1During := by
  have len : s2Step49Add1Work.length=hmrHybridCount s2Step49Add1Arena s2Step49Add1B.length := by
    rw [hmrHybridCount,s2Step49Add1_card]
    decide +kernel
  have nd : s2Step49Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step49Add1Arena s2Step49Add1During s2Step49Add1Work.toFinset s2Step49Add1_bounded s2Step49Add1_apart rfl
theorem s2Step49Add1_checked : compileHmrHybridCinLog s2Step49Add1Arena 808 792 800 s2Step49Add1A s2Step49Add1B s2Step49Add1Work=some s2Step49Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step49Add1Arena s2Step49Add1During 808 792 800 s2Step49Add1A s2Step49Add1B s2Step49Add1Work
    (by decide +kernel) (by decide +kernel) s2Step49Add1_distinct
    (fun q hq => s2Step49Add1_owned (List.mem_toFinset.mpr hq)) s2Step49Add1_borrowed
def s2Step50Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step50Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 790, 768]
def s2Step50Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 805, 769]
def s2Step50Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step50Add0_bounded : s2Step50Add0Work.toFinset⊆arenaWires := by
  have h : s2Step50Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step50Add0During : Arena := ⟨s2Step50Add0Arena.live∪s2Step50Add0Work.toFinset,Finset.union_subset s2Step50Add0Arena.bounded s2Step50Add0_bounded⟩
theorem s2Step50Add0_distinct : (792::807::800::(s2Step50Add0A++s2Step50Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50Add0_owned : (792::807::800::(s2Step50Add0A++s2Step50Add0B)).toFinset⊆s2Step50Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step50Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50Add0_apart : Disjoint s2Step50Add0Arena.live s2Step50Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step50Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50Add0_card : s2Step50Add0Arena.live.card=858 := by
  decide +kernel
theorem s2Step50Add0_borrowed : s2Step50Add0Arena.checkBorrow (hmrHybridCount s2Step50Add0Arena s2Step50Add0B.length) s2Step50Add0Work=some s2Step50Add0During := by
  have len : s2Step50Add0Work.length=hmrHybridCount s2Step50Add0Arena s2Step50Add0B.length := by
    rw [hmrHybridCount,s2Step50Add0_card]
    decide +kernel
  have nd : s2Step50Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step50Add0Arena s2Step50Add0During s2Step50Add0Work.toFinset s2Step50Add0_bounded s2Step50Add0_apart rfl
theorem s2Step50Add0_checked : compileHmrHybridCinLog s2Step50Add0Arena 807 792 800 s2Step50Add0A s2Step50Add0B s2Step50Add0Work=some s2Step50Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step50Add0Arena s2Step50Add0During 807 792 800 s2Step50Add0A s2Step50Add0B s2Step50Add0Work
    (by decide +kernel) (by decide +kernel) s2Step50Add0_distinct
    (fun q hq => s2Step50Add0_owned (List.mem_toFinset.mpr hq)) s2Step50Add0_borrowed
def s2Step50Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step50Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 810, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 787, 770]
def s2Step50Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 808, 803, 771]
def s2Step50Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896]
theorem s2Step50Add1_bounded : s2Step50Add1Work.toFinset⊆arenaWires := by
  have h : s2Step50Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step50Add1During : Arena := ⟨s2Step50Add1Arena.live∪s2Step50Add1Work.toFinset,Finset.union_subset s2Step50Add1Arena.bounded s2Step50Add1_bounded⟩
theorem s2Step50Add1_distinct : (792::807::800::(s2Step50Add1A++s2Step50Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step50Add1_owned : (792::807::800::(s2Step50Add1A++s2Step50Add1B)).toFinset⊆s2Step50Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step50Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50Add1_apart : Disjoint s2Step50Add1Arena.live s2Step50Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step50Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step50Add1_card : s2Step50Add1Arena.live.card=858 := by
  decide +kernel
theorem s2Step50Add1_borrowed : s2Step50Add1Arena.checkBorrow (hmrHybridCount s2Step50Add1Arena s2Step50Add1B.length) s2Step50Add1Work=some s2Step50Add1During := by
  have len : s2Step50Add1Work.length=hmrHybridCount s2Step50Add1Arena s2Step50Add1B.length := by
    rw [hmrHybridCount,s2Step50Add1_card]
    decide +kernel
  have nd : s2Step50Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step50Add1Arena s2Step50Add1During s2Step50Add1Work.toFinset s2Step50Add1_bounded s2Step50Add1_apart rfl
theorem s2Step50Add1_checked : compileHmrHybridCinLog s2Step50Add1Arena 807 792 800 s2Step50Add1A s2Step50Add1B s2Step50Add1Work=some s2Step50Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step50Add1Arena s2Step50Add1During 807 792 800 s2Step50Add1A s2Step50Add1B s2Step50Add1Work
    (by decide +kernel) (by decide +kernel) s2Step50Add1_distinct
    (fun q hq => s2Step50Add1_owned (List.mem_toFinset.mpr hq)) s2Step50Add1_borrowed
def s2Step51Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step51Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 754, 787, 768]
def s2Step51Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 807, 803, 769]
def s2Step51Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step51Add0_bounded : s2Step51Add0Work.toFinset⊆arenaWires := by
  have h : s2Step51Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step51Add0During : Arena := ⟨s2Step51Add0Arena.live∪s2Step51Add0Work.toFinset,Finset.union_subset s2Step51Add0Arena.bounded s2Step51Add0_bounded⟩
theorem s2Step51Add0_distinct : (792::808::800::(s2Step51Add0A++s2Step51Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51Add0_owned : (792::808::800::(s2Step51Add0A++s2Step51Add0B)).toFinset⊆s2Step51Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step51Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51Add0_apart : Disjoint s2Step51Add0Arena.live s2Step51Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step51Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51Add0_card : s2Step51Add0Arena.live.card=858 := by
  decide +kernel
theorem s2Step51Add0_borrowed : s2Step51Add0Arena.checkBorrow (hmrHybridCount s2Step51Add0Arena s2Step51Add0B.length) s2Step51Add0Work=some s2Step51Add0During := by
  have len : s2Step51Add0Work.length=hmrHybridCount s2Step51Add0Arena s2Step51Add0B.length := by
    rw [hmrHybridCount,s2Step51Add0_card]
    decide +kernel
  have nd : s2Step51Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step51Add0Arena s2Step51Add0During s2Step51Add0Work.toFinset s2Step51Add0_bounded s2Step51Add0_apart rfl
theorem s2Step51Add0_checked : compileHmrHybridCinLog s2Step51Add0Arena 808 792 800 s2Step51Add0A s2Step51Add0B s2Step51Add0Work=some s2Step51Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step51Add0Arena s2Step51Add0During 808 792 800 s2Step51Add0A s2Step51Add0B s2Step51Add0Work
    (by decide +kernel) (by decide +kernel) s2Step51Add0_distinct
    (fun q hq => s2Step51Add0_owned (List.mem_toFinset.mpr hq)) s2Step51Add0_borrowed
def s2Step51Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)),Finset.filter_subset _ _⟩
def s2Step51Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 770]
def s2Step51Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 809, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 790, 771]
def s2Step51Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 864, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896]
theorem s2Step51Add1_bounded : s2Step51Add1Work.toFinset⊆arenaWires := by
  have h : s2Step51Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step51Add1During : Arena := ⟨s2Step51Add1Arena.live∪s2Step51Add1Work.toFinset,Finset.union_subset s2Step51Add1Arena.bounded s2Step51Add1_bounded⟩
theorem s2Step51Add1_distinct : (792::808::800::(s2Step51Add1A++s2Step51Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step51Add1_owned : (792::808::800::(s2Step51Add1A++s2Step51Add1B)).toFinset⊆s2Step51Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step51Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51Add1_apart : Disjoint s2Step51Add1Arena.live s2Step51Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step51Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<864)) rfl
  decide +kernel
theorem s2Step51Add1_card : s2Step51Add1Arena.live.card=858 := by
  decide +kernel
theorem s2Step51Add1_borrowed : s2Step51Add1Arena.checkBorrow (hmrHybridCount s2Step51Add1Arena s2Step51Add1B.length) s2Step51Add1Work=some s2Step51Add1During := by
  have len : s2Step51Add1Work.length=hmrHybridCount s2Step51Add1Arena s2Step51Add1B.length := by
    rw [hmrHybridCount,s2Step51Add1_card]
    decide +kernel
  have nd : s2Step51Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step51Add1Arena s2Step51Add1During s2Step51Add1Work.toFinset s2Step51Add1_bounded s2Step51Add1_apart rfl
theorem s2Step51Add1_checked : compileHmrHybridCinLog s2Step51Add1Arena 808 792 800 s2Step51Add1A s2Step51Add1B s2Step51Add1Work=some s2Step51Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step51Add1Arena s2Step51Add1During 808 792 800 s2Step51Add1A s2Step51Add1B s2Step51Add1Work
    (by decide +kernel) (by decide +kernel) s2Step51Add1_distinct
    (fun q hq => s2Step51Add1_owned (List.mem_toFinset.mpr hq)) s2Step51Add1_borrowed
def s2Step52Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step52Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 753, 787, 768]
def s2Step52Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 790, 769]
def s2Step52Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step52Add0_bounded : s2Step52Add0Work.toFinset⊆arenaWires := by
  have h : s2Step52Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step52Add0During : Arena := ⟨s2Step52Add0Arena.live∪s2Step52Add0Work.toFinset,Finset.union_subset s2Step52Add0Arena.bounded s2Step52Add0_bounded⟩
theorem s2Step52Add0_distinct : (792::809::800::(s2Step52Add0A++s2Step52Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52Add0_owned : (792::809::800::(s2Step52Add0A++s2Step52Add0B)).toFinset⊆s2Step52Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step52Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52Add0_apart : Disjoint s2Step52Add0Arena.live s2Step52Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step52Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52Add0_card : s2Step52Add0Arena.live.card=859 := by
  decide +kernel
theorem s2Step52Add0_borrowed : s2Step52Add0Arena.checkBorrow (hmrHybridCount s2Step52Add0Arena s2Step52Add0B.length) s2Step52Add0Work=some s2Step52Add0During := by
  have len : s2Step52Add0Work.length=hmrHybridCount s2Step52Add0Arena s2Step52Add0B.length := by
    rw [hmrHybridCount,s2Step52Add0_card]
    decide +kernel
  have nd : s2Step52Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step52Add0Arena s2Step52Add0During s2Step52Add0Work.toFinset s2Step52Add0_bounded s2Step52Add0_apart rfl
theorem s2Step52Add0_checked : compileHmrHybridCinLog s2Step52Add0Arena 809 792 800 s2Step52Add0A s2Step52Add0B s2Step52Add0Work=some s2Step52Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step52Add0Arena s2Step52Add0During 809 792 800 s2Step52Add0A s2Step52Add0B s2Step52Add0Work
    (by decide +kernel) (by decide +kernel) s2Step52Add0_distinct
    (fun q hq => s2Step52Add0_owned (List.mem_toFinset.mpr hq)) s2Step52Add0_borrowed
def s2Step52Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step52Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 812, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 770]
def s2Step52Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 811, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 808, 807, 771]
def s2Step52Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898]
theorem s2Step52Add1_bounded : s2Step52Add1Work.toFinset⊆arenaWires := by
  have h : s2Step52Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step52Add1During : Arena := ⟨s2Step52Add1Arena.live∪s2Step52Add1Work.toFinset,Finset.union_subset s2Step52Add1Arena.bounded s2Step52Add1_bounded⟩
theorem s2Step52Add1_distinct : (792::809::800::(s2Step52Add1A++s2Step52Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step52Add1_owned : (792::809::800::(s2Step52Add1A++s2Step52Add1B)).toFinset⊆s2Step52Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step52Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52Add1_apart : Disjoint s2Step52Add1Arena.live s2Step52Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step52Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step52Add1_card : s2Step52Add1Arena.live.card=859 := by
  decide +kernel
theorem s2Step52Add1_borrowed : s2Step52Add1Arena.checkBorrow (hmrHybridCount s2Step52Add1Arena s2Step52Add1B.length) s2Step52Add1Work=some s2Step52Add1During := by
  have len : s2Step52Add1Work.length=hmrHybridCount s2Step52Add1Arena s2Step52Add1B.length := by
    rw [hmrHybridCount,s2Step52Add1_card]
    decide +kernel
  have nd : s2Step52Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step52Add1Arena s2Step52Add1During s2Step52Add1Work.toFinset s2Step52Add1_bounded s2Step52Add1_apart rfl
theorem s2Step52Add1_checked : compileHmrHybridCinLog s2Step52Add1Arena 809 792 800 s2Step52Add1A s2Step52Add1B s2Step52Add1Work=some s2Step52Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step52Add1Arena s2Step52Add1During 809 792 800 s2Step52Add1A s2Step52Add1B s2Step52Add1Work
    (by decide +kernel) (by decide +kernel) s2Step52Add1_distinct
    (fun q hq => s2Step52Add1_owned (List.mem_toFinset.mpr hq)) s2Step52Add1_borrowed
def s2Step53Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step53Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 808, 768]
def s2Step53Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 812, 769]
def s2Step53Add0Work : List Wire := [792, 800, 844, 845, 846, 847, 849, 851, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step53Add0_bounded : s2Step53Add0Work.toFinset⊆arenaWires := by
  have h : s2Step53Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step53Add0During : Arena := ⟨s2Step53Add0Arena.live∪s2Step53Add0Work.toFinset,Finset.union_subset s2Step53Add0Arena.bounded s2Step53Add0_bounded⟩
theorem s2Step53Add0_distinct : (787::811::790::(s2Step53Add0A++s2Step53Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53Add0_owned : (787::811::790::(s2Step53Add0A++s2Step53Add0B)).toFinset⊆s2Step53Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step53Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53Add0_apart : Disjoint s2Step53Add0Arena.live s2Step53Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step53Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53Add0_card : s2Step53Add0Arena.live.card=857 := by
  decide +kernel
theorem s2Step53Add0_borrowed : s2Step53Add0Arena.checkBorrow (hmrHybridCount s2Step53Add0Arena s2Step53Add0B.length) s2Step53Add0Work=some s2Step53Add0During := by
  have len : s2Step53Add0Work.length=hmrHybridCount s2Step53Add0Arena s2Step53Add0B.length := by
    rw [hmrHybridCount,s2Step53Add0_card]
    decide +kernel
  have nd : s2Step53Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step53Add0Arena s2Step53Add0During s2Step53Add0Work.toFinset s2Step53Add0_bounded s2Step53Add0_apart rfl
theorem s2Step53Add0_checked : compileHmrHybridCinLog s2Step53Add0Arena 811 787 790 s2Step53Add0A s2Step53Add0B s2Step53Add0Work=some s2Step53Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step53Add0Arena s2Step53Add0During 811 787 790 s2Step53Add0A s2Step53Add0B s2Step53Add0Work
    (by decide +kernel) (by decide +kernel) s2Step53Add0_distinct
    (fun q hq => s2Step53Add0_owned (List.mem_toFinset.mpr hq)) s2Step53Add0_borrowed
def s2Step53Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)),Finset.filter_subset _ _⟩
def s2Step53Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 770]
def s2Step53Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 807, 771]
def s2Step53Add1Work : List Wire := [792, 800, 844, 845, 846, 847, 849, 851, 865, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896]
theorem s2Step53Add1_bounded : s2Step53Add1Work.toFinset⊆arenaWires := by
  have h : s2Step53Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step53Add1During : Arena := ⟨s2Step53Add1Arena.live∪s2Step53Add1Work.toFinset,Finset.union_subset s2Step53Add1Arena.bounded s2Step53Add1_bounded⟩
theorem s2Step53Add1_distinct : (787::811::790::(s2Step53Add1A++s2Step53Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step53Add1_owned : (787::811::790::(s2Step53Add1A++s2Step53Add1B)).toFinset⊆s2Step53Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step53Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53Add1_apart : Disjoint s2Step53Add1Arena.live s2Step53Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step53Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<865)) rfl
  decide +kernel
theorem s2Step53Add1_card : s2Step53Add1Arena.live.card=857 := by
  decide +kernel
theorem s2Step53Add1_borrowed : s2Step53Add1Arena.checkBorrow (hmrHybridCount s2Step53Add1Arena s2Step53Add1B.length) s2Step53Add1Work=some s2Step53Add1During := by
  have len : s2Step53Add1Work.length=hmrHybridCount s2Step53Add1Arena s2Step53Add1B.length := by
    rw [hmrHybridCount,s2Step53Add1_card]
    decide +kernel
  have nd : s2Step53Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step53Add1Arena s2Step53Add1During s2Step53Add1Work.toFinset s2Step53Add1_bounded s2Step53Add1_apart rfl
theorem s2Step53Add1_checked : compileHmrHybridCinLog s2Step53Add1Arena 811 787 790 s2Step53Add1A s2Step53Add1B s2Step53Add1Work=some s2Step53Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step53Add1Arena s2Step53Add1During 811 787 790 s2Step53Add1A s2Step53Add1B s2Step53Add1Work
    (by decide +kernel) (by decide +kernel) s2Step53Add1_distinct
    (fun q hq => s2Step53Add1_owned (List.mem_toFinset.mpr hq)) s2Step53Add1_borrowed
def s2Step54Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step54Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 812, 768]
def s2Step54Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 808, 769]
def s2Step54Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step54Add0_bounded : s2Step54Add0Work.toFinset⊆arenaWires := by
  have h : s2Step54Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step54Add0During : Arena := ⟨s2Step54Add0Arena.live∪s2Step54Add0Work.toFinset,Finset.union_subset s2Step54Add0Arena.bounded s2Step54Add0_bounded⟩
theorem s2Step54Add0_distinct : (792::807::800::(s2Step54Add0A++s2Step54Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54Add0_owned : (792::807::800::(s2Step54Add0A++s2Step54Add0B)).toFinset⊆s2Step54Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step54Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54Add0_apart : Disjoint s2Step54Add0Arena.live s2Step54Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step54Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54Add0_card : s2Step54Add0Arena.live.card=860 := by
  decide +kernel
theorem s2Step54Add0_borrowed : s2Step54Add0Arena.checkBorrow (hmrHybridCount s2Step54Add0Arena s2Step54Add0B.length) s2Step54Add0Work=some s2Step54Add0During := by
  have len : s2Step54Add0Work.length=hmrHybridCount s2Step54Add0Arena s2Step54Add0B.length := by
    rw [hmrHybridCount,s2Step54Add0_card]
    decide +kernel
  have nd : s2Step54Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step54Add0Arena s2Step54Add0During s2Step54Add0Work.toFinset s2Step54Add0_bounded s2Step54Add0_apart rfl
theorem s2Step54Add0_checked : compileHmrHybridCinLog s2Step54Add0Arena 807 792 800 s2Step54Add0A s2Step54Add0B s2Step54Add0Work=some s2Step54Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step54Add0Arena s2Step54Add0During 807 792 800 s2Step54Add0A s2Step54Add0B s2Step54Add0Work
    (by decide +kernel) (by decide +kernel) s2Step54Add0_distinct
    (fun q hq => s2Step54Add0_owned (List.mem_toFinset.mpr hq)) s2Step54Add0_borrowed
def s2Step54Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step54Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 815, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790, 770]
def s2Step54Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 787, 771]
def s2Step54Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900]
theorem s2Step54Add1_bounded : s2Step54Add1Work.toFinset⊆arenaWires := by
  have h : s2Step54Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step54Add1During : Arena := ⟨s2Step54Add1Arena.live∪s2Step54Add1Work.toFinset,Finset.union_subset s2Step54Add1Arena.bounded s2Step54Add1_bounded⟩
theorem s2Step54Add1_distinct : (792::807::800::(s2Step54Add1A++s2Step54Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step54Add1_owned : (792::807::800::(s2Step54Add1A++s2Step54Add1B)).toFinset⊆s2Step54Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step54Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54Add1_apart : Disjoint s2Step54Add1Arena.live s2Step54Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step54Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step54Add1_card : s2Step54Add1Arena.live.card=860 := by
  decide +kernel
theorem s2Step54Add1_borrowed : s2Step54Add1Arena.checkBorrow (hmrHybridCount s2Step54Add1Arena s2Step54Add1B.length) s2Step54Add1Work=some s2Step54Add1During := by
  have len : s2Step54Add1Work.length=hmrHybridCount s2Step54Add1Arena s2Step54Add1B.length := by
    rw [hmrHybridCount,s2Step54Add1_card]
    decide +kernel
  have nd : s2Step54Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step54Add1Arena s2Step54Add1During s2Step54Add1Work.toFinset s2Step54Add1_bounded s2Step54Add1_apart rfl
theorem s2Step54Add1_checked : compileHmrHybridCinLog s2Step54Add1Arena 807 792 800 s2Step54Add1A s2Step54Add1B s2Step54Add1Work=some s2Step54Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step54Add1Arena s2Step54Add1During 807 792 800 s2Step54Add1A s2Step54Add1B s2Step54Add1Work
    (by decide +kernel) (by decide +kernel) s2Step54Add1_distinct
    (fun q hq => s2Step54Add1_owned (List.mem_toFinset.mpr hq)) s2Step54Add1_borrowed
def s2Step55Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step55Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 752, 808, 768]
def s2Step55Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 807, 812, 769]
def s2Step55Add0Work : List Wire := [846, 847, 849, 851, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step55Add0_bounded : s2Step55Add0Work.toFinset⊆arenaWires := by
  have h : s2Step55Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step55Add0During : Arena := ⟨s2Step55Add0Arena.live∪s2Step55Add0Work.toFinset,Finset.union_subset s2Step55Add0Arena.bounded s2Step55Add0_bounded⟩
theorem s2Step55Add0_distinct : (844::787::845::(s2Step55Add0A++s2Step55Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55Add0_owned : (844::787::845::(s2Step55Add0A++s2Step55Add0B)).toFinset⊆s2Step55Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step55Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55Add0_apart : Disjoint s2Step55Add0Arena.live s2Step55Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step55Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55Add0_card : s2Step55Add0Arena.live.card=862 := by
  decide +kernel
theorem s2Step55Add0_borrowed : s2Step55Add0Arena.checkBorrow (hmrHybridCount s2Step55Add0Arena s2Step55Add0B.length) s2Step55Add0Work=some s2Step55Add0During := by
  have len : s2Step55Add0Work.length=hmrHybridCount s2Step55Add0Arena s2Step55Add0B.length := by
    rw [hmrHybridCount,s2Step55Add0_card]
    decide +kernel
  have nd : s2Step55Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step55Add0Arena s2Step55Add0During s2Step55Add0Work.toFinset s2Step55Add0_bounded s2Step55Add0_apart rfl
theorem s2Step55Add0_checked : compileHmrHybridCinLog s2Step55Add0Arena 787 844 845 s2Step55Add0A s2Step55Add0B s2Step55Add0Work=some s2Step55Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step55Add0Arena s2Step55Add0During 787 844 845 s2Step55Add0A s2Step55Add0B s2Step55Add0Work
    (by decide +kernel) (by decide +kernel) s2Step55Add0_distinct
    (fun q hq => s2Step55Add0_owned (List.mem_toFinset.mpr hq)) s2Step55Add0_borrowed
def s2Step55Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)),Finset.filter_subset _ _⟩
def s2Step55Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 790, 800, 770]
def s2Step55Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 814, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 792, 771]
def s2Step55Add1Work : List Wire := [846, 847, 849, 851, 866, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903]
theorem s2Step55Add1_bounded : s2Step55Add1Work.toFinset⊆arenaWires := by
  have h : s2Step55Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step55Add1During : Arena := ⟨s2Step55Add1Arena.live∪s2Step55Add1Work.toFinset,Finset.union_subset s2Step55Add1Arena.bounded s2Step55Add1_bounded⟩
theorem s2Step55Add1_distinct : (844::787::845::(s2Step55Add1A++s2Step55Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step55Add1_owned : (844::787::845::(s2Step55Add1A++s2Step55Add1B)).toFinset⊆s2Step55Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step55Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55Add1_apart : Disjoint s2Step55Add1Arena.live s2Step55Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step55Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<866)) rfl
  decide +kernel
theorem s2Step55Add1_card : s2Step55Add1Arena.live.card=862 := by
  decide +kernel
theorem s2Step55Add1_borrowed : s2Step55Add1Arena.checkBorrow (hmrHybridCount s2Step55Add1Arena s2Step55Add1B.length) s2Step55Add1Work=some s2Step55Add1During := by
  have len : s2Step55Add1Work.length=hmrHybridCount s2Step55Add1Arena s2Step55Add1B.length := by
    rw [hmrHybridCount,s2Step55Add1_card]
    decide +kernel
  have nd : s2Step55Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step55Add1Arena s2Step55Add1During s2Step55Add1Work.toFinset s2Step55Add1_bounded s2Step55Add1_apart rfl
theorem s2Step55Add1_checked : compileHmrHybridCinLog s2Step55Add1Arena 787 844 845 s2Step55Add1A s2Step55Add1B s2Step55Add1Work=some s2Step55Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step55Add1Arena s2Step55Add1During 787 844 845 s2Step55Add1A s2Step55Add1B s2Step55Add1Work
    (by decide +kernel) (by decide +kernel) s2Step55Add1_distinct
    (fun q hq => s2Step55Add1_owned (List.mem_toFinset.mpr hq)) s2Step55Add1_borrowed
def s2Step56Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step56Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 790, 768]
def s2Step56Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 792, 769]
def s2Step56Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step56Add0_bounded : s2Step56Add0Work.toFinset⊆arenaWires := by
  have h : s2Step56Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step56Add0During : Arena := ⟨s2Step56Add0Arena.live∪s2Step56Add0Work.toFinset,Finset.union_subset s2Step56Add0Arena.bounded s2Step56Add0_bounded⟩
theorem s2Step56Add0_distinct : (807::814::812::(s2Step56Add0A++s2Step56Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56Add0_owned : (807::814::812::(s2Step56Add0A++s2Step56Add0B)).toFinset⊆s2Step56Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step56Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56Add0_apart : Disjoint s2Step56Add0Arena.live s2Step56Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step56Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56Add0_card : s2Step56Add0Arena.live.card=861 := by
  decide +kernel
theorem s2Step56Add0_borrowed : s2Step56Add0Arena.checkBorrow (hmrHybridCount s2Step56Add0Arena s2Step56Add0B.length) s2Step56Add0Work=some s2Step56Add0During := by
  have len : s2Step56Add0Work.length=hmrHybridCount s2Step56Add0Arena s2Step56Add0B.length := by
    rw [hmrHybridCount,s2Step56Add0_card]
    decide +kernel
  have nd : s2Step56Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step56Add0Arena s2Step56Add0During s2Step56Add0Work.toFinset s2Step56Add0_bounded s2Step56Add0_apart rfl
theorem s2Step56Add0_checked : compileHmrHybridCinLog s2Step56Add0Arena 814 807 812 s2Step56Add0A s2Step56Add0B s2Step56Add0Work=some s2Step56Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step56Add0Arena s2Step56Add0During 814 807 812 s2Step56Add0A s2Step56Add0B s2Step56Add0Work
    (by decide +kernel) (by decide +kernel) s2Step56Add0_distinct
    (fun q hq => s2Step56Add0_owned (List.mem_toFinset.mpr hq)) s2Step56Add0_borrowed
def s2Step56Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step56Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 817, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 770]
def s2Step56Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 800, 771]
def s2Step56Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902]
theorem s2Step56Add1_bounded : s2Step56Add1Work.toFinset⊆arenaWires := by
  have h : s2Step56Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step56Add1During : Arena := ⟨s2Step56Add1Arena.live∪s2Step56Add1Work.toFinset,Finset.union_subset s2Step56Add1Arena.bounded s2Step56Add1_bounded⟩
theorem s2Step56Add1_distinct : (807::814::812::(s2Step56Add1A++s2Step56Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step56Add1_owned : (807::814::812::(s2Step56Add1A++s2Step56Add1B)).toFinset⊆s2Step56Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step56Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56Add1_apart : Disjoint s2Step56Add1Arena.live s2Step56Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step56Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step56Add1_card : s2Step56Add1Arena.live.card=861 := by
  decide +kernel
theorem s2Step56Add1_borrowed : s2Step56Add1Arena.checkBorrow (hmrHybridCount s2Step56Add1Arena s2Step56Add1B.length) s2Step56Add1Work=some s2Step56Add1During := by
  have len : s2Step56Add1Work.length=hmrHybridCount s2Step56Add1Arena s2Step56Add1B.length := by
    rw [hmrHybridCount,s2Step56Add1_card]
    decide +kernel
  have nd : s2Step56Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step56Add1Arena s2Step56Add1During s2Step56Add1Work.toFinset s2Step56Add1_bounded s2Step56Add1_apart rfl
theorem s2Step56Add1_checked : compileHmrHybridCinLog s2Step56Add1Arena 814 807 812 s2Step56Add1A s2Step56Add1B s2Step56Add1Work=some s2Step56Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step56Add1Arena s2Step56Add1During 814 807 812 s2Step56Add1A s2Step56Add1B s2Step56Add1Work
    (by decide +kernel) (by decide +kernel) s2Step56Add1_distinct
    (fun q hq => s2Step56Add1_owned (List.mem_toFinset.mpr hq)) s2Step56Add1_borrowed
def s2Step57Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step57Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 751, 808, 768]
def s2Step57Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 814, 800, 769]
def s2Step57Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step57Add0_bounded : s2Step57Add0Work.toFinset⊆arenaWires := by
  have h : s2Step57Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step57Add0During : Arena := ⟨s2Step57Add0Arena.live∪s2Step57Add0Work.toFinset,Finset.union_subset s2Step57Add0Arena.bounded s2Step57Add0_bounded⟩
theorem s2Step57Add0_distinct : (807::817::812::(s2Step57Add0A++s2Step57Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57Add0_owned : (807::817::812::(s2Step57Add0A++s2Step57Add0B)).toFinset⊆s2Step57Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step57Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57Add0_apart : Disjoint s2Step57Add0Arena.live s2Step57Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step57Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57Add0_card : s2Step57Add0Arena.live.card=861 := by
  decide +kernel
theorem s2Step57Add0_borrowed : s2Step57Add0Arena.checkBorrow (hmrHybridCount s2Step57Add0Arena s2Step57Add0B.length) s2Step57Add0Work=some s2Step57Add0During := by
  have len : s2Step57Add0Work.length=hmrHybridCount s2Step57Add0Arena s2Step57Add0B.length := by
    rw [hmrHybridCount,s2Step57Add0_card]
    decide +kernel
  have nd : s2Step57Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step57Add0Arena s2Step57Add0During s2Step57Add0Work.toFinset s2Step57Add0_bounded s2Step57Add0_apart rfl
theorem s2Step57Add0_checked : compileHmrHybridCinLog s2Step57Add0Arena 817 807 812 s2Step57Add0A s2Step57Add0B s2Step57Add0Work=some s2Step57Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step57Add0Arena s2Step57Add0During 817 807 812 s2Step57Add0A s2Step57Add0B s2Step57Add0Work
    (by decide +kernel) (by decide +kernel) s2Step57Add0_distinct
    (fun q hq => s2Step57Add0_owned (List.mem_toFinset.mpr hq)) s2Step57Add0_borrowed
def s2Step57Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step57Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 820, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 792, 770]
def s2Step57Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 816, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 790, 771]
def s2Step57Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902]
theorem s2Step57Add1_bounded : s2Step57Add1Work.toFinset⊆arenaWires := by
  have h : s2Step57Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step57Add1During : Arena := ⟨s2Step57Add1Arena.live∪s2Step57Add1Work.toFinset,Finset.union_subset s2Step57Add1Arena.bounded s2Step57Add1_bounded⟩
theorem s2Step57Add1_distinct : (807::817::812::(s2Step57Add1A++s2Step57Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step57Add1_owned : (807::817::812::(s2Step57Add1A++s2Step57Add1B)).toFinset⊆s2Step57Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step57Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57Add1_apart : Disjoint s2Step57Add1Arena.live s2Step57Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step57Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step57Add1_card : s2Step57Add1Arena.live.card=861 := by
  decide +kernel
theorem s2Step57Add1_borrowed : s2Step57Add1Arena.checkBorrow (hmrHybridCount s2Step57Add1Arena s2Step57Add1B.length) s2Step57Add1Work=some s2Step57Add1During := by
  have len : s2Step57Add1Work.length=hmrHybridCount s2Step57Add1Arena s2Step57Add1B.length := by
    rw [hmrHybridCount,s2Step57Add1_card]
    decide +kernel
  have nd : s2Step57Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step57Add1Arena s2Step57Add1During s2Step57Add1Work.toFinset s2Step57Add1_bounded s2Step57Add1_apart rfl
theorem s2Step57Add1_checked : compileHmrHybridCinLog s2Step57Add1Arena 817 807 812 s2Step57Add1A s2Step57Add1B s2Step57Add1Work=some s2Step57Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step57Add1Arena s2Step57Add1During 817 807 812 s2Step57Add1A s2Step57Add1B s2Step57Add1Work
    (by decide +kernel) (by decide +kernel) s2Step57Add1_distinct
    (fun q hq => s2Step57Add1_owned (List.mem_toFinset.mpr hq)) s2Step57Add1_borrowed
def s2Step58Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step58Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 790, 768]
def s2Step58Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 817, 820, 769]
def s2Step58Add0Work : List Wire := [807, 812, 844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step58Add0_bounded : s2Step58Add0Work.toFinset⊆arenaWires := by
  have h : s2Step58Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step58Add0During : Arena := ⟨s2Step58Add0Arena.live∪s2Step58Add0Work.toFinset,Finset.union_subset s2Step58Add0Arena.bounded s2Step58Add0_bounded⟩
theorem s2Step58Add0_distinct : (814::816::800::(s2Step58Add0A++s2Step58Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58Add0_owned : (814::816::800::(s2Step58Add0A++s2Step58Add0B)).toFinset⊆s2Step58Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step58Add0Arena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58Add0_apart : Disjoint s2Step58Add0Arena.live s2Step58Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step58Add0Arena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58Add0_card : s2Step58Add0Arena.live.card=859 := by
  decide +kernel
theorem s2Step58Add0_borrowed : s2Step58Add0Arena.checkBorrow (hmrHybridCount s2Step58Add0Arena s2Step58Add0B.length) s2Step58Add0Work=some s2Step58Add0During := by
  have len : s2Step58Add0Work.length=hmrHybridCount s2Step58Add0Arena s2Step58Add0B.length := by
    rw [hmrHybridCount,s2Step58Add0_card]
    decide +kernel
  have nd : s2Step58Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step58Add0Arena s2Step58Add0During s2Step58Add0Work.toFinset s2Step58Add0_bounded s2Step58Add0_apart rfl
theorem s2Step58Add0_checked : compileHmrHybridCinLog s2Step58Add0Arena 816 814 800 s2Step58Add0A s2Step58Add0B s2Step58Add0Work=some s2Step58Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step58Add0Arena s2Step58Add0During 816 814 800 s2Step58Add0A s2Step58Add0B s2Step58Add0Work
    (by decide +kernel) (by decide +kernel) s2Step58Add0_distinct
    (fun q hq => s2Step58Add0_owned (List.mem_toFinset.mpr hq)) s2Step58Add0_borrowed
def s2Step58Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step58Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 770]
def s2Step58Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 792, 771]
def s2Step58Add1Work : List Wire := [807, 812, 844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900]
theorem s2Step58Add1_bounded : s2Step58Add1Work.toFinset⊆arenaWires := by
  have h : s2Step58Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step58Add1During : Arena := ⟨s2Step58Add1Arena.live∪s2Step58Add1Work.toFinset,Finset.union_subset s2Step58Add1Arena.bounded s2Step58Add1_bounded⟩
theorem s2Step58Add1_distinct : (814::816::800::(s2Step58Add1A++s2Step58Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step58Add1_owned : (814::816::800::(s2Step58Add1A++s2Step58Add1B)).toFinset⊆s2Step58Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step58Add1Arena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58Add1_apart : Disjoint s2Step58Add1Arena.live s2Step58Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step58Add1Arena (fun q => (0≤q ∧ q<807) ∨ (808≤q ∧ q<812) ∨ (813≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step58Add1_card : s2Step58Add1Arena.live.card=859 := by
  decide +kernel
theorem s2Step58Add1_borrowed : s2Step58Add1Arena.checkBorrow (hmrHybridCount s2Step58Add1Arena s2Step58Add1B.length) s2Step58Add1Work=some s2Step58Add1During := by
  have len : s2Step58Add1Work.length=hmrHybridCount s2Step58Add1Arena s2Step58Add1B.length := by
    rw [hmrHybridCount,s2Step58Add1_card]
    decide +kernel
  have nd : s2Step58Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step58Add1Arena s2Step58Add1During s2Step58Add1Work.toFinset s2Step58Add1_bounded s2Step58Add1_apart rfl
theorem s2Step58Add1_checked : compileHmrHybridCinLog s2Step58Add1Arena 816 814 800 s2Step58Add1A s2Step58Add1B s2Step58Add1Work=some s2Step58Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step58Add1Arena s2Step58Add1During 816 814 800 s2Step58Add1A s2Step58Add1B s2Step58Add1Work
    (by decide +kernel) (by decide +kernel) s2Step58Add1_distinct
    (fun q hq => s2Step58Add1_owned (List.mem_toFinset.mpr hq)) s2Step58Add1_borrowed
def s2Step59Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step59Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 820, 768]
def s2Step59Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 816, 817, 769]
def s2Step59Add0Work : List Wire := [844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step59Add0_bounded : s2Step59Add0Work.toFinset⊆arenaWires := by
  have h : s2Step59Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step59Add0During : Arena := ⟨s2Step59Add0Arena.live∪s2Step59Add0Work.toFinset,Finset.union_subset s2Step59Add0Arena.bounded s2Step59Add0_bounded⟩
theorem s2Step59Add0_distinct : (807::790::812::(s2Step59Add0A++s2Step59Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59Add0_owned : (807::790::812::(s2Step59Add0A++s2Step59Add0B)).toFinset⊆s2Step59Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step59Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59Add0_apart : Disjoint s2Step59Add0Arena.live s2Step59Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step59Add0Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59Add0_card : s2Step59Add0Arena.live.card=861 := by
  decide +kernel
theorem s2Step59Add0_borrowed : s2Step59Add0Arena.checkBorrow (hmrHybridCount s2Step59Add0Arena s2Step59Add0B.length) s2Step59Add0Work=some s2Step59Add0During := by
  have len : s2Step59Add0Work.length=hmrHybridCount s2Step59Add0Arena s2Step59Add0B.length := by
    rw [hmrHybridCount,s2Step59Add0_card]
    decide +kernel
  have nd : s2Step59Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step59Add0Arena s2Step59Add0During s2Step59Add0Work.toFinset s2Step59Add0_bounded s2Step59Add0_apart rfl
theorem s2Step59Add0_checked : compileHmrHybridCinLog s2Step59Add0Arena 790 807 812 s2Step59Add0A s2Step59Add0B s2Step59Add0Work=some s2Step59Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step59Add0Arena s2Step59Add0During 790 807 812 s2Step59Add0A s2Step59Add0B s2Step59Add0Work
    (by decide +kernel) (by decide +kernel) s2Step59Add0_distinct
    (fun q hq => s2Step59Add0_owned (List.mem_toFinset.mpr hq)) s2Step59Add0_borrowed
def s2Step59Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step59Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 770]
def s2Step59Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 814, 771]
def s2Step59Add1Work : List Wire := [844, 845, 846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903]
theorem s2Step59Add1_bounded : s2Step59Add1Work.toFinset⊆arenaWires := by
  have h : s2Step59Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step59Add1During : Arena := ⟨s2Step59Add1Arena.live∪s2Step59Add1Work.toFinset,Finset.union_subset s2Step59Add1Arena.bounded s2Step59Add1_bounded⟩
theorem s2Step59Add1_distinct : (807::790::812::(s2Step59Add1A++s2Step59Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step59Add1_owned : (807::790::812::(s2Step59Add1A++s2Step59Add1B)).toFinset⊆s2Step59Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step59Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59Add1_apart : Disjoint s2Step59Add1Arena.live s2Step59Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step59Add1Arena (fun q => (0≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step59Add1_card : s2Step59Add1Arena.live.card=861 := by
  decide +kernel
theorem s2Step59Add1_borrowed : s2Step59Add1Arena.checkBorrow (hmrHybridCount s2Step59Add1Arena s2Step59Add1B.length) s2Step59Add1Work=some s2Step59Add1During := by
  have len : s2Step59Add1Work.length=hmrHybridCount s2Step59Add1Arena s2Step59Add1B.length := by
    rw [hmrHybridCount,s2Step59Add1_card]
    decide +kernel
  have nd : s2Step59Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step59Add1Arena s2Step59Add1During s2Step59Add1Work.toFinset s2Step59Add1_bounded s2Step59Add1_apart rfl
theorem s2Step59Add1_checked : compileHmrHybridCinLog s2Step59Add1Arena 790 807 812 s2Step59Add1A s2Step59Add1B s2Step59Add1Work=some s2Step59Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step59Add1Arena s2Step59Add1During 790 807 812 s2Step59Add1A s2Step59Add1B s2Step59Add1Work
    (by decide +kernel) (by decide +kernel) s2Step59Add1_distinct
    (fun q hq => s2Step59Add1_owned (List.mem_toFinset.mpr hq)) s2Step59Add1_borrowed
def s2Step60Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step60Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 817, 768]
def s2Step60Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 790, 816, 769]
def s2Step60Add0Work : List Wire := [846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step60Add0_bounded : s2Step60Add0Work.toFinset⊆arenaWires := by
  have h : s2Step60Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step60Add0During : Arena := ⟨s2Step60Add0Arena.live∪s2Step60Add0Work.toFinset,Finset.union_subset s2Step60Add0Arena.bounded s2Step60Add0_bounded⟩
theorem s2Step60Add0_distinct : (844::820::845::(s2Step60Add0A++s2Step60Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60Add0_owned : (844::820::845::(s2Step60Add0A++s2Step60Add0B)).toFinset⊆s2Step60Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step60Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60Add0_apart : Disjoint s2Step60Add0Arena.live s2Step60Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step60Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60Add0_card : s2Step60Add0Arena.live.card=863 := by
  decide +kernel
theorem s2Step60Add0_borrowed : s2Step60Add0Arena.checkBorrow (hmrHybridCount s2Step60Add0Arena s2Step60Add0B.length) s2Step60Add0Work=some s2Step60Add0During := by
  have len : s2Step60Add0Work.length=hmrHybridCount s2Step60Add0Arena s2Step60Add0B.length := by
    rw [hmrHybridCount,s2Step60Add0_card]
    decide +kernel
  have nd : s2Step60Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step60Add0Arena s2Step60Add0During s2Step60Add0Work.toFinset s2Step60Add0_bounded s2Step60Add0_apart rfl
theorem s2Step60Add0_checked : compileHmrHybridCinLog s2Step60Add0Arena 820 844 845 s2Step60Add0A s2Step60Add0B s2Step60Add0Work=some s2Step60Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step60Add0Arena s2Step60Add0During 820 844 845 s2Step60Add0A s2Step60Add0B s2Step60Add0Work
    (by decide +kernel) (by decide +kernel) s2Step60Add0_distinct
    (fun q hq => s2Step60Add0_owned (List.mem_toFinset.mpr hq)) s2Step60Add0_borrowed
def s2Step60Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step60Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 822, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 770]
def s2Step60Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 771]
def s2Step60Add1Work : List Wire := [846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906]
theorem s2Step60Add1_bounded : s2Step60Add1Work.toFinset⊆arenaWires := by
  have h : s2Step60Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step60Add1During : Arena := ⟨s2Step60Add1Arena.live∪s2Step60Add1Work.toFinset,Finset.union_subset s2Step60Add1Arena.bounded s2Step60Add1_bounded⟩
theorem s2Step60Add1_distinct : (844::820::845::(s2Step60Add1A++s2Step60Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step60Add1_owned : (844::820::845::(s2Step60Add1A++s2Step60Add1B)).toFinset⊆s2Step60Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step60Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60Add1_apart : Disjoint s2Step60Add1Arena.live s2Step60Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step60Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step60Add1_card : s2Step60Add1Arena.live.card=863 := by
  decide +kernel
theorem s2Step60Add1_borrowed : s2Step60Add1Arena.checkBorrow (hmrHybridCount s2Step60Add1Arena s2Step60Add1B.length) s2Step60Add1Work=some s2Step60Add1During := by
  have len : s2Step60Add1Work.length=hmrHybridCount s2Step60Add1Arena s2Step60Add1B.length := by
    rw [hmrHybridCount,s2Step60Add1_card]
    decide +kernel
  have nd : s2Step60Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step60Add1Arena s2Step60Add1During s2Step60Add1Work.toFinset s2Step60Add1_bounded s2Step60Add1_apart rfl
theorem s2Step60Add1_checked : compileHmrHybridCinLog s2Step60Add1Arena 820 844 845 s2Step60Add1A s2Step60Add1B s2Step60Add1Work=some s2Step60Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step60Add1Arena s2Step60Add1During 820 844 845 s2Step60Add1A s2Step60Add1B s2Step60Add1Work
    (by decide +kernel) (by decide +kernel) s2Step60Add1_distinct
    (fun q hq => s2Step60Add1_owned (List.mem_toFinset.mpr hq)) s2Step60Add1_borrowed
def s2Step61Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step61Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 750, 816, 768]
def s2Step61Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 820, 814, 790, 769]
def s2Step61Add0Work : List Wire := [849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step61Add0_bounded : s2Step61Add0Work.toFinset⊆arenaWires := by
  have h : s2Step61Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step61Add0During : Arena := ⟨s2Step61Add0Arena.live∪s2Step61Add0Work.toFinset,Finset.union_subset s2Step61Add0Arena.bounded s2Step61Add0_bounded⟩
theorem s2Step61Add0_distinct : (846::817::847::(s2Step61Add0A++s2Step61Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61Add0_owned : (846::817::847::(s2Step61Add0A++s2Step61Add0B)).toFinset⊆s2Step61Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step61Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61Add0_apart : Disjoint s2Step61Add0Arena.live s2Step61Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step61Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61Add0_card : s2Step61Add0Arena.live.card=865 := by
  decide +kernel
theorem s2Step61Add0_borrowed : s2Step61Add0Arena.checkBorrow (hmrHybridCount s2Step61Add0Arena s2Step61Add0B.length) s2Step61Add0Work=some s2Step61Add0During := by
  have len : s2Step61Add0Work.length=hmrHybridCount s2Step61Add0Arena s2Step61Add0B.length := by
    rw [hmrHybridCount,s2Step61Add0_card]
    decide +kernel
  have nd : s2Step61Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step61Add0Arena s2Step61Add0During s2Step61Add0Work.toFinset s2Step61Add0_bounded s2Step61Add0_apart rfl
theorem s2Step61Add0_checked : compileHmrHybridCinLog s2Step61Add0Arena 817 846 847 s2Step61Add0A s2Step61Add0B s2Step61Add0Work=some s2Step61Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step61Add0Arena s2Step61Add0During 817 846 847 s2Step61Add0A s2Step61Add0B s2Step61Add0Work
    (by decide +kernel) (by decide +kernel) s2Step61Add0_distinct
    (fun q hq => s2Step61Add0_owned (List.mem_toFinset.mpr hq)) s2Step61Add0_borrowed
def s2Step61Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step61Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 845, 770]
def s2Step61Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 819, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 822, 844, 771]
def s2Step61Add1Work : List Wire := [849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909]
theorem s2Step61Add1_bounded : s2Step61Add1Work.toFinset⊆arenaWires := by
  have h : s2Step61Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step61Add1During : Arena := ⟨s2Step61Add1Arena.live∪s2Step61Add1Work.toFinset,Finset.union_subset s2Step61Add1Arena.bounded s2Step61Add1_bounded⟩
theorem s2Step61Add1_distinct : (846::817::847::(s2Step61Add1A++s2Step61Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step61Add1_owned : (846::817::847::(s2Step61Add1A++s2Step61Add1B)).toFinset⊆s2Step61Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step61Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61Add1_apart : Disjoint s2Step61Add1Arena.live s2Step61Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step61Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step61Add1_card : s2Step61Add1Arena.live.card=865 := by
  decide +kernel
theorem s2Step61Add1_borrowed : s2Step61Add1Arena.checkBorrow (hmrHybridCount s2Step61Add1Arena s2Step61Add1B.length) s2Step61Add1Work=some s2Step61Add1During := by
  have len : s2Step61Add1Work.length=hmrHybridCount s2Step61Add1Arena s2Step61Add1B.length := by
    rw [hmrHybridCount,s2Step61Add1_card]
    decide +kernel
  have nd : s2Step61Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step61Add1Arena s2Step61Add1During s2Step61Add1Work.toFinset s2Step61Add1_bounded s2Step61Add1_apart rfl
theorem s2Step61Add1_checked : compileHmrHybridCinLog s2Step61Add1Arena 817 846 847 s2Step61Add1A s2Step61Add1B s2Step61Add1Work=some s2Step61Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step61Add1Arena s2Step61Add1During 817 846 847 s2Step61Add1A s2Step61Add1B s2Step61Add1Work
    (by decide +kernel) (by decide +kernel) s2Step61Add1_distinct
    (fun q hq => s2Step61Add1_owned (List.mem_toFinset.mpr hq)) s2Step61Add1_borrowed
def s2Step62Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step62Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 749, 845, 768]
def s2Step62Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 817, 844, 769]
def s2Step62Add0Work : List Wire := [846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step62Add0_bounded : s2Step62Add0Work.toFinset⊆arenaWires := by
  have h : s2Step62Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step62Add0During : Arena := ⟨s2Step62Add0Arena.live∪s2Step62Add0Work.toFinset,Finset.union_subset s2Step62Add0Arena.bounded s2Step62Add0_bounded⟩
theorem s2Step62Add0_distinct : (814::822::790::(s2Step62Add0A++s2Step62Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62Add0_owned : (814::822::790::(s2Step62Add0A++s2Step62Add0B)).toFinset⊆s2Step62Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step62Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62Add0_apart : Disjoint s2Step62Add0Arena.live s2Step62Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step62Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62Add0_card : s2Step62Add0Arena.live.card=863 := by
  decide +kernel
theorem s2Step62Add0_borrowed : s2Step62Add0Arena.checkBorrow (hmrHybridCount s2Step62Add0Arena s2Step62Add0B.length) s2Step62Add0Work=some s2Step62Add0During := by
  have len : s2Step62Add0Work.length=hmrHybridCount s2Step62Add0Arena s2Step62Add0B.length := by
    rw [hmrHybridCount,s2Step62Add0_card]
    decide +kernel
  have nd : s2Step62Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step62Add0Arena s2Step62Add0During s2Step62Add0Work.toFinset s2Step62Add0_bounded s2Step62Add0_apart rfl
theorem s2Step62Add0_checked : compileHmrHybridCinLog s2Step62Add0Arena 822 814 790 s2Step62Add0A s2Step62Add0B s2Step62Add0Work=some s2Step62Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step62Add0Arena s2Step62Add0During 822 814 790 s2Step62Add0A s2Step62Add0B s2Step62Add0Work
    (by decide +kernel) (by decide +kernel) s2Step62Add0_distinct
    (fun q hq => s2Step62Add0_owned (List.mem_toFinset.mpr hq)) s2Step62Add0_borrowed
def s2Step62Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)),Finset.filter_subset _ _⟩
def s2Step62Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 770]
def s2Step62Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 821, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 816, 771]
def s2Step62Add1Work : List Wire := [846, 847, 849, 851, 867, 868, 869, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907]
theorem s2Step62Add1_bounded : s2Step62Add1Work.toFinset⊆arenaWires := by
  have h : s2Step62Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step62Add1During : Arena := ⟨s2Step62Add1Arena.live∪s2Step62Add1Work.toFinset,Finset.union_subset s2Step62Add1Arena.bounded s2Step62Add1_bounded⟩
theorem s2Step62Add1_distinct : (814::822::790::(s2Step62Add1A++s2Step62Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step62Add1_owned : (814::822::790::(s2Step62Add1A++s2Step62Add1B)).toFinset⊆s2Step62Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step62Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62Add1_apart : Disjoint s2Step62Add1Arena.live s2Step62Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step62Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867)) rfl
  decide +kernel
theorem s2Step62Add1_card : s2Step62Add1Arena.live.card=863 := by
  decide +kernel
theorem s2Step62Add1_borrowed : s2Step62Add1Arena.checkBorrow (hmrHybridCount s2Step62Add1Arena s2Step62Add1B.length) s2Step62Add1Work=some s2Step62Add1During := by
  have len : s2Step62Add1Work.length=hmrHybridCount s2Step62Add1Arena s2Step62Add1B.length := by
    rw [hmrHybridCount,s2Step62Add1_card]
    decide +kernel
  have nd : s2Step62Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step62Add1Arena s2Step62Add1During s2Step62Add1Work.toFinset s2Step62Add1_bounded s2Step62Add1_apart rfl
theorem s2Step62Add1_checked : compileHmrHybridCinLog s2Step62Add1Arena 822 814 790 s2Step62Add1A s2Step62Add1B s2Step62Add1Work=some s2Step62Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step62Add1Arena s2Step62Add1During 822 814 790 s2Step62Add1A s2Step62Add1B s2Step62Add1Work
    (by decide +kernel) (by decide +kernel) s2Step62Add1_distinct
    (fun q hq => s2Step62Add1_owned (List.mem_toFinset.mpr hq)) s2Step62Add1_borrowed
def s2Step63Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)),Finset.filter_subset _ _⟩
def s2Step63Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 746, 747, 748, 845, 768]
def s2Step63Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 816, 769]
def s2Step63Add0Work : List Wire := [846, 847, 849, 851, 867, 868, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]
theorem s2Step63Add0_bounded : s2Step63Add0Work.toFinset⊆arenaWires := by
  have h : s2Step63Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step63Add0During : Arena := ⟨s2Step63Add0Arena.live∪s2Step63Add0Work.toFinset,Finset.union_subset s2Step63Add0Arena.bounded s2Step63Add0_bounded⟩
theorem s2Step63Add0_distinct : (814::821::790::(s2Step63Add0A++s2Step63Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63Add0_owned : (814::821::790::(s2Step63Add0A++s2Step63Add0B)).toFinset⊆s2Step63Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step63Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63Add0_apart : Disjoint s2Step63Add0Arena.live s2Step63Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step63Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63Add0_card : s2Step63Add0Arena.live.card=864 := by
  decide +kernel
theorem s2Step63Add0_borrowed : s2Step63Add0Arena.checkBorrow (hmrHybridCount s2Step63Add0Arena s2Step63Add0B.length) s2Step63Add0Work=some s2Step63Add0During := by
  have len : s2Step63Add0Work.length=hmrHybridCount s2Step63Add0Arena s2Step63Add0B.length := by
    rw [hmrHybridCount,s2Step63Add0_card]
    decide +kernel
  have nd : s2Step63Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step63Add0Arena s2Step63Add0During s2Step63Add0Work.toFinset s2Step63Add0_bounded s2Step63Add0_apart rfl
theorem s2Step63Add0_checked : compileHmrHybridCinLog s2Step63Add0Arena 821 814 790 s2Step63Add0A s2Step63Add0B s2Step63Add0Work=some s2Step63Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step63Add0Arena s2Step63Add0During 821 814 790 s2Step63Add0A s2Step63Add0B s2Step63Add0Work
    (by decide +kernel) (by decide +kernel) s2Step63Add0_distinct
    (fun q hq => s2Step63Add0_owned (List.mem_toFinset.mpr hq)) s2Step63Add0_borrowed
def s2Step63Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)),Finset.filter_subset _ _⟩
def s2Step63Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 825, 827, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 844, 770]
def s2Step63Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 824, 826, 829, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 822, 817, 771]
def s2Step63Add1Work : List Wire := [846, 847, 849, 851, 867, 868, 870, 871, 872, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909]
theorem s2Step63Add1_bounded : s2Step63Add1Work.toFinset⊆arenaWires := by
  have h : s2Step63Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt
def s2Step63Add1During : Arena := ⟨s2Step63Add1Arena.live∪s2Step63Add1Work.toFinset,Finset.union_subset s2Step63Add1Arena.bounded s2Step63Add1_bounded⟩
theorem s2Step63Add1_distinct : (814::821::790::(s2Step63Add1A++s2Step63Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel
theorem s2Step63Add1_owned : (814::821::790::(s2Step63Add1A++s2Step63Add1B)).toFinset⊆s2Step63Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step63Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63Add1_apart : Disjoint s2Step63Add1Arena.live s2Step63Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step63Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (869≤q ∧ q<870)) rfl
  decide +kernel
theorem s2Step63Add1_card : s2Step63Add1Arena.live.card=864 := by
  decide +kernel
theorem s2Step63Add1_borrowed : s2Step63Add1Arena.checkBorrow (hmrHybridCount s2Step63Add1Arena s2Step63Add1B.length) s2Step63Add1Work=some s2Step63Add1During := by
  have len : s2Step63Add1Work.length=hmrHybridCount s2Step63Add1Arena s2Step63Add1B.length := by
    rw [hmrHybridCount,s2Step63Add1_card]
    decide +kernel
  have nd : s2Step63Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step63Add1Arena s2Step63Add1During s2Step63Add1Work.toFinset s2Step63Add1_bounded s2Step63Add1_apart rfl
theorem s2Step63Add1_checked : compileHmrHybridCinLog s2Step63Add1Arena 821 814 790 s2Step63Add1A s2Step63Add1B s2Step63Add1Work=some s2Step63Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step63Add1Arena s2Step63Add1During 821 814 790 s2Step63Add1A s2Step63Add1B s2Step63Add1Work
    (by decide +kernel) (by decide +kernel) s2Step63Add1_distinct
    (fun q hq => s2Step63Add1_owned (List.mem_toFinset.mpr hq)) s2Step63Add1_borrowed

end ECDSAAdd.Arithmetic.Paper935
