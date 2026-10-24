import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep98
import ECDSAAdd.Arithmetic.Paper935.Arena
import ECDSAAdd.Arithmetic.Paper935.HmrArenaFiniteChecks
import ECDSAAdd.Arithmetic.Paper935.HmrArithmeticComposition
import ECDSAAdd.Arithmetic.Paper935.HmrArmedControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrBankOrder
import ECDSAAdd.Arithmetic.Paper935.HmrControlCheckParts
import ECDSAAdd.Arithmetic.Paper935.HmrControlDecidable
import ECDSAAdd.Arithmetic.Paper935.HmrEarlyControlCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrFrontComposition
import ECDSAAdd.Arithmetic.Paper935.HmrHybridF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedArmedCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBank
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedBorrow
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedCounter
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedEarlyCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedF4Compiler
import ECDSAAdd.Arithmetic.Paper935.HmrLoggedFront
import ECDSAAdd.Arithmetic.Paper935.HmrRepackComposition
import ECDSAAdd.Arithmetic.Paper935.HmrResizeComposition
import ECDSAAdd.Arithmetic.Paper935.HmrRowsSuffix
import ECDSAAdd.Arithmetic.Paper935.HmrSortedLayout
import ECDSAAdd.Arithmetic.Paper935.HmrSourceFront
import ECDSAAdd.Arithmetic.Paper935.HmrSourceStepCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkCompiler
import ECDSAAdd.Arithmetic.Paper935.HmrSourceWalkComposition
import ECDSAAdd.Arithmetic.Paper935.HmrStepComposition
import ECDSAAdd.Arithmetic.Paper935.RowWindowResize
import ECDSAAdd.Arithmetic.Paper935.WindowAllocator
import ECDSAAdd.Arithmetic.Paper935.WindowBank
import ECDSAAdd.Arithmetic.Paper935.WindowRows
import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2WalkLogs

namespace ECDSAAdd.Arithmetic.Paper935
private local instance privateStepDisjoint (xs ys : List Wire) : Decidable (List.Disjoint xs ys) :=
  decidable_of_iff (∀ q ∈ xs, q ∉ ys) List.disjoint_left.symm

private def s2Step100CompleteMoves : List (Wire × Wire) := []

private def s2Step100EarlyControlLog : HmrEarlyControlLog := ⟨[804, 799, 851, 785, 793],[781],[849],[806, 802, 867, 877, 878, 879],[880]⟩

private def s2Step100FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [781], [], [786, 801, 804]],[[849], [793], [799], [785]],[[], [], [], []]⟩,[794],[846],[806],[802],[867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 802, 867, 877]⟩

private def s2Step100CompleteLog : HmrEarlyStepLog := ⟨s2Step100FrontLog,s2Step100CompleteMoves,s2Step100EarlyControlLog⟩

private def s2Step100ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730],768⟩

private def s2Step100ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩

private def s2Step100ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩

private def s2Step100ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801],771⟩

private def s2Step100FrontOut : WindowBank := ⟨s2Step100ExitFOut,s2Step100ExitGOut,s2Step100ExitFvOut,s2Step100ExitGvOut⟩

private def s2Step100CompleteOut : WindowBank := s2Step100FrontOut.repacked s2Step100CompleteMoves

private def s2Step100EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step100EarlyControlPositiveArena,[781],s2Step100EarlyControlEqualityArena,[849],⟨⟨794,false⟩,[⟨⟨781,false⟩,849⟩]⟩⟩

private def s2Step100EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step100EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<880)),Finset.filter_subset _ _⟩

private def s2Step100EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step100EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step100EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step100EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,804⟩,⟨⟨774,false⟩,799⟩,⟨⟨775,false⟩,851⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,793⟩]⟩

private def s2Step100EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step100EarlyControlZeroArena,s2Step100EarlyControlZeroPlan,s2Step100EarlyControlClassPlan,s2Step100EarlyControlFlagArena,s2Step100EarlyControlFittedArena,s2Step100EarlyControlHistoryArena,s2Step100EarlyControlSigmaArena,s2Step100EarlyControlOutputArena,s2Step100EarlyControlLog⟩

private def s2Step100CounterWork : List Wire := [806, 802, 867, 877]

private theorem s2Step100Counter_bounded : s2Step100CounterWork.toFinset⊆arenaWires := by norm_num [s2Step100CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step100HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100CounterDuring : Arena := ⟨s2Step100HeadFvAfter.live∪s2Step100CounterWork.toFinset,Finset.union_subset s2Step100HeadFvAfter.bounded s2Step100Counter_bounded⟩

private def s2Step100EntryFFresh : List Wire := []

private def s2Step100EntryFvFresh : List Wire := []

private def s2Step100EntryGFresh : List Wire := [781]

private def s2Step100EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100EntryGvFresh : List Wire := [786, 801, 804]

private def s2Step100ExitFExtra : List Wire := [793]

private def s2Step100ExitFvExtra : List Wire := [851, 785]

private def s2Step100ExitGExtra : List Wire := [781, 849]

private def s2Step100ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100ExitGvExtra : List Wire := [804, 799]

private def s2Step100Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100Add0Work : List Wire := [867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step100Add0_bounded : s2Step100Add0Work.toFinset⊆arenaWires := by
  have h : s2Step100Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step100Add0During : Arena := ⟨s2Step100Add0Arena.live∪s2Step100Add0Work.toFinset,Finset.union_subset s2Step100Add0Arena.bounded s2Step100Add0_bounded⟩

private def s2Step100Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100Add1Work : List Wire := [867, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step100Add1_bounded : s2Step100Add1Work.toFinset⊆arenaWires := by
  have h : s2Step100Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step100Add1During : Arena := ⟨s2Step100Add1Arena.live∪s2Step100Add1Work.toFinset,Finset.union_subset s2Step100Add1Arena.bounded s2Step100Add1_bounded⟩

private def s2Step100F4FlagArena : Arena := ⟨s2Step100HeadFvAfter.live∪{806},Finset.union_subset s2Step100HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step100F4Plan : HmrHybridF4Plan := ⟨s2Step100F4FlagArena,[806],s2Step100Add0Arena,[802],s2Step100Add0During,s2Step100Add0Work,s2Step100Add1During,s2Step100Add1Work⟩

private def s2Step100HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 793],768⟩

private def s2Step100HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851, 785],770⟩

private def s2Step100HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 781, 849],769⟩

private def s2Step100HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 799],771⟩

private def s2Step100FrontHead : WindowBank := ⟨s2Step100HeadFOut,s2Step100HeadGOut,s2Step100HeadFvOut,s2Step100HeadGvOut⟩

private def s2Step100EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730],768⟩

private def s2Step100EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851],770⟩

private def s2Step100EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 781],769⟩

private def s2Step100EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804],771⟩

private def s2Step100FrontPair : WindowBank := ⟨s2Step100EntryFOut,s2Step100EntryGOut,s2Step100EntryFvOut,s2Step100EntryGvOut⟩

private def s2Step100FrontSigmaArena : Arena := ⟨s2Step100EntryGvAfter.live∪{794},Finset.union_subset s2Step100EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step100HeadFFresh : List Wire := [793]

private def s2Step100HeadFvFresh : List Wire := [785]

private def s2Step100HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100HeadGFresh : List Wire := [849]

private def s2Step100HeadGvFresh : List Wire := [799]

private def s2Step100FrontPlan : HmrSourceFront := ⟨s2Step100EntryGvAfter,s2Step100FrontPair,(growRow 768 s2Step100EntryFFresh ++ (growRow 769 s2Step100EntryGFresh ++ (growRow 770 s2Step100EntryFvFresh ++ (growRow 771 s2Step100EntryGvFresh ++ [])))),s2Step100FrontSigmaArena,[794],s2Step100HeadGBefore,[846],
  s2Step100HeadFvAfter,s2Step100FrontHead,(growRow 769 s2Step100HeadGFresh ++ (growRow 768 s2Step100HeadFFresh ++ (growRow 771 s2Step100HeadGvFresh ++ (growRow 770 s2Step100HeadFvFresh ++ [])))),s2Step100F4Plan,s2Step100CounterDuring,s2Step100CounterWork,s2Step100ExitGvAfter,s2Step100FrontOut,(shrinkRow 769 s2Step100ExitGExtra ++ (shrinkRow 768 s2Step100ExitFExtra ++ (shrinkRow 770 s2Step100ExitFvExtra ++ (shrinkRow 771 s2Step100ExitGvExtra ++ []))))⟩

private def s2Step100CompletePlan : HmrEarlyStepPlan := ⟨s2Step100FrontPlan,s2Step100EarlyControlArena,s2Step100EarlyControlPlan,s2Step100CompleteMoves⟩

private theorem s2Step100Complete_apart : List.Disjoint (s2Step100CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [794, 846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] := by
  have nd : ((s2Step100CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[794, 846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step100Complete_owned : (s2Step100CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step100EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step100EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100Complete_repack : s2Step100ExitGvAfter.checkRepack s2Step100CompleteMoves=some s2Step100EarlyControlArena := by rfl

private theorem s2Step100EarlyControl_branchOwned : ([846] : List Wire).toFinset⊆s2Step100EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step100EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step100EarlyControl_branch : compileHmrBranchRetirement s2Step100EarlyControlSigmaArena 846=some s2Step100EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step100EarlyControl_branchOwned
  · ext q
    simp [s2Step100EarlyControlOutputArena,s2Step100EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step100EarlyControl_classEqualityBorrow : s2Step100EarlyControlPositiveArena.checkBorrow (([794, 781] : List Wire).length-1) s2Step100EarlyControlLog.classWork=some s2Step100EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step100EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step100EarlyControlEqualityArena,s2Step100EarlyControlPositiveArena,s2Step100EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step100EarlyControl_classEqualityOwned : ([794, 781] : List Wire).toFinset⊆s2Step100EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step100EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100EarlyControl_classEquality : compileHmrEqualityLog s2Step100EarlyControlPositiveArena [794, 781] 0 s2Step100EarlyControlLog.classWork=some (s2Step100EarlyControlEqualityArena,s2Step100EarlyControlLog.classWork,s2Step100EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step100EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step100EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step100EarlyControl_classOwned : ([777, 793, 794] : List Wire).toFinset⊆s2Step100EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step100EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100EarlyControl_positiveBorrow : s2Step100EarlyControlZeroArena.checkBorrow (1) s2Step100EarlyControlLog.positiveWork=some s2Step100EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step100EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step100EarlyControlPositiveArena,s2Step100EarlyControlZeroArena,s2Step100EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step100EarlyControl_class : compileHmrSourceClassLog s2Step100EarlyControlZeroArena false 777 s2Step100EarlyControlZeroPlan.top 0 794 s2Step100EarlyControlLog.positiveWork s2Step100EarlyControlLog.classWork=some s2Step100EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step100EarlyControlClassPlan s2Step100EarlyControlZeroArena false 777 s2Step100EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s2Step100EarlyControl_classOwned
  · exact s2Step100EarlyControl_positiveBorrow
  · exact s2Step100EarlyControl_classEquality

private theorem s2Step100EarlyControl_entryRecordOwned : ([846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step100EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step100EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s2Step100EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step100EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100EarlyControl_fitBorrow : s2Step100EarlyControlFlagArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step100EarlyControlLog.recordFresh=some s2Step100EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step100EarlyControlFlagArena (fun q => (0≤q ∧ q<880)) rfl
      decide +kernel
    · ext q
      simp [s2Step100EarlyControlFittedArena,s2Step100EarlyControlFlagArena,s2Step100EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step100EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step100EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step100EarlyControlFlagArena (fun q => (0≤q ∧ q<880)) rfl
  decide +kernel

private theorem s2Step100EarlyControl_fit : compileHmrRecordGrowLog s2Step100EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 35 s2Step100EarlyControlLog.recordFresh=some s2Step100EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step100EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step100EarlyControl_fitBorrow

private theorem s2Step100EarlyControl_flagsBorrow : s2Step100EarlyControlEqualityArena.checkBorrow (6) s2Step100EarlyControlLog.flagWork=some s2Step100EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step100EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step100EarlyControlFlagArena,s2Step100EarlyControlEqualityArena,s2Step100EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step100EarlyControl_flagsOwned : ([849, 253, 252, 251] : List Wire).toFinset⊆s2Step100EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step100EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100EarlyControl_flags : compileHmrFlagsLog s2Step100EarlyControlClassPlan.equalityArena s2Step100EarlyControlClassPlan.equality.top 253 252 251 s2Step100EarlyControlLog.flagWork=some s2Step100EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step100EarlyControl_flagsOwned⟩
  · exact s2Step100EarlyControl_flagsBorrow

private theorem s2Step100EarlyControl_historyBorrow : s2Step100EarlyControlArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step100EarlyControlLog.recordFresh=some s2Step100EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step100EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step100EarlyControlHistoryArena,s2Step100EarlyControlArena,s2Step100EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step100EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step100EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step100EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100EarlyControl_history : compileHmrRecordGrowLog s2Step100EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 35 s2Step100EarlyControlLog.recordFresh=some s2Step100EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step100EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step100EarlyControl_historyBorrow

private theorem s2Step100EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s2Step100EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step100EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step100EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s2Step100EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step100EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step100EarlyControl_sigmaRelease : s2Step100EarlyControlHistoryArena.release {794} (fun _ => false)=some s2Step100EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step100EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step100EarlyControlSigmaArena,s2Step100EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step100EarlyControl_sigma : compileHmrSigmaDropLog s2Step100EarlyControlHistoryArena false 0 0 254 794 []=some s2Step100EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step100EarlyControl_sigmaOwned⟩
  · exact s2Step100EarlyControl_sigmaRelease

private theorem s2Step100EarlyControl_zeroBorrow : s2Step100EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step100EarlyControlLog.zeroWork=some s2Step100EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step100EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step100EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step100EarlyControlZeroArena,s2Step100EarlyControlArena,s2Step100EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step100EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step100EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step100EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100EarlyControl_zero : compileHmrEqualityLog s2Step100EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step100EarlyControlLog.zeroWork=some (s2Step100EarlyControlZeroArena,s2Step100EarlyControlLog.zeroWork,s2Step100EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step100EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step100EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step100EarlyControl_logged : s2Step100EarlyControlPlan.Logged s2Step100EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 794 254 253 252 251 846 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step100EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step100EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step100EarlyControl_zero
  · exact s2Step100EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step100EarlyControl_flags
  · exact s2Step100EarlyControl_fit
  · exact s2Step100EarlyControl_history
  · exact s2Step100EarlyControl_sigma
  · exact s2Step100EarlyControl_branch

private theorem s2Step100EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step100EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 794 254 253 252 251 846 35 s2Step100EarlyControlLog=some s2Step100EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step100EarlyControlPlan s2Step100EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 794 254 253 252 251 846 35 s2Step100EarlyControl_logged

private def s2Step100EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730],768⟩

private def s2Step100EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851],770⟩

private def s2Step100EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩

private def s2Step100EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791],771⟩

private def s2Step100FrontBank : WindowBank := ⟨s2Step100EntryFRow,s2Step100EntryGRow,s2Step100EntryFvRow,s2Step100EntryGvRow⟩

private def s2Step100Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 793, 768]

private def s2Step100Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 781, 849, 769]

private def s2Step100Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851, 785, 770]

private def s2Step100Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 799, 771]

private theorem s2Step100Counter_apart : Disjoint s2Step100HeadFvAfter.live s2Step100CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step100HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100Counter_borrowed : s2Step100HeadFvAfter.checkBorrow 4 s2Step100CounterWork=some s2Step100CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step100HeadFvAfter s2Step100CounterDuring s2Step100CounterWork.toFinset s2Step100Counter_bounded s2Step100Counter_apart rfl

private theorem s2Step100Counter_owned : (794::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step100HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step100HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100Counter_checked : compileHmrCounterStepLog s2Step100HeadFvAfter true 794 [772, 773, 774, 775, 776, 777] s2Step100CounterWork=some s2Step100CounterDuring := by
  have owned : ∀q∈794::[772, 773, 774, 775, 776, 777],q∈s2Step100HeadFvAfter.live := fun q hq => s2Step100Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step100Counter_borrowed

private def s2Step100EntryFAfter : Arena := s2Step100EntryFBefore

private theorem s2Step100EntryBank_incomingDistinct : ([s2Step100EntryFRow,s2Step100EntryGRow,s2Step100EntryFvRow,s2Step100EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100EntryF_Incoming : rowsOwned s2Step100EntryFBefore [s2Step100EntryFRow,s2Step100EntryGRow,s2Step100EntryFvRow,s2Step100EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step100EntryFRow,s2Step100EntryGRow,s2Step100EntryFvRow,s2Step100EntryGvRow] 0 s2Step100EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step100EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100EntryBank_outgoingOwned : rowsOwned s2Step100EntryGvAfter [s2Step100EntryFOut,s2Step100EntryGOut,s2Step100EntryFvOut,s2Step100EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step100EntryGvAfter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100EntryF_Outgoing : rowsOwned s2Step100EntryGvAfter [s2Step100EntryFOut,s2Step100EntryGOut,s2Step100EntryFvOut,s2Step100EntryGvOut] :=
  hmrRows_owned_drop s2Step100EntryGvAfter [s2Step100EntryFOut,s2Step100EntryGOut,s2Step100EntryFvOut,s2Step100EntryGvOut] 0 s2Step100EntryBank_outgoingOwned

private theorem s2Step100EntryF_distinct : (s2Step100EntryFRow.sign::s2Step100EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100EntryF_owned : (s2Step100EntryFRow.sign::s2Step100EntryFRow.payload).toFinset⊆s2Step100EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step100EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100EntryF_reserved : s2Step100EntryFBefore.reserve s2Step100EntryFFresh.toFinset=some s2Step100EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step100EntryFFresh,arenaWires]
  · norm_num [s2Step100EntryFBefore,s2Step100EntryFFresh,arenaWires]
  · simp only [s2Step100EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step100EntryF_checked : planRowResizeLog s2Step100EntryFBefore s2Step100EntryFRow 219 s2Step100EntryFFresh=
    some (s2Step100EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730],768⟩,growRow 768 s2Step100EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step100EntryFBefore s2Step100EntryFAfter s2Step100EntryFRow 219 s2Step100EntryFFresh
    s2Step100EntryF_distinct s2Step100EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step100EntryF_reserved
  have rowEq : WindowRow.mk (s2Step100EntryFRow.payload++s2Step100EntryFFresh) s2Step100EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step100EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100EntryFvAfter : Arena := s2Step100EntryGAfter

private def s2Step100EntryFvBefore : Arena := s2Step100EntryGAfter

private theorem s2Step100EntryFv_Incoming : rowsOwned s2Step100EntryFvBefore [s2Step100EntryFvRow,s2Step100EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step100EntryFRow,s2Step100EntryGRow,s2Step100EntryFvRow,s2Step100EntryGvRow] 2 s2Step100EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step100EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100EntryFv_Outgoing : rowsOwned s2Step100EntryGvAfter [s2Step100EntryFvOut,s2Step100EntryGvOut] :=
  hmrRows_owned_drop s2Step100EntryGvAfter [s2Step100EntryFOut,s2Step100EntryGOut,s2Step100EntryFvOut,s2Step100EntryGvOut] 2 s2Step100EntryBank_outgoingOwned

private theorem s2Step100EntryFv_distinct : (s2Step100EntryFvRow.sign::s2Step100EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100EntryFv_owned : (s2Step100EntryFvRow.sign::s2Step100EntryFvRow.payload).toFinset⊆s2Step100EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step100EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100EntryFv_reserved : s2Step100EntryFvBefore.reserve s2Step100EntryFvFresh.toFinset=some s2Step100EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step100EntryFvFresh,arenaWires]
  · norm_num [s2Step100EntryFvBefore,s2Step100EntryGAfter,s2Step100EntryFvFresh,arenaWires]
  · simp only [s2Step100EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step100EntryFv_checked : planRowResizeLog s2Step100EntryFvBefore s2Step100EntryFvRow 65 s2Step100EntryFvFresh=
    some (s2Step100EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851],770⟩,growRow 770 s2Step100EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step100EntryFvBefore s2Step100EntryFvAfter s2Step100EntryFvRow 65 s2Step100EntryFvFresh
    s2Step100EntryFv_distinct s2Step100EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step100EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step100EntryFvRow.payload++s2Step100EntryFvFresh) s2Step100EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step100EntryGBefore : Arena := s2Step100EntryFBefore

private theorem s2Step100EntryG_Incoming : rowsOwned s2Step100EntryGBefore [s2Step100EntryGRow,s2Step100EntryFvRow,s2Step100EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step100EntryFRow,s2Step100EntryGRow,s2Step100EntryFvRow,s2Step100EntryGvRow] 1 s2Step100EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step100EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100EntryG_Outgoing : rowsOwned s2Step100EntryGvAfter [s2Step100EntryGOut,s2Step100EntryFvOut,s2Step100EntryGvOut] :=
  hmrRows_owned_drop s2Step100EntryGvAfter [s2Step100EntryFOut,s2Step100EntryGOut,s2Step100EntryFvOut,s2Step100EntryGvOut] 1 s2Step100EntryBank_outgoingOwned

private theorem s2Step100EntryG_distinct : (s2Step100EntryGRow.sign::s2Step100EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100EntryG_owned : (s2Step100EntryGRow.sign::s2Step100EntryGRow.payload).toFinset⊆s2Step100EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step100EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100EntryG_reserved : s2Step100EntryGBefore.reserve s2Step100EntryGFresh.toFinset=some s2Step100EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step100EntryGFresh,arenaWires]
  · norm_num [s2Step100EntryGBefore,s2Step100EntryFBefore,s2Step100EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step100EntryGAfter,s2Step100EntryGBefore,s2Step100EntryFBefore,s2Step100EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step100EntryG_checked : planRowResizeLog s2Step100EntryGBefore s2Step100EntryGRow 219 s2Step100EntryGFresh=
    some (s2Step100EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 781],769⟩,growRow 769 s2Step100EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step100EntryGBefore s2Step100EntryGAfter s2Step100EntryGRow 219 s2Step100EntryGFresh
    s2Step100EntryG_distinct s2Step100EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step100EntryG_reserved
  have rowEq : WindowRow.mk (s2Step100EntryGRow.payload++s2Step100EntryGFresh) s2Step100EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step100EntryGvBefore : Arena := s2Step100EntryGAfter

private theorem s2Step100EntryGv_Incoming : rowsOwned s2Step100EntryGvBefore [s2Step100EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step100EntryFRow,s2Step100EntryGRow,s2Step100EntryFvRow,s2Step100EntryGvRow] 3 s2Step100EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step100EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100EntryGv_Outgoing : rowsOwned s2Step100EntryGvAfter [s2Step100EntryGvOut] :=
  hmrRows_owned_drop s2Step100EntryGvAfter [s2Step100EntryFOut,s2Step100EntryGOut,s2Step100EntryFvOut,s2Step100EntryGvOut] 3 s2Step100EntryBank_outgoingOwned

private theorem s2Step100EntryGv_distinct : (s2Step100EntryGvRow.sign::s2Step100EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100EntryGv_owned : (s2Step100EntryGvRow.sign::s2Step100EntryGvRow.payload).toFinset⊆s2Step100EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step100EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100EntryGv_reserved : s2Step100EntryGvBefore.reserve s2Step100EntryGvFresh.toFinset=some s2Step100EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step100EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step100EntryGvBefore,s2Step100EntryGAfter,s2Step100EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step100EntryGvAfter,s2Step100EntryGvBefore,s2Step100EntryGAfter,s2Step100EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step100EntryGv_checked : planRowResizeLog s2Step100EntryGvBefore s2Step100EntryGvRow 65 s2Step100EntryGvFresh=
    some (s2Step100EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804],771⟩,growRow 771 s2Step100EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step100EntryGvBefore s2Step100EntryGvAfter s2Step100EntryGvRow 65 s2Step100EntryGvFresh
    s2Step100EntryGv_distinct s2Step100EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step100EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step100EntryGvRow.payload++s2Step100EntryGvFresh) s2Step100EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step100EntryBank_rows : planWindowRowsLog s2Step100EntryFBefore [(s2Step100EntryFRow,219),(s2Step100EntryGRow,219),(s2Step100EntryFvRow,65),(s2Step100EntryGvRow,65)] [s2Step100EntryFFresh,s2Step100EntryGFresh,s2Step100EntryFvFresh,s2Step100EntryGvFresh]=
    some (s2Step100EntryGvAfter,[s2Step100EntryFOut,s2Step100EntryGOut,s2Step100EntryFvOut,s2Step100EntryGvOut],(growRow 768 s2Step100EntryFFresh ++ (growRow 769 s2Step100EntryGFresh ++ (growRow 770 s2Step100EntryFvFresh ++ (growRow 771 s2Step100EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step100EntryGvAfter [] []=some (s2Step100EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step100EntryGvBefore s2Step100EntryGvAfter s2Step100EntryGvAfter
    s2Step100EntryGvRow s2Step100EntryGvOut 65 s2Step100EntryGvFresh [] [] []
    (growRow 771 s2Step100EntryGvFresh) ([]) s2Step100EntryGv_Incoming s2Step100EntryGv_checked h4 s2Step100EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step100EntryFvBefore s2Step100EntryFvAfter s2Step100EntryGvAfter
    s2Step100EntryFvRow s2Step100EntryFvOut 65 s2Step100EntryFvFresh [(s2Step100EntryGvRow,65)] [s2Step100EntryGvFresh] [s2Step100EntryGvOut]
    (growRow 770 s2Step100EntryFvFresh) ((growRow 771 s2Step100EntryGvFresh ++ [])) s2Step100EntryFv_Incoming s2Step100EntryFv_checked h3 s2Step100EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step100EntryGBefore s2Step100EntryGAfter s2Step100EntryGvAfter
    s2Step100EntryGRow s2Step100EntryGOut 219 s2Step100EntryGFresh [(s2Step100EntryFvRow,65),(s2Step100EntryGvRow,65)] [s2Step100EntryFvFresh,s2Step100EntryGvFresh] [s2Step100EntryFvOut,s2Step100EntryGvOut]
    (growRow 769 s2Step100EntryGFresh) ((growRow 770 s2Step100EntryFvFresh ++ (growRow 771 s2Step100EntryGvFresh ++ []))) s2Step100EntryG_Incoming s2Step100EntryG_checked h2 s2Step100EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step100EntryFBefore s2Step100EntryFAfter s2Step100EntryGvAfter
    s2Step100EntryFRow s2Step100EntryFOut 219 s2Step100EntryFFresh [(s2Step100EntryGRow,219),(s2Step100EntryFvRow,65),(s2Step100EntryGvRow,65)] [s2Step100EntryGFresh,s2Step100EntryFvFresh,s2Step100EntryGvFresh] [s2Step100EntryGOut,s2Step100EntryFvOut,s2Step100EntryGvOut]
    (growRow 768 s2Step100EntryFFresh) ((growRow 769 s2Step100EntryGFresh ++ (growRow 770 s2Step100EntryFvFresh ++ (growRow 771 s2Step100EntryGvFresh ++ [])))) s2Step100EntryF_Incoming s2Step100EntryF_checked h1 s2Step100EntryF_Outgoing
  exact h0

private theorem s2Step100EntryBank_checked : compileHmrBankResizeLog .entry s2Step100EntryFBefore ⟨s2Step100EntryFRow,s2Step100EntryGRow,s2Step100EntryFvRow,s2Step100EntryGvRow⟩ ⟨219,219,65,65⟩ [s2Step100EntryFFresh,s2Step100EntryGFresh,s2Step100EntryFvFresh,s2Step100EntryGvFresh]=
    some (s2Step100EntryGvAfter,⟨s2Step100EntryFOut,s2Step100EntryGOut,s2Step100EntryFvOut,s2Step100EntryGvOut⟩,(growRow 768 s2Step100EntryFFresh ++ (growRow 769 s2Step100EntryGFresh ++ (growRow 770 s2Step100EntryFvFresh ++ (growRow 771 s2Step100EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step100EntryBank_rows]
  rfl

private def s2Step100ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100ExitFBefore : Arena := s2Step100ExitGAfter

private def s2Step100ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 793],768⟩

private def s2Step100ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851, 785],770⟩

private def s2Step100ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 781, 849],769⟩

private def s2Step100ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 799],771⟩

private theorem s2Step100ExitBank_incomingDistinct : ([s2Step100ExitGRow,s2Step100ExitFRow,s2Step100ExitFvRow,s2Step100ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100ExitF_Incoming : rowsOwned s2Step100ExitFBefore [s2Step100ExitFRow,s2Step100ExitFvRow,s2Step100ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step100ExitGRow,s2Step100ExitFRow,s2Step100ExitFvRow,s2Step100ExitGvRow] 1 s2Step100ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step100ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100ExitBank_outgoingOwned : rowsOwned s2Step100ExitGvAfter [s2Step100ExitGOut,s2Step100ExitFOut,s2Step100ExitFvOut,s2Step100ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step100ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100ExitF_Outgoing : rowsOwned s2Step100ExitGvAfter [s2Step100ExitFOut,s2Step100ExitFvOut,s2Step100ExitGvOut] :=
  hmrRows_owned_drop s2Step100ExitGvAfter [s2Step100ExitGOut,s2Step100ExitFOut,s2Step100ExitFvOut,s2Step100ExitGvOut] 1 s2Step100ExitBank_outgoingOwned

private theorem s2Step100ExitF_distinct : (s2Step100ExitFRow.sign::s2Step100ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100ExitF_owned : (s2Step100ExitFRow.sign::s2Step100ExitFRow.payload).toFinset⊆s2Step100ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step100ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100ExitF_retired : s2Step100ExitFBefore.retireSet s2Step100ExitFExtra.toFinset=s2Step100ExitFAfter := by
  unfold Arena.retireSet s2Step100ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step100ExitFBefore,s2Step100ExitGAfter,s2Step100ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step100ExitF_checked : planRowResizeLog s2Step100ExitFBefore s2Step100ExitFRow 219 []=
    some (s2Step100ExitFAfter,s2Step100ExitFOut,shrinkRow 768 s2Step100ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step100ExitFBefore s2Step100ExitFRow 219 s2Step100ExitF_distinct s2Step100ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step100ExitFRow.payload.take 219) s2Step100ExitFRow.sign=s2Step100ExitFOut := by decide +kernel
  have hi : s2Step100ExitFRow.payload.drop 219=s2Step100ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step100ExitF_retired] at result
  exact result

private def s2Step100ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100ExitFvBefore : Arena := s2Step100ExitFAfter

private theorem s2Step100ExitFv_Incoming : rowsOwned s2Step100ExitFvBefore [s2Step100ExitFvRow,s2Step100ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step100ExitGRow,s2Step100ExitFRow,s2Step100ExitFvRow,s2Step100ExitGvRow] 2 s2Step100ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step100ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100ExitFv_Outgoing : rowsOwned s2Step100ExitGvAfter [s2Step100ExitFvOut,s2Step100ExitGvOut] :=
  hmrRows_owned_drop s2Step100ExitGvAfter [s2Step100ExitGOut,s2Step100ExitFOut,s2Step100ExitFvOut,s2Step100ExitGvOut] 2 s2Step100ExitBank_outgoingOwned

private theorem s2Step100ExitFv_distinct : (s2Step100ExitFvRow.sign::s2Step100ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100ExitFv_owned : (s2Step100ExitFvRow.sign::s2Step100ExitFvRow.payload).toFinset⊆s2Step100ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step100ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100ExitFv_retired : s2Step100ExitFvBefore.retireSet s2Step100ExitFvExtra.toFinset=s2Step100ExitFvAfter := by
  unfold Arena.retireSet s2Step100ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step100ExitFvBefore,s2Step100ExitFAfter,s2Step100ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step100ExitFv_checked : planRowResizeLog s2Step100ExitFvBefore s2Step100ExitFvRow 64 []=
    some (s2Step100ExitFvAfter,s2Step100ExitFvOut,shrinkRow 770 s2Step100ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step100ExitFvBefore s2Step100ExitFvRow 64 s2Step100ExitFv_distinct s2Step100ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step100ExitFvRow.payload.take 64) s2Step100ExitFvRow.sign=s2Step100ExitFvOut := by decide +kernel
  have hi : s2Step100ExitFvRow.payload.drop 64=s2Step100ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step100ExitFv_retired] at result
  exact result

private def s2Step100ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private theorem s2Step100ExitG_Incoming : rowsOwned s2Step100ExitGBefore [s2Step100ExitGRow,s2Step100ExitFRow,s2Step100ExitFvRow,s2Step100ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step100ExitGRow,s2Step100ExitFRow,s2Step100ExitFvRow,s2Step100ExitGvRow] 0 s2Step100ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step100ExitGBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100ExitG_Outgoing : rowsOwned s2Step100ExitGvAfter [s2Step100ExitGOut,s2Step100ExitFOut,s2Step100ExitFvOut,s2Step100ExitGvOut] :=
  hmrRows_owned_drop s2Step100ExitGvAfter [s2Step100ExitGOut,s2Step100ExitFOut,s2Step100ExitFvOut,s2Step100ExitGvOut] 0 s2Step100ExitBank_outgoingOwned

private theorem s2Step100ExitG_distinct : (s2Step100ExitGRow.sign::s2Step100ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100ExitG_owned : (s2Step100ExitGRow.sign::s2Step100ExitGRow.payload).toFinset⊆s2Step100ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step100ExitGBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100ExitG_retired : s2Step100ExitGBefore.retireSet s2Step100ExitGExtra.toFinset=s2Step100ExitGAfter := by
  unfold Arena.retireSet s2Step100ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step100ExitGBefore,s2Step100ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step100ExitG_checked : planRowResizeLog s2Step100ExitGBefore s2Step100ExitGRow 218 []=
    some (s2Step100ExitGAfter,s2Step100ExitGOut,shrinkRow 769 s2Step100ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step100ExitGBefore s2Step100ExitGRow 218 s2Step100ExitG_distinct s2Step100ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step100ExitGRow.payload.take 218) s2Step100ExitGRow.sign=s2Step100ExitGOut := by decide +kernel
  have hi : s2Step100ExitGRow.payload.drop 218=s2Step100ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step100ExitG_retired] at result
  exact result

private def s2Step100ExitGvBefore : Arena := s2Step100ExitFvAfter

private theorem s2Step100ExitGv_Incoming : rowsOwned s2Step100ExitGvBefore [s2Step100ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step100ExitGRow,s2Step100ExitFRow,s2Step100ExitFvRow,s2Step100ExitGvRow] 3 s2Step100ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step100ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100ExitGv_Outgoing : rowsOwned s2Step100ExitGvAfter [s2Step100ExitGvOut] :=
  hmrRows_owned_drop s2Step100ExitGvAfter [s2Step100ExitGOut,s2Step100ExitFOut,s2Step100ExitFvOut,s2Step100ExitGvOut] 3 s2Step100ExitBank_outgoingOwned

private theorem s2Step100ExitGv_distinct : (s2Step100ExitGvRow.sign::s2Step100ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100ExitGv_owned : (s2Step100ExitGvRow.sign::s2Step100ExitGvRow.payload).toFinset⊆s2Step100ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step100ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100ExitGv_retired : s2Step100ExitGvBefore.retireSet s2Step100ExitGvExtra.toFinset=s2Step100ExitGvAfter := by
  unfold Arena.retireSet s2Step100ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step100ExitGvBefore,s2Step100ExitFvAfter,s2Step100ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step100ExitGv_checked : planRowResizeLog s2Step100ExitGvBefore s2Step100ExitGvRow 64 []=
    some (s2Step100ExitGvAfter,s2Step100ExitGvOut,shrinkRow 771 s2Step100ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step100ExitGvBefore s2Step100ExitGvRow 64 s2Step100ExitGv_distinct s2Step100ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step100ExitGvRow.payload.take 64) s2Step100ExitGvRow.sign=s2Step100ExitGvOut := by decide +kernel
  have hi : s2Step100ExitGvRow.payload.drop 64=s2Step100ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step100ExitGv_retired] at result
  exact result

private theorem s2Step100ExitBank_rows : planWindowRowsLog s2Step100ExitGBefore [(s2Step100ExitGRow,218),(s2Step100ExitFRow,219),(s2Step100ExitFvRow,64),(s2Step100ExitGvRow,64)] [[],[],[],[]]=
    some (s2Step100ExitGvAfter,[s2Step100ExitGOut,s2Step100ExitFOut,s2Step100ExitFvOut,s2Step100ExitGvOut],(shrinkRow 769 s2Step100ExitGExtra ++ (shrinkRow 768 s2Step100ExitFExtra ++ (shrinkRow 770 s2Step100ExitFvExtra ++ (shrinkRow 771 s2Step100ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step100ExitGvAfter [] []=some (s2Step100ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step100ExitGvBefore s2Step100ExitGvAfter s2Step100ExitGvAfter
    s2Step100ExitGvRow s2Step100ExitGvOut 64 [] [] [] []
    (shrinkRow 771 s2Step100ExitGvExtra) ([]) s2Step100ExitGv_Incoming s2Step100ExitGv_checked h4 s2Step100ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step100ExitFvBefore s2Step100ExitFvAfter s2Step100ExitGvAfter
    s2Step100ExitFvRow s2Step100ExitFvOut 64 [] [(s2Step100ExitGvRow,64)] [[]] [s2Step100ExitGvOut]
    (shrinkRow 770 s2Step100ExitFvExtra) ((shrinkRow 771 s2Step100ExitGvExtra ++ [])) s2Step100ExitFv_Incoming s2Step100ExitFv_checked h3 s2Step100ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step100ExitFBefore s2Step100ExitFAfter s2Step100ExitGvAfter
    s2Step100ExitFRow s2Step100ExitFOut 219 [] [(s2Step100ExitFvRow,64),(s2Step100ExitGvRow,64)] [[],[]] [s2Step100ExitFvOut,s2Step100ExitGvOut]
    (shrinkRow 768 s2Step100ExitFExtra) ((shrinkRow 770 s2Step100ExitFvExtra ++ (shrinkRow 771 s2Step100ExitGvExtra ++ []))) s2Step100ExitF_Incoming s2Step100ExitF_checked h2 s2Step100ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step100ExitGBefore s2Step100ExitGAfter s2Step100ExitGvAfter
    s2Step100ExitGRow s2Step100ExitGOut 218 [] [(s2Step100ExitFRow,219),(s2Step100ExitFvRow,64),(s2Step100ExitGvRow,64)] [[],[],[]] [s2Step100ExitFOut,s2Step100ExitFvOut,s2Step100ExitGvOut]
    (shrinkRow 769 s2Step100ExitGExtra) ((shrinkRow 768 s2Step100ExitFExtra ++ (shrinkRow 770 s2Step100ExitFvExtra ++ (shrinkRow 771 s2Step100ExitGvExtra ++ [])))) s2Step100ExitG_Incoming s2Step100ExitG_checked h1 s2Step100ExitG_Outgoing
  exact h0

private theorem s2Step100ExitBank_checked : compileHmrBankResizeLog .exit s2Step100ExitGBefore ⟨s2Step100ExitFRow,s2Step100ExitGRow,s2Step100ExitFvRow,s2Step100ExitGvRow⟩ ⟨219,218,64,64⟩ [[],[],[],[]]=
    some (s2Step100ExitGvAfter,⟨s2Step100ExitFOut,s2Step100ExitGOut,s2Step100ExitFvOut,s2Step100ExitGvOut⟩,(shrinkRow 769 s2Step100ExitGExtra ++ (shrinkRow 768 s2Step100ExitFExtra ++ (shrinkRow 770 s2Step100ExitFvExtra ++ (shrinkRow 771 s2Step100ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step100ExitBank_rows]
  rfl

private theorem s2Step100Add0_apart : Disjoint s2Step100Add0Arena.live s2Step100Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step100Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100Add0_card : s2Step100Add0Arena.live.card=876 := by
  decide +kernel

private theorem s2Step100Add0_borrowed : s2Step100Add0Arena.checkBorrow (hmrHybridCount s2Step100Add0Arena s2Step100Add0B.length) s2Step100Add0Work=some s2Step100Add0During := by
  have len : s2Step100Add0Work.length=hmrHybridCount s2Step100Add0Arena s2Step100Add0B.length := by
    rw [hmrHybridCount,s2Step100Add0_card]
    decide +kernel
  have nd : s2Step100Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step100Add0Arena s2Step100Add0During s2Step100Add0Work.toFinset s2Step100Add0_bounded s2Step100Add0_apart rfl

private theorem s2Step100Add0_distinct : (806::846::802::(s2Step100Add0A++s2Step100Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100Add0_owned : (806::846::802::(s2Step100Add0A++s2Step100Add0B)).toFinset⊆s2Step100Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step100Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100Add0_checked : compileHmrHybridCinLog s2Step100Add0Arena 846 806 802 s2Step100Add0A s2Step100Add0B s2Step100Add0Work=some s2Step100Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step100Add0Arena s2Step100Add0During 846 806 802 s2Step100Add0A s2Step100Add0B s2Step100Add0Work
    (by decide +kernel) (by decide +kernel) s2Step100Add0_distinct
    (fun q hq => s2Step100Add0_owned (List.mem_toFinset.mpr hq)) s2Step100Add0_borrowed

private theorem s2Step100Add1_apart : Disjoint s2Step100Add1Arena.live s2Step100Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step100Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100Add1_card : s2Step100Add1Arena.live.card=876 := by
  decide +kernel

private theorem s2Step100Add1_borrowed : s2Step100Add1Arena.checkBorrow (hmrHybridCount s2Step100Add1Arena s2Step100Add1B.length) s2Step100Add1Work=some s2Step100Add1During := by
  have len : s2Step100Add1Work.length=hmrHybridCount s2Step100Add1Arena s2Step100Add1B.length := by
    rw [hmrHybridCount,s2Step100Add1_card]
    decide +kernel
  have nd : s2Step100Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step100Add1Arena s2Step100Add1During s2Step100Add1Work.toFinset s2Step100Add1_bounded s2Step100Add1_apart rfl

private theorem s2Step100Add1_distinct : (806::846::802::(s2Step100Add1A++s2Step100Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100Add1_owned : (806::846::802::(s2Step100Add1A++s2Step100Add1B)).toFinset⊆s2Step100Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step100Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100Add1_checked : compileHmrHybridCinLog s2Step100Add1Arena 846 806 802 s2Step100Add1A s2Step100Add1B s2Step100Add1Work=some s2Step100Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step100Add1Arena s2Step100Add1During 846 806 802 s2Step100Add1A s2Step100Add1B s2Step100Add1Work
    (by decide +kernel) (by decide +kernel) s2Step100Add1_distinct
    (fun q hq => s2Step100Add1_owned (List.mem_toFinset.mpr hq)) s2Step100Add1_borrowed

private theorem s2Step100F4_apart : Disjoint (s2Step100Add0A++s2Step100Add0B).toFinset (s2Step100Add1A++s2Step100Add1B).toFinset := by
  have nd : ((s2Step100Add0A++s2Step100Add0B)++(s2Step100Add1A++s2Step100Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step100F4_carry : s2Step100F4FlagArena.checkBorrow 1 [802]=some s2Step100Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step100F4FlagArena,s2Step100HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step100F4FlagArena,s2Step100HeadFvAfter,s2Step100Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step100F4_distinct : (794::846::806::802::((s2Step100Add0A++s2Step100Add1A)++(s2Step100Add0B++s2Step100Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100F4_flag : s2Step100HeadFvAfter.checkBorrow 1 [806]=some s2Step100F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step100HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step100F4_owned : (794::846::((s2Step100Add0A++s2Step100Add1A)++(s2Step100Add0B++s2Step100Add1B))).toFinset⊆s2Step100HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step100HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100F4_checked : compileHmrHybridF4Log s2Step100HeadFvAfter 794 846 s2Step100Add0A s2Step100Add0B s2Step100Add1A s2Step100Add1B [806] [802] s2Step100Add0Work s2Step100Add1Work=some s2Step100F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step100HeadFvAfter s2Step100F4FlagArena s2Step100Add0Arena s2Step100Add0During s2Step100Add1During 794 846
    s2Step100Add0A s2Step100Add0B s2Step100Add1A s2Step100Add1B [806] [802] s2Step100Add0Work s2Step100Add1Work
    (fun q hq => s2Step100F4_owned (List.mem_toFinset.mpr hq)) s2Step100F4_flag s2Step100F4_carry
    s2Step100F4_distinct s2Step100F4_apart s2Step100Add0_checked s2Step100Add1_checked

private theorem s2Step100Front_branch : s2Step100FrontSigmaArena.checkBorrow 1 [846]=some s2Step100HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step100FrontSigmaArena,s2Step100EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step100FrontSigmaArena,s2Step100EntryGvAfter,s2Step100HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step100Front_entry : HmrFrontEntryValid s2Step100EntryFBefore s2Step100FrontBank 219 65 ⟨219,218,64,64⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step100FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step100EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step100EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step100FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step100Front_sigma : s2Step100EntryGvAfter.checkBorrow 1 [794]=some s2Step100FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step100EntryGvAfter,arenaWires]
  · rfl

private def s2Step100HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100HeadFBefore : Arena := s2Step100HeadGAfter

private def s2Step100HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730],768⟩

private def s2Step100HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851],770⟩

private def s2Step100HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 781],769⟩

private def s2Step100HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804],771⟩

private theorem s2Step100HeadBank_incomingDistinct : ([s2Step100HeadGRow,s2Step100HeadFRow,s2Step100HeadGvRow,s2Step100HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100HeadF_Incoming : rowsOwned s2Step100HeadFBefore [s2Step100HeadFRow,s2Step100HeadGvRow,s2Step100HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step100HeadGRow,s2Step100HeadFRow,s2Step100HeadGvRow,s2Step100HeadFvRow] 1 s2Step100HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step100HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100HeadBank_outgoingOwned : rowsOwned s2Step100HeadFvAfter [s2Step100HeadGOut,s2Step100HeadFOut,s2Step100HeadGvOut,s2Step100HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step100HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100HeadF_Outgoing : rowsOwned s2Step100HeadFvAfter [s2Step100HeadFOut,s2Step100HeadGvOut,s2Step100HeadFvOut] :=
  hmrRows_owned_drop s2Step100HeadFvAfter [s2Step100HeadGOut,s2Step100HeadFOut,s2Step100HeadGvOut,s2Step100HeadFvOut] 1 s2Step100HeadBank_outgoingOwned

private theorem s2Step100HeadF_distinct : (s2Step100HeadFRow.sign::s2Step100HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100HeadF_owned : (s2Step100HeadFRow.sign::s2Step100HeadFRow.payload).toFinset⊆s2Step100HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step100HeadFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100HeadF_reserved : s2Step100HeadFBefore.reserve s2Step100HeadFFresh.toFinset=some s2Step100HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step100HeadFFresh,arenaWires]
  · norm_num [s2Step100HeadFBefore,s2Step100HeadGAfter,s2Step100HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step100HeadFAfter,s2Step100HeadFBefore,s2Step100HeadGAfter,s2Step100HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step100HeadF_checked : planRowResizeLog s2Step100HeadFBefore s2Step100HeadFRow 220 s2Step100HeadFFresh=
    some (s2Step100HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 793],768⟩,growRow 768 s2Step100HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step100HeadFBefore s2Step100HeadFAfter s2Step100HeadFRow 220 s2Step100HeadFFresh
    s2Step100HeadF_distinct s2Step100HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step100HeadF_reserved
  have rowEq : WindowRow.mk (s2Step100HeadFRow.payload++s2Step100HeadFFresh) s2Step100HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 793],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step100HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step100HeadFvBefore : Arena := s2Step100HeadGvAfter

private theorem s2Step100HeadFv_Incoming : rowsOwned s2Step100HeadFvBefore [s2Step100HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step100HeadGRow,s2Step100HeadFRow,s2Step100HeadGvRow,s2Step100HeadFvRow] 3 s2Step100HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step100HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100HeadFv_Outgoing : rowsOwned s2Step100HeadFvAfter [s2Step100HeadFvOut] :=
  hmrRows_owned_drop s2Step100HeadFvAfter [s2Step100HeadGOut,s2Step100HeadFOut,s2Step100HeadGvOut,s2Step100HeadFvOut] 3 s2Step100HeadBank_outgoingOwned

private theorem s2Step100HeadFv_distinct : (s2Step100HeadFvRow.sign::s2Step100HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100HeadFv_owned : (s2Step100HeadFvRow.sign::s2Step100HeadFvRow.payload).toFinset⊆s2Step100HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step100HeadFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100HeadFv_reserved : s2Step100HeadFvBefore.reserve s2Step100HeadFvFresh.toFinset=some s2Step100HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step100HeadFvFresh,arenaWires]
  · norm_num [s2Step100HeadFvBefore,s2Step100HeadGvAfter,s2Step100HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step100HeadFvAfter,s2Step100HeadFvBefore,s2Step100HeadGvAfter,s2Step100HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step100HeadFv_checked : planRowResizeLog s2Step100HeadFvBefore s2Step100HeadFvRow 66 s2Step100HeadFvFresh=
    some (s2Step100HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851, 785],770⟩,growRow 770 s2Step100HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step100HeadFvBefore s2Step100HeadFvAfter s2Step100HeadFvRow 66 s2Step100HeadFvFresh
    s2Step100HeadFv_distinct s2Step100HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step100HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step100HeadFvRow.payload++s2Step100HeadFvFresh) s2Step100HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step100HeadG_Incoming : rowsOwned s2Step100HeadGBefore [s2Step100HeadGRow,s2Step100HeadFRow,s2Step100HeadGvRow,s2Step100HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step100HeadGRow,s2Step100HeadFRow,s2Step100HeadGvRow,s2Step100HeadFvRow] 0 s2Step100HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step100HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100HeadG_Outgoing : rowsOwned s2Step100HeadFvAfter [s2Step100HeadGOut,s2Step100HeadFOut,s2Step100HeadGvOut,s2Step100HeadFvOut] :=
  hmrRows_owned_drop s2Step100HeadFvAfter [s2Step100HeadGOut,s2Step100HeadFOut,s2Step100HeadGvOut,s2Step100HeadFvOut] 0 s2Step100HeadBank_outgoingOwned

private theorem s2Step100HeadG_distinct : (s2Step100HeadGRow.sign::s2Step100HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100HeadG_owned : (s2Step100HeadGRow.sign::s2Step100HeadGRow.payload).toFinset⊆s2Step100HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step100HeadGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100HeadG_reserved : s2Step100HeadGBefore.reserve s2Step100HeadGFresh.toFinset=some s2Step100HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step100HeadGFresh,arenaWires]
  · norm_num [s2Step100HeadGBefore,s2Step100HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step100HeadGAfter,s2Step100HeadGBefore,s2Step100HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step100HeadG_checked : planRowResizeLog s2Step100HeadGBefore s2Step100HeadGRow 220 s2Step100HeadGFresh=
    some (s2Step100HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 781, 849],769⟩,growRow 769 s2Step100HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step100HeadGBefore s2Step100HeadGAfter s2Step100HeadGRow 220 s2Step100HeadGFresh
    s2Step100HeadG_distinct s2Step100HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step100HeadG_reserved
  have rowEq : WindowRow.mk (s2Step100HeadGRow.payload++s2Step100HeadGFresh) s2Step100HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 781, 849],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step100HeadGvBefore : Arena := s2Step100HeadFAfter

private theorem s2Step100HeadGv_Incoming : rowsOwned s2Step100HeadGvBefore [s2Step100HeadGvRow,s2Step100HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step100HeadGRow,s2Step100HeadFRow,s2Step100HeadGvRow,s2Step100HeadFvRow] 2 s2Step100HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step100HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step100HeadGv_Outgoing : rowsOwned s2Step100HeadFvAfter [s2Step100HeadGvOut,s2Step100HeadFvOut] :=
  hmrRows_owned_drop s2Step100HeadFvAfter [s2Step100HeadGOut,s2Step100HeadFOut,s2Step100HeadGvOut,s2Step100HeadFvOut] 2 s2Step100HeadBank_outgoingOwned

private theorem s2Step100HeadGv_distinct : (s2Step100HeadGvRow.sign::s2Step100HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step100HeadGv_owned : (s2Step100HeadGvRow.sign::s2Step100HeadGvRow.payload).toFinset⊆s2Step100HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step100HeadGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step100HeadGv_reserved : s2Step100HeadGvBefore.reserve s2Step100HeadGvFresh.toFinset=some s2Step100HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step100HeadGvFresh,arenaWires]
  · norm_num [s2Step100HeadGvBefore,s2Step100HeadFAfter,s2Step100HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step100HeadGvAfter,s2Step100HeadGvBefore,s2Step100HeadFAfter,s2Step100HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step100HeadGv_checked : planRowResizeLog s2Step100HeadGvBefore s2Step100HeadGvRow 66 s2Step100HeadGvFresh=
    some (s2Step100HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 799],771⟩,growRow 771 s2Step100HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step100HeadGvBefore s2Step100HeadGvAfter s2Step100HeadGvRow 66 s2Step100HeadGvFresh
    s2Step100HeadGv_distinct s2Step100HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step100HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step100HeadGvRow.payload++s2Step100HeadGvFresh) s2Step100HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 799],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step100HeadBank_rows : planWindowRowsLog s2Step100HeadGBefore [(s2Step100HeadGRow,220),(s2Step100HeadFRow,220),(s2Step100HeadGvRow,66),(s2Step100HeadFvRow,66)] [s2Step100HeadGFresh,s2Step100HeadFFresh,s2Step100HeadGvFresh,s2Step100HeadFvFresh]=
    some (s2Step100HeadFvAfter,[s2Step100HeadGOut,s2Step100HeadFOut,s2Step100HeadGvOut,s2Step100HeadFvOut],(growRow 769 s2Step100HeadGFresh ++ (growRow 768 s2Step100HeadFFresh ++ (growRow 771 s2Step100HeadGvFresh ++ (growRow 770 s2Step100HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step100HeadFvAfter [] []=some (s2Step100HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step100HeadFvBefore s2Step100HeadFvAfter s2Step100HeadFvAfter
    s2Step100HeadFvRow s2Step100HeadFvOut 66 s2Step100HeadFvFresh [] [] []
    (growRow 770 s2Step100HeadFvFresh) ([]) s2Step100HeadFv_Incoming s2Step100HeadFv_checked h4 s2Step100HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step100HeadGvBefore s2Step100HeadGvAfter s2Step100HeadFvAfter
    s2Step100HeadGvRow s2Step100HeadGvOut 66 s2Step100HeadGvFresh [(s2Step100HeadFvRow,66)] [s2Step100HeadFvFresh] [s2Step100HeadFvOut]
    (growRow 771 s2Step100HeadGvFresh) ((growRow 770 s2Step100HeadFvFresh ++ [])) s2Step100HeadGv_Incoming s2Step100HeadGv_checked h3 s2Step100HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step100HeadFBefore s2Step100HeadFAfter s2Step100HeadFvAfter
    s2Step100HeadFRow s2Step100HeadFOut 220 s2Step100HeadFFresh [(s2Step100HeadGvRow,66),(s2Step100HeadFvRow,66)] [s2Step100HeadGvFresh,s2Step100HeadFvFresh] [s2Step100HeadGvOut,s2Step100HeadFvOut]
    (growRow 768 s2Step100HeadFFresh) ((growRow 771 s2Step100HeadGvFresh ++ (growRow 770 s2Step100HeadFvFresh ++ []))) s2Step100HeadF_Incoming s2Step100HeadF_checked h2 s2Step100HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step100HeadGBefore s2Step100HeadGAfter s2Step100HeadFvAfter
    s2Step100HeadGRow s2Step100HeadGOut 220 s2Step100HeadGFresh [(s2Step100HeadFRow,220),(s2Step100HeadGvRow,66),(s2Step100HeadFvRow,66)] [s2Step100HeadFFresh,s2Step100HeadGvFresh,s2Step100HeadFvFresh] [s2Step100HeadFOut,s2Step100HeadGvOut,s2Step100HeadFvOut]
    (growRow 769 s2Step100HeadGFresh) ((growRow 768 s2Step100HeadFFresh ++ (growRow 771 s2Step100HeadGvFresh ++ (growRow 770 s2Step100HeadFvFresh ++ [])))) s2Step100HeadG_Incoming s2Step100HeadG_checked h1 s2Step100HeadG_Outgoing
  exact h0

private theorem s2Step100HeadBank_checked : compileHmrBankResizeLog .headroom s2Step100HeadGBefore ⟨s2Step100HeadFRow,s2Step100HeadGRow,s2Step100HeadFvRow,s2Step100HeadGvRow⟩ ⟨220,220,66,66⟩ [s2Step100HeadGFresh,s2Step100HeadFFresh,s2Step100HeadGvFresh,s2Step100HeadFvFresh]=
    some (s2Step100HeadFvAfter,⟨s2Step100HeadFOut,s2Step100HeadGOut,s2Step100HeadFvOut,s2Step100HeadGvOut⟩,(growRow 769 s2Step100HeadGFresh ++ (growRow 768 s2Step100HeadFFresh ++ (growRow 771 s2Step100HeadGvFresh ++ (growRow 770 s2Step100HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step100HeadBank_rows]
  rfl

private theorem s2Step100Front_checked : compileHmrSourceFrontLog s2Step100EntryFBefore s2Step100FrontBank 219 65 ⟨219,218,64,64⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step100FrontLog=some s2Step100FrontPlan := by
  have pairEq : s2Step100FrontPair=⟨s2Step100HeadFRow,s2Step100HeadGRow,s2Step100HeadFvRow,s2Step100HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step100FrontHead=⟨s2Step100ExitFRow,s2Step100ExitGRow,s2Step100ExitFvRow,s2Step100ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step100Add0A=s2Step100FrontHead.f.wires := by decide +kernel
  have gEq : s2Step100Add0B=s2Step100FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step100Add1A=s2Step100FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step100Add1B=s2Step100FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step100EntryFBefore s2Step100FrontBank 219 65 ⟨219,218,64,64⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step100FrontLog s2Step100FrontPlan
  · exact s2Step100Front_entry
  · exact s2Step100EntryBank_checked
  · exact s2Step100Front_sigma
  · rfl
  · exact s2Step100Front_branch
  · rfl
  · simpa only [s2Step100FrontPlan,pairEq] using s2Step100HeadBank_checked
  · simpa only [s2Step100FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step100F4_checked
  · exact s2Step100Counter_checked
  · rfl
  · simpa only [s2Step100FrontPlan,headEq] using s2Step100ExitBank_checked

private theorem s2Step100Complete_explicit_checked : compileHmrEarlyStepLog s2Step100EntryFBefore s2Step100FrontBank 219 65 ⟨219,218,64,64⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 35 s2Step100CompleteLog=some s2Step100CompletePlan := by
  let Q := s2Step100EarlyControlPlan
  have hq := s2Step100EarlyControl_plan_checked
  have fv1 : s2Step100CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step100CompleteOut.fv.payload[2]?.getD s2Step100CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step100CompleteOut.fv.payload[3]?.getD s2Step100CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step100CompleteOut.fv.payload[4]?.getD s2Step100CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step100EntryFBefore s2Step100EarlyControlArena s2Step100FrontBank 219 65 ⟨219,218,64,64⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 35 s2Step100CompleteLog s2Step100FrontPlan Q
    s2Step100Front_checked s2Step100Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step100Complete_owned s2Step100Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step100EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 794 s2Step100CompleteOut.fv.second (s2Step100CompleteOut.fv.payload[2]?.getD s2Step100CompleteOut.fv.sign) (s2Step100CompleteOut.fv.payload[3]?.getD s2Step100CompleteOut.fv.sign) (s2Step100CompleteOut.fv.payload[4]?.getD s2Step100CompleteOut.fv.sign) 846 35 s2Step100EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep100Arena : Arena := s2Step100EntryFBefore
def s2PrivateStep100Bank : WindowBank := s2Step100FrontBank
def s2PrivateStep100Spec : HmrSourceWalkStepLog := ⟨219,65,⟨219,218,64,64⟩,35,.early s2Step100CompleteLog⟩
def s2PrivateStep100Plan : HmrSourceStepPlan := .early s2Step100CompletePlan
theorem s2PrivateStep100_source : s2PrivateStep100Spec=s2ObservedLogs96[4] := rfl
theorem s2PrivateStep100_checked : compileHmrSourceStepLog s2PrivateStep100Arena s2PrivateStep100Bank
    s2PrivateStep100Spec.fgWidth s2PrivateStep100Spec.vWidth s2PrivateStep100Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]
    6 498 100 s2PrivateStep100Spec.need none s2PrivateStep100Spec.log=some s2PrivateStep100Plan := by
  change compileHmrSourceStepLog s2Step100EntryFBefore s2Step100FrontBank 219 65 ⟨219,218,64,64⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 6 498 100 35 none (.early s2Step100CompleteLog)=some (.early s2Step100CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 100<498)]
  rw [s2Step100Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
