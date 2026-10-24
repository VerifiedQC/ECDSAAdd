import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep102
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

private def s2Step104CompleteMoves : List (Wire × Wire) := [(803,216),(811,728)]

private def s2Step104EarlyControlLog : HmrEarlyControlLog := ⟨[811, 803, 799, 785, 846],[805],[809],[781, 849, 806, 802, 867, 877],[]⟩

private def s2Step104FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[809], [805], [799], [846]],[[], [], [], []]⟩,[794],[798],[781],[849],[806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 849, 806, 802]⟩

private def s2Step104CompleteLog : HmrEarlyStepLog := ⟨s2Step104FrontLog,s2Step104CompleteMoves,s2Step104EarlyControlLog⟩

private def s2Step104ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727],768⟩

private def s2Step104ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793],770⟩

private def s2Step104ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215],769⟩

private def s2Step104ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩

private def s2Step104FrontOut : WindowBank := ⟨s2Step104ExitFOut,s2Step104ExitGOut,s2Step104ExitFvOut,s2Step104ExitGvOut⟩

private def s2Step104CompleteOut : WindowBank := s2Step104FrontOut.repacked s2Step104CompleteMoves

private def s2Step104EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step104EarlyControlPositiveArena,[805],s2Step104EarlyControlEqualityArena,[809],⟨⟨794,false⟩,[⟨⟨805,false⟩,809⟩]⟩⟩

private def s2Step104EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<878) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<878) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,811⟩,⟨⟨774,false⟩,803⟩,⟨⟨775,false⟩,799⟩,⟨⟨776,false⟩,785⟩,⟨⟨777,false⟩,846⟩]⟩

private def s2Step104EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step104EarlyControlZeroArena,s2Step104EarlyControlZeroPlan,s2Step104EarlyControlClassPlan,s2Step104EarlyControlFlagArena,s2Step104EarlyControlFittedArena,s2Step104EarlyControlHistoryArena,s2Step104EarlyControlSigmaArena,s2Step104EarlyControlOutputArena,s2Step104EarlyControlLog⟩

private def s2Step104CounterWork : List Wire := [781, 849, 806, 802]

private theorem s2Step104Counter_bounded : s2Step104CounterWork.toFinset⊆arenaWires := by norm_num [s2Step104CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step104HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104CounterDuring : Arena := ⟨s2Step104HeadFvAfter.live∪s2Step104CounterWork.toFinset,Finset.union_subset s2Step104HeadFvAfter.bounded s2Step104Counter_bounded⟩

private def s2Step104EntryFFresh : List Wire := []

private def s2Step104EntryFvFresh : List Wire := []

private def s2Step104EntryGFresh : List Wire := []

private def s2Step104EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104EntryGvAfter : Arena := s2Step104EntryFBefore

private def s2Step104EntryGvFresh : List Wire := []

private def s2Step104ExitFExtra : List Wire := [728, 805]

private def s2Step104ExitFvExtra : List Wire := [785, 846]

private def s2Step104ExitGExtra : List Wire := [216, 809]

private def s2Step104ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<216) ∨ (217≤q ∧ q<728) ∨ (729≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104ExitGvExtra : List Wire := [799]

private def s2Step104Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104Add0Work : List Wire := [806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step104Add0_bounded : s2Step104Add0Work.toFinset⊆arenaWires := by
  have h : s2Step104Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step104Add0During : Arena := ⟨s2Step104Add0Arena.live∪s2Step104Add0Work.toFinset,Finset.union_subset s2Step104Add0Arena.bounded s2Step104Add0_bounded⟩

private def s2Step104Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104Add1Work : List Wire := [806, 802, 867, 877, 878, 879, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step104Add1_bounded : s2Step104Add1Work.toFinset⊆arenaWires := by
  have h : s2Step104Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step104Add1During : Arena := ⟨s2Step104Add1Arena.live∪s2Step104Add1Work.toFinset,Finset.union_subset s2Step104Add1Arena.bounded s2Step104Add1_bounded⟩

private def s2Step104F4FlagArena : Arena := ⟨s2Step104HeadFvAfter.live∪{781},Finset.union_subset s2Step104HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step104F4Plan : HmrHybridF4Plan := ⟨s2Step104F4FlagArena,[781],s2Step104Add0Arena,[849],s2Step104Add0During,s2Step104Add0Work,s2Step104Add1During,s2Step104Add1Work⟩

private def s2Step104HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 805],768⟩

private def s2Step104HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785, 846],770⟩

private def s2Step104HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 809],769⟩

private def s2Step104HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 799],771⟩

private def s2Step104FrontHead : WindowBank := ⟨s2Step104HeadFOut,s2Step104HeadGOut,s2Step104HeadFvOut,s2Step104HeadGvOut⟩

private def s2Step104EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728],768⟩

private def s2Step104EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785],770⟩

private def s2Step104EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216],769⟩

private def s2Step104EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩

private def s2Step104FrontPair : WindowBank := ⟨s2Step104EntryFOut,s2Step104EntryGOut,s2Step104EntryFvOut,s2Step104EntryGvOut⟩

private def s2Step104FrontSigmaArena : Arena := ⟨s2Step104EntryGvAfter.live∪{794},Finset.union_subset s2Step104EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step104HeadFFresh : List Wire := [805]

private def s2Step104HeadFvFresh : List Wire := [846]

private def s2Step104HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104HeadGFresh : List Wire := [809]

private def s2Step104HeadGvFresh : List Wire := [799]

private def s2Step104FrontPlan : HmrSourceFront := ⟨s2Step104EntryGvAfter,s2Step104FrontPair,(growRow 768 s2Step104EntryFFresh ++ (growRow 769 s2Step104EntryGFresh ++ (growRow 770 s2Step104EntryFvFresh ++ (growRow 771 s2Step104EntryGvFresh ++ [])))),s2Step104FrontSigmaArena,[794],s2Step104HeadGBefore,[798],
  s2Step104HeadFvAfter,s2Step104FrontHead,(growRow 769 s2Step104HeadGFresh ++ (growRow 768 s2Step104HeadFFresh ++ (growRow 771 s2Step104HeadGvFresh ++ (growRow 770 s2Step104HeadFvFresh ++ [])))),s2Step104F4Plan,s2Step104CounterDuring,s2Step104CounterWork,s2Step104ExitGvAfter,s2Step104FrontOut,(shrinkRow 769 s2Step104ExitGExtra ++ (shrinkRow 768 s2Step104ExitFExtra ++ (shrinkRow 770 s2Step104ExitFvExtra ++ (shrinkRow 771 s2Step104ExitGvExtra ++ []))))⟩

private def s2Step104CompletePlan : HmrEarlyStepPlan := ⟨s2Step104FrontPlan,s2Step104EarlyControlArena,s2Step104EarlyControlPlan,s2Step104CompleteMoves⟩

private theorem s2Step104Complete_apart : List.Disjoint (s2Step104CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [794, 798, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] := by
  have nd : ((s2Step104CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[794, 798, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step104Complete_owned : (s2Step104CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step104EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step104EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private def s2Step104CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,728),(729,781),(782,785),(786,799),(800,802),(804,805),(807,809),(810,846),(847,849),(850,867),(868,877),(880,881)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step104CompleteRelocationMove0Borrowed : Arena := ⟨s2Step104ExitGvAfter.live∪{216},Finset.union_subset s2Step104ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step104CompleteRelocationMove1Borrowed : Arena := ⟨s2Step104CompleteRelocationMove0After.live∪{728},Finset.union_subset s2Step104CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step104CompleteRelocation_move0_owned : 803∈s2Step104ExitGvAfter.live := by norm_num [s2Step104ExitGvAfter,arenaWires]

private theorem s2Step104CompleteRelocation_move0_reserve : s2Step104ExitGvAfter.reserve {216}=some s2Step104CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step104ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step104CompleteRelocation_move0_retire : s2Step104CompleteRelocationMove0Borrowed.retireSet {803}=s2Step104CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step104CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step104CompleteRelocationMove0Borrowed,s2Step104ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step104CompleteRelocation_move1_owned : 811∈s2Step104CompleteRelocationMove0After.live := by norm_num [s2Step104CompleteRelocationMove0After,arenaWires]

private theorem s2Step104CompleteRelocation_move1_reserve : s2Step104CompleteRelocationMove0After.reserve {728}=some s2Step104CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step104CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step104CompleteRelocation_move1_retire : s2Step104CompleteRelocationMove1Borrowed.retireSet {811}=s2Step104EarlyControlArena := by
  unfold Arena.retireSet s2Step104EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step104CompleteRelocationMove1Borrowed,s2Step104CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step104CompleteRelocation_checked : s2Step104ExitGvAfter.checkRepack [(803,216),(811,728)]=some s2Step104EarlyControlArena := by
  have tail2 : s2Step104EarlyControlArena.checkRepack []=some s2Step104EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step104CompleteRelocationMove0After s2Step104CompleteRelocationMove1Borrowed s2Step104EarlyControlArena s2Step104EarlyControlArena 811 728 []
    s2Step104CompleteRelocation_move1_owned s2Step104CompleteRelocation_move1_reserve s2Step104CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step104ExitGvAfter s2Step104CompleteRelocationMove0Borrowed s2Step104CompleteRelocationMove0After s2Step104EarlyControlArena 803 216 [(811,728)]
    s2Step104CompleteRelocation_move0_owned s2Step104CompleteRelocation_move0_reserve s2Step104CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step104Complete_repack : s2Step104ExitGvAfter.checkRepack s2Step104CompleteMoves=some s2Step104EarlyControlArena := by
  simpa only [s2Step104CompleteMoves] using s2Step104CompleteRelocation_checked

private theorem s2Step104EarlyControl_branchOwned : ([798] : List Wire).toFinset⊆s2Step104EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step104EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<794) ∨ (795≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EarlyControl_branch : compileHmrBranchRetirement s2Step104EarlyControlSigmaArena 798=some s2Step104EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step104EarlyControl_branchOwned
  · ext q
    simp [s2Step104EarlyControlOutputArena,s2Step104EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step104EarlyControl_classEqualityBorrow : s2Step104EarlyControlPositiveArena.checkBorrow (([794, 805] : List Wire).length-1) s2Step104EarlyControlLog.classWork=some s2Step104EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step104EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step104EarlyControlEqualityArena,s2Step104EarlyControlPositiveArena,s2Step104EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step104EarlyControl_classEqualityOwned : ([794, 805] : List Wire).toFinset⊆s2Step104EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step104EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EarlyControl_classEquality : compileHmrEqualityLog s2Step104EarlyControlPositiveArena [794, 805] 0 s2Step104EarlyControlLog.classWork=some (s2Step104EarlyControlEqualityArena,s2Step104EarlyControlLog.classWork,s2Step104EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step104EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step104EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step104EarlyControl_classOwned : ([777, 846, 794] : List Wire).toFinset⊆s2Step104EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step104EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EarlyControl_positiveBorrow : s2Step104EarlyControlZeroArena.checkBorrow (1) s2Step104EarlyControlLog.positiveWork=some s2Step104EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step104EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step104EarlyControlPositiveArena,s2Step104EarlyControlZeroArena,s2Step104EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step104EarlyControl_class : compileHmrSourceClassLog s2Step104EarlyControlZeroArena false 777 s2Step104EarlyControlZeroPlan.top 0 794 s2Step104EarlyControlLog.positiveWork s2Step104EarlyControlLog.classWork=some s2Step104EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step104EarlyControlClassPlan s2Step104EarlyControlZeroArena false 777 s2Step104EarlyControlZeroPlan.top 0 794
  constructor
  · decide +kernel
  · exact s2Step104EarlyControl_classOwned
  · exact s2Step104EarlyControl_positiveBorrow
  · exact s2Step104EarlyControl_classEquality

private theorem s2Step104EarlyControl_entryRecordOwned : ([798, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step104EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step104EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EarlyControl_entrySigmaOwned : ([794, 254] : List Wire).toFinset⊆s2Step104EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step104EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EarlyControl_fitBorrow : s2Step104EarlyControlFlagArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step104EarlyControlLog.recordFresh=some s2Step104EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step104EarlyControlFlagArena (fun q => (0≤q ∧ q<878) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step104EarlyControlFittedArena,s2Step104EarlyControlFlagArena,s2Step104EarlyControlLog,arenaWires]

private theorem s2Step104EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step104EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step104EarlyControlFlagArena (fun q => (0≤q ∧ q<878) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EarlyControl_fit : compileHmrRecordGrowLog s2Step104EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step104EarlyControlLog.recordFresh=some s2Step104EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step104EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step104EarlyControl_fitBorrow

private theorem s2Step104EarlyControl_flagsBorrow : s2Step104EarlyControlEqualityArena.checkBorrow (6) s2Step104EarlyControlLog.flagWork=some s2Step104EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step104EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step104EarlyControlFlagArena,s2Step104EarlyControlEqualityArena,s2Step104EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step104EarlyControl_flagsOwned : ([809, 253, 252, 251] : List Wire).toFinset⊆s2Step104EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step104EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EarlyControl_flags : compileHmrFlagsLog s2Step104EarlyControlClassPlan.equalityArena s2Step104EarlyControlClassPlan.equality.top 253 252 251 s2Step104EarlyControlLog.flagWork=some s2Step104EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step104EarlyControl_flagsOwned⟩
  · exact s2Step104EarlyControl_flagsBorrow

private theorem s2Step104EarlyControl_historyBorrow : s2Step104EarlyControlArena.checkBorrow ((35-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).length)) s2Step104EarlyControlLog.recordFresh=some s2Step104EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step104EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step104EarlyControlHistoryArena,s2Step104EarlyControlArena,s2Step104EarlyControlLog,arenaWires]

private theorem s2Step104EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] : List Wire).toFinset⊆s2Step104EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step104EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EarlyControl_history : compileHmrRecordGrowLog s2Step104EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step104EarlyControlLog.recordFresh=some s2Step104EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step104EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step104EarlyControl_historyBorrow

private theorem s2Step104EarlyControl_sigmaOwned : ([254, 794] : List Wire).toFinset⊆s2Step104EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step104EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EarlyControl_sigmaReleaseOwned : ([794] : List Wire).toFinset⊆s2Step104EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step104EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EarlyControl_sigmaRelease : s2Step104EarlyControlHistoryArena.release {794} (fun _ => false)=some s2Step104EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step104EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step104EarlyControlSigmaArena,s2Step104EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step104EarlyControl_sigma : compileHmrSigmaDropLog s2Step104EarlyControlHistoryArena false 0 0 254 794 []=some s2Step104EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step104EarlyControl_sigmaOwned⟩
  · exact s2Step104EarlyControl_sigmaRelease

private theorem s2Step104EarlyControl_zeroBorrow : s2Step104EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step104EarlyControlLog.zeroWork=some s2Step104EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step104EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step104EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
      decide +kernel
    · ext q
      simp [s2Step104EarlyControlZeroArena,s2Step104EarlyControlArena,s2Step104EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step104EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step104EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step104EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (804≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<811) ∨ (812≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EarlyControl_zero : compileHmrEqualityLog s2Step104EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step104EarlyControlLog.zeroWork=some (s2Step104EarlyControlZeroArena,s2Step104EarlyControlLog.zeroWork,s2Step104EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step104EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step104EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step104EarlyControl_logged : s2Step104EarlyControlPlan.Logged s2Step104EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 254 253 252 251 798 35 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step104EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step104EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step104EarlyControl_zero
  · exact s2Step104EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step104EarlyControl_flags
  · exact s2Step104EarlyControl_fit
  · exact s2Step104EarlyControl_history
  · exact s2Step104EarlyControl_sigma
  · exact s2Step104EarlyControl_branch

private theorem s2Step104EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step104EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 254 253 252 251 798 35 s2Step104EarlyControlLog=some s2Step104EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step104EarlyControlPlan s2Step104EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 254 253 252 251 798 35 s2Step104EarlyControl_logged

private def s2Step104EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728],768⟩

private def s2Step104EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785],770⟩

private def s2Step104EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216],769⟩

private def s2Step104EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩

private def s2Step104FrontBank : WindowBank := ⟨s2Step104EntryFRow,s2Step104EntryGRow,s2Step104EntryFvRow,s2Step104EntryGvRow⟩

private def s2Step104Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 805, 768]

private def s2Step104Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 809, 769]

private def s2Step104Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785, 846, 770]

private def s2Step104Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 799, 771]

private theorem s2Step104Counter_apart : Disjoint s2Step104HeadFvAfter.live s2Step104CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step104HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104Counter_borrowed : s2Step104HeadFvAfter.checkBorrow 4 s2Step104CounterWork=some s2Step104CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step104HeadFvAfter s2Step104CounterDuring s2Step104CounterWork.toFinset s2Step104Counter_bounded s2Step104Counter_apart rfl

private theorem s2Step104Counter_owned : (794::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step104HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step104HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104Counter_checked : compileHmrCounterStepLog s2Step104HeadFvAfter true 794 [772, 773, 774, 775, 776, 777] s2Step104CounterWork=some s2Step104CounterDuring := by
  have owned : ∀q∈794::[772, 773, 774, 775, 776, 777],q∈s2Step104HeadFvAfter.live := fun q hq => s2Step104Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step104Counter_borrowed

private def s2Step104EntryFAfter : Arena := s2Step104EntryFBefore

private theorem s2Step104EntryBank_incomingDistinct : ([s2Step104EntryFRow,s2Step104EntryGRow,s2Step104EntryFvRow,s2Step104EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104EntryF_Incoming : rowsOwned s2Step104EntryFBefore [s2Step104EntryFRow,s2Step104EntryGRow,s2Step104EntryFvRow,s2Step104EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step104EntryFRow,s2Step104EntryGRow,s2Step104EntryFvRow,s2Step104EntryGvRow] 0 s2Step104EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step104EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104EntryBank_outgoingOwned : rowsOwned s2Step104EntryGvAfter [s2Step104EntryFOut,s2Step104EntryGOut,s2Step104EntryFvOut,s2Step104EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step104EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104EntryF_Outgoing : rowsOwned s2Step104EntryGvAfter [s2Step104EntryFOut,s2Step104EntryGOut,s2Step104EntryFvOut,s2Step104EntryGvOut] :=
  hmrRows_owned_drop s2Step104EntryGvAfter [s2Step104EntryFOut,s2Step104EntryGOut,s2Step104EntryFvOut,s2Step104EntryGvOut] 0 s2Step104EntryBank_outgoingOwned

private theorem s2Step104EntryF_distinct : (s2Step104EntryFRow.sign::s2Step104EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104EntryF_owned : (s2Step104EntryFRow.sign::s2Step104EntryFRow.payload).toFinset⊆s2Step104EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step104EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EntryF_reserved : s2Step104EntryFBefore.reserve s2Step104EntryFFresh.toFinset=some s2Step104EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step104EntryFFresh,arenaWires]
  · norm_num [s2Step104EntryFBefore,s2Step104EntryFFresh,arenaWires]
  · simp only [s2Step104EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step104EntryF_checked : planRowResizeLog s2Step104EntryFBefore s2Step104EntryFRow 217 s2Step104EntryFFresh=
    some (s2Step104EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728],768⟩,growRow 768 s2Step104EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step104EntryFBefore s2Step104EntryFAfter s2Step104EntryFRow 217 s2Step104EntryFFresh
    s2Step104EntryF_distinct s2Step104EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step104EntryF_reserved
  have rowEq : WindowRow.mk (s2Step104EntryFRow.payload++s2Step104EntryFFresh) s2Step104EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step104EntryFvAfter : Arena := s2Step104EntryFBefore

private def s2Step104EntryFvBefore : Arena := s2Step104EntryFBefore

private theorem s2Step104EntryFv_Incoming : rowsOwned s2Step104EntryFvBefore [s2Step104EntryFvRow,s2Step104EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step104EntryFRow,s2Step104EntryGRow,s2Step104EntryFvRow,s2Step104EntryGvRow] 2 s2Step104EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step104EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104EntryFv_Outgoing : rowsOwned s2Step104EntryGvAfter [s2Step104EntryFvOut,s2Step104EntryGvOut] :=
  hmrRows_owned_drop s2Step104EntryGvAfter [s2Step104EntryFOut,s2Step104EntryGOut,s2Step104EntryFvOut,s2Step104EntryGvOut] 2 s2Step104EntryBank_outgoingOwned

private theorem s2Step104EntryFv_distinct : (s2Step104EntryFvRow.sign::s2Step104EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104EntryFv_owned : (s2Step104EntryFvRow.sign::s2Step104EntryFvRow.payload).toFinset⊆s2Step104EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step104EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EntryFv_reserved : s2Step104EntryFvBefore.reserve s2Step104EntryFvFresh.toFinset=some s2Step104EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step104EntryFvFresh,arenaWires]
  · norm_num [s2Step104EntryFvBefore,s2Step104EntryFBefore,s2Step104EntryFvFresh,arenaWires]
  · simp only [s2Step104EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step104EntryFv_checked : planRowResizeLog s2Step104EntryFvBefore s2Step104EntryFvRow 66 s2Step104EntryFvFresh=
    some (s2Step104EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785],770⟩,growRow 770 s2Step104EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step104EntryFvBefore s2Step104EntryFvAfter s2Step104EntryFvRow 66 s2Step104EntryFvFresh
    s2Step104EntryFv_distinct s2Step104EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step104EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step104EntryFvRow.payload++s2Step104EntryFvFresh) s2Step104EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step104EntryGAfter : Arena := s2Step104EntryFBefore

private def s2Step104EntryGBefore : Arena := s2Step104EntryFBefore

private theorem s2Step104EntryG_Incoming : rowsOwned s2Step104EntryGBefore [s2Step104EntryGRow,s2Step104EntryFvRow,s2Step104EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step104EntryFRow,s2Step104EntryGRow,s2Step104EntryFvRow,s2Step104EntryGvRow] 1 s2Step104EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step104EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104EntryG_Outgoing : rowsOwned s2Step104EntryGvAfter [s2Step104EntryGOut,s2Step104EntryFvOut,s2Step104EntryGvOut] :=
  hmrRows_owned_drop s2Step104EntryGvAfter [s2Step104EntryFOut,s2Step104EntryGOut,s2Step104EntryFvOut,s2Step104EntryGvOut] 1 s2Step104EntryBank_outgoingOwned

private theorem s2Step104EntryG_distinct : (s2Step104EntryGRow.sign::s2Step104EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104EntryG_owned : (s2Step104EntryGRow.sign::s2Step104EntryGRow.payload).toFinset⊆s2Step104EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step104EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EntryG_reserved : s2Step104EntryGBefore.reserve s2Step104EntryGFresh.toFinset=some s2Step104EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step104EntryGFresh,arenaWires]
  · norm_num [s2Step104EntryGBefore,s2Step104EntryFBefore,s2Step104EntryGFresh,arenaWires]
  · simp only [s2Step104EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step104EntryG_checked : planRowResizeLog s2Step104EntryGBefore s2Step104EntryGRow 217 s2Step104EntryGFresh=
    some (s2Step104EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216],769⟩,growRow 769 s2Step104EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step104EntryGBefore s2Step104EntryGAfter s2Step104EntryGRow 217 s2Step104EntryGFresh
    s2Step104EntryG_distinct s2Step104EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step104EntryG_reserved
  have rowEq : WindowRow.mk (s2Step104EntryGRow.payload++s2Step104EntryGFresh) s2Step104EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step104EntryGvBefore : Arena := s2Step104EntryFBefore

private theorem s2Step104EntryGv_Incoming : rowsOwned s2Step104EntryGvBefore [s2Step104EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step104EntryFRow,s2Step104EntryGRow,s2Step104EntryFvRow,s2Step104EntryGvRow] 3 s2Step104EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step104EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104EntryGv_Outgoing : rowsOwned s2Step104EntryGvAfter [s2Step104EntryGvOut] :=
  hmrRows_owned_drop s2Step104EntryGvAfter [s2Step104EntryFOut,s2Step104EntryGOut,s2Step104EntryFvOut,s2Step104EntryGvOut] 3 s2Step104EntryBank_outgoingOwned

private theorem s2Step104EntryGv_distinct : (s2Step104EntryGvRow.sign::s2Step104EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104EntryGv_owned : (s2Step104EntryGvRow.sign::s2Step104EntryGvRow.payload).toFinset⊆s2Step104EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step104EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104EntryGv_reserved : s2Step104EntryGvBefore.reserve s2Step104EntryGvFresh.toFinset=some s2Step104EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step104EntryGvFresh,arenaWires]
  · norm_num [s2Step104EntryGvBefore,s2Step104EntryFBefore,s2Step104EntryGvFresh,arenaWires]
  · simp only [s2Step104EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step104EntryGv_checked : planRowResizeLog s2Step104EntryGvBefore s2Step104EntryGvRow 66 s2Step104EntryGvFresh=
    some (s2Step104EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩,growRow 771 s2Step104EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step104EntryGvBefore s2Step104EntryGvAfter s2Step104EntryGvRow 66 s2Step104EntryGvFresh
    s2Step104EntryGv_distinct s2Step104EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step104EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step104EntryGvRow.payload++s2Step104EntryGvFresh) s2Step104EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step104EntryBank_rows : planWindowRowsLog s2Step104EntryFBefore [(s2Step104EntryFRow,217),(s2Step104EntryGRow,217),(s2Step104EntryFvRow,66),(s2Step104EntryGvRow,66)] [s2Step104EntryFFresh,s2Step104EntryGFresh,s2Step104EntryFvFresh,s2Step104EntryGvFresh]=
    some (s2Step104EntryGvAfter,[s2Step104EntryFOut,s2Step104EntryGOut,s2Step104EntryFvOut,s2Step104EntryGvOut],(growRow 768 s2Step104EntryFFresh ++ (growRow 769 s2Step104EntryGFresh ++ (growRow 770 s2Step104EntryFvFresh ++ (growRow 771 s2Step104EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step104EntryGvAfter [] []=some (s2Step104EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step104EntryGvBefore s2Step104EntryGvAfter s2Step104EntryGvAfter
    s2Step104EntryGvRow s2Step104EntryGvOut 66 s2Step104EntryGvFresh [] [] []
    (growRow 771 s2Step104EntryGvFresh) ([]) s2Step104EntryGv_Incoming s2Step104EntryGv_checked h4 s2Step104EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step104EntryFvBefore s2Step104EntryFvAfter s2Step104EntryGvAfter
    s2Step104EntryFvRow s2Step104EntryFvOut 66 s2Step104EntryFvFresh [(s2Step104EntryGvRow,66)] [s2Step104EntryGvFresh] [s2Step104EntryGvOut]
    (growRow 770 s2Step104EntryFvFresh) ((growRow 771 s2Step104EntryGvFresh ++ [])) s2Step104EntryFv_Incoming s2Step104EntryFv_checked h3 s2Step104EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step104EntryGBefore s2Step104EntryGAfter s2Step104EntryGvAfter
    s2Step104EntryGRow s2Step104EntryGOut 217 s2Step104EntryGFresh [(s2Step104EntryFvRow,66),(s2Step104EntryGvRow,66)] [s2Step104EntryFvFresh,s2Step104EntryGvFresh] [s2Step104EntryFvOut,s2Step104EntryGvOut]
    (growRow 769 s2Step104EntryGFresh) ((growRow 770 s2Step104EntryFvFresh ++ (growRow 771 s2Step104EntryGvFresh ++ []))) s2Step104EntryG_Incoming s2Step104EntryG_checked h2 s2Step104EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step104EntryFBefore s2Step104EntryFAfter s2Step104EntryGvAfter
    s2Step104EntryFRow s2Step104EntryFOut 217 s2Step104EntryFFresh [(s2Step104EntryGRow,217),(s2Step104EntryFvRow,66),(s2Step104EntryGvRow,66)] [s2Step104EntryGFresh,s2Step104EntryFvFresh,s2Step104EntryGvFresh] [s2Step104EntryGOut,s2Step104EntryFvOut,s2Step104EntryGvOut]
    (growRow 768 s2Step104EntryFFresh) ((growRow 769 s2Step104EntryGFresh ++ (growRow 770 s2Step104EntryFvFresh ++ (growRow 771 s2Step104EntryGvFresh ++ [])))) s2Step104EntryF_Incoming s2Step104EntryF_checked h1 s2Step104EntryF_Outgoing
  exact h0

private theorem s2Step104EntryBank_checked : compileHmrBankResizeLog .entry s2Step104EntryFBefore ⟨s2Step104EntryFRow,s2Step104EntryGRow,s2Step104EntryFvRow,s2Step104EntryGvRow⟩ ⟨217,217,66,66⟩ [s2Step104EntryFFresh,s2Step104EntryGFresh,s2Step104EntryFvFresh,s2Step104EntryGvFresh]=
    some (s2Step104EntryGvAfter,⟨s2Step104EntryFOut,s2Step104EntryGOut,s2Step104EntryFvOut,s2Step104EntryGvOut⟩,(growRow 768 s2Step104EntryFFresh ++ (growRow 769 s2Step104EntryGFresh ++ (growRow 770 s2Step104EntryFvFresh ++ (growRow 771 s2Step104EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step104EntryBank_rows]
  rfl

private def s2Step104ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<216) ∨ (217≤q ∧ q<728) ∨ (729≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<216) ∨ (217≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104ExitFBefore : Arena := s2Step104ExitGAfter

private def s2Step104ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 805],768⟩

private def s2Step104ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785, 846],770⟩

private def s2Step104ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 809],769⟩

private def s2Step104ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 799],771⟩

private theorem s2Step104ExitBank_incomingDistinct : ([s2Step104ExitGRow,s2Step104ExitFRow,s2Step104ExitFvRow,s2Step104ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104ExitF_Incoming : rowsOwned s2Step104ExitFBefore [s2Step104ExitFRow,s2Step104ExitFvRow,s2Step104ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step104ExitGRow,s2Step104ExitFRow,s2Step104ExitFvRow,s2Step104ExitGvRow] 1 s2Step104ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step104ExitFBefore (fun q => (0≤q ∧ q<216) ∨ (217≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104ExitBank_outgoingOwned : rowsOwned s2Step104ExitGvAfter [s2Step104ExitGOut,s2Step104ExitFOut,s2Step104ExitFvOut,s2Step104ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step104ExitGvAfter (fun q => (0≤q ∧ q<216) ∨ (217≤q ∧ q<728) ∨ (729≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104ExitF_Outgoing : rowsOwned s2Step104ExitGvAfter [s2Step104ExitFOut,s2Step104ExitFvOut,s2Step104ExitGvOut] :=
  hmrRows_owned_drop s2Step104ExitGvAfter [s2Step104ExitGOut,s2Step104ExitFOut,s2Step104ExitFvOut,s2Step104ExitGvOut] 1 s2Step104ExitBank_outgoingOwned

private theorem s2Step104ExitF_distinct : (s2Step104ExitFRow.sign::s2Step104ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104ExitF_owned : (s2Step104ExitFRow.sign::s2Step104ExitFRow.payload).toFinset⊆s2Step104ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step104ExitFBefore (fun q => (0≤q ∧ q<216) ∨ (217≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104ExitF_retired : s2Step104ExitFBefore.retireSet s2Step104ExitFExtra.toFinset=s2Step104ExitFAfter := by
  unfold Arena.retireSet s2Step104ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step104ExitFBefore,s2Step104ExitGAfter,s2Step104ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step104ExitF_checked : planRowResizeLog s2Step104ExitFBefore s2Step104ExitFRow 216 []=
    some (s2Step104ExitFAfter,s2Step104ExitFOut,shrinkRow 768 s2Step104ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step104ExitFBefore s2Step104ExitFRow 216 s2Step104ExitF_distinct s2Step104ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step104ExitFRow.payload.take 216) s2Step104ExitFRow.sign=s2Step104ExitFOut := by decide +kernel
  have hi : s2Step104ExitFRow.payload.drop 216=s2Step104ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step104ExitF_retired] at result
  exact result

private def s2Step104ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<216) ∨ (217≤q ∧ q<728) ∨ (729≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104ExitFvBefore : Arena := s2Step104ExitFAfter

private theorem s2Step104ExitFv_Incoming : rowsOwned s2Step104ExitFvBefore [s2Step104ExitFvRow,s2Step104ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step104ExitGRow,s2Step104ExitFRow,s2Step104ExitFvRow,s2Step104ExitGvRow] 2 s2Step104ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step104ExitFvBefore (fun q => (0≤q ∧ q<216) ∨ (217≤q ∧ q<728) ∨ (729≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104ExitFv_Outgoing : rowsOwned s2Step104ExitGvAfter [s2Step104ExitFvOut,s2Step104ExitGvOut] :=
  hmrRows_owned_drop s2Step104ExitGvAfter [s2Step104ExitGOut,s2Step104ExitFOut,s2Step104ExitFvOut,s2Step104ExitGvOut] 2 s2Step104ExitBank_outgoingOwned

private theorem s2Step104ExitFv_distinct : (s2Step104ExitFvRow.sign::s2Step104ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104ExitFv_owned : (s2Step104ExitFvRow.sign::s2Step104ExitFvRow.payload).toFinset⊆s2Step104ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step104ExitFvBefore (fun q => (0≤q ∧ q<216) ∨ (217≤q ∧ q<728) ∨ (729≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104ExitFv_retired : s2Step104ExitFvBefore.retireSet s2Step104ExitFvExtra.toFinset=s2Step104ExitFvAfter := by
  unfold Arena.retireSet s2Step104ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step104ExitFvBefore,s2Step104ExitFAfter,s2Step104ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step104ExitFv_checked : planRowResizeLog s2Step104ExitFvBefore s2Step104ExitFvRow 65 []=
    some (s2Step104ExitFvAfter,s2Step104ExitFvOut,shrinkRow 770 s2Step104ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step104ExitFvBefore s2Step104ExitFvRow 65 s2Step104ExitFv_distinct s2Step104ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step104ExitFvRow.payload.take 65) s2Step104ExitFvRow.sign=s2Step104ExitFvOut := by decide +kernel
  have hi : s2Step104ExitFvRow.payload.drop 65=s2Step104ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step104ExitFv_retired] at result
  exact result

private def s2Step104ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private theorem s2Step104ExitG_Incoming : rowsOwned s2Step104ExitGBefore [s2Step104ExitGRow,s2Step104ExitFRow,s2Step104ExitFvRow,s2Step104ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step104ExitGRow,s2Step104ExitFRow,s2Step104ExitFvRow,s2Step104ExitGvRow] 0 s2Step104ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step104ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104ExitG_Outgoing : rowsOwned s2Step104ExitGvAfter [s2Step104ExitGOut,s2Step104ExitFOut,s2Step104ExitFvOut,s2Step104ExitGvOut] :=
  hmrRows_owned_drop s2Step104ExitGvAfter [s2Step104ExitGOut,s2Step104ExitFOut,s2Step104ExitFvOut,s2Step104ExitGvOut] 0 s2Step104ExitBank_outgoingOwned

private theorem s2Step104ExitG_distinct : (s2Step104ExitGRow.sign::s2Step104ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104ExitG_owned : (s2Step104ExitGRow.sign::s2Step104ExitGRow.payload).toFinset⊆s2Step104ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step104ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104ExitG_retired : s2Step104ExitGBefore.retireSet s2Step104ExitGExtra.toFinset=s2Step104ExitGAfter := by
  unfold Arena.retireSet s2Step104ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step104ExitGBefore,s2Step104ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step104ExitG_checked : planRowResizeLog s2Step104ExitGBefore s2Step104ExitGRow 216 []=
    some (s2Step104ExitGAfter,s2Step104ExitGOut,shrinkRow 769 s2Step104ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step104ExitGBefore s2Step104ExitGRow 216 s2Step104ExitG_distinct s2Step104ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step104ExitGRow.payload.take 216) s2Step104ExitGRow.sign=s2Step104ExitGOut := by decide +kernel
  have hi : s2Step104ExitGRow.payload.drop 216=s2Step104ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step104ExitG_retired] at result
  exact result

private def s2Step104ExitGvBefore : Arena := s2Step104ExitFvAfter

private theorem s2Step104ExitGv_Incoming : rowsOwned s2Step104ExitGvBefore [s2Step104ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step104ExitGRow,s2Step104ExitFRow,s2Step104ExitFvRow,s2Step104ExitGvRow] 3 s2Step104ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step104ExitGvBefore (fun q => (0≤q ∧ q<216) ∨ (217≤q ∧ q<728) ∨ (729≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104ExitGv_Outgoing : rowsOwned s2Step104ExitGvAfter [s2Step104ExitGvOut] :=
  hmrRows_owned_drop s2Step104ExitGvAfter [s2Step104ExitGOut,s2Step104ExitFOut,s2Step104ExitFvOut,s2Step104ExitGvOut] 3 s2Step104ExitBank_outgoingOwned

private theorem s2Step104ExitGv_distinct : (s2Step104ExitGvRow.sign::s2Step104ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104ExitGv_owned : (s2Step104ExitGvRow.sign::s2Step104ExitGvRow.payload).toFinset⊆s2Step104ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step104ExitGvBefore (fun q => (0≤q ∧ q<216) ∨ (217≤q ∧ q<728) ∨ (729≤q ∧ q<781) ∨ (782≤q ∧ q<785) ∨ (786≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104ExitGv_retired : s2Step104ExitGvBefore.retireSet s2Step104ExitGvExtra.toFinset=s2Step104ExitGvAfter := by
  unfold Arena.retireSet s2Step104ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step104ExitGvBefore,s2Step104ExitFvAfter,s2Step104ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step104ExitGv_checked : planRowResizeLog s2Step104ExitGvBefore s2Step104ExitGvRow 66 []=
    some (s2Step104ExitGvAfter,s2Step104ExitGvOut,shrinkRow 771 s2Step104ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step104ExitGvBefore s2Step104ExitGvRow 66 s2Step104ExitGv_distinct s2Step104ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step104ExitGvRow.payload.take 66) s2Step104ExitGvRow.sign=s2Step104ExitGvOut := by decide +kernel
  have hi : s2Step104ExitGvRow.payload.drop 66=s2Step104ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step104ExitGv_retired] at result
  exact result

private theorem s2Step104ExitBank_rows : planWindowRowsLog s2Step104ExitGBefore [(s2Step104ExitGRow,216),(s2Step104ExitFRow,216),(s2Step104ExitFvRow,65),(s2Step104ExitGvRow,66)] [[],[],[],[]]=
    some (s2Step104ExitGvAfter,[s2Step104ExitGOut,s2Step104ExitFOut,s2Step104ExitFvOut,s2Step104ExitGvOut],(shrinkRow 769 s2Step104ExitGExtra ++ (shrinkRow 768 s2Step104ExitFExtra ++ (shrinkRow 770 s2Step104ExitFvExtra ++ (shrinkRow 771 s2Step104ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step104ExitGvAfter [] []=some (s2Step104ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step104ExitGvBefore s2Step104ExitGvAfter s2Step104ExitGvAfter
    s2Step104ExitGvRow s2Step104ExitGvOut 66 [] [] [] []
    (shrinkRow 771 s2Step104ExitGvExtra) ([]) s2Step104ExitGv_Incoming s2Step104ExitGv_checked h4 s2Step104ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step104ExitFvBefore s2Step104ExitFvAfter s2Step104ExitGvAfter
    s2Step104ExitFvRow s2Step104ExitFvOut 65 [] [(s2Step104ExitGvRow,66)] [[]] [s2Step104ExitGvOut]
    (shrinkRow 770 s2Step104ExitFvExtra) ((shrinkRow 771 s2Step104ExitGvExtra ++ [])) s2Step104ExitFv_Incoming s2Step104ExitFv_checked h3 s2Step104ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step104ExitFBefore s2Step104ExitFAfter s2Step104ExitGvAfter
    s2Step104ExitFRow s2Step104ExitFOut 216 [] [(s2Step104ExitFvRow,65),(s2Step104ExitGvRow,66)] [[],[]] [s2Step104ExitFvOut,s2Step104ExitGvOut]
    (shrinkRow 768 s2Step104ExitFExtra) ((shrinkRow 770 s2Step104ExitFvExtra ++ (shrinkRow 771 s2Step104ExitGvExtra ++ []))) s2Step104ExitF_Incoming s2Step104ExitF_checked h2 s2Step104ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step104ExitGBefore s2Step104ExitGAfter s2Step104ExitGvAfter
    s2Step104ExitGRow s2Step104ExitGOut 216 [] [(s2Step104ExitFRow,216),(s2Step104ExitFvRow,65),(s2Step104ExitGvRow,66)] [[],[],[]] [s2Step104ExitFOut,s2Step104ExitFvOut,s2Step104ExitGvOut]
    (shrinkRow 769 s2Step104ExitGExtra) ((shrinkRow 768 s2Step104ExitFExtra ++ (shrinkRow 770 s2Step104ExitFvExtra ++ (shrinkRow 771 s2Step104ExitGvExtra ++ [])))) s2Step104ExitG_Incoming s2Step104ExitG_checked h1 s2Step104ExitG_Outgoing
  exact h0

private theorem s2Step104ExitBank_checked : compileHmrBankResizeLog .exit s2Step104ExitGBefore ⟨s2Step104ExitFRow,s2Step104ExitGRow,s2Step104ExitFvRow,s2Step104ExitGvRow⟩ ⟨216,216,65,66⟩ [[],[],[],[]]=
    some (s2Step104ExitGvAfter,⟨s2Step104ExitFOut,s2Step104ExitGOut,s2Step104ExitFvOut,s2Step104ExitGvOut⟩,(shrinkRow 769 s2Step104ExitGExtra ++ (shrinkRow 768 s2Step104ExitFExtra ++ (shrinkRow 770 s2Step104ExitFvExtra ++ (shrinkRow 771 s2Step104ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step104ExitBank_rows]
  rfl

private theorem s2Step104Add0_apart : Disjoint s2Step104Add0Arena.live s2Step104Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step104Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104Add0_card : s2Step104Add0Arena.live.card=875 := by
  decide +kernel

private theorem s2Step104Add0_borrowed : s2Step104Add0Arena.checkBorrow (hmrHybridCount s2Step104Add0Arena s2Step104Add0B.length) s2Step104Add0Work=some s2Step104Add0During := by
  have len : s2Step104Add0Work.length=hmrHybridCount s2Step104Add0Arena s2Step104Add0B.length := by
    rw [hmrHybridCount,s2Step104Add0_card]
    decide +kernel
  have nd : s2Step104Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step104Add0Arena s2Step104Add0During s2Step104Add0Work.toFinset s2Step104Add0_bounded s2Step104Add0_apart rfl

private theorem s2Step104Add0_distinct : (781::798::849::(s2Step104Add0A++s2Step104Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104Add0_owned : (781::798::849::(s2Step104Add0A++s2Step104Add0B)).toFinset⊆s2Step104Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step104Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104Add0_checked : compileHmrHybridCinLog s2Step104Add0Arena 798 781 849 s2Step104Add0A s2Step104Add0B s2Step104Add0Work=some s2Step104Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step104Add0Arena s2Step104Add0During 798 781 849 s2Step104Add0A s2Step104Add0B s2Step104Add0Work
    (by decide +kernel) (by decide +kernel) s2Step104Add0_distinct
    (fun q hq => s2Step104Add0_owned (List.mem_toFinset.mpr hq)) s2Step104Add0_borrowed

private theorem s2Step104Add1_apart : Disjoint s2Step104Add1Arena.live s2Step104Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step104Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104Add1_card : s2Step104Add1Arena.live.card=875 := by
  decide +kernel

private theorem s2Step104Add1_borrowed : s2Step104Add1Arena.checkBorrow (hmrHybridCount s2Step104Add1Arena s2Step104Add1B.length) s2Step104Add1Work=some s2Step104Add1During := by
  have len : s2Step104Add1Work.length=hmrHybridCount s2Step104Add1Arena s2Step104Add1B.length := by
    rw [hmrHybridCount,s2Step104Add1_card]
    decide +kernel
  have nd : s2Step104Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step104Add1Arena s2Step104Add1During s2Step104Add1Work.toFinset s2Step104Add1_bounded s2Step104Add1_apart rfl

private theorem s2Step104Add1_distinct : (781::798::849::(s2Step104Add1A++s2Step104Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104Add1_owned : (781::798::849::(s2Step104Add1A++s2Step104Add1B)).toFinset⊆s2Step104Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step104Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104Add1_checked : compileHmrHybridCinLog s2Step104Add1Arena 798 781 849 s2Step104Add1A s2Step104Add1B s2Step104Add1Work=some s2Step104Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step104Add1Arena s2Step104Add1During 798 781 849 s2Step104Add1A s2Step104Add1B s2Step104Add1Work
    (by decide +kernel) (by decide +kernel) s2Step104Add1_distinct
    (fun q hq => s2Step104Add1_owned (List.mem_toFinset.mpr hq)) s2Step104Add1_borrowed

private theorem s2Step104F4_apart : Disjoint (s2Step104Add0A++s2Step104Add0B).toFinset (s2Step104Add1A++s2Step104Add1B).toFinset := by
  have nd : ((s2Step104Add0A++s2Step104Add0B)++(s2Step104Add1A++s2Step104Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step104F4_carry : s2Step104F4FlagArena.checkBorrow 1 [849]=some s2Step104Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step104F4FlagArena,s2Step104HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step104F4FlagArena,s2Step104HeadFvAfter,s2Step104Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step104F4_distinct : (794::798::781::849::((s2Step104Add0A++s2Step104Add1A)++(s2Step104Add0B++s2Step104Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104F4_flag : s2Step104HeadFvAfter.checkBorrow 1 [781]=some s2Step104F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step104HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step104F4_owned : (794::798::((s2Step104Add0A++s2Step104Add1A)++(s2Step104Add0B++s2Step104Add1B))).toFinset⊆s2Step104HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step104HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104F4_checked : compileHmrHybridF4Log s2Step104HeadFvAfter 794 798 s2Step104Add0A s2Step104Add0B s2Step104Add1A s2Step104Add1B [781] [849] s2Step104Add0Work s2Step104Add1Work=some s2Step104F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step104HeadFvAfter s2Step104F4FlagArena s2Step104Add0Arena s2Step104Add0During s2Step104Add1During 794 798
    s2Step104Add0A s2Step104Add0B s2Step104Add1A s2Step104Add1B [781] [849] s2Step104Add0Work s2Step104Add1Work
    (fun q hq => s2Step104F4_owned (List.mem_toFinset.mpr hq)) s2Step104F4_flag s2Step104F4_carry
    s2Step104F4_distinct s2Step104F4_apart s2Step104Add0_checked s2Step104Add1_checked

private theorem s2Step104Front_branch : s2Step104FrontSigmaArena.checkBorrow 1 [798]=some s2Step104HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step104FrontSigmaArena,s2Step104EntryGvAfter,s2Step104EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step104FrontSigmaArena,s2Step104EntryGvAfter,s2Step104EntryFBefore,s2Step104HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step104Front_entry : HmrFrontEntryValid s2Step104EntryFBefore s2Step104FrontBank 217 66 ⟨216,216,65,66⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step104FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step104EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step104EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<798) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step104FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step104Front_sigma : s2Step104EntryGvAfter.checkBorrow 1 [794]=some s2Step104FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step104EntryGvAfter,s2Step104EntryFBefore,arenaWires]
  · rfl

private def s2Step104HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104HeadFBefore : Arena := s2Step104HeadGAfter

private def s2Step104HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728],768⟩

private def s2Step104HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785],770⟩

private def s2Step104HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216],769⟩

private def s2Step104HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851],771⟩

private theorem s2Step104HeadBank_incomingDistinct : ([s2Step104HeadGRow,s2Step104HeadFRow,s2Step104HeadGvRow,s2Step104HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104HeadF_Incoming : rowsOwned s2Step104HeadFBefore [s2Step104HeadFRow,s2Step104HeadGvRow,s2Step104HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step104HeadGRow,s2Step104HeadFRow,s2Step104HeadGvRow,s2Step104HeadFvRow] 1 s2Step104HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step104HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104HeadBank_outgoingOwned : rowsOwned s2Step104HeadFvAfter [s2Step104HeadGOut,s2Step104HeadFOut,s2Step104HeadGvOut,s2Step104HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step104HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104HeadF_Outgoing : rowsOwned s2Step104HeadFvAfter [s2Step104HeadFOut,s2Step104HeadGvOut,s2Step104HeadFvOut] :=
  hmrRows_owned_drop s2Step104HeadFvAfter [s2Step104HeadGOut,s2Step104HeadFOut,s2Step104HeadGvOut,s2Step104HeadFvOut] 1 s2Step104HeadBank_outgoingOwned

private theorem s2Step104HeadF_distinct : (s2Step104HeadFRow.sign::s2Step104HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104HeadF_owned : (s2Step104HeadFRow.sign::s2Step104HeadFRow.payload).toFinset⊆s2Step104HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step104HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104HeadF_reserved : s2Step104HeadFBefore.reserve s2Step104HeadFFresh.toFinset=some s2Step104HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step104HeadFFresh,arenaWires]
  · norm_num [s2Step104HeadFBefore,s2Step104HeadGAfter,s2Step104HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step104HeadFAfter,s2Step104HeadFBefore,s2Step104HeadGAfter,s2Step104HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step104HeadF_checked : planRowResizeLog s2Step104HeadFBefore s2Step104HeadFRow 218 s2Step104HeadFFresh=
    some (s2Step104HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 805],768⟩,growRow 768 s2Step104HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step104HeadFBefore s2Step104HeadFAfter s2Step104HeadFRow 218 s2Step104HeadFFresh
    s2Step104HeadF_distinct s2Step104HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step104HeadF_reserved
  have rowEq : WindowRow.mk (s2Step104HeadFRow.payload++s2Step104HeadFFresh) s2Step104HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 805],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step104HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)),Finset.filter_subset _ _⟩

private def s2Step104HeadFvBefore : Arena := s2Step104HeadGvAfter

private theorem s2Step104HeadFv_Incoming : rowsOwned s2Step104HeadFvBefore [s2Step104HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step104HeadGRow,s2Step104HeadFRow,s2Step104HeadGvRow,s2Step104HeadFvRow] 3 s2Step104HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step104HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104HeadFv_Outgoing : rowsOwned s2Step104HeadFvAfter [s2Step104HeadFvOut] :=
  hmrRows_owned_drop s2Step104HeadFvAfter [s2Step104HeadGOut,s2Step104HeadFOut,s2Step104HeadGvOut,s2Step104HeadFvOut] 3 s2Step104HeadBank_outgoingOwned

private theorem s2Step104HeadFv_distinct : (s2Step104HeadFvRow.sign::s2Step104HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104HeadFv_owned : (s2Step104HeadFvRow.sign::s2Step104HeadFvRow.payload).toFinset⊆s2Step104HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step104HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104HeadFv_reserved : s2Step104HeadFvBefore.reserve s2Step104HeadFvFresh.toFinset=some s2Step104HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step104HeadFvFresh,arenaWires]
  · norm_num [s2Step104HeadFvBefore,s2Step104HeadGvAfter,s2Step104HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step104HeadFvAfter,s2Step104HeadFvBefore,s2Step104HeadGvAfter,s2Step104HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step104HeadFv_checked : planRowResizeLog s2Step104HeadFvBefore s2Step104HeadFvRow 67 s2Step104HeadFvFresh=
    some (s2Step104HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785, 846],770⟩,growRow 770 s2Step104HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step104HeadFvBefore s2Step104HeadFvAfter s2Step104HeadFvRow 67 s2Step104HeadFvFresh
    s2Step104HeadFv_distinct s2Step104HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step104HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step104HeadFvRow.payload++s2Step104HeadFvFresh) s2Step104HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 785, 846],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step104HeadG_Incoming : rowsOwned s2Step104HeadGBefore [s2Step104HeadGRow,s2Step104HeadFRow,s2Step104HeadGvRow,s2Step104HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step104HeadGRow,s2Step104HeadFRow,s2Step104HeadGvRow,s2Step104HeadFvRow] 0 s2Step104HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step104HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104HeadG_Outgoing : rowsOwned s2Step104HeadFvAfter [s2Step104HeadGOut,s2Step104HeadFOut,s2Step104HeadGvOut,s2Step104HeadFvOut] :=
  hmrRows_owned_drop s2Step104HeadFvAfter [s2Step104HeadGOut,s2Step104HeadFOut,s2Step104HeadGvOut,s2Step104HeadFvOut] 0 s2Step104HeadBank_outgoingOwned

private theorem s2Step104HeadG_distinct : (s2Step104HeadGRow.sign::s2Step104HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104HeadG_owned : (s2Step104HeadGRow.sign::s2Step104HeadGRow.payload).toFinset⊆s2Step104HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step104HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104HeadG_reserved : s2Step104HeadGBefore.reserve s2Step104HeadGFresh.toFinset=some s2Step104HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step104HeadGFresh,arenaWires]
  · norm_num [s2Step104HeadGBefore,s2Step104HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step104HeadGAfter,s2Step104HeadGBefore,s2Step104HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step104HeadG_checked : planRowResizeLog s2Step104HeadGBefore s2Step104HeadGRow 218 s2Step104HeadGFresh=
    some (s2Step104HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 809],769⟩,growRow 769 s2Step104HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step104HeadGBefore s2Step104HeadGAfter s2Step104HeadGRow 218 s2Step104HeadGFresh
    s2Step104HeadG_distinct s2Step104HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step104HeadG_reserved
  have rowEq : WindowRow.mk (s2Step104HeadGRow.payload++s2Step104HeadGFresh) s2Step104HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 809],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step104HeadGvBefore : Arena := s2Step104HeadFAfter

private theorem s2Step104HeadGv_Incoming : rowsOwned s2Step104HeadGvBefore [s2Step104HeadGvRow,s2Step104HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step104HeadGRow,s2Step104HeadFRow,s2Step104HeadGvRow,s2Step104HeadFvRow] 2 s2Step104HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step104HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
    decide +kernel

private theorem s2Step104HeadGv_Outgoing : rowsOwned s2Step104HeadFvAfter [s2Step104HeadGvOut,s2Step104HeadFvOut] :=
  hmrRows_owned_drop s2Step104HeadFvAfter [s2Step104HeadGOut,s2Step104HeadFOut,s2Step104HeadGvOut,s2Step104HeadFvOut] 2 s2Step104HeadBank_outgoingOwned

private theorem s2Step104HeadGv_distinct : (s2Step104HeadGvRow.sign::s2Step104HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step104HeadGv_owned : (s2Step104HeadGvRow.sign::s2Step104HeadGvRow.payload).toFinset⊆s2Step104HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step104HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<799) ∨ (800≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (880≤q ∧ q<881)) rfl
  decide +kernel

private theorem s2Step104HeadGv_reserved : s2Step104HeadGvBefore.reserve s2Step104HeadGvFresh.toFinset=some s2Step104HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step104HeadGvFresh,arenaWires]
  · norm_num [s2Step104HeadGvBefore,s2Step104HeadFAfter,s2Step104HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step104HeadGvAfter,s2Step104HeadGvBefore,s2Step104HeadFAfter,s2Step104HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step104HeadGv_checked : planRowResizeLog s2Step104HeadGvBefore s2Step104HeadGvRow 67 s2Step104HeadGvFresh=
    some (s2Step104HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 799],771⟩,growRow 771 s2Step104HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step104HeadGvBefore s2Step104HeadGvAfter s2Step104HeadGvRow 67 s2Step104HeadGvFresh
    s2Step104HeadGv_distinct s2Step104HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step104HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step104HeadGvRow.payload++s2Step104HeadGvFresh) s2Step104HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 799],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step104HeadBank_rows : planWindowRowsLog s2Step104HeadGBefore [(s2Step104HeadGRow,218),(s2Step104HeadFRow,218),(s2Step104HeadGvRow,67),(s2Step104HeadFvRow,67)] [s2Step104HeadGFresh,s2Step104HeadFFresh,s2Step104HeadGvFresh,s2Step104HeadFvFresh]=
    some (s2Step104HeadFvAfter,[s2Step104HeadGOut,s2Step104HeadFOut,s2Step104HeadGvOut,s2Step104HeadFvOut],(growRow 769 s2Step104HeadGFresh ++ (growRow 768 s2Step104HeadFFresh ++ (growRow 771 s2Step104HeadGvFresh ++ (growRow 770 s2Step104HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step104HeadFvAfter [] []=some (s2Step104HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step104HeadFvBefore s2Step104HeadFvAfter s2Step104HeadFvAfter
    s2Step104HeadFvRow s2Step104HeadFvOut 67 s2Step104HeadFvFresh [] [] []
    (growRow 770 s2Step104HeadFvFresh) ([]) s2Step104HeadFv_Incoming s2Step104HeadFv_checked h4 s2Step104HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step104HeadGvBefore s2Step104HeadGvAfter s2Step104HeadFvAfter
    s2Step104HeadGvRow s2Step104HeadGvOut 67 s2Step104HeadGvFresh [(s2Step104HeadFvRow,67)] [s2Step104HeadFvFresh] [s2Step104HeadFvOut]
    (growRow 771 s2Step104HeadGvFresh) ((growRow 770 s2Step104HeadFvFresh ++ [])) s2Step104HeadGv_Incoming s2Step104HeadGv_checked h3 s2Step104HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step104HeadFBefore s2Step104HeadFAfter s2Step104HeadFvAfter
    s2Step104HeadFRow s2Step104HeadFOut 218 s2Step104HeadFFresh [(s2Step104HeadGvRow,67),(s2Step104HeadFvRow,67)] [s2Step104HeadGvFresh,s2Step104HeadFvFresh] [s2Step104HeadGvOut,s2Step104HeadFvOut]
    (growRow 768 s2Step104HeadFFresh) ((growRow 771 s2Step104HeadGvFresh ++ (growRow 770 s2Step104HeadFvFresh ++ []))) s2Step104HeadF_Incoming s2Step104HeadF_checked h2 s2Step104HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step104HeadGBefore s2Step104HeadGAfter s2Step104HeadFvAfter
    s2Step104HeadGRow s2Step104HeadGOut 218 s2Step104HeadGFresh [(s2Step104HeadFRow,218),(s2Step104HeadGvRow,67),(s2Step104HeadFvRow,67)] [s2Step104HeadFFresh,s2Step104HeadGvFresh,s2Step104HeadFvFresh] [s2Step104HeadFOut,s2Step104HeadGvOut,s2Step104HeadFvOut]
    (growRow 769 s2Step104HeadGFresh) ((growRow 768 s2Step104HeadFFresh ++ (growRow 771 s2Step104HeadGvFresh ++ (growRow 770 s2Step104HeadFvFresh ++ [])))) s2Step104HeadG_Incoming s2Step104HeadG_checked h1 s2Step104HeadG_Outgoing
  exact h0

private theorem s2Step104HeadBank_checked : compileHmrBankResizeLog .headroom s2Step104HeadGBefore ⟨s2Step104HeadFRow,s2Step104HeadGRow,s2Step104HeadFvRow,s2Step104HeadGvRow⟩ ⟨218,218,67,67⟩ [s2Step104HeadGFresh,s2Step104HeadFFresh,s2Step104HeadGvFresh,s2Step104HeadFvFresh]=
    some (s2Step104HeadFvAfter,⟨s2Step104HeadFOut,s2Step104HeadGOut,s2Step104HeadFvOut,s2Step104HeadGvOut⟩,(growRow 769 s2Step104HeadGFresh ++ (growRow 768 s2Step104HeadFFresh ++ (growRow 771 s2Step104HeadGvFresh ++ (growRow 770 s2Step104HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step104HeadBank_rows]
  rfl

private theorem s2Step104Front_checked : compileHmrSourceFrontLog s2Step104EntryFBefore s2Step104FrontBank 217 66 ⟨216,216,65,66⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step104FrontLog=some s2Step104FrontPlan := by
  have pairEq : s2Step104FrontPair=⟨s2Step104HeadFRow,s2Step104HeadGRow,s2Step104HeadFvRow,s2Step104HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step104FrontHead=⟨s2Step104ExitFRow,s2Step104ExitGRow,s2Step104ExitFvRow,s2Step104ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step104Add0A=s2Step104FrontHead.f.wires := by decide +kernel
  have gEq : s2Step104Add0B=s2Step104FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step104Add1A=s2Step104FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step104Add1B=s2Step104FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step104EntryFBefore s2Step104FrontBank 217 66 ⟨216,216,65,66⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step104FrontLog s2Step104FrontPlan
  · exact s2Step104Front_entry
  · exact s2Step104EntryBank_checked
  · exact s2Step104Front_sigma
  · rfl
  · exact s2Step104Front_branch
  · rfl
  · simpa only [s2Step104FrontPlan,pairEq] using s2Step104HeadBank_checked
  · simpa only [s2Step104FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step104F4_checked
  · exact s2Step104Counter_checked
  · rfl
  · simpa only [s2Step104FrontPlan,headEq] using s2Step104ExitBank_checked

private theorem s2Step104Complete_explicit_checked : compileHmrEarlyStepLog s2Step104EntryFBefore s2Step104FrontBank 217 66 ⟨216,216,65,66⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step104CompleteLog=some s2Step104CompletePlan := by
  let Q := s2Step104EarlyControlPlan
  have hq := s2Step104EarlyControl_plan_checked
  have fv1 : s2Step104CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step104CompleteOut.fv.payload[2]?.getD s2Step104CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step104CompleteOut.fv.payload[3]?.getD s2Step104CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step104CompleteOut.fv.payload[4]?.getD s2Step104CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step104EntryFBefore s2Step104EarlyControlArena s2Step104FrontBank 217 66 ⟨216,216,65,66⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 35 s2Step104CompleteLog s2Step104FrontPlan Q
    s2Step104Front_checked s2Step104Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step104Complete_owned s2Step104Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step104EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 777 794 s2Step104CompleteOut.fv.second (s2Step104CompleteOut.fv.payload[2]?.getD s2Step104CompleteOut.fv.sign) (s2Step104CompleteOut.fv.payload[3]?.getD s2Step104CompleteOut.fv.sign) (s2Step104CompleteOut.fv.payload[4]?.getD s2Step104CompleteOut.fv.sign) 798 35 s2Step104EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep104Arena : Arena := s2Step104EntryFBefore
def s2PrivateStep104Bank : WindowBank := s2Step104FrontBank
def s2PrivateStep104Spec : HmrSourceWalkStepLog := ⟨217,66,⟨216,216,65,66⟩,35,.early s2Step104CompleteLog⟩
def s2PrivateStep104Plan : HmrSourceStepPlan := .early s2Step104CompletePlan
theorem s2PrivateStep104_source : s2PrivateStep104Spec=s2ObservedLogs96[8] := rfl
theorem s2PrivateStep104_checked : compileHmrSourceStepLog s2PrivateStep104Arena s2PrivateStep104Bank
    s2PrivateStep104Spec.fgWidth s2PrivateStep104Spec.vWidth s2PrivateStep104Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880]
    6 498 104 s2PrivateStep104Spec.need none s2PrivateStep104Spec.log=some s2PrivateStep104Plan := by
  change compileHmrSourceStepLog s2Step104EntryFBefore s2Step104FrontBank 217 66 ⟨216,216,65,66⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880] 6 498 104 35 none (.early s2Step104CompleteLog)=some (.early s2Step104CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 104<498)]
  rw [s2Step104Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
