import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep97
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

private def s2Step99CompleteMoves : List (Wire × Wire) := [(804,731),(801,732)]

private def s2Step99EarlyControlLog : HmrEarlyControlLog := ⟨[801, 804, 794, 846, 849],[793],[799],[785, 806, 802, 867, 877, 878],[]⟩

private def s2Step99FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [799, 785, 806], [], [794, 846]],[[802], [793], [849], [851]],[[], [], [], []]⟩,[786],[781],[867],[877],[878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 878, 879]⟩

private def s2Step99CompleteLog : HmrEarlyStepLog := ⟨s2Step99FrontLog,s2Step99CompleteMoves,s2Step99EarlyControlLog⟩

private def s2Step99ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730],768⟩

private def s2Step99ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851],770⟩

private def s2Step99ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩

private def s2Step99ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791],771⟩

private def s2Step99FrontOut : WindowBank := ⟨s2Step99ExitFOut,s2Step99ExitGOut,s2Step99ExitFvOut,s2Step99ExitGvOut⟩

private def s2Step99CompleteOut : WindowBank := s2Step99FrontOut.repacked s2Step99CompleteMoves

private def s2Step99EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step99EarlyControlPositiveArena,[793],s2Step99EarlyControlEqualityArena,[799],⟨⟨786,false⟩,[⟨⟨793,false⟩,799⟩]⟩⟩

private def s2Step99EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879)),Finset.filter_subset _ _⟩

private def s2Step99EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879)),Finset.filter_subset _ _⟩

private def s2Step99EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,801⟩,⟨⟨774,false⟩,804⟩,⟨⟨775,false⟩,794⟩,⟨⟨776,false⟩,846⟩,⟨⟨777,false⟩,849⟩]⟩

private def s2Step99EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step99EarlyControlZeroArena,s2Step99EarlyControlZeroPlan,s2Step99EarlyControlClassPlan,s2Step99EarlyControlFlagArena,s2Step99EarlyControlFittedArena,s2Step99EarlyControlHistoryArena,s2Step99EarlyControlSigmaArena,s2Step99EarlyControlOutputArena,s2Step99EarlyControlLog⟩

private def s2Step99CounterWork : List Wire := [867, 877, 878, 879]

private theorem s2Step99Counter_bounded : s2Step99CounterWork.toFinset⊆arenaWires := by norm_num [s2Step99CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step99HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99CounterDuring : Arena := ⟨s2Step99HeadFvAfter.live∪s2Step99CounterWork.toFinset,Finset.union_subset s2Step99HeadFvAfter.bounded s2Step99Counter_bounded⟩

private def s2Step99EntryFFresh : List Wire := []

private def s2Step99EntryFvFresh : List Wire := []

private def s2Step99EntryGFresh : List Wire := [799, 785, 806]

private def s2Step99EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99EntryGvFresh : List Wire := [794, 846]

private def s2Step99ExitFExtra : List Wire := [731, 732, 793]

private def s2Step99ExitGExtra : List Wire := [799, 785, 806, 802]

private def s2Step99ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<731) ∨ (733≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99ExitGvExtra : List Wire := [794, 846, 849]

private def s2Step99Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<878)),Finset.filter_subset _ _⟩

private def s2Step99Add0Work : List Wire := [878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step99Add0_bounded : s2Step99Add0Work.toFinset⊆arenaWires := by
  have h : s2Step99Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step99Add0During : Arena := ⟨s2Step99Add0Arena.live∪s2Step99Add0Work.toFinset,Finset.union_subset s2Step99Add0Arena.bounded s2Step99Add0_bounded⟩

private def s2Step99Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<878)),Finset.filter_subset _ _⟩

private def s2Step99Add1Work : List Wire := [878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step99Add1_bounded : s2Step99Add1Work.toFinset⊆arenaWires := by
  have h : s2Step99Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step99Add1During : Arena := ⟨s2Step99Add1Arena.live∪s2Step99Add1Work.toFinset,Finset.union_subset s2Step99Add1Arena.bounded s2Step99Add1_bounded⟩

private def s2Step99F4FlagArena : Arena := ⟨s2Step99HeadFvAfter.live∪{867},Finset.union_subset s2Step99HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step99F4Plan : HmrHybridF4Plan := ⟨s2Step99F4FlagArena,[867],s2Step99Add0Arena,[877],s2Step99Add0During,s2Step99Add0Work,s2Step99Add1During,s2Step99Add1Work⟩

private def s2Step99HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 793],768⟩

private def s2Step99HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851],770⟩

private def s2Step99HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 799, 785, 806, 802],769⟩

private def s2Step99HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794, 846, 849],771⟩

private def s2Step99FrontHead : WindowBank := ⟨s2Step99HeadFOut,s2Step99HeadGOut,s2Step99HeadFvOut,s2Step99HeadGvOut⟩

private def s2Step99EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step99EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩

private def s2Step99EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 799, 785, 806],769⟩

private def s2Step99EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794, 846],771⟩

private def s2Step99FrontPair : WindowBank := ⟨s2Step99EntryFOut,s2Step99EntryGOut,s2Step99EntryFvOut,s2Step99EntryGvOut⟩

private def s2Step99FrontSigmaArena : Arena := ⟨s2Step99EntryGvAfter.live∪{786},Finset.union_subset s2Step99EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step99HeadFFresh : List Wire := [793]

private def s2Step99HeadFvFresh : List Wire := [851]

private def s2Step99HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99HeadGFresh : List Wire := [802]

private def s2Step99HeadGvFresh : List Wire := [849]

private def s2Step99FrontPlan : HmrSourceFront := ⟨s2Step99EntryGvAfter,s2Step99FrontPair,(growRow 768 s2Step99EntryFFresh ++ (growRow 769 s2Step99EntryGFresh ++ (growRow 770 s2Step99EntryFvFresh ++ (growRow 771 s2Step99EntryGvFresh ++ [])))),s2Step99FrontSigmaArena,[786],s2Step99HeadGBefore,[781],
  s2Step99HeadFvAfter,s2Step99FrontHead,(growRow 769 s2Step99HeadGFresh ++ (growRow 768 s2Step99HeadFFresh ++ (growRow 771 s2Step99HeadGvFresh ++ (growRow 770 s2Step99HeadFvFresh ++ [])))),s2Step99F4Plan,s2Step99CounterDuring,s2Step99CounterWork,s2Step99ExitGvAfter,s2Step99FrontOut,(shrinkRow 769 s2Step99ExitGExtra ++ (shrinkRow 768 s2Step99ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step99ExitGvExtra ++ []))))⟩

private def s2Step99CompletePlan : HmrEarlyStepPlan := ⟨s2Step99FrontPlan,s2Step99EarlyControlArena,s2Step99EarlyControlPlan,s2Step99CompleteMoves⟩

private theorem s2Step99Complete_apart : List.Disjoint (s2Step99CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [786, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] := by
  have nd : ((s2Step99CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[786, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step99Complete_owned : (s2Step99CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step99EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step99EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private def s2Step99CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,732),(733,785),(786,793),(795,799),(800,802),(803,804),(805,806),(807,846),(847,849),(850,867),(868,877)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step99CompleteRelocationMove0Borrowed : Arena := ⟨s2Step99ExitGvAfter.live∪{731},Finset.union_subset s2Step99ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step99CompleteRelocationMove1Borrowed : Arena := ⟨s2Step99CompleteRelocationMove0After.live∪{732},Finset.union_subset s2Step99CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step99CompleteRelocation_move0_owned : 804∈s2Step99ExitGvAfter.live := by norm_num [s2Step99ExitGvAfter,arenaWires]

private theorem s2Step99CompleteRelocation_move0_reserve : s2Step99ExitGvAfter.reserve {731}=some s2Step99CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step99ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step99CompleteRelocation_move0_retire : s2Step99CompleteRelocationMove0Borrowed.retireSet {804}=s2Step99CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step99CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step99CompleteRelocationMove0Borrowed,s2Step99ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step99CompleteRelocation_move1_owned : 801∈s2Step99CompleteRelocationMove0After.live := by norm_num [s2Step99CompleteRelocationMove0After,arenaWires]

private theorem s2Step99CompleteRelocation_move1_reserve : s2Step99CompleteRelocationMove0After.reserve {732}=some s2Step99CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step99CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step99CompleteRelocation_move1_retire : s2Step99CompleteRelocationMove1Borrowed.retireSet {801}=s2Step99EarlyControlArena := by
  unfold Arena.retireSet s2Step99EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step99CompleteRelocationMove1Borrowed,s2Step99CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step99CompleteRelocation_checked : s2Step99ExitGvAfter.checkRepack [(804,731),(801,732)]=some s2Step99EarlyControlArena := by
  have tail2 : s2Step99EarlyControlArena.checkRepack []=some s2Step99EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step99CompleteRelocationMove0After s2Step99CompleteRelocationMove1Borrowed s2Step99EarlyControlArena s2Step99EarlyControlArena 801 732 []
    s2Step99CompleteRelocation_move1_owned s2Step99CompleteRelocation_move1_reserve s2Step99CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step99ExitGvAfter s2Step99CompleteRelocationMove0Borrowed s2Step99CompleteRelocationMove0After s2Step99EarlyControlArena 804 731 [(801,732)]
    s2Step99CompleteRelocation_move0_owned s2Step99CompleteRelocation_move0_reserve s2Step99CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step99Complete_repack : s2Step99ExitGvAfter.checkRepack s2Step99CompleteMoves=some s2Step99EarlyControlArena := by
  simpa only [s2Step99CompleteMoves] using s2Step99CompleteRelocation_checked

private theorem s2Step99EarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2Step99EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step99EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99EarlyControl_branch : compileHmrBranchRetirement s2Step99EarlyControlSigmaArena 781=some s2Step99EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step99EarlyControl_branchOwned
  · ext q
    simp [s2Step99EarlyControlOutputArena,s2Step99EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step99EarlyControl_classEqualityBorrow : s2Step99EarlyControlPositiveArena.checkBorrow (([786, 793] : List Wire).length-1) s2Step99EarlyControlLog.classWork=some s2Step99EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step99EarlyControlPositiveArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step99EarlyControlEqualityArena,s2Step99EarlyControlPositiveArena,s2Step99EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step99EarlyControl_classEqualityOwned : ([786, 793] : List Wire).toFinset⊆s2Step99EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step99EarlyControlPositiveArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99EarlyControl_classEquality : compileHmrEqualityLog s2Step99EarlyControlPositiveArena [786, 793] 0 s2Step99EarlyControlLog.classWork=some (s2Step99EarlyControlEqualityArena,s2Step99EarlyControlLog.classWork,s2Step99EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step99EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step99EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step99EarlyControl_classOwned : ([777, 849, 786] : List Wire).toFinset⊆s2Step99EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step99EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99EarlyControl_positiveBorrow : s2Step99EarlyControlZeroArena.checkBorrow (1) s2Step99EarlyControlLog.positiveWork=some s2Step99EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step99EarlyControlZeroArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step99EarlyControlPositiveArena,s2Step99EarlyControlZeroArena,s2Step99EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step99EarlyControl_class : compileHmrSourceClassLog s2Step99EarlyControlZeroArena false 777 s2Step99EarlyControlZeroPlan.top 0 786 s2Step99EarlyControlLog.positiveWork s2Step99EarlyControlLog.classWork=some s2Step99EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step99EarlyControlClassPlan s2Step99EarlyControlZeroArena false 777 s2Step99EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s2Step99EarlyControl_classOwned
  · exact s2Step99EarlyControl_positiveBorrow
  · exact s2Step99EarlyControl_classEquality

private theorem s2Step99EarlyControl_entryRecordOwned : ([781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step99EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step99EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s2Step99EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step99EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99EarlyControl_fitBorrow : s2Step99EarlyControlFlagArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step99EarlyControlLog.recordFresh=some s2Step99EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step99EarlyControlFlagArena (fun q => (0≤q ∧ q<879)) rfl
      decide +kernel
    · ext q
      simp [s2Step99EarlyControlFittedArena,s2Step99EarlyControlFlagArena,s2Step99EarlyControlLog,arenaWires]

private theorem s2Step99EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step99EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step99EarlyControlFlagArena (fun q => (0≤q ∧ q<879)) rfl
  decide +kernel

private theorem s2Step99EarlyControl_fit : compileHmrRecordGrowLog s2Step99EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step99EarlyControlLog.recordFresh=some s2Step99EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step99EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step99EarlyControl_fitBorrow

private theorem s2Step99EarlyControl_flagsBorrow : s2Step99EarlyControlEqualityArena.checkBorrow (6) s2Step99EarlyControlLog.flagWork=some s2Step99EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step99EarlyControlEqualityArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step99EarlyControlFlagArena,s2Step99EarlyControlEqualityArena,s2Step99EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step99EarlyControl_flagsOwned : ([799, 253, 252, 251] : List Wire).toFinset⊆s2Step99EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step99EarlyControlEqualityArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99EarlyControl_flags : compileHmrFlagsLog s2Step99EarlyControlClassPlan.equalityArena s2Step99EarlyControlClassPlan.equality.top 253 252 251 s2Step99EarlyControlLog.flagWork=some s2Step99EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step99EarlyControl_flagsOwned⟩
  · exact s2Step99EarlyControl_flagsBorrow

private theorem s2Step99EarlyControl_historyBorrow : s2Step99EarlyControlArena.checkBorrow ((34-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).length)) s2Step99EarlyControlLog.recordFresh=some s2Step99EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step99EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step99EarlyControlHistoryArena,s2Step99EarlyControlArena,s2Step99EarlyControlLog,arenaWires]

private theorem s2Step99EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] : List Wire).toFinset⊆s2Step99EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step99EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99EarlyControl_history : compileHmrRecordGrowLog s2Step99EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step99EarlyControlLog.recordFresh=some s2Step99EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step99EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step99EarlyControl_historyBorrow

private theorem s2Step99EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s2Step99EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step99EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s2Step99EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step99EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99EarlyControl_sigmaRelease : s2Step99EarlyControlHistoryArena.release {786} (fun _ => false)=some s2Step99EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step99EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step99EarlyControlSigmaArena,s2Step99EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step99EarlyControl_sigma : compileHmrSigmaDropLog s2Step99EarlyControlHistoryArena false 0 0 254 786 []=some s2Step99EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step99EarlyControl_sigmaOwned⟩
  · exact s2Step99EarlyControl_sigmaRelease

private theorem s2Step99EarlyControl_zeroBorrow : s2Step99EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step99EarlyControlLog.zeroWork=some s2Step99EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step99EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step99EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
      decide +kernel
    · ext q
      simp [s2Step99EarlyControlZeroArena,s2Step99EarlyControlArena,s2Step99EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step99EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step99EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step99EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<801) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99EarlyControl_zero : compileHmrEqualityLog s2Step99EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step99EarlyControlLog.zeroWork=some (s2Step99EarlyControlZeroArena,s2Step99EarlyControlLog.zeroWork,s2Step99EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step99EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step99EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step99EarlyControl_logged : s2Step99EarlyControlPlan.Logged s2Step99EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 786 254 253 252 251 781 34 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step99EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step99EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step99EarlyControl_zero
  · exact s2Step99EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step99EarlyControl_flags
  · exact s2Step99EarlyControl_fit
  · exact s2Step99EarlyControl_history
  · exact s2Step99EarlyControl_sigma
  · exact s2Step99EarlyControl_branch

private theorem s2Step99EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step99EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 786 254 253 252 251 781 34 s2Step99EarlyControlLog=some s2Step99EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step99EarlyControlPlan s2Step99EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 786 254 253 252 251 781 34 s2Step99EarlyControl_logged

private def s2Step99EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step99EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩

private def s2Step99EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩

private def s2Step99EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791],771⟩

private def s2Step99FrontBank : WindowBank := ⟨s2Step99EntryFRow,s2Step99EntryGRow,s2Step99EntryFvRow,s2Step99EntryGvRow⟩

private def s2Step99Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 793, 768]

private def s2Step99Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 799, 785, 806, 802, 769]

private def s2Step99Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851, 770]

private def s2Step99Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794, 846, 849, 771]

private theorem s2Step99Counter_apart : Disjoint s2Step99HeadFvAfter.live s2Step99CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step99HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99Counter_borrowed : s2Step99HeadFvAfter.checkBorrow 4 s2Step99CounterWork=some s2Step99CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step99HeadFvAfter s2Step99CounterDuring s2Step99CounterWork.toFinset s2Step99Counter_bounded s2Step99Counter_apart rfl

private theorem s2Step99Counter_owned : (786::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step99HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step99HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99Counter_checked : compileHmrCounterStepLog s2Step99HeadFvAfter true 786 [772, 773, 774, 775, 776, 777] s2Step99CounterWork=some s2Step99CounterDuring := by
  have owned : ∀q∈786::[772, 773, 774, 775, 776, 777],q∈s2Step99HeadFvAfter.live := fun q hq => s2Step99Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step99Counter_borrowed

private def s2Step99EntryFAfter : Arena := s2Step99EntryFBefore

private theorem s2Step99EntryBank_incomingDistinct : ([s2Step99EntryFRow,s2Step99EntryGRow,s2Step99EntryFvRow,s2Step99EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99EntryF_Incoming : rowsOwned s2Step99EntryFBefore [s2Step99EntryFRow,s2Step99EntryGRow,s2Step99EntryFvRow,s2Step99EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step99EntryFRow,s2Step99EntryGRow,s2Step99EntryFvRow,s2Step99EntryGvRow] 0 s2Step99EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step99EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99EntryBank_outgoingOwned : rowsOwned s2Step99EntryGvAfter [s2Step99EntryFOut,s2Step99EntryGOut,s2Step99EntryFvOut,s2Step99EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step99EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99EntryF_Outgoing : rowsOwned s2Step99EntryGvAfter [s2Step99EntryFOut,s2Step99EntryGOut,s2Step99EntryFvOut,s2Step99EntryGvOut] :=
  hmrRows_owned_drop s2Step99EntryGvAfter [s2Step99EntryFOut,s2Step99EntryGOut,s2Step99EntryFvOut,s2Step99EntryGvOut] 0 s2Step99EntryBank_outgoingOwned

private theorem s2Step99EntryF_distinct : (s2Step99EntryFRow.sign::s2Step99EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99EntryF_owned : (s2Step99EntryFRow.sign::s2Step99EntryFRow.payload).toFinset⊆s2Step99EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step99EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99EntryF_reserved : s2Step99EntryFBefore.reserve s2Step99EntryFFresh.toFinset=some s2Step99EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step99EntryFFresh,arenaWires]
  · norm_num [s2Step99EntryFBefore,s2Step99EntryFFresh,arenaWires]
  · simp only [s2Step99EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step99EntryF_checked : planRowResizeLog s2Step99EntryFBefore s2Step99EntryFRow 221 s2Step99EntryFFresh=
    some (s2Step99EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩,growRow 768 s2Step99EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step99EntryFBefore s2Step99EntryFAfter s2Step99EntryFRow 221 s2Step99EntryFFresh
    s2Step99EntryF_distinct s2Step99EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step99EntryF_reserved
  have rowEq : WindowRow.mk (s2Step99EntryFRow.payload++s2Step99EntryFFresh) s2Step99EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step99EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99EntryFvAfter : Arena := s2Step99EntryGAfter

private def s2Step99EntryFvBefore : Arena := s2Step99EntryGAfter

private theorem s2Step99EntryFv_Incoming : rowsOwned s2Step99EntryFvBefore [s2Step99EntryFvRow,s2Step99EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step99EntryFRow,s2Step99EntryGRow,s2Step99EntryFvRow,s2Step99EntryGvRow] 2 s2Step99EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step99EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99EntryFv_Outgoing : rowsOwned s2Step99EntryGvAfter [s2Step99EntryFvOut,s2Step99EntryGvOut] :=
  hmrRows_owned_drop s2Step99EntryGvAfter [s2Step99EntryFOut,s2Step99EntryGOut,s2Step99EntryFvOut,s2Step99EntryGvOut] 2 s2Step99EntryBank_outgoingOwned

private theorem s2Step99EntryFv_distinct : (s2Step99EntryFvRow.sign::s2Step99EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99EntryFv_owned : (s2Step99EntryFvRow.sign::s2Step99EntryFvRow.payload).toFinset⊆s2Step99EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step99EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99EntryFv_reserved : s2Step99EntryFvBefore.reserve s2Step99EntryFvFresh.toFinset=some s2Step99EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step99EntryFvFresh,arenaWires]
  · norm_num [s2Step99EntryFvBefore,s2Step99EntryGAfter,s2Step99EntryFvFresh,arenaWires]
  · simp only [s2Step99EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step99EntryFv_checked : planRowResizeLog s2Step99EntryFvBefore s2Step99EntryFvRow 64 s2Step99EntryFvFresh=
    some (s2Step99EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩,growRow 770 s2Step99EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step99EntryFvBefore s2Step99EntryFvAfter s2Step99EntryFvRow 64 s2Step99EntryFvFresh
    s2Step99EntryFv_distinct s2Step99EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step99EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step99EntryFvRow.payload++s2Step99EntryFvFresh) s2Step99EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step99EntryGBefore : Arena := s2Step99EntryFBefore

private theorem s2Step99EntryG_Incoming : rowsOwned s2Step99EntryGBefore [s2Step99EntryGRow,s2Step99EntryFvRow,s2Step99EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step99EntryFRow,s2Step99EntryGRow,s2Step99EntryFvRow,s2Step99EntryGvRow] 1 s2Step99EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step99EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99EntryG_Outgoing : rowsOwned s2Step99EntryGvAfter [s2Step99EntryGOut,s2Step99EntryFvOut,s2Step99EntryGvOut] :=
  hmrRows_owned_drop s2Step99EntryGvAfter [s2Step99EntryFOut,s2Step99EntryGOut,s2Step99EntryFvOut,s2Step99EntryGvOut] 1 s2Step99EntryBank_outgoingOwned

private theorem s2Step99EntryG_distinct : (s2Step99EntryGRow.sign::s2Step99EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99EntryG_owned : (s2Step99EntryGRow.sign::s2Step99EntryGRow.payload).toFinset⊆s2Step99EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step99EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99EntryG_reserved : s2Step99EntryGBefore.reserve s2Step99EntryGFresh.toFinset=some s2Step99EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step99EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step99EntryGBefore,s2Step99EntryFBefore,s2Step99EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step99EntryGAfter,s2Step99EntryGBefore,s2Step99EntryFBefore,s2Step99EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step99EntryG_checked : planRowResizeLog s2Step99EntryGBefore s2Step99EntryGRow 221 s2Step99EntryGFresh=
    some (s2Step99EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 799, 785, 806],769⟩,growRow 769 s2Step99EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step99EntryGBefore s2Step99EntryGAfter s2Step99EntryGRow 221 s2Step99EntryGFresh
    s2Step99EntryG_distinct s2Step99EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step99EntryG_reserved
  have rowEq : WindowRow.mk (s2Step99EntryGRow.payload++s2Step99EntryGFresh) s2Step99EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 799, 785, 806],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step99EntryGvBefore : Arena := s2Step99EntryGAfter

private theorem s2Step99EntryGv_Incoming : rowsOwned s2Step99EntryGvBefore [s2Step99EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step99EntryFRow,s2Step99EntryGRow,s2Step99EntryFvRow,s2Step99EntryGvRow] 3 s2Step99EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step99EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99EntryGv_Outgoing : rowsOwned s2Step99EntryGvAfter [s2Step99EntryGvOut] :=
  hmrRows_owned_drop s2Step99EntryGvAfter [s2Step99EntryFOut,s2Step99EntryGOut,s2Step99EntryFvOut,s2Step99EntryGvOut] 3 s2Step99EntryBank_outgoingOwned

private theorem s2Step99EntryGv_distinct : (s2Step99EntryGvRow.sign::s2Step99EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99EntryGv_owned : (s2Step99EntryGvRow.sign::s2Step99EntryGvRow.payload).toFinset⊆s2Step99EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step99EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<786) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99EntryGv_reserved : s2Step99EntryGvBefore.reserve s2Step99EntryGvFresh.toFinset=some s2Step99EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step99EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step99EntryGvBefore,s2Step99EntryGAfter,s2Step99EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step99EntryGvAfter,s2Step99EntryGvBefore,s2Step99EntryGAfter,s2Step99EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step99EntryGv_checked : planRowResizeLog s2Step99EntryGvBefore s2Step99EntryGvRow 64 s2Step99EntryGvFresh=
    some (s2Step99EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794, 846],771⟩,growRow 771 s2Step99EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step99EntryGvBefore s2Step99EntryGvAfter s2Step99EntryGvRow 64 s2Step99EntryGvFresh
    s2Step99EntryGv_distinct s2Step99EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step99EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step99EntryGvRow.payload++s2Step99EntryGvFresh) s2Step99EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794, 846],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step99EntryBank_rows : planWindowRowsLog s2Step99EntryFBefore [(s2Step99EntryFRow,221),(s2Step99EntryGRow,221),(s2Step99EntryFvRow,64),(s2Step99EntryGvRow,64)] [s2Step99EntryFFresh,s2Step99EntryGFresh,s2Step99EntryFvFresh,s2Step99EntryGvFresh]=
    some (s2Step99EntryGvAfter,[s2Step99EntryFOut,s2Step99EntryGOut,s2Step99EntryFvOut,s2Step99EntryGvOut],(growRow 768 s2Step99EntryFFresh ++ (growRow 769 s2Step99EntryGFresh ++ (growRow 770 s2Step99EntryFvFresh ++ (growRow 771 s2Step99EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step99EntryGvAfter [] []=some (s2Step99EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step99EntryGvBefore s2Step99EntryGvAfter s2Step99EntryGvAfter
    s2Step99EntryGvRow s2Step99EntryGvOut 64 s2Step99EntryGvFresh [] [] []
    (growRow 771 s2Step99EntryGvFresh) ([]) s2Step99EntryGv_Incoming s2Step99EntryGv_checked h4 s2Step99EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step99EntryFvBefore s2Step99EntryFvAfter s2Step99EntryGvAfter
    s2Step99EntryFvRow s2Step99EntryFvOut 64 s2Step99EntryFvFresh [(s2Step99EntryGvRow,64)] [s2Step99EntryGvFresh] [s2Step99EntryGvOut]
    (growRow 770 s2Step99EntryFvFresh) ((growRow 771 s2Step99EntryGvFresh ++ [])) s2Step99EntryFv_Incoming s2Step99EntryFv_checked h3 s2Step99EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step99EntryGBefore s2Step99EntryGAfter s2Step99EntryGvAfter
    s2Step99EntryGRow s2Step99EntryGOut 221 s2Step99EntryGFresh [(s2Step99EntryFvRow,64),(s2Step99EntryGvRow,64)] [s2Step99EntryFvFresh,s2Step99EntryGvFresh] [s2Step99EntryFvOut,s2Step99EntryGvOut]
    (growRow 769 s2Step99EntryGFresh) ((growRow 770 s2Step99EntryFvFresh ++ (growRow 771 s2Step99EntryGvFresh ++ []))) s2Step99EntryG_Incoming s2Step99EntryG_checked h2 s2Step99EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step99EntryFBefore s2Step99EntryFAfter s2Step99EntryGvAfter
    s2Step99EntryFRow s2Step99EntryFOut 221 s2Step99EntryFFresh [(s2Step99EntryGRow,221),(s2Step99EntryFvRow,64),(s2Step99EntryGvRow,64)] [s2Step99EntryGFresh,s2Step99EntryFvFresh,s2Step99EntryGvFresh] [s2Step99EntryGOut,s2Step99EntryFvOut,s2Step99EntryGvOut]
    (growRow 768 s2Step99EntryFFresh) ((growRow 769 s2Step99EntryGFresh ++ (growRow 770 s2Step99EntryFvFresh ++ (growRow 771 s2Step99EntryGvFresh ++ [])))) s2Step99EntryF_Incoming s2Step99EntryF_checked h1 s2Step99EntryF_Outgoing
  exact h0

private theorem s2Step99EntryBank_checked : compileHmrBankResizeLog .entry s2Step99EntryFBefore ⟨s2Step99EntryFRow,s2Step99EntryGRow,s2Step99EntryFvRow,s2Step99EntryGvRow⟩ ⟨221,221,64,64⟩ [s2Step99EntryFFresh,s2Step99EntryGFresh,s2Step99EntryFvFresh,s2Step99EntryGvFresh]=
    some (s2Step99EntryGvAfter,⟨s2Step99EntryFOut,s2Step99EntryGOut,s2Step99EntryFvOut,s2Step99EntryGvOut⟩,(growRow 768 s2Step99EntryFFresh ++ (growRow 769 s2Step99EntryGFresh ++ (growRow 770 s2Step99EntryFvFresh ++ (growRow 771 s2Step99EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step99EntryBank_rows]
  rfl

private def s2Step99ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<731) ∨ (733≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99ExitFBefore : Arena := s2Step99ExitGAfter

private def s2Step99ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 793],768⟩

private def s2Step99ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851],770⟩

private def s2Step99ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 799, 785, 806, 802],769⟩

private def s2Step99ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794, 846, 849],771⟩

private theorem s2Step99ExitBank_incomingDistinct : ([s2Step99ExitGRow,s2Step99ExitFRow,s2Step99ExitFvRow,s2Step99ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99ExitF_Incoming : rowsOwned s2Step99ExitFBefore [s2Step99ExitFRow,s2Step99ExitFvRow,s2Step99ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step99ExitGRow,s2Step99ExitFRow,s2Step99ExitFvRow,s2Step99ExitGvRow] 1 s2Step99ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step99ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99ExitBank_outgoingOwned : rowsOwned s2Step99ExitGvAfter [s2Step99ExitGOut,s2Step99ExitFOut,s2Step99ExitFvOut,s2Step99ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step99ExitGvAfter (fun q => (0≤q ∧ q<731) ∨ (733≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99ExitF_Outgoing : rowsOwned s2Step99ExitGvAfter [s2Step99ExitFOut,s2Step99ExitFvOut,s2Step99ExitGvOut] :=
  hmrRows_owned_drop s2Step99ExitGvAfter [s2Step99ExitGOut,s2Step99ExitFOut,s2Step99ExitFvOut,s2Step99ExitGvOut] 1 s2Step99ExitBank_outgoingOwned

private theorem s2Step99ExitF_distinct : (s2Step99ExitFRow.sign::s2Step99ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99ExitF_owned : (s2Step99ExitFRow.sign::s2Step99ExitFRow.payload).toFinset⊆s2Step99ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step99ExitFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99ExitF_retired : s2Step99ExitFBefore.retireSet s2Step99ExitFExtra.toFinset=s2Step99ExitFAfter := by
  unfold Arena.retireSet s2Step99ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step99ExitFBefore,s2Step99ExitGAfter,s2Step99ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step99ExitF_checked : planRowResizeLog s2Step99ExitFBefore s2Step99ExitFRow 219 []=
    some (s2Step99ExitFAfter,s2Step99ExitFOut,shrinkRow 768 s2Step99ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step99ExitFBefore s2Step99ExitFRow 219 s2Step99ExitF_distinct s2Step99ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step99ExitFRow.payload.take 219) s2Step99ExitFRow.sign=s2Step99ExitFOut := by decide +kernel
  have hi : s2Step99ExitFRow.payload.drop 219=s2Step99ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step99ExitF_retired] at result
  exact result

private def s2Step99ExitFvAfter : Arena := s2Step99ExitFAfter

private def s2Step99ExitFvBefore : Arena := s2Step99ExitFAfter

private theorem s2Step99ExitFv_Incoming : rowsOwned s2Step99ExitFvBefore [s2Step99ExitFvRow,s2Step99ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step99ExitGRow,s2Step99ExitFRow,s2Step99ExitFvRow,s2Step99ExitGvRow] 2 s2Step99ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step99ExitFvBefore (fun q => (0≤q ∧ q<731) ∨ (733≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99ExitFv_Outgoing : rowsOwned s2Step99ExitGvAfter [s2Step99ExitFvOut,s2Step99ExitGvOut] :=
  hmrRows_owned_drop s2Step99ExitGvAfter [s2Step99ExitGOut,s2Step99ExitFOut,s2Step99ExitFvOut,s2Step99ExitGvOut] 2 s2Step99ExitBank_outgoingOwned

private theorem s2Step99ExitFv_distinct : (s2Step99ExitFvRow.sign::s2Step99ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99ExitFv_owned : (s2Step99ExitFvRow.sign::s2Step99ExitFvRow.payload).toFinset⊆s2Step99ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step99ExitFvBefore (fun q => (0≤q ∧ q<731) ∨ (733≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99ExitFv_reserved : s2Step99ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step99ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step99ExitFv_checked : planRowResizeLog s2Step99ExitFvBefore s2Step99ExitFvRow 65 []=
    some (s2Step99ExitFvAfter,s2Step99ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step99ExitFvBefore s2Step99ExitFvAfter s2Step99ExitFvRow 65 []
    s2Step99ExitFv_distinct s2Step99ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step99ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step99ExitFvRow.payload++[]) s2Step99ExitFvRow.sign=s2Step99ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step99ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private theorem s2Step99ExitG_Incoming : rowsOwned s2Step99ExitGBefore [s2Step99ExitGRow,s2Step99ExitFRow,s2Step99ExitFvRow,s2Step99ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step99ExitGRow,s2Step99ExitFRow,s2Step99ExitFvRow,s2Step99ExitGvRow] 0 s2Step99ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step99ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99ExitG_Outgoing : rowsOwned s2Step99ExitGvAfter [s2Step99ExitGOut,s2Step99ExitFOut,s2Step99ExitFvOut,s2Step99ExitGvOut] :=
  hmrRows_owned_drop s2Step99ExitGvAfter [s2Step99ExitGOut,s2Step99ExitFOut,s2Step99ExitFvOut,s2Step99ExitGvOut] 0 s2Step99ExitBank_outgoingOwned

private theorem s2Step99ExitG_distinct : (s2Step99ExitGRow.sign::s2Step99ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99ExitG_owned : (s2Step99ExitGRow.sign::s2Step99ExitGRow.payload).toFinset⊆s2Step99ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step99ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99ExitG_retired : s2Step99ExitGBefore.retireSet s2Step99ExitGExtra.toFinset=s2Step99ExitGAfter := by
  unfold Arena.retireSet s2Step99ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step99ExitGBefore,s2Step99ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step99ExitG_checked : planRowResizeLog s2Step99ExitGBefore s2Step99ExitGRow 218 []=
    some (s2Step99ExitGAfter,s2Step99ExitGOut,shrinkRow 769 s2Step99ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step99ExitGBefore s2Step99ExitGRow 218 s2Step99ExitG_distinct s2Step99ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step99ExitGRow.payload.take 218) s2Step99ExitGRow.sign=s2Step99ExitGOut := by decide +kernel
  have hi : s2Step99ExitGRow.payload.drop 218=s2Step99ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step99ExitG_retired] at result
  exact result

private def s2Step99ExitGvBefore : Arena := s2Step99ExitFAfter

private theorem s2Step99ExitGv_Incoming : rowsOwned s2Step99ExitGvBefore [s2Step99ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step99ExitGRow,s2Step99ExitFRow,s2Step99ExitFvRow,s2Step99ExitGvRow] 3 s2Step99ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step99ExitGvBefore (fun q => (0≤q ∧ q<731) ∨ (733≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99ExitGv_Outgoing : rowsOwned s2Step99ExitGvAfter [s2Step99ExitGvOut] :=
  hmrRows_owned_drop s2Step99ExitGvAfter [s2Step99ExitGOut,s2Step99ExitFOut,s2Step99ExitFvOut,s2Step99ExitGvOut] 3 s2Step99ExitBank_outgoingOwned

private theorem s2Step99ExitGv_distinct : (s2Step99ExitGvRow.sign::s2Step99ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99ExitGv_owned : (s2Step99ExitGvRow.sign::s2Step99ExitGvRow.payload).toFinset⊆s2Step99ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step99ExitGvBefore (fun q => (0≤q ∧ q<731) ∨ (733≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99ExitGv_retired : s2Step99ExitGvBefore.retireSet s2Step99ExitGvExtra.toFinset=s2Step99ExitGvAfter := by
  unfold Arena.retireSet s2Step99ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step99ExitGvBefore,s2Step99ExitFAfter,s2Step99ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step99ExitGv_checked : planRowResizeLog s2Step99ExitGvBefore s2Step99ExitGvRow 62 []=
    some (s2Step99ExitGvAfter,s2Step99ExitGvOut,shrinkRow 771 s2Step99ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step99ExitGvBefore s2Step99ExitGvRow 62 s2Step99ExitGv_distinct s2Step99ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step99ExitGvRow.payload.take 62) s2Step99ExitGvRow.sign=s2Step99ExitGvOut := by decide +kernel
  have hi : s2Step99ExitGvRow.payload.drop 62=s2Step99ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step99ExitGv_retired] at result
  exact result

private theorem s2Step99ExitBank_rows : planWindowRowsLog s2Step99ExitGBefore [(s2Step99ExitGRow,218),(s2Step99ExitFRow,219),(s2Step99ExitFvRow,65),(s2Step99ExitGvRow,62)] [[],[],[],[]]=
    some (s2Step99ExitGvAfter,[s2Step99ExitGOut,s2Step99ExitFOut,s2Step99ExitFvOut,s2Step99ExitGvOut],(shrinkRow 769 s2Step99ExitGExtra ++ (shrinkRow 768 s2Step99ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step99ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step99ExitGvAfter [] []=some (s2Step99ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step99ExitGvBefore s2Step99ExitGvAfter s2Step99ExitGvAfter
    s2Step99ExitGvRow s2Step99ExitGvOut 62 [] [] [] []
    (shrinkRow 771 s2Step99ExitGvExtra) ([]) s2Step99ExitGv_Incoming s2Step99ExitGv_checked h4 s2Step99ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step99ExitFvBefore s2Step99ExitFvAfter s2Step99ExitGvAfter
    s2Step99ExitFvRow s2Step99ExitFvOut 65 [] [(s2Step99ExitGvRow,62)] [[]] [s2Step99ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step99ExitGvExtra ++ [])) s2Step99ExitFv_Incoming s2Step99ExitFv_checked h3 s2Step99ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step99ExitFBefore s2Step99ExitFAfter s2Step99ExitGvAfter
    s2Step99ExitFRow s2Step99ExitFOut 219 [] [(s2Step99ExitFvRow,65),(s2Step99ExitGvRow,62)] [[],[]] [s2Step99ExitFvOut,s2Step99ExitGvOut]
    (shrinkRow 768 s2Step99ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step99ExitGvExtra ++ []))) s2Step99ExitF_Incoming s2Step99ExitF_checked h2 s2Step99ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step99ExitGBefore s2Step99ExitGAfter s2Step99ExitGvAfter
    s2Step99ExitGRow s2Step99ExitGOut 218 [] [(s2Step99ExitFRow,219),(s2Step99ExitFvRow,65),(s2Step99ExitGvRow,62)] [[],[],[]] [s2Step99ExitFOut,s2Step99ExitFvOut,s2Step99ExitGvOut]
    (shrinkRow 769 s2Step99ExitGExtra) ((shrinkRow 768 s2Step99ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step99ExitGvExtra ++ [])))) s2Step99ExitG_Incoming s2Step99ExitG_checked h1 s2Step99ExitG_Outgoing
  exact h0

private theorem s2Step99ExitBank_checked : compileHmrBankResizeLog .exit s2Step99ExitGBefore ⟨s2Step99ExitFRow,s2Step99ExitGRow,s2Step99ExitFvRow,s2Step99ExitGvRow⟩ ⟨219,218,65,62⟩ [[],[],[],[]]=
    some (s2Step99ExitGvAfter,⟨s2Step99ExitFOut,s2Step99ExitGOut,s2Step99ExitFvOut,s2Step99ExitGvOut⟩,(shrinkRow 769 s2Step99ExitGExtra ++ (shrinkRow 768 s2Step99ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step99ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step99ExitBank_rows]
  rfl

private theorem s2Step99Add0_apart : Disjoint s2Step99Add0Arena.live s2Step99Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step99Add0Arena (fun q => (0≤q ∧ q<878)) rfl
  decide +kernel

private theorem s2Step99Add0_card : s2Step99Add0Arena.live.card=878 := by
  decide +kernel

private theorem s2Step99Add0_borrowed : s2Step99Add0Arena.checkBorrow (hmrHybridCount s2Step99Add0Arena s2Step99Add0B.length) s2Step99Add0Work=some s2Step99Add0During := by
  have len : s2Step99Add0Work.length=hmrHybridCount s2Step99Add0Arena s2Step99Add0B.length := by
    rw [hmrHybridCount,s2Step99Add0_card]
    decide +kernel
  have nd : s2Step99Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step99Add0Arena s2Step99Add0During s2Step99Add0Work.toFinset s2Step99Add0_bounded s2Step99Add0_apart rfl

private theorem s2Step99Add0_distinct : (867::781::877::(s2Step99Add0A++s2Step99Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99Add0_owned : (867::781::877::(s2Step99Add0A++s2Step99Add0B)).toFinset⊆s2Step99Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step99Add0Arena (fun q => (0≤q ∧ q<878)) rfl
  decide +kernel

private theorem s2Step99Add0_checked : compileHmrHybridCinLog s2Step99Add0Arena 781 867 877 s2Step99Add0A s2Step99Add0B s2Step99Add0Work=some s2Step99Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step99Add0Arena s2Step99Add0During 781 867 877 s2Step99Add0A s2Step99Add0B s2Step99Add0Work
    (by decide +kernel) (by decide +kernel) s2Step99Add0_distinct
    (fun q hq => s2Step99Add0_owned (List.mem_toFinset.mpr hq)) s2Step99Add0_borrowed

private theorem s2Step99Add1_apart : Disjoint s2Step99Add1Arena.live s2Step99Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step99Add1Arena (fun q => (0≤q ∧ q<878)) rfl
  decide +kernel

private theorem s2Step99Add1_card : s2Step99Add1Arena.live.card=878 := by
  decide +kernel

private theorem s2Step99Add1_borrowed : s2Step99Add1Arena.checkBorrow (hmrHybridCount s2Step99Add1Arena s2Step99Add1B.length) s2Step99Add1Work=some s2Step99Add1During := by
  have len : s2Step99Add1Work.length=hmrHybridCount s2Step99Add1Arena s2Step99Add1B.length := by
    rw [hmrHybridCount,s2Step99Add1_card]
    decide +kernel
  have nd : s2Step99Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step99Add1Arena s2Step99Add1During s2Step99Add1Work.toFinset s2Step99Add1_bounded s2Step99Add1_apart rfl

private theorem s2Step99Add1_distinct : (867::781::877::(s2Step99Add1A++s2Step99Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99Add1_owned : (867::781::877::(s2Step99Add1A++s2Step99Add1B)).toFinset⊆s2Step99Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step99Add1Arena (fun q => (0≤q ∧ q<878)) rfl
  decide +kernel

private theorem s2Step99Add1_checked : compileHmrHybridCinLog s2Step99Add1Arena 781 867 877 s2Step99Add1A s2Step99Add1B s2Step99Add1Work=some s2Step99Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step99Add1Arena s2Step99Add1During 781 867 877 s2Step99Add1A s2Step99Add1B s2Step99Add1Work
    (by decide +kernel) (by decide +kernel) s2Step99Add1_distinct
    (fun q hq => s2Step99Add1_owned (List.mem_toFinset.mpr hq)) s2Step99Add1_borrowed

private theorem s2Step99F4_apart : Disjoint (s2Step99Add0A++s2Step99Add0B).toFinset (s2Step99Add1A++s2Step99Add1B).toFinset := by
  have nd : ((s2Step99Add0A++s2Step99Add0B)++(s2Step99Add1A++s2Step99Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step99F4_carry : s2Step99F4FlagArena.checkBorrow 1 [877]=some s2Step99Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step99F4FlagArena,s2Step99HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step99F4FlagArena,s2Step99HeadFvAfter,s2Step99Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step99F4_distinct : (786::781::867::877::((s2Step99Add0A++s2Step99Add1A)++(s2Step99Add0B++s2Step99Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99F4_flag : s2Step99HeadFvAfter.checkBorrow 1 [867]=some s2Step99F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step99HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step99F4_owned : (786::781::((s2Step99Add0A++s2Step99Add1A)++(s2Step99Add0B++s2Step99Add1B))).toFinset⊆s2Step99HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step99HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99F4_checked : compileHmrHybridF4Log s2Step99HeadFvAfter 786 781 s2Step99Add0A s2Step99Add0B s2Step99Add1A s2Step99Add1B [867] [877] s2Step99Add0Work s2Step99Add1Work=some s2Step99F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step99HeadFvAfter s2Step99F4FlagArena s2Step99Add0Arena s2Step99Add0During s2Step99Add1During 786 781
    s2Step99Add0A s2Step99Add0B s2Step99Add1A s2Step99Add1B [867] [877] s2Step99Add0Work s2Step99Add1Work
    (fun q hq => s2Step99F4_owned (List.mem_toFinset.mpr hq)) s2Step99F4_flag s2Step99F4_carry
    s2Step99F4_distinct s2Step99F4_apart s2Step99Add0_checked s2Step99Add1_checked

private theorem s2Step99Front_branch : s2Step99FrontSigmaArena.checkBorrow 1 [781]=some s2Step99HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step99FrontSigmaArena,s2Step99EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step99FrontSigmaArena,s2Step99EntryGvAfter,s2Step99HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step99Front_entry : HmrFrontEntryValid s2Step99EntryFBefore s2Step99FrontBank 221 64 ⟨219,218,65,62⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step99FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step99EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step99EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (787≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step99FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step99Front_sigma : s2Step99EntryGvAfter.checkBorrow 1 [786]=some s2Step99FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step99EntryGvAfter,arenaWires]
  · rfl

private def s2Step99HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99HeadFBefore : Arena := s2Step99HeadGAfter

private def s2Step99HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732],768⟩

private def s2Step99HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩

private def s2Step99HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 799, 785, 806],769⟩

private def s2Step99HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794, 846],771⟩

private theorem s2Step99HeadBank_incomingDistinct : ([s2Step99HeadGRow,s2Step99HeadFRow,s2Step99HeadGvRow,s2Step99HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99HeadF_Incoming : rowsOwned s2Step99HeadFBefore [s2Step99HeadFRow,s2Step99HeadGvRow,s2Step99HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step99HeadGRow,s2Step99HeadFRow,s2Step99HeadGvRow,s2Step99HeadFvRow] 1 s2Step99HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step99HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99HeadBank_outgoingOwned : rowsOwned s2Step99HeadFvAfter [s2Step99HeadGOut,s2Step99HeadFOut,s2Step99HeadGvOut,s2Step99HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step99HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99HeadF_Outgoing : rowsOwned s2Step99HeadFvAfter [s2Step99HeadFOut,s2Step99HeadGvOut,s2Step99HeadFvOut] :=
  hmrRows_owned_drop s2Step99HeadFvAfter [s2Step99HeadGOut,s2Step99HeadFOut,s2Step99HeadGvOut,s2Step99HeadFvOut] 1 s2Step99HeadBank_outgoingOwned

private theorem s2Step99HeadF_distinct : (s2Step99HeadFRow.sign::s2Step99HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99HeadF_owned : (s2Step99HeadFRow.sign::s2Step99HeadFRow.payload).toFinset⊆s2Step99HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step99HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99HeadF_reserved : s2Step99HeadFBefore.reserve s2Step99HeadFFresh.toFinset=some s2Step99HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step99HeadFFresh,arenaWires]
  · norm_num [s2Step99HeadFBefore,s2Step99HeadGAfter,s2Step99HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step99HeadFAfter,s2Step99HeadFBefore,s2Step99HeadGAfter,s2Step99HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step99HeadF_checked : planRowResizeLog s2Step99HeadFBefore s2Step99HeadFRow 222 s2Step99HeadFFresh=
    some (s2Step99HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 793],768⟩,growRow 768 s2Step99HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step99HeadFBefore s2Step99HeadFAfter s2Step99HeadFRow 222 s2Step99HeadFFresh
    s2Step99HeadF_distinct s2Step99HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step99HeadF_reserved
  have rowEq : WindowRow.mk (s2Step99HeadFRow.payload++s2Step99HeadFFresh) s2Step99HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 793],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step99HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)),Finset.filter_subset _ _⟩

private def s2Step99HeadFvBefore : Arena := s2Step99HeadGvAfter

private theorem s2Step99HeadFv_Incoming : rowsOwned s2Step99HeadFvBefore [s2Step99HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step99HeadGRow,s2Step99HeadFRow,s2Step99HeadGvRow,s2Step99HeadFvRow] 3 s2Step99HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step99HeadFvBefore (fun q => (0≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99HeadFv_Outgoing : rowsOwned s2Step99HeadFvAfter [s2Step99HeadFvOut] :=
  hmrRows_owned_drop s2Step99HeadFvAfter [s2Step99HeadGOut,s2Step99HeadFOut,s2Step99HeadGvOut,s2Step99HeadFvOut] 3 s2Step99HeadBank_outgoingOwned

private theorem s2Step99HeadFv_distinct : (s2Step99HeadFvRow.sign::s2Step99HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99HeadFv_owned : (s2Step99HeadFvRow.sign::s2Step99HeadFvRow.payload).toFinset⊆s2Step99HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step99HeadFvBefore (fun q => (0≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99HeadFv_reserved : s2Step99HeadFvBefore.reserve s2Step99HeadFvFresh.toFinset=some s2Step99HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step99HeadFvFresh,arenaWires]
  · norm_num [s2Step99HeadFvBefore,s2Step99HeadGvAfter,s2Step99HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step99HeadFvAfter,s2Step99HeadFvBefore,s2Step99HeadGvAfter,s2Step99HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step99HeadFv_checked : planRowResizeLog s2Step99HeadFvBefore s2Step99HeadFvRow 65 s2Step99HeadFvFresh=
    some (s2Step99HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851],770⟩,growRow 770 s2Step99HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step99HeadFvBefore s2Step99HeadFvAfter s2Step99HeadFvRow 65 s2Step99HeadFvFresh
    s2Step99HeadFv_distinct s2Step99HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step99HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step99HeadFvRow.payload++s2Step99HeadFvFresh) s2Step99HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 851],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step99HeadG_Incoming : rowsOwned s2Step99HeadGBefore [s2Step99HeadGRow,s2Step99HeadFRow,s2Step99HeadGvRow,s2Step99HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step99HeadGRow,s2Step99HeadFRow,s2Step99HeadGvRow,s2Step99HeadFvRow] 0 s2Step99HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step99HeadGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99HeadG_Outgoing : rowsOwned s2Step99HeadFvAfter [s2Step99HeadGOut,s2Step99HeadFOut,s2Step99HeadGvOut,s2Step99HeadFvOut] :=
  hmrRows_owned_drop s2Step99HeadFvAfter [s2Step99HeadGOut,s2Step99HeadFOut,s2Step99HeadGvOut,s2Step99HeadFvOut] 0 s2Step99HeadBank_outgoingOwned

private theorem s2Step99HeadG_distinct : (s2Step99HeadGRow.sign::s2Step99HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99HeadG_owned : (s2Step99HeadGRow.sign::s2Step99HeadGRow.payload).toFinset⊆s2Step99HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step99HeadGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99HeadG_reserved : s2Step99HeadGBefore.reserve s2Step99HeadGFresh.toFinset=some s2Step99HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step99HeadGFresh,arenaWires]
  · norm_num [s2Step99HeadGBefore,s2Step99HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step99HeadGAfter,s2Step99HeadGBefore,s2Step99HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step99HeadG_checked : planRowResizeLog s2Step99HeadGBefore s2Step99HeadGRow 222 s2Step99HeadGFresh=
    some (s2Step99HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 799, 785, 806, 802],769⟩,growRow 769 s2Step99HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step99HeadGBefore s2Step99HeadGAfter s2Step99HeadGRow 222 s2Step99HeadGFresh
    s2Step99HeadG_distinct s2Step99HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step99HeadG_reserved
  have rowEq : WindowRow.mk (s2Step99HeadGRow.payload++s2Step99HeadGFresh) s2Step99HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 799, 785, 806, 802],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step99HeadGvBefore : Arena := s2Step99HeadFAfter

private theorem s2Step99HeadGv_Incoming : rowsOwned s2Step99HeadGvBefore [s2Step99HeadGvRow,s2Step99HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step99HeadGRow,s2Step99HeadFRow,s2Step99HeadGvRow,s2Step99HeadFvRow] 2 s2Step99HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step99HeadGvBefore (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
    decide +kernel

private theorem s2Step99HeadGv_Outgoing : rowsOwned s2Step99HeadFvAfter [s2Step99HeadGvOut,s2Step99HeadFvOut] :=
  hmrRows_owned_drop s2Step99HeadFvAfter [s2Step99HeadGOut,s2Step99HeadFOut,s2Step99HeadGvOut,s2Step99HeadFvOut] 2 s2Step99HeadBank_outgoingOwned

private theorem s2Step99HeadGv_distinct : (s2Step99HeadGvRow.sign::s2Step99HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step99HeadGv_owned : (s2Step99HeadGvRow.sign::s2Step99HeadGvRow.payload).toFinset⊆s2Step99HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step99HeadGvBefore (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877)) rfl
  decide +kernel

private theorem s2Step99HeadGv_reserved : s2Step99HeadGvBefore.reserve s2Step99HeadGvFresh.toFinset=some s2Step99HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step99HeadGvFresh,arenaWires]
  · norm_num [s2Step99HeadGvBefore,s2Step99HeadFAfter,s2Step99HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step99HeadGvAfter,s2Step99HeadGvBefore,s2Step99HeadFAfter,s2Step99HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step99HeadGv_checked : planRowResizeLog s2Step99HeadGvBefore s2Step99HeadGvRow 65 s2Step99HeadGvFresh=
    some (s2Step99HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794, 846, 849],771⟩,growRow 771 s2Step99HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step99HeadGvBefore s2Step99HeadGvAfter s2Step99HeadGvRow 65 s2Step99HeadGvFresh
    s2Step99HeadGv_distinct s2Step99HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step99HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step99HeadGvRow.payload++s2Step99HeadGvFresh) s2Step99HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 794, 846, 849],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step99HeadBank_rows : planWindowRowsLog s2Step99HeadGBefore [(s2Step99HeadGRow,222),(s2Step99HeadFRow,222),(s2Step99HeadGvRow,65),(s2Step99HeadFvRow,65)] [s2Step99HeadGFresh,s2Step99HeadFFresh,s2Step99HeadGvFresh,s2Step99HeadFvFresh]=
    some (s2Step99HeadFvAfter,[s2Step99HeadGOut,s2Step99HeadFOut,s2Step99HeadGvOut,s2Step99HeadFvOut],(growRow 769 s2Step99HeadGFresh ++ (growRow 768 s2Step99HeadFFresh ++ (growRow 771 s2Step99HeadGvFresh ++ (growRow 770 s2Step99HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step99HeadFvAfter [] []=some (s2Step99HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step99HeadFvBefore s2Step99HeadFvAfter s2Step99HeadFvAfter
    s2Step99HeadFvRow s2Step99HeadFvOut 65 s2Step99HeadFvFresh [] [] []
    (growRow 770 s2Step99HeadFvFresh) ([]) s2Step99HeadFv_Incoming s2Step99HeadFv_checked h4 s2Step99HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step99HeadGvBefore s2Step99HeadGvAfter s2Step99HeadFvAfter
    s2Step99HeadGvRow s2Step99HeadGvOut 65 s2Step99HeadGvFresh [(s2Step99HeadFvRow,65)] [s2Step99HeadFvFresh] [s2Step99HeadFvOut]
    (growRow 771 s2Step99HeadGvFresh) ((growRow 770 s2Step99HeadFvFresh ++ [])) s2Step99HeadGv_Incoming s2Step99HeadGv_checked h3 s2Step99HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step99HeadFBefore s2Step99HeadFAfter s2Step99HeadFvAfter
    s2Step99HeadFRow s2Step99HeadFOut 222 s2Step99HeadFFresh [(s2Step99HeadGvRow,65),(s2Step99HeadFvRow,65)] [s2Step99HeadGvFresh,s2Step99HeadFvFresh] [s2Step99HeadGvOut,s2Step99HeadFvOut]
    (growRow 768 s2Step99HeadFFresh) ((growRow 771 s2Step99HeadGvFresh ++ (growRow 770 s2Step99HeadFvFresh ++ []))) s2Step99HeadF_Incoming s2Step99HeadF_checked h2 s2Step99HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step99HeadGBefore s2Step99HeadGAfter s2Step99HeadFvAfter
    s2Step99HeadGRow s2Step99HeadGOut 222 s2Step99HeadGFresh [(s2Step99HeadFRow,222),(s2Step99HeadGvRow,65),(s2Step99HeadFvRow,65)] [s2Step99HeadFFresh,s2Step99HeadGvFresh,s2Step99HeadFvFresh] [s2Step99HeadFOut,s2Step99HeadGvOut,s2Step99HeadFvOut]
    (growRow 769 s2Step99HeadGFresh) ((growRow 768 s2Step99HeadFFresh ++ (growRow 771 s2Step99HeadGvFresh ++ (growRow 770 s2Step99HeadFvFresh ++ [])))) s2Step99HeadG_Incoming s2Step99HeadG_checked h1 s2Step99HeadG_Outgoing
  exact h0

private theorem s2Step99HeadBank_checked : compileHmrBankResizeLog .headroom s2Step99HeadGBefore ⟨s2Step99HeadFRow,s2Step99HeadGRow,s2Step99HeadFvRow,s2Step99HeadGvRow⟩ ⟨222,222,65,65⟩ [s2Step99HeadGFresh,s2Step99HeadFFresh,s2Step99HeadGvFresh,s2Step99HeadFvFresh]=
    some (s2Step99HeadFvAfter,⟨s2Step99HeadFOut,s2Step99HeadGOut,s2Step99HeadFvOut,s2Step99HeadGvOut⟩,(growRow 769 s2Step99HeadGFresh ++ (growRow 768 s2Step99HeadFFresh ++ (growRow 771 s2Step99HeadGvFresh ++ (growRow 770 s2Step99HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step99HeadBank_rows]
  rfl

private theorem s2Step99Front_checked : compileHmrSourceFrontLog s2Step99EntryFBefore s2Step99FrontBank 221 64 ⟨219,218,65,62⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step99FrontLog=some s2Step99FrontPlan := by
  have pairEq : s2Step99FrontPair=⟨s2Step99HeadFRow,s2Step99HeadGRow,s2Step99HeadFvRow,s2Step99HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step99FrontHead=⟨s2Step99ExitFRow,s2Step99ExitGRow,s2Step99ExitFvRow,s2Step99ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step99Add0A=s2Step99FrontHead.f.wires := by decide +kernel
  have gEq : s2Step99Add0B=s2Step99FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step99Add1A=s2Step99FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step99Add1B=s2Step99FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step99EntryFBefore s2Step99FrontBank 221 64 ⟨219,218,65,62⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step99FrontLog s2Step99FrontPlan
  · exact s2Step99Front_entry
  · exact s2Step99EntryBank_checked
  · exact s2Step99Front_sigma
  · rfl
  · exact s2Step99Front_branch
  · rfl
  · simpa only [s2Step99FrontPlan,pairEq] using s2Step99HeadBank_checked
  · simpa only [s2Step99FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step99F4_checked
  · exact s2Step99Counter_checked
  · rfl
  · simpa only [s2Step99FrontPlan,headEq] using s2Step99ExitBank_checked

private theorem s2Step99Complete_explicit_checked : compileHmrEarlyStepLog s2Step99EntryFBefore s2Step99FrontBank 221 64 ⟨219,218,65,62⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step99CompleteLog=some s2Step99CompletePlan := by
  let Q := s2Step99EarlyControlPlan
  have hq := s2Step99EarlyControl_plan_checked
  have fv1 : s2Step99CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step99CompleteOut.fv.payload[2]?.getD s2Step99CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step99CompleteOut.fv.payload[3]?.getD s2Step99CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step99CompleteOut.fv.payload[4]?.getD s2Step99CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step99EntryFBefore s2Step99EarlyControlArena s2Step99FrontBank 221 64 ⟨219,218,65,62⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 34 s2Step99CompleteLog s2Step99FrontPlan Q
    s2Step99Front_checked s2Step99Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step99Complete_owned s2Step99Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step99EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 777 786 s2Step99CompleteOut.fv.second (s2Step99CompleteOut.fv.payload[2]?.getD s2Step99CompleteOut.fv.sign) (s2Step99CompleteOut.fv.payload[3]?.getD s2Step99CompleteOut.fv.sign) (s2Step99CompleteOut.fv.payload[4]?.getD s2Step99CompleteOut.fv.sign) 781 34 s2Step99EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep99Arena : Arena := s2Step99EntryFBefore
def s2PrivateStep99Bank : WindowBank := s2Step99FrontBank
def s2PrivateStep99Spec : HmrSourceWalkStepLog := ⟨221,64,⟨219,218,65,62⟩,34,.early s2Step99CompleteLog⟩
def s2PrivateStep99Plan : HmrSourceStepPlan := .early s2Step99CompletePlan
theorem s2PrivateStep99_source : s2PrivateStep99Spec=s2ObservedLogs96[3] := rfl
theorem s2PrivateStep99_checked : compileHmrSourceStepLog s2PrivateStep99Arena s2PrivateStep99Bank
    s2PrivateStep99Spec.fgWidth s2PrivateStep99Spec.vWidth s2PrivateStep99Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876]
    6 498 99 s2PrivateStep99Spec.need none s2PrivateStep99Spec.log=some s2PrivateStep99Plan := by
  change compileHmrSourceStepLog s2Step99EntryFBefore s2Step99FrontBank 221 64 ⟨219,218,65,62⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876] 6 498 99 34 none (.early s2Step99CompleteLog)=some (.early s2Step99CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 99<498)]
  rw [s2Step99Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
