import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep99
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

private def s2Step101CompleteMoves : List (Wire × Wire) := [(798,730)]

private def s2Step101EarlyControlLog : HmrEarlyControlLog := ⟨[798, 785, 851, 846, 799],[781],[849],[806, 802, 867, 877, 878, 879],[]⟩

private def s2Step101FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [846], [], []],[[799], [851], [785], [793]],[[], [], [], []]⟩,[794],[804],[781],[849],[806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 849, 806, 802]⟩

private def s2Step101CompleteLog : HmrEarlyStepLog := ⟨s2Step101FrontLog,s2Step101CompleteMoves,s2Step101EarlyControlLog⟩

private def s2Step101ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729],768⟩

private def s2Step101ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩

private def s2Step101ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩

private def s2Step101ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801],771⟩

private def s2Step101FrontOut : WindowBank := ⟨s2Step101ExitFOut,s2Step101ExitGOut,s2Step101ExitFvOut,s2Step101ExitGvOut⟩

private def s2Step101CompleteOut : WindowBank := s2Step101FrontOut.repacked s2Step101CompleteMoves

private def s2Step101EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step101EarlyControlPositiveArena,[781],s2Step101EarlyControlEqualityArena,[849],⟨⟨794,false⟩,[⟨⟨781,false⟩,849⟩]⟩⟩

private def s2Step101EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,798⟩,⟨⟨774,false⟩,785⟩,⟨⟨775,false⟩,851⟩,⟨⟨776,false⟩,846⟩,⟨⟨777,false⟩,799⟩]⟩

private def s2Step101EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step101EarlyControlZeroArena,s2Step101EarlyControlZeroPlan,s2Step101EarlyControlClassPlan,s2Step101EarlyControlFlagArena,s2Step101EarlyControlFittedArena,s2Step101EarlyControlHistoryArena,s2Step101EarlyControlSigmaArena,s2Step101EarlyControlOutputArena,s2Step101EarlyControlLog⟩

private def s2Step101CounterWork : List Wire := [781, 849, 806, 802]

private theorem s2Step101Counter_bounded : s2Step101CounterWork.toFinset⊆arenaWires := by norm_num [s2Step101CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step101HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101CounterDuring : Arena := ⟨s2Step101HeadFvAfter.live∪s2Step101CounterWork.toFinset,Finset.union_subset s2Step101HeadFvAfter.bounded s2Step101Counter_bounded⟩

private def s2Step101EntryFFresh : List Wire := []

private def s2Step101EntryFvFresh : List Wire := []

private def s2Step101EntryGFresh : List Wire := [846]

private def s2Step101EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101EntryGvAfter : Arena := s2Step101EntryGAfter

private def s2Step101EntryGvFresh : List Wire := []

private def s2Step101ExitFExtra : List Wire := [730, 851]

private def s2Step101ExitGExtra : List Wire := [846, 799]

private def s2Step101ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<730) ∨ (731≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101ExitGvExtra : List Wire := [785]

private def s2Step101Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101Add0Work : List Wire := [806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step101Add0_bounded : s2Step101Add0Work.toFinset⊆arenaWires := by
  have h : s2Step101Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step101Add0During : Arena := ⟨s2Step101Add0Arena.live∪s2Step101Add0Work.toFinset,Finset.union_subset s2Step101Add0Arena.bounded s2Step101Add0_bounded⟩

private def s2Step101Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101Add1Work : List Wire := [806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step101Add1_bounded : s2Step101Add1Work.toFinset⊆arenaWires := by
  have h : s2Step101Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step101Add1During : Arena := ⟨s2Step101Add1Arena.live∪s2Step101Add1Work.toFinset,Finset.union_subset s2Step101Add1Arena.bounded s2Step101Add1_bounded⟩

private def s2Step101F4FlagArena : Arena := ⟨s2Step101HeadFvAfter.live∪{781},Finset.union_subset s2Step101HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step101F4Plan : HmrHybridF4Plan := ⟨s2Step101F4FlagArena,[781],s2Step101Add0Arena,[849],s2Step101Add0During,s2Step101Add0Work,s2Step101Add1During,s2Step101Add1Work⟩

private def s2Step101HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 851],768⟩

private def s2Step101HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩

private def s2Step101HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 846, 799],769⟩

private def s2Step101HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 785],771⟩

private def s2Step101FrontHead : WindowBank := ⟨s2Step101HeadFOut,s2Step101HeadGOut,s2Step101HeadFvOut,s2Step101HeadGvOut⟩

private def s2Step101EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730],768⟩

private def s2Step101EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩

private def s2Step101EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 846],769⟩

private def s2Step101EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801],771⟩

private def s2Step101FrontPair : WindowBank := ⟨s2Step101EntryFOut,s2Step101EntryGOut,s2Step101EntryFvOut,s2Step101EntryGvOut⟩

private def s2Step101FrontSigmaArena : Arena := ⟨s2Step101EntryGvAfter.live∪{794},Finset.union_subset s2Step101EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step101HeadFFresh : List Wire := [851]

private def s2Step101HeadFvFresh : List Wire := [793]

private def s2Step101HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101HeadGFresh : List Wire := [799]

private def s2Step101HeadGvFresh : List Wire := [785]

private def s2Step101FrontPlan : HmrSourceFront := ⟨s2Step101EntryGvAfter,s2Step101FrontPair,(growRow 768 s2Step101EntryFFresh ++ (growRow 769 s2Step101EntryGFresh ++ (growRow 770 s2Step101EntryFvFresh ++ (growRow 771 s2Step101EntryGvFresh ++ [])))),s2Step101FrontSigmaArena,[794],s2Step101HeadGBefore,[804],
  s2Step101HeadFvAfter,s2Step101FrontHead,(growRow 769 s2Step101HeadGFresh ++ (growRow 768 s2Step101HeadFFresh ++ (growRow 771 s2Step101HeadGvFresh ++ (growRow 770 s2Step101HeadFvFresh ++ [])))),s2Step101F4Plan,s2Step101CounterDuring,s2Step101CounterWork,s2Step101ExitGvAfter,s2Step101FrontOut,(shrinkRow 769 s2Step101ExitGExtra ++ (shrinkRow 768 s2Step101ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step101ExitGvExtra ++ []))))⟩

private def s2Step101CompletePlan : HmrEarlyStepPlan := ⟨s2Step101FrontPlan,s2Step101EarlyControlArena,s2Step101EarlyControlPlan,s2Step101CompleteMoves⟩

private theorem s2Step101Complete_apart : List.Disjoint (s2Step101CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [794, 804, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] := by
  have nd : ((s2Step101CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[794, 804, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step101Complete_owned : (s2Step101CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step101EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step101EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private def s2Step101CompleteMoveArena : Arena := ⟨s2Step101ExitGvAfter.live∪{730},Finset.union_subset s2Step101ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step101Complete_repack : s2Step101ExitGvAfter.checkRepack s2Step101CompleteMoves=some s2Step101EarlyControlArena := by
  have owned : 798∈s2Step101ExitGvAfter.live := by norm_num [s2Step101ExitGvAfter,arenaWires]
  have reserve : s2Step101ExitGvAfter.reserve {730}=some s2Step101CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step101ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step101CompleteMoveArena.retireSet {798}=s2Step101EarlyControlArena := by
    unfold Arena.retireSet s2Step101EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step101CompleteMoveArena,s2Step101ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step101CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step101CompleteMoveArena.retireSet {798}).checkRepack []=some s2Step101EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step101EarlyControl_branchOwned : ([804] : List Wire).toFinset⊆s2Step101EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step101EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EarlyControl_branch : compileHmrBranchRetirement s2Step101EarlyControlSigmaArena 804=some s2Step101EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step101EarlyControl_branchOwned
  · ext q
    simp [s2Step101EarlyControlOutputArena,s2Step101EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step101EarlyControl_classEqualityBorrow : s2Step101EarlyControlPositiveArena.checkBorrow (([794, 781] : List Wire).length-1) s2Step101EarlyControlLog.classWork=some s2Step101EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step101EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step101EarlyControlEqualityArena,s2Step101EarlyControlPositiveArena,s2Step101EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step101EarlyControl_classEqualityOwned : ([794, 781] : List Wire).toFinset⊆s2Step101EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step101EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EarlyControl_classEquality : compileHmrEqualityLog s2Step101EarlyControlPositiveArena [794, 781] 0 s2Step101EarlyControlLog.classWork=some (s2Step101EarlyControlEqualityArena,s2Step101EarlyControlLog.classWork,s2Step101EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step101EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step101EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step101EarlyControl_classOwned : ([777, 799, 794] : List Wire).toFinset⊆s2Step101EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step101EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EarlyControl_positiveBorrow : s2Step101EarlyControlZeroArena.checkBorrow (1) s2Step101EarlyControlLog.positiveWork=some s2Step101EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step101EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step101EarlyControlPositiveArena,s2Step101EarlyControlZeroArena,s2Step101EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step101EarlyControl_class : compileHmrSourceClassLog s2Step101EarlyControlZeroArena false 777 s2Step101EarlyControlZeroPlan.top 0 794 s2Step101EarlyControlLog.positiveWork s2Step101EarlyControlLog.classWork=some s2Step101EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step101EarlyControlClassPlan s2Step101EarlyControlZeroArena false 777 s2Step101EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s2Step101EarlyControl_classOwned
  · exact s2Step101EarlyControl_positiveBorrow
  · exact s2Step101EarlyControl_classEquality

private theorem s2Step101EarlyControl_entryRecordOwned : ([804, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step101EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step101EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s2Step101EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step101EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EarlyControl_fitBorrow : s2Step101EarlyControlFlagArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step101EarlyControlLog.recordFresh=some s2Step101EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step101EarlyControlFlagArena (fun q => (0≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step101EarlyControlFittedArena,s2Step101EarlyControlFlagArena,s2Step101EarlyControlLog,arenaWires]

private theorem s2Step101EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step101EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step101EarlyControlFlagArena (fun q => (0≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EarlyControl_fit : compileHmrRecordGrowLog s2Step101EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step101EarlyControlLog.recordFresh=some s2Step101EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step101EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step101EarlyControl_fitBorrow

private theorem s2Step101EarlyControl_flagsBorrow : s2Step101EarlyControlEqualityArena.checkBorrow (6) s2Step101EarlyControlLog.flagWork=some s2Step101EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step101EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step101EarlyControlFlagArena,s2Step101EarlyControlEqualityArena,s2Step101EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step101EarlyControl_flagsOwned : ([849, 253, 252, 251] : List Wire).toFinset⊆s2Step101EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step101EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EarlyControl_flags : compileHmrFlagsLog s2Step101EarlyControlClassPlan.equalityArena s2Step101EarlyControlClassPlan.equality.top 253 252 251 s2Step101EarlyControlLog.flagWork=some s2Step101EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step101EarlyControl_flagsOwned⟩
  · exact s2Step101EarlyControl_flagsBorrow

private theorem s2Step101EarlyControl_historyBorrow : s2Step101EarlyControlArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step101EarlyControlLog.recordFresh=some s2Step101EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step101EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step101EarlyControlHistoryArena,s2Step101EarlyControlArena,s2Step101EarlyControlLog,arenaWires]

private theorem s2Step101EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step101EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step101EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EarlyControl_history : compileHmrRecordGrowLog s2Step101EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step101EarlyControlLog.recordFresh=some s2Step101EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step101EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step101EarlyControl_historyBorrow

private theorem s2Step101EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s2Step101EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step101EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s2Step101EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step101EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EarlyControl_sigmaRelease : s2Step101EarlyControlHistoryArena.release {794} (fun _ => false)=some s2Step101EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step101EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step101EarlyControlSigmaArena,s2Step101EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step101EarlyControl_sigma : compileHmrSigmaDropLog s2Step101EarlyControlHistoryArena false 0 0 254 794 []=some s2Step101EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step101EarlyControl_sigmaOwned⟩
  · exact s2Step101EarlyControl_sigmaRelease

private theorem s2Step101EarlyControl_zeroBorrow : s2Step101EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step101EarlyControlLog.zeroWork=some s2Step101EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step101EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step101EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step101EarlyControlZeroArena,s2Step101EarlyControlArena,s2Step101EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step101EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step101EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step101EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EarlyControl_zero : compileHmrEqualityLog s2Step101EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step101EarlyControlLog.zeroWork=some (s2Step101EarlyControlZeroArena,s2Step101EarlyControlLog.zeroWork,s2Step101EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step101EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step101EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step101EarlyControl_logged : s2Step101EarlyControlPlan.Logged s2Step101EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 254 253 252 251 804 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step101EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step101EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step101EarlyControl_zero
  · exact s2Step101EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step101EarlyControl_flags
  · exact s2Step101EarlyControl_fit
  · exact s2Step101EarlyControl_history
  · exact s2Step101EarlyControl_sigma
  · exact s2Step101EarlyControl_branch

private theorem s2Step101EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step101EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 254 253 252 251 804 35 s2Step101EarlyControlLog=some s2Step101EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step101EarlyControlPlan s2Step101EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 254 253 252 251 804 35 s2Step101EarlyControl_logged

private def s2Step101EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730],768⟩

private def s2Step101EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩

private def s2Step101EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217],769⟩

private def s2Step101EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801],771⟩

private def s2Step101FrontBank : WindowBank := ⟨s2Step101EntryFRow,s2Step101EntryGRow,s2Step101EntryFvRow,s2Step101EntryGvRow⟩

private def s2Step101Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 851, 768]

private def s2Step101Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 846, 799, 769]

private def s2Step101Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 770]

private def s2Step101Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 785, 771]

private theorem s2Step101Counter_apart : Disjoint s2Step101HeadFvAfter.live s2Step101CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step101HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101Counter_borrowed : s2Step101HeadFvAfter.checkBorrow 4 s2Step101CounterWork=some s2Step101CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step101HeadFvAfter s2Step101CounterDuring s2Step101CounterWork.toFinset s2Step101Counter_bounded s2Step101Counter_apart rfl

private theorem s2Step101Counter_owned : (794::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step101HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step101HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101Counter_checked : compileHmrCounterStepLog s2Step101HeadFvAfter true 794 [772, 773, 774, 775, 776, 777] s2Step101CounterWork=some s2Step101CounterDuring := by
  have owned : ∀q∈794::[772, 773, 774, 775, 776, 777],q∈s2Step101HeadFvAfter.live := fun q hq => s2Step101Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step101Counter_borrowed

private def s2Step101EntryFAfter : Arena := s2Step101EntryFBefore

private theorem s2Step101EntryBank_incomingDistinct : ([s2Step101EntryFRow,s2Step101EntryGRow,s2Step101EntryFvRow,s2Step101EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101EntryF_Incoming : rowsOwned s2Step101EntryFBefore [s2Step101EntryFRow,s2Step101EntryGRow,s2Step101EntryFvRow,s2Step101EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step101EntryFRow,s2Step101EntryGRow,s2Step101EntryFvRow,s2Step101EntryGvRow] 0 s2Step101EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step101EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101EntryBank_outgoingOwned : rowsOwned s2Step101EntryGvAfter [s2Step101EntryFOut,s2Step101EntryGOut,s2Step101EntryFvOut,s2Step101EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step101EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101EntryF_Outgoing : rowsOwned s2Step101EntryGvAfter [s2Step101EntryFOut,s2Step101EntryGOut,s2Step101EntryFvOut,s2Step101EntryGvOut] :=
  hmrRows_owned_drop s2Step101EntryGvAfter [s2Step101EntryFOut,s2Step101EntryGOut,s2Step101EntryFvOut,s2Step101EntryGvOut] 0 s2Step101EntryBank_outgoingOwned

private theorem s2Step101EntryF_distinct : (s2Step101EntryFRow.sign::s2Step101EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101EntryF_owned : (s2Step101EntryFRow.sign::s2Step101EntryFRow.payload).toFinset⊆s2Step101EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step101EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EntryF_reserved : s2Step101EntryFBefore.reserve s2Step101EntryFFresh.toFinset=some s2Step101EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step101EntryFFresh,arenaWires]
  · norm_num [s2Step101EntryFBefore,s2Step101EntryFFresh,arenaWires]
  · simp only [s2Step101EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step101EntryF_checked : planRowResizeLog s2Step101EntryFBefore s2Step101EntryFRow 219 s2Step101EntryFFresh=
    some (s2Step101EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730],768⟩,growRow 768 s2Step101EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step101EntryFBefore s2Step101EntryFAfter s2Step101EntryFRow 219 s2Step101EntryFFresh
    s2Step101EntryF_distinct s2Step101EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step101EntryF_reserved
  have rowEq : WindowRow.mk (s2Step101EntryFRow.payload++s2Step101EntryFFresh) s2Step101EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step101EntryFvAfter : Arena := s2Step101EntryGAfter

private def s2Step101EntryFvBefore : Arena := s2Step101EntryGAfter

private theorem s2Step101EntryFv_Incoming : rowsOwned s2Step101EntryFvBefore [s2Step101EntryFvRow,s2Step101EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step101EntryFRow,s2Step101EntryGRow,s2Step101EntryFvRow,s2Step101EntryGvRow] 2 s2Step101EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step101EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101EntryFv_Outgoing : rowsOwned s2Step101EntryGvAfter [s2Step101EntryFvOut,s2Step101EntryGvOut] :=
  hmrRows_owned_drop s2Step101EntryGvAfter [s2Step101EntryFOut,s2Step101EntryGOut,s2Step101EntryFvOut,s2Step101EntryGvOut] 2 s2Step101EntryBank_outgoingOwned

private theorem s2Step101EntryFv_distinct : (s2Step101EntryFvRow.sign::s2Step101EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101EntryFv_owned : (s2Step101EntryFvRow.sign::s2Step101EntryFvRow.payload).toFinset⊆s2Step101EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step101EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EntryFv_reserved : s2Step101EntryFvBefore.reserve s2Step101EntryFvFresh.toFinset=some s2Step101EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step101EntryFvFresh,arenaWires]
  · norm_num [s2Step101EntryFvBefore,s2Step101EntryGAfter,s2Step101EntryFvFresh,arenaWires]
  · simp only [s2Step101EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step101EntryFv_checked : planRowResizeLog s2Step101EntryFvBefore s2Step101EntryFvRow 64 s2Step101EntryFvFresh=
    some (s2Step101EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩,growRow 770 s2Step101EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step101EntryFvBefore s2Step101EntryFvAfter s2Step101EntryFvRow 64 s2Step101EntryFvFresh
    s2Step101EntryFv_distinct s2Step101EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step101EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step101EntryFvRow.payload++s2Step101EntryFvFresh) s2Step101EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step101EntryGBefore : Arena := s2Step101EntryFBefore

private theorem s2Step101EntryG_Incoming : rowsOwned s2Step101EntryGBefore [s2Step101EntryGRow,s2Step101EntryFvRow,s2Step101EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step101EntryFRow,s2Step101EntryGRow,s2Step101EntryFvRow,s2Step101EntryGvRow] 1 s2Step101EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step101EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101EntryG_Outgoing : rowsOwned s2Step101EntryGvAfter [s2Step101EntryGOut,s2Step101EntryFvOut,s2Step101EntryGvOut] :=
  hmrRows_owned_drop s2Step101EntryGvAfter [s2Step101EntryFOut,s2Step101EntryGOut,s2Step101EntryFvOut,s2Step101EntryGvOut] 1 s2Step101EntryBank_outgoingOwned

private theorem s2Step101EntryG_distinct : (s2Step101EntryGRow.sign::s2Step101EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101EntryG_owned : (s2Step101EntryGRow.sign::s2Step101EntryGRow.payload).toFinset⊆s2Step101EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step101EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EntryG_reserved : s2Step101EntryGBefore.reserve s2Step101EntryGFresh.toFinset=some s2Step101EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step101EntryGFresh,arenaWires]
  · norm_num [s2Step101EntryGBefore,s2Step101EntryFBefore,s2Step101EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step101EntryGAfter,s2Step101EntryGBefore,s2Step101EntryFBefore,s2Step101EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step101EntryG_checked : planRowResizeLog s2Step101EntryGBefore s2Step101EntryGRow 219 s2Step101EntryGFresh=
    some (s2Step101EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 846],769⟩,growRow 769 s2Step101EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step101EntryGBefore s2Step101EntryGAfter s2Step101EntryGRow 219 s2Step101EntryGFresh
    s2Step101EntryG_distinct s2Step101EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step101EntryG_reserved
  have rowEq : WindowRow.mk (s2Step101EntryGRow.payload++s2Step101EntryGFresh) s2Step101EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 846],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step101EntryGvBefore : Arena := s2Step101EntryGAfter

private theorem s2Step101EntryGv_Incoming : rowsOwned s2Step101EntryGvBefore [s2Step101EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step101EntryFRow,s2Step101EntryGRow,s2Step101EntryFvRow,s2Step101EntryGvRow] 3 s2Step101EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step101EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101EntryGv_Outgoing : rowsOwned s2Step101EntryGvAfter [s2Step101EntryGvOut] :=
  hmrRows_owned_drop s2Step101EntryGvAfter [s2Step101EntryFOut,s2Step101EntryGOut,s2Step101EntryFvOut,s2Step101EntryGvOut] 3 s2Step101EntryBank_outgoingOwned

private theorem s2Step101EntryGv_distinct : (s2Step101EntryGvRow.sign::s2Step101EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101EntryGv_owned : (s2Step101EntryGvRow.sign::s2Step101EntryGvRow.payload).toFinset⊆s2Step101EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step101EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101EntryGv_reserved : s2Step101EntryGvBefore.reserve s2Step101EntryGvFresh.toFinset=some s2Step101EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step101EntryGvFresh,arenaWires]
  · norm_num [s2Step101EntryGvBefore,s2Step101EntryGAfter,s2Step101EntryGvFresh,arenaWires]
  · simp only [s2Step101EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step101EntryGv_checked : planRowResizeLog s2Step101EntryGvBefore s2Step101EntryGvRow 64 s2Step101EntryGvFresh=
    some (s2Step101EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801],771⟩,growRow 771 s2Step101EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step101EntryGvBefore s2Step101EntryGvAfter s2Step101EntryGvRow 64 s2Step101EntryGvFresh
    s2Step101EntryGv_distinct s2Step101EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step101EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step101EntryGvRow.payload++s2Step101EntryGvFresh) s2Step101EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step101EntryBank_rows : planWindowRowsLog s2Step101EntryFBefore [(s2Step101EntryFRow,219),(s2Step101EntryGRow,219),(s2Step101EntryFvRow,64),(s2Step101EntryGvRow,64)] [s2Step101EntryFFresh,s2Step101EntryGFresh,s2Step101EntryFvFresh,s2Step101EntryGvFresh]=
    some (s2Step101EntryGvAfter,[s2Step101EntryFOut,s2Step101EntryGOut,s2Step101EntryFvOut,s2Step101EntryGvOut],(growRow 768 s2Step101EntryFFresh ++ (growRow 769 s2Step101EntryGFresh ++ (growRow 770 s2Step101EntryFvFresh ++ (growRow 771 s2Step101EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step101EntryGvAfter [] []=some (s2Step101EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step101EntryGvBefore s2Step101EntryGvAfter s2Step101EntryGvAfter
    s2Step101EntryGvRow s2Step101EntryGvOut 64 s2Step101EntryGvFresh [] [] []
    (growRow 771 s2Step101EntryGvFresh) ([]) s2Step101EntryGv_Incoming s2Step101EntryGv_checked h4 s2Step101EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step101EntryFvBefore s2Step101EntryFvAfter s2Step101EntryGvAfter
    s2Step101EntryFvRow s2Step101EntryFvOut 64 s2Step101EntryFvFresh [(s2Step101EntryGvRow,64)] [s2Step101EntryGvFresh] [s2Step101EntryGvOut]
    (growRow 770 s2Step101EntryFvFresh) ((growRow 771 s2Step101EntryGvFresh ++ [])) s2Step101EntryFv_Incoming s2Step101EntryFv_checked h3 s2Step101EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step101EntryGBefore s2Step101EntryGAfter s2Step101EntryGvAfter
    s2Step101EntryGRow s2Step101EntryGOut 219 s2Step101EntryGFresh [(s2Step101EntryFvRow,64),(s2Step101EntryGvRow,64)] [s2Step101EntryFvFresh,s2Step101EntryGvFresh] [s2Step101EntryFvOut,s2Step101EntryGvOut]
    (growRow 769 s2Step101EntryGFresh) ((growRow 770 s2Step101EntryFvFresh ++ (growRow 771 s2Step101EntryGvFresh ++ []))) s2Step101EntryG_Incoming s2Step101EntryG_checked h2 s2Step101EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step101EntryFBefore s2Step101EntryFAfter s2Step101EntryGvAfter
    s2Step101EntryFRow s2Step101EntryFOut 219 s2Step101EntryFFresh [(s2Step101EntryGRow,219),(s2Step101EntryFvRow,64),(s2Step101EntryGvRow,64)] [s2Step101EntryGFresh,s2Step101EntryFvFresh,s2Step101EntryGvFresh] [s2Step101EntryGOut,s2Step101EntryFvOut,s2Step101EntryGvOut]
    (growRow 768 s2Step101EntryFFresh) ((growRow 769 s2Step101EntryGFresh ++ (growRow 770 s2Step101EntryFvFresh ++ (growRow 771 s2Step101EntryGvFresh ++ [])))) s2Step101EntryF_Incoming s2Step101EntryF_checked h1 s2Step101EntryF_Outgoing
  exact h0

private theorem s2Step101EntryBank_checked : compileHmrBankResizeLog .entry s2Step101EntryFBefore ⟨s2Step101EntryFRow,s2Step101EntryGRow,s2Step101EntryFvRow,s2Step101EntryGvRow⟩ ⟨219,219,64,64⟩ [s2Step101EntryFFresh,s2Step101EntryGFresh,s2Step101EntryFvFresh,s2Step101EntryGvFresh]=
    some (s2Step101EntryGvAfter,⟨s2Step101EntryFOut,s2Step101EntryGOut,s2Step101EntryFvOut,s2Step101EntryGvOut⟩,(growRow 768 s2Step101EntryFFresh ++ (growRow 769 s2Step101EntryGFresh ++ (growRow 770 s2Step101EntryFvFresh ++ (growRow 771 s2Step101EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step101EntryBank_rows]
  rfl

private def s2Step101ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<730) ∨ (731≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101ExitFBefore : Arena := s2Step101ExitGAfter

private def s2Step101ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 851],768⟩

private def s2Step101ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩

private def s2Step101ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 846, 799],769⟩

private def s2Step101ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 785],771⟩

private theorem s2Step101ExitBank_incomingDistinct : ([s2Step101ExitGRow,s2Step101ExitFRow,s2Step101ExitFvRow,s2Step101ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101ExitF_Incoming : rowsOwned s2Step101ExitFBefore [s2Step101ExitFRow,s2Step101ExitFvRow,s2Step101ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step101ExitGRow,s2Step101ExitFRow,s2Step101ExitFvRow,s2Step101ExitGvRow] 1 s2Step101ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step101ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101ExitBank_outgoingOwned : rowsOwned s2Step101ExitGvAfter [s2Step101ExitGOut,s2Step101ExitFOut,s2Step101ExitFvOut,s2Step101ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step101ExitGvAfter (fun q => (0≤q ∧ q<730) ∨ (731≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101ExitF_Outgoing : rowsOwned s2Step101ExitGvAfter [s2Step101ExitFOut,s2Step101ExitFvOut,s2Step101ExitGvOut] :=
  hmrRows_owned_drop s2Step101ExitGvAfter [s2Step101ExitGOut,s2Step101ExitFOut,s2Step101ExitFvOut,s2Step101ExitGvOut] 1 s2Step101ExitBank_outgoingOwned

private theorem s2Step101ExitF_distinct : (s2Step101ExitFRow.sign::s2Step101ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101ExitF_owned : (s2Step101ExitFRow.sign::s2Step101ExitFRow.payload).toFinset⊆s2Step101ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step101ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101ExitF_retired : s2Step101ExitFBefore.retireSet s2Step101ExitFExtra.toFinset=s2Step101ExitFAfter := by
  unfold Arena.retireSet s2Step101ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step101ExitFBefore,s2Step101ExitGAfter,s2Step101ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step101ExitF_checked : planRowResizeLog s2Step101ExitFBefore s2Step101ExitFRow 218 []=
    some (s2Step101ExitFAfter,s2Step101ExitFOut,shrinkRow 768 s2Step101ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step101ExitFBefore s2Step101ExitFRow 218 s2Step101ExitF_distinct s2Step101ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step101ExitFRow.payload.take 218) s2Step101ExitFRow.sign=s2Step101ExitFOut := by decide +kernel
  have hi : s2Step101ExitFRow.payload.drop 218=s2Step101ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step101ExitF_retired] at result
  exact result

private def s2Step101ExitFvAfter : Arena := s2Step101ExitFAfter

private def s2Step101ExitFvBefore : Arena := s2Step101ExitFAfter

private theorem s2Step101ExitFv_Incoming : rowsOwned s2Step101ExitFvBefore [s2Step101ExitFvRow,s2Step101ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step101ExitGRow,s2Step101ExitFRow,s2Step101ExitFvRow,s2Step101ExitGvRow] 2 s2Step101ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step101ExitFvBefore (fun q => (0≤q ∧ q<730) ∨ (731≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101ExitFv_Outgoing : rowsOwned s2Step101ExitGvAfter [s2Step101ExitFvOut,s2Step101ExitGvOut] :=
  hmrRows_owned_drop s2Step101ExitGvAfter [s2Step101ExitGOut,s2Step101ExitFOut,s2Step101ExitFvOut,s2Step101ExitGvOut] 2 s2Step101ExitBank_outgoingOwned

private theorem s2Step101ExitFv_distinct : (s2Step101ExitFvRow.sign::s2Step101ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101ExitFv_owned : (s2Step101ExitFvRow.sign::s2Step101ExitFvRow.payload).toFinset⊆s2Step101ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step101ExitFvBefore (fun q => (0≤q ∧ q<730) ∨ (731≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101ExitFv_reserved : s2Step101ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step101ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step101ExitFv_checked : planRowResizeLog s2Step101ExitFvBefore s2Step101ExitFvRow 65 []=
    some (s2Step101ExitFvAfter,s2Step101ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step101ExitFvBefore s2Step101ExitFvAfter s2Step101ExitFvRow 65 []
    s2Step101ExitFv_distinct s2Step101ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step101ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step101ExitFvRow.payload++[]) s2Step101ExitFvRow.sign=s2Step101ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step101ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private theorem s2Step101ExitG_Incoming : rowsOwned s2Step101ExitGBefore [s2Step101ExitGRow,s2Step101ExitFRow,s2Step101ExitFvRow,s2Step101ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step101ExitGRow,s2Step101ExitFRow,s2Step101ExitFvRow,s2Step101ExitGvRow] 0 s2Step101ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step101ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101ExitG_Outgoing : rowsOwned s2Step101ExitGvAfter [s2Step101ExitGOut,s2Step101ExitFOut,s2Step101ExitFvOut,s2Step101ExitGvOut] :=
  hmrRows_owned_drop s2Step101ExitGvAfter [s2Step101ExitGOut,s2Step101ExitFOut,s2Step101ExitFvOut,s2Step101ExitGvOut] 0 s2Step101ExitBank_outgoingOwned

private theorem s2Step101ExitG_distinct : (s2Step101ExitGRow.sign::s2Step101ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101ExitG_owned : (s2Step101ExitGRow.sign::s2Step101ExitGRow.payload).toFinset⊆s2Step101ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step101ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101ExitG_retired : s2Step101ExitGBefore.retireSet s2Step101ExitGExtra.toFinset=s2Step101ExitGAfter := by
  unfold Arena.retireSet s2Step101ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step101ExitGBefore,s2Step101ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step101ExitG_checked : planRowResizeLog s2Step101ExitGBefore s2Step101ExitGRow 218 []=
    some (s2Step101ExitGAfter,s2Step101ExitGOut,shrinkRow 769 s2Step101ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step101ExitGBefore s2Step101ExitGRow 218 s2Step101ExitG_distinct s2Step101ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step101ExitGRow.payload.take 218) s2Step101ExitGRow.sign=s2Step101ExitGOut := by decide +kernel
  have hi : s2Step101ExitGRow.payload.drop 218=s2Step101ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step101ExitG_retired] at result
  exact result

private def s2Step101ExitGvBefore : Arena := s2Step101ExitFAfter

private theorem s2Step101ExitGv_Incoming : rowsOwned s2Step101ExitGvBefore [s2Step101ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step101ExitGRow,s2Step101ExitFRow,s2Step101ExitFvRow,s2Step101ExitGvRow] 3 s2Step101ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step101ExitGvBefore (fun q => (0≤q ∧ q<730) ∨ (731≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101ExitGv_Outgoing : rowsOwned s2Step101ExitGvAfter [s2Step101ExitGvOut] :=
  hmrRows_owned_drop s2Step101ExitGvAfter [s2Step101ExitGOut,s2Step101ExitFOut,s2Step101ExitFvOut,s2Step101ExitGvOut] 3 s2Step101ExitBank_outgoingOwned

private theorem s2Step101ExitGv_distinct : (s2Step101ExitGvRow.sign::s2Step101ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101ExitGv_owned : (s2Step101ExitGvRow.sign::s2Step101ExitGvRow.payload).toFinset⊆s2Step101ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step101ExitGvBefore (fun q => (0≤q ∧ q<730) ∨ (731≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101ExitGv_retired : s2Step101ExitGvBefore.retireSet s2Step101ExitGvExtra.toFinset=s2Step101ExitGvAfter := by
  unfold Arena.retireSet s2Step101ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step101ExitGvBefore,s2Step101ExitFAfter,s2Step101ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step101ExitGv_checked : planRowResizeLog s2Step101ExitGvBefore s2Step101ExitGvRow 64 []=
    some (s2Step101ExitGvAfter,s2Step101ExitGvOut,shrinkRow 771 s2Step101ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step101ExitGvBefore s2Step101ExitGvRow 64 s2Step101ExitGv_distinct s2Step101ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step101ExitGvRow.payload.take 64) s2Step101ExitGvRow.sign=s2Step101ExitGvOut := by decide +kernel
  have hi : s2Step101ExitGvRow.payload.drop 64=s2Step101ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step101ExitGv_retired] at result
  exact result

private theorem s2Step101ExitBank_rows : planWindowRowsLog s2Step101ExitGBefore [(s2Step101ExitGRow,218),(s2Step101ExitFRow,218),(s2Step101ExitFvRow,65),(s2Step101ExitGvRow,64)] [[],[],[],[]]=
    some (s2Step101ExitGvAfter,[s2Step101ExitGOut,s2Step101ExitFOut,s2Step101ExitFvOut,s2Step101ExitGvOut],(shrinkRow 769 s2Step101ExitGExtra ++ (shrinkRow 768 s2Step101ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step101ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step101ExitGvAfter [] []=some (s2Step101ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step101ExitGvBefore s2Step101ExitGvAfter s2Step101ExitGvAfter
    s2Step101ExitGvRow s2Step101ExitGvOut 64 [] [] [] []
    (shrinkRow 771 s2Step101ExitGvExtra) ([]) s2Step101ExitGv_Incoming s2Step101ExitGv_checked h4 s2Step101ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step101ExitFvBefore s2Step101ExitFvAfter s2Step101ExitGvAfter
    s2Step101ExitFvRow s2Step101ExitFvOut 65 [] [(s2Step101ExitGvRow,64)] [[]] [s2Step101ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step101ExitGvExtra ++ [])) s2Step101ExitFv_Incoming s2Step101ExitFv_checked h3 s2Step101ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step101ExitFBefore s2Step101ExitFAfter s2Step101ExitGvAfter
    s2Step101ExitFRow s2Step101ExitFOut 218 [] [(s2Step101ExitFvRow,65),(s2Step101ExitGvRow,64)] [[],[]] [s2Step101ExitFvOut,s2Step101ExitGvOut]
    (shrinkRow 768 s2Step101ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step101ExitGvExtra ++ []))) s2Step101ExitF_Incoming s2Step101ExitF_checked h2 s2Step101ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step101ExitGBefore s2Step101ExitGAfter s2Step101ExitGvAfter
    s2Step101ExitGRow s2Step101ExitGOut 218 [] [(s2Step101ExitFRow,218),(s2Step101ExitFvRow,65),(s2Step101ExitGvRow,64)] [[],[],[]] [s2Step101ExitFOut,s2Step101ExitFvOut,s2Step101ExitGvOut]
    (shrinkRow 769 s2Step101ExitGExtra) ((shrinkRow 768 s2Step101ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step101ExitGvExtra ++ [])))) s2Step101ExitG_Incoming s2Step101ExitG_checked h1 s2Step101ExitG_Outgoing
  exact h0

private theorem s2Step101ExitBank_checked : compileHmrBankResizeLog .exit s2Step101ExitGBefore ⟨s2Step101ExitFRow,s2Step101ExitGRow,s2Step101ExitFvRow,s2Step101ExitGvRow⟩ ⟨218,218,65,64⟩ [[],[],[],[]]=
    some (s2Step101ExitGvAfter,⟨s2Step101ExitFOut,s2Step101ExitGOut,s2Step101ExitFvOut,s2Step101ExitGvOut⟩,(shrinkRow 769 s2Step101ExitGExtra ++ (shrinkRow 768 s2Step101ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step101ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step101ExitBank_rows]
  rfl

private theorem s2Step101Add0_apart : Disjoint s2Step101Add0Arena.live s2Step101Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step101Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101Add0_card : s2Step101Add0Arena.live.card=875 := by
  decide +kernel

private theorem s2Step101Add0_borrowed : s2Step101Add0Arena.checkBorrow (hmrHybridCount s2Step101Add0Arena s2Step101Add0B.length) s2Step101Add0Work=some s2Step101Add0During := by
  have len : s2Step101Add0Work.length=hmrHybridCount s2Step101Add0Arena s2Step101Add0B.length := by
    rw [hmrHybridCount,s2Step101Add0_card]
    decide +kernel
  have nd : s2Step101Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step101Add0Arena s2Step101Add0During s2Step101Add0Work.toFinset s2Step101Add0_bounded s2Step101Add0_apart rfl

private theorem s2Step101Add0_distinct : (781::804::849::(s2Step101Add0A++s2Step101Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101Add0_owned : (781::804::849::(s2Step101Add0A++s2Step101Add0B)).toFinset⊆s2Step101Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step101Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101Add0_checked : compileHmrHybridCinLog s2Step101Add0Arena 804 781 849 s2Step101Add0A s2Step101Add0B s2Step101Add0Work=some s2Step101Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step101Add0Arena s2Step101Add0During 804 781 849 s2Step101Add0A s2Step101Add0B s2Step101Add0Work
    (by decide +kernel) (by decide +kernel) s2Step101Add0_distinct
    (fun q hq => s2Step101Add0_owned (List.mem_toFinset.mpr hq)) s2Step101Add0_borrowed

private theorem s2Step101Add1_apart : Disjoint s2Step101Add1Arena.live s2Step101Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step101Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101Add1_card : s2Step101Add1Arena.live.card=875 := by
  decide +kernel

private theorem s2Step101Add1_borrowed : s2Step101Add1Arena.checkBorrow (hmrHybridCount s2Step101Add1Arena s2Step101Add1B.length) s2Step101Add1Work=some s2Step101Add1During := by
  have len : s2Step101Add1Work.length=hmrHybridCount s2Step101Add1Arena s2Step101Add1B.length := by
    rw [hmrHybridCount,s2Step101Add1_card]
    decide +kernel
  have nd : s2Step101Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step101Add1Arena s2Step101Add1During s2Step101Add1Work.toFinset s2Step101Add1_bounded s2Step101Add1_apart rfl

private theorem s2Step101Add1_distinct : (781::804::849::(s2Step101Add1A++s2Step101Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101Add1_owned : (781::804::849::(s2Step101Add1A++s2Step101Add1B)).toFinset⊆s2Step101Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step101Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101Add1_checked : compileHmrHybridCinLog s2Step101Add1Arena 804 781 849 s2Step101Add1A s2Step101Add1B s2Step101Add1Work=some s2Step101Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step101Add1Arena s2Step101Add1During 804 781 849 s2Step101Add1A s2Step101Add1B s2Step101Add1Work
    (by decide +kernel) (by decide +kernel) s2Step101Add1_distinct
    (fun q hq => s2Step101Add1_owned (List.mem_toFinset.mpr hq)) s2Step101Add1_borrowed

private theorem s2Step101F4_apart : Disjoint (s2Step101Add0A++s2Step101Add0B).toFinset (s2Step101Add1A++s2Step101Add1B).toFinset := by
  have nd : ((s2Step101Add0A++s2Step101Add0B)++(s2Step101Add1A++s2Step101Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step101F4_carry : s2Step101F4FlagArena.checkBorrow 1 [849]=some s2Step101Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step101F4FlagArena,s2Step101HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step101F4FlagArena,s2Step101HeadFvAfter,s2Step101Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step101F4_distinct : (794::804::781::849::((s2Step101Add0A++s2Step101Add1A)++(s2Step101Add0B++s2Step101Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101F4_flag : s2Step101HeadFvAfter.checkBorrow 1 [781]=some s2Step101F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step101HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step101F4_owned : (794::804::((s2Step101Add0A++s2Step101Add1A)++(s2Step101Add0B++s2Step101Add1B))).toFinset⊆s2Step101HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step101HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101F4_checked : compileHmrHybridF4Log s2Step101HeadFvAfter 794 804 s2Step101Add0A s2Step101Add0B s2Step101Add1A s2Step101Add1B [781] [849] s2Step101Add0Work s2Step101Add1Work=some s2Step101F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step101HeadFvAfter s2Step101F4FlagArena s2Step101Add0Arena s2Step101Add0During s2Step101Add1During 794 804
    s2Step101Add0A s2Step101Add0B s2Step101Add1A s2Step101Add1B [781] [849] s2Step101Add0Work s2Step101Add1Work
    (fun q hq => s2Step101F4_owned (List.mem_toFinset.mpr hq)) s2Step101F4_flag s2Step101F4_carry
    s2Step101F4_distinct s2Step101F4_apart s2Step101Add0_checked s2Step101Add1_checked

private theorem s2Step101Front_branch : s2Step101FrontSigmaArena.checkBorrow 1 [804]=some s2Step101HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step101FrontSigmaArena,s2Step101EntryGvAfter,s2Step101EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step101FrontSigmaArena,s2Step101EntryGvAfter,s2Step101EntryGAfter,s2Step101HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step101Front_entry : HmrFrontEntryValid s2Step101EntryFBefore s2Step101FrontBank 219 64 ⟨218,218,65,64⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step101FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step101EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step101EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<804) ∨ (805≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step101FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step101Front_sigma : s2Step101EntryGvAfter.checkBorrow 1 [794]=some s2Step101FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step101EntryGvAfter,s2Step101EntryGAfter,arenaWires]
  · rfl

private def s2Step101HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101HeadFBefore : Arena := s2Step101HeadGAfter

private def s2Step101HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730],768⟩

private def s2Step101HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847],770⟩

private def s2Step101HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 846],769⟩

private def s2Step101HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801],771⟩

private theorem s2Step101HeadBank_incomingDistinct : ([s2Step101HeadGRow,s2Step101HeadFRow,s2Step101HeadGvRow,s2Step101HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101HeadF_Incoming : rowsOwned s2Step101HeadFBefore [s2Step101HeadFRow,s2Step101HeadGvRow,s2Step101HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step101HeadGRow,s2Step101HeadFRow,s2Step101HeadGvRow,s2Step101HeadFvRow] 1 s2Step101HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step101HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101HeadBank_outgoingOwned : rowsOwned s2Step101HeadFvAfter [s2Step101HeadGOut,s2Step101HeadFOut,s2Step101HeadGvOut,s2Step101HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step101HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101HeadF_Outgoing : rowsOwned s2Step101HeadFvAfter [s2Step101HeadFOut,s2Step101HeadGvOut,s2Step101HeadFvOut] :=
  hmrRows_owned_drop s2Step101HeadFvAfter [s2Step101HeadGOut,s2Step101HeadFOut,s2Step101HeadGvOut,s2Step101HeadFvOut] 1 s2Step101HeadBank_outgoingOwned

private theorem s2Step101HeadF_distinct : (s2Step101HeadFRow.sign::s2Step101HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101HeadF_owned : (s2Step101HeadFRow.sign::s2Step101HeadFRow.payload).toFinset⊆s2Step101HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step101HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101HeadF_reserved : s2Step101HeadFBefore.reserve s2Step101HeadFFresh.toFinset=some s2Step101HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step101HeadFFresh,arenaWires]
  · norm_num [s2Step101HeadFBefore,s2Step101HeadGAfter,s2Step101HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step101HeadFAfter,s2Step101HeadFBefore,s2Step101HeadGAfter,s2Step101HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step101HeadF_checked : planRowResizeLog s2Step101HeadFBefore s2Step101HeadFRow 220 s2Step101HeadFFresh=
    some (s2Step101HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 851],768⟩,growRow 768 s2Step101HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step101HeadFBefore s2Step101HeadFAfter s2Step101HeadFRow 220 s2Step101HeadFFresh
    s2Step101HeadF_distinct s2Step101HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step101HeadF_reserved
  have rowEq : WindowRow.mk (s2Step101HeadFRow.payload++s2Step101HeadFFresh) s2Step101HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 851],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step101HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step101HeadFvBefore : Arena := s2Step101HeadGvAfter

private theorem s2Step101HeadFv_Incoming : rowsOwned s2Step101HeadFvBefore [s2Step101HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step101HeadGRow,s2Step101HeadFRow,s2Step101HeadGvRow,s2Step101HeadFvRow] 3 s2Step101HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step101HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101HeadFv_Outgoing : rowsOwned s2Step101HeadFvAfter [s2Step101HeadFvOut] :=
  hmrRows_owned_drop s2Step101HeadFvAfter [s2Step101HeadGOut,s2Step101HeadFOut,s2Step101HeadGvOut,s2Step101HeadFvOut] 3 s2Step101HeadBank_outgoingOwned

private theorem s2Step101HeadFv_distinct : (s2Step101HeadFvRow.sign::s2Step101HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101HeadFv_owned : (s2Step101HeadFvRow.sign::s2Step101HeadFvRow.payload).toFinset⊆s2Step101HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step101HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101HeadFv_reserved : s2Step101HeadFvBefore.reserve s2Step101HeadFvFresh.toFinset=some s2Step101HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step101HeadFvFresh,arenaWires]
  · norm_num [s2Step101HeadFvBefore,s2Step101HeadGvAfter,s2Step101HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step101HeadFvAfter,s2Step101HeadFvBefore,s2Step101HeadGvAfter,s2Step101HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step101HeadFv_checked : planRowResizeLog s2Step101HeadFvBefore s2Step101HeadFvRow 65 s2Step101HeadFvFresh=
    some (s2Step101HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩,growRow 770 s2Step101HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step101HeadFvBefore s2Step101HeadFvAfter s2Step101HeadFvRow 65 s2Step101HeadFvFresh
    s2Step101HeadFv_distinct s2Step101HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step101HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step101HeadFvRow.payload++s2Step101HeadFvFresh) s2Step101HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step101HeadG_Incoming : rowsOwned s2Step101HeadGBefore [s2Step101HeadGRow,s2Step101HeadFRow,s2Step101HeadGvRow,s2Step101HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step101HeadGRow,s2Step101HeadFRow,s2Step101HeadGvRow,s2Step101HeadFvRow] 0 s2Step101HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step101HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101HeadG_Outgoing : rowsOwned s2Step101HeadFvAfter [s2Step101HeadGOut,s2Step101HeadFOut,s2Step101HeadGvOut,s2Step101HeadFvOut] :=
  hmrRows_owned_drop s2Step101HeadFvAfter [s2Step101HeadGOut,s2Step101HeadFOut,s2Step101HeadGvOut,s2Step101HeadFvOut] 0 s2Step101HeadBank_outgoingOwned

private theorem s2Step101HeadG_distinct : (s2Step101HeadGRow.sign::s2Step101HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101HeadG_owned : (s2Step101HeadGRow.sign::s2Step101HeadGRow.payload).toFinset⊆s2Step101HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step101HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101HeadG_reserved : s2Step101HeadGBefore.reserve s2Step101HeadGFresh.toFinset=some s2Step101HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step101HeadGFresh,arenaWires]
  · norm_num [s2Step101HeadGBefore,s2Step101HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step101HeadGAfter,s2Step101HeadGBefore,s2Step101HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step101HeadG_checked : planRowResizeLog s2Step101HeadGBefore s2Step101HeadGRow 220 s2Step101HeadGFresh=
    some (s2Step101HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 846, 799],769⟩,growRow 769 s2Step101HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step101HeadGBefore s2Step101HeadGAfter s2Step101HeadGRow 220 s2Step101HeadGFresh
    s2Step101HeadG_distinct s2Step101HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step101HeadG_reserved
  have rowEq : WindowRow.mk (s2Step101HeadGRow.payload++s2Step101HeadGFresh) s2Step101HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 846, 799],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step101HeadGvBefore : Arena := s2Step101HeadFAfter

private theorem s2Step101HeadGv_Incoming : rowsOwned s2Step101HeadGvBefore [s2Step101HeadGvRow,s2Step101HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step101HeadGRow,s2Step101HeadFRow,s2Step101HeadGvRow,s2Step101HeadFvRow] 2 s2Step101HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step101HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step101HeadGv_Outgoing : rowsOwned s2Step101HeadFvAfter [s2Step101HeadGvOut,s2Step101HeadFvOut] :=
  hmrRows_owned_drop s2Step101HeadFvAfter [s2Step101HeadGOut,s2Step101HeadFOut,s2Step101HeadGvOut,s2Step101HeadFvOut] 2 s2Step101HeadBank_outgoingOwned

private theorem s2Step101HeadGv_distinct : (s2Step101HeadGvRow.sign::s2Step101HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step101HeadGv_owned : (s2Step101HeadGvRow.sign::s2Step101HeadGvRow.payload).toFinset⊆s2Step101HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step101HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step101HeadGv_reserved : s2Step101HeadGvBefore.reserve s2Step101HeadGvFresh.toFinset=some s2Step101HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step101HeadGvFresh,arenaWires]
  · norm_num [s2Step101HeadGvBefore,s2Step101HeadFAfter,s2Step101HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step101HeadGvAfter,s2Step101HeadGvBefore,s2Step101HeadFAfter,s2Step101HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step101HeadGv_checked : planRowResizeLog s2Step101HeadGvBefore s2Step101HeadGvRow 65 s2Step101HeadGvFresh=
    some (s2Step101HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 785],771⟩,growRow 771 s2Step101HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step101HeadGvBefore s2Step101HeadGvAfter s2Step101HeadGvRow 65 s2Step101HeadGvFresh
    s2Step101HeadGv_distinct s2Step101HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step101HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step101HeadGvRow.payload++s2Step101HeadGvFresh) s2Step101HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 785],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step101HeadBank_rows : planWindowRowsLog s2Step101HeadGBefore [(s2Step101HeadGRow,220),(s2Step101HeadFRow,220),(s2Step101HeadGvRow,65),(s2Step101HeadFvRow,65)] [s2Step101HeadGFresh,s2Step101HeadFFresh,s2Step101HeadGvFresh,s2Step101HeadFvFresh]=
    some (s2Step101HeadFvAfter,[s2Step101HeadGOut,s2Step101HeadFOut,s2Step101HeadGvOut,s2Step101HeadFvOut],(growRow 769 s2Step101HeadGFresh ++ (growRow 768 s2Step101HeadFFresh ++ (growRow 771 s2Step101HeadGvFresh ++ (growRow 770 s2Step101HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step101HeadFvAfter [] []=some (s2Step101HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step101HeadFvBefore s2Step101HeadFvAfter s2Step101HeadFvAfter
    s2Step101HeadFvRow s2Step101HeadFvOut 65 s2Step101HeadFvFresh [] [] []
    (growRow 770 s2Step101HeadFvFresh) ([]) s2Step101HeadFv_Incoming s2Step101HeadFv_checked h4 s2Step101HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step101HeadGvBefore s2Step101HeadGvAfter s2Step101HeadFvAfter
    s2Step101HeadGvRow s2Step101HeadGvOut 65 s2Step101HeadGvFresh [(s2Step101HeadFvRow,65)] [s2Step101HeadFvFresh] [s2Step101HeadFvOut]
    (growRow 771 s2Step101HeadGvFresh) ((growRow 770 s2Step101HeadFvFresh ++ [])) s2Step101HeadGv_Incoming s2Step101HeadGv_checked h3 s2Step101HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step101HeadFBefore s2Step101HeadFAfter s2Step101HeadFvAfter
    s2Step101HeadFRow s2Step101HeadFOut 220 s2Step101HeadFFresh [(s2Step101HeadGvRow,65),(s2Step101HeadFvRow,65)] [s2Step101HeadGvFresh,s2Step101HeadFvFresh] [s2Step101HeadGvOut,s2Step101HeadFvOut]
    (growRow 768 s2Step101HeadFFresh) ((growRow 771 s2Step101HeadGvFresh ++ (growRow 770 s2Step101HeadFvFresh ++ []))) s2Step101HeadF_Incoming s2Step101HeadF_checked h2 s2Step101HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step101HeadGBefore s2Step101HeadGAfter s2Step101HeadFvAfter
    s2Step101HeadGRow s2Step101HeadGOut 220 s2Step101HeadGFresh [(s2Step101HeadFRow,220),(s2Step101HeadGvRow,65),(s2Step101HeadFvRow,65)] [s2Step101HeadFFresh,s2Step101HeadGvFresh,s2Step101HeadFvFresh] [s2Step101HeadFOut,s2Step101HeadGvOut,s2Step101HeadFvOut]
    (growRow 769 s2Step101HeadGFresh) ((growRow 768 s2Step101HeadFFresh ++ (growRow 771 s2Step101HeadGvFresh ++ (growRow 770 s2Step101HeadFvFresh ++ [])))) s2Step101HeadG_Incoming s2Step101HeadG_checked h1 s2Step101HeadG_Outgoing
  exact h0

private theorem s2Step101HeadBank_checked : compileHmrBankResizeLog .headroom s2Step101HeadGBefore ⟨s2Step101HeadFRow,s2Step101HeadGRow,s2Step101HeadFvRow,s2Step101HeadGvRow⟩ ⟨220,220,65,65⟩ [s2Step101HeadGFresh,s2Step101HeadFFresh,s2Step101HeadGvFresh,s2Step101HeadFvFresh]=
    some (s2Step101HeadFvAfter,⟨s2Step101HeadFOut,s2Step101HeadGOut,s2Step101HeadFvOut,s2Step101HeadGvOut⟩,(growRow 769 s2Step101HeadGFresh ++ (growRow 768 s2Step101HeadFFresh ++ (growRow 771 s2Step101HeadGvFresh ++ (growRow 770 s2Step101HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step101HeadBank_rows]
  rfl

private theorem s2Step101Front_checked : compileHmrSourceFrontLog s2Step101EntryFBefore s2Step101FrontBank 219 64 ⟨218,218,65,64⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step101FrontLog=some s2Step101FrontPlan := by
  have pairEq : s2Step101FrontPair=⟨s2Step101HeadFRow,s2Step101HeadGRow,s2Step101HeadFvRow,s2Step101HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step101FrontHead=⟨s2Step101ExitFRow,s2Step101ExitGRow,s2Step101ExitFvRow,s2Step101ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step101Add0A=s2Step101FrontHead.f.wires := by decide +kernel
  have gEq : s2Step101Add0B=s2Step101FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step101Add1A=s2Step101FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step101Add1B=s2Step101FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step101EntryFBefore s2Step101FrontBank 219 64 ⟨218,218,65,64⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step101FrontLog s2Step101FrontPlan
  · exact s2Step101Front_entry
  · exact s2Step101EntryBank_checked
  · exact s2Step101Front_sigma
  · rfl
  · exact s2Step101Front_branch
  · rfl
  · simpa only [s2Step101FrontPlan,pairEq] using s2Step101HeadBank_checked
  · simpa only [s2Step101FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step101F4_checked
  · exact s2Step101Counter_checked
  · rfl
  · simpa only [s2Step101FrontPlan,headEq] using s2Step101ExitBank_checked

private theorem s2Step101Complete_explicit_checked : compileHmrEarlyStepLog s2Step101EntryFBefore s2Step101FrontBank 219 64 ⟨218,218,65,64⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step101CompleteLog=some s2Step101CompletePlan := by
  let Q := s2Step101EarlyControlPlan
  have hq := s2Step101EarlyControl_plan_checked
  have fv1 : s2Step101CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step101CompleteOut.fv.payload[2]?.getD s2Step101CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step101CompleteOut.fv.payload[3]?.getD s2Step101CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step101CompleteOut.fv.payload[4]?.getD s2Step101CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step101EntryFBefore s2Step101EarlyControlArena s2Step101FrontBank 219 64 ⟨218,218,65,64⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step101CompleteLog s2Step101FrontPlan Q
    s2Step101Front_checked s2Step101Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step101Complete_owned s2Step101Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step101EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 s2Step101CompleteOut.fv.second (s2Step101CompleteOut.fv.payload[2]?.getD s2Step101CompleteOut.fv.sign) (s2Step101CompleteOut.fv.payload[3]?.getD s2Step101CompleteOut.fv.sign) (s2Step101CompleteOut.fv.payload[4]?.getD s2Step101CompleteOut.fv.sign) 804 35 s2Step101EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep101Arena : Arena := s2Step101EntryFBefore
def s2PrivateStep101Bank : WindowBank := s2Step101FrontBank
def s2PrivateStep101Spec : HmrSourceWalkStepLog := ⟨219,64,⟨218,218,65,64⟩,35,.early s2Step101CompleteLog⟩
def s2PrivateStep101Plan : HmrSourceStepPlan := .early s2Step101CompletePlan
theorem s2PrivateStep101_source : s2PrivateStep101Spec=s2ObservedLogs96[5] := rfl
theorem s2PrivateStep101_checked : compileHmrSourceStepLog s2PrivateStep101Arena s2PrivateStep101Bank
    s2PrivateStep101Spec.fgWidth s2PrivateStep101Spec.vWidth s2PrivateStep101Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]
    6 498 101 s2PrivateStep101Spec.need none s2PrivateStep101Spec.log=some s2PrivateStep101Plan := by
  change compileHmrSourceStepLog s2Step101EntryFBefore s2Step101FrontBank 219 64 ⟨218,218,65,64⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 6 498 101 35 none (.early s2Step101CompleteLog)=some (.early s2Step101CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 101<498)]
  rw [s2Step101Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
