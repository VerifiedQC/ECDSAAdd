import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep115
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

private def s2Step117CompleteMoves : List (Wire × Wire) := [(821,722),(819,723)]

private def s2Step117EarlyControlLog : HmrEarlyControlLog := ⟨[819, 821, 807, 794, 846],[792],[849],[806, 802, 867, 877, 879, 882],[]⟩

private def s2Step117FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [792], [], []],[[849], [846], [807], [794]],[[], [], [], []]⟩,[815],[781],[806],[802],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 802, 867, 877]⟩

private def s2Step117CompleteLog : HmrEarlyStepLog := ⟨s2Step117FrontLog,s2Step117CompleteMoves,s2Step117EarlyControlLog⟩

private def s2Step117ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step117ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩

private def s2Step117ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩

private def s2Step117ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩

private def s2Step117FrontOut : WindowBank := ⟨s2Step117ExitFOut,s2Step117ExitGOut,s2Step117ExitFvOut,s2Step117ExitGvOut⟩

private def s2Step117CompleteOut : WindowBank := s2Step117FrontOut.repacked s2Step117CompleteMoves

private def s2Step117EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step117EarlyControlPositiveArena,[792],s2Step117EarlyControlEqualityArena,[849],⟨⟨815,false⟩,[⟨⟨792,false⟩,849⟩]⟩⟩

private def s2Step117EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<883)),Finset.filter_subset _ _⟩

private def s2Step117EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<883)),Finset.filter_subset _ _⟩

private def s2Step117EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,819⟩,⟨⟨774,false⟩,821⟩,⟨⟨775,false⟩,807⟩,⟨⟨776,false⟩,794⟩,⟨⟨777,false⟩,846⟩]⟩

private def s2Step117EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step117EarlyControlZeroArena,s2Step117EarlyControlZeroPlan,s2Step117EarlyControlClassPlan,s2Step117EarlyControlFlagArena,s2Step117EarlyControlFittedArena,s2Step117EarlyControlHistoryArena,s2Step117EarlyControlSigmaArena,s2Step117EarlyControlOutputArena,s2Step117EarlyControlLog⟩

private def s2Step117CounterWork : List Wire := [806, 802, 867, 877]

private theorem s2Step117Counter_bounded : s2Step117CounterWork.toFinset⊆arenaWires := by norm_num [s2Step117CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step117HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117CounterDuring : Arena := ⟨s2Step117HeadFvAfter.live∪s2Step117CounterWork.toFinset,Finset.union_subset s2Step117HeadFvAfter.bounded s2Step117Counter_bounded⟩

private def s2Step117EntryFFresh : List Wire := []

private def s2Step117EntryFvFresh : List Wire := []

private def s2Step117EntryGFresh : List Wire := [792]

private def s2Step117EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117EntryGvAfter : Arena := s2Step117EntryGAfter

private def s2Step117EntryGvFresh : List Wire := []

private def s2Step117ExitFExtra : List Wire := [722, 723, 846]

private def s2Step117ExitFvExtra : List Wire := [794]

private def s2Step117ExitGExtra : List Wire := [792, 849]

private def s2Step117ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<722) ∨ (724≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117ExitGvExtra : List Wire := [807]

private def s2Step117Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117Add0Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step117Add0_bounded : s2Step117Add0Work.toFinset⊆arenaWires := by
  have h : s2Step117Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step117Add0During : Arena := ⟨s2Step117Add0Arena.live∪s2Step117Add0Work.toFinset,Finset.union_subset s2Step117Add0Arena.bounded s2Step117Add0_bounded⟩

private def s2Step117Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117Add1Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step117Add1_bounded : s2Step117Add1Work.toFinset⊆arenaWires := by
  have h : s2Step117Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step117Add1During : Arena := ⟨s2Step117Add1Arena.live∪s2Step117Add1Work.toFinset,Finset.union_subset s2Step117Add1Arena.bounded s2Step117Add1_bounded⟩

private def s2Step117F4FlagArena : Arena := ⟨s2Step117HeadFvAfter.live∪{806},Finset.union_subset s2Step117HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step117F4Plan : HmrHybridF4Plan := ⟨s2Step117F4FlagArena,[806],s2Step117Add0Arena,[802],s2Step117Add0During,s2Step117Add0Work,s2Step117Add1During,s2Step117Add1Work⟩

private def s2Step117HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 846],768⟩

private def s2Step117HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 794],770⟩

private def s2Step117HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 792, 849],769⟩

private def s2Step117HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 807],771⟩

private def s2Step117FrontHead : WindowBank := ⟨s2Step117HeadFOut,s2Step117HeadGOut,s2Step117HeadFvOut,s2Step117HeadGvOut⟩

private def s2Step117EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step117EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩

private def s2Step117EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 792],769⟩

private def s2Step117EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩

private def s2Step117FrontPair : WindowBank := ⟨s2Step117EntryFOut,s2Step117EntryGOut,s2Step117EntryFvOut,s2Step117EntryGvOut⟩

private def s2Step117FrontSigmaArena : Arena := ⟨s2Step117EntryGvAfter.live∪{815},Finset.union_subset s2Step117EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step117HeadFFresh : List Wire := [846]

private def s2Step117HeadFvFresh : List Wire := [794]

private def s2Step117HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117HeadGFresh : List Wire := [849]

private def s2Step117HeadGvFresh : List Wire := [807]

private def s2Step117FrontPlan : HmrSourceFront := ⟨s2Step117EntryGvAfter,s2Step117FrontPair,(growRow 768 s2Step117EntryFFresh ++ (growRow 769 s2Step117EntryGFresh ++ (growRow 770 s2Step117EntryFvFresh ++ (growRow 771 s2Step117EntryGvFresh ++ [])))),s2Step117FrontSigmaArena,[815],s2Step117HeadGBefore,[781],
  s2Step117HeadFvAfter,s2Step117FrontHead,(growRow 769 s2Step117HeadGFresh ++ (growRow 768 s2Step117HeadFFresh ++ (growRow 771 s2Step117HeadGvFresh ++ (growRow 770 s2Step117HeadFvFresh ++ [])))),s2Step117F4Plan,s2Step117CounterDuring,s2Step117CounterWork,s2Step117ExitGvAfter,s2Step117FrontOut,(shrinkRow 769 s2Step117ExitGExtra ++ (shrinkRow 768 s2Step117ExitFExtra ++ (shrinkRow 770 s2Step117ExitFvExtra ++ (shrinkRow 771 s2Step117ExitGvExtra ++ []))))⟩

private def s2Step117CompletePlan : HmrEarlyStepPlan := ⟨s2Step117FrontPlan,s2Step117EarlyControlArena,s2Step117EarlyControlPlan,s2Step117CompleteMoves⟩

private theorem s2Step117Complete_apart : List.Disjoint (s2Step117CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [815, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step117CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[815, 781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step117Complete_owned : (s2Step117CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step117EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step117EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step117CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,723),(724,792),(793,794),(795,802),(803,806),(808,821),(822,846),(847,849),(850,867),(868,877),(878,879),(880,882)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step117CompleteRelocationMove0Borrowed : Arena := ⟨s2Step117ExitGvAfter.live∪{722},Finset.union_subset s2Step117ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step117CompleteRelocationMove1Borrowed : Arena := ⟨s2Step117CompleteRelocationMove0After.live∪{723},Finset.union_subset s2Step117CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step117CompleteRelocation_move0_owned : 821∈s2Step117ExitGvAfter.live := by norm_num [s2Step117ExitGvAfter,arenaWires]

private theorem s2Step117CompleteRelocation_move0_reserve : s2Step117ExitGvAfter.reserve {722}=some s2Step117CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step117ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step117CompleteRelocation_move0_retire : s2Step117CompleteRelocationMove0Borrowed.retireSet {821}=s2Step117CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step117CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step117CompleteRelocationMove0Borrowed,s2Step117ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step117CompleteRelocation_move1_owned : 819∈s2Step117CompleteRelocationMove0After.live := by norm_num [s2Step117CompleteRelocationMove0After,arenaWires]

private theorem s2Step117CompleteRelocation_move1_reserve : s2Step117CompleteRelocationMove0After.reserve {723}=some s2Step117CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step117CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step117CompleteRelocation_move1_retire : s2Step117CompleteRelocationMove1Borrowed.retireSet {819}=s2Step117EarlyControlArena := by
  unfold Arena.retireSet s2Step117EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step117CompleteRelocationMove1Borrowed,s2Step117CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step117CompleteRelocation_checked : s2Step117ExitGvAfter.checkRepack [(821,722),(819,723)]=some s2Step117EarlyControlArena := by
  have tail2 : s2Step117EarlyControlArena.checkRepack []=some s2Step117EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step117CompleteRelocationMove0After s2Step117CompleteRelocationMove1Borrowed s2Step117EarlyControlArena s2Step117EarlyControlArena 819 723 []
    s2Step117CompleteRelocation_move1_owned s2Step117CompleteRelocation_move1_reserve s2Step117CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step117ExitGvAfter s2Step117CompleteRelocationMove0Borrowed s2Step117CompleteRelocationMove0After s2Step117EarlyControlArena 821 722 [(819,723)]
    s2Step117CompleteRelocation_move0_owned s2Step117CompleteRelocation_move0_reserve s2Step117CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step117Complete_repack : s2Step117ExitGvAfter.checkRepack s2Step117CompleteMoves=some s2Step117EarlyControlArena := by
  simpa only [s2Step117CompleteMoves] using s2Step117CompleteRelocation_checked

private theorem s2Step117EarlyControl_branchOwned : ([781] : List Wire).toFinset⊆s2Step117EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step117EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117EarlyControl_branch : compileHmrBranchRetirement s2Step117EarlyControlSigmaArena 781=some s2Step117EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step117EarlyControl_branchOwned
  · ext q
    simp [s2Step117EarlyControlOutputArena,s2Step117EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step117EarlyControl_classEqualityBorrow : s2Step117EarlyControlPositiveArena.checkBorrow (([815, 792] : List Wire).length-1) s2Step117EarlyControlLog.classWork=some s2Step117EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step117EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step117EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step117EarlyControlEqualityArena,s2Step117EarlyControlPositiveArena,s2Step117EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step117EarlyControl_classEqualityOwned : ([815, 792] : List Wire).toFinset⊆s2Step117EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step117EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117EarlyControl_classEquality : compileHmrEqualityLog s2Step117EarlyControlPositiveArena [815, 792] 0 s2Step117EarlyControlLog.classWork=some (s2Step117EarlyControlEqualityArena,s2Step117EarlyControlLog.classWork,s2Step117EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step117EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step117EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step117EarlyControl_classOwned : ([777, 846, 815] : List Wire).toFinset⊆s2Step117EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step117EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117EarlyControl_positiveBorrow : s2Step117EarlyControlZeroArena.checkBorrow (1) s2Step117EarlyControlLog.positiveWork=some s2Step117EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step117EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step117EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step117EarlyControlPositiveArena,s2Step117EarlyControlZeroArena,s2Step117EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step117EarlyControl_class : compileHmrSourceClassLog s2Step117EarlyControlZeroArena false 777 s2Step117EarlyControlZeroPlan.top 0 815 s2Step117EarlyControlLog.positiveWork s2Step117EarlyControlLog.classWork=some s2Step117EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step117EarlyControlClassPlan s2Step117EarlyControlZeroArena false 777 s2Step117EarlyControlZeroPlan.top 0 815
  constructor
  · decide +kernel
  · exact s2Step117EarlyControl_classOwned
  · exact s2Step117EarlyControl_positiveBorrow
  · exact s2Step117EarlyControl_classEquality

private theorem s2Step117EarlyControl_entryRecordOwned : ([781, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step117EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step117EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117EarlyControl_entrySigmaOwned : ([815, 254] : List Wire).toFinset⊆s2Step117EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step117EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117EarlyControl_fitBorrow : s2Step117EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step117EarlyControlLog.recordFresh=some s2Step117EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step117EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step117EarlyControlFlagArena (fun q => (0≤q ∧ q<883)) rfl
      decide +kernel
    · ext q
      simp [s2Step117EarlyControlFittedArena,s2Step117EarlyControlFlagArena,s2Step117EarlyControlLog,arenaWires]

private theorem s2Step117EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step117EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step117EarlyControlFlagArena (fun q => (0≤q ∧ q<883)) rfl
  decide +kernel

private theorem s2Step117EarlyControl_fit : compileHmrRecordGrowLog s2Step117EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step117EarlyControlLog.recordFresh=some s2Step117EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step117EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step117EarlyControl_fitBorrow

private theorem s2Step117EarlyControl_flagsBorrow : s2Step117EarlyControlEqualityArena.checkBorrow (6) s2Step117EarlyControlLog.flagWork=some s2Step117EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step117EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step117EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step117EarlyControlFlagArena,s2Step117EarlyControlEqualityArena,s2Step117EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step117EarlyControl_flagsOwned : ([849, 253, 252, 251] : List Wire).toFinset⊆s2Step117EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step117EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117EarlyControl_flags : compileHmrFlagsLog s2Step117EarlyControlClassPlan.equalityArena s2Step117EarlyControlClassPlan.equality.top 253 252 251 s2Step117EarlyControlLog.flagWork=some s2Step117EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step117EarlyControl_flagsOwned⟩
  · exact s2Step117EarlyControl_flagsBorrow

private theorem s2Step117EarlyControl_historyBorrow : s2Step117EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step117EarlyControlLog.recordFresh=some s2Step117EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step117EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step117EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step117EarlyControlHistoryArena,s2Step117EarlyControlArena,s2Step117EarlyControlLog,arenaWires]

private theorem s2Step117EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step117EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step117EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117EarlyControl_history : compileHmrRecordGrowLog s2Step117EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step117EarlyControlLog.recordFresh=some s2Step117EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step117EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step117EarlyControl_historyBorrow

private theorem s2Step117EarlyControl_sigmaOwned : ([254, 815] : List Wire).toFinset⊆s2Step117EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step117EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117EarlyControl_sigmaReleaseOwned : ([815] : List Wire).toFinset⊆s2Step117EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step117EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117EarlyControl_sigmaRelease : s2Step117EarlyControlHistoryArena.release {815} (fun _ => false)=some s2Step117EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step117EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step117EarlyControlSigmaArena,s2Step117EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step117EarlyControl_sigma : compileHmrSigmaDropLog s2Step117EarlyControlHistoryArena false 0 0 254 815 []=some s2Step117EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step117EarlyControl_sigmaOwned⟩
  · exact s2Step117EarlyControl_sigmaRelease

private theorem s2Step117EarlyControl_zeroBorrow : s2Step117EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step117EarlyControlLog.zeroWork=some s2Step117EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step117EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step117EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step117EarlyControlZeroArena,s2Step117EarlyControlArena,s2Step117EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step117EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step117EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step117EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<819) ∨ (820≤q ∧ q<821) ∨ (822≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117EarlyControl_zero : compileHmrEqualityLog s2Step117EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step117EarlyControlLog.zeroWork=some (s2Step117EarlyControlZeroArena,s2Step117EarlyControlLog.zeroWork,s2Step117EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step117EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step117EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step117EarlyControl_logged : s2Step117EarlyControlPlan.Logged s2Step117EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 815 254 253 252 251 781 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step117EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step117EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step117EarlyControl_zero
  · exact s2Step117EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step117EarlyControl_flags
  · exact s2Step117EarlyControl_fit
  · exact s2Step117EarlyControl_history
  · exact s2Step117EarlyControl_sigma
  · exact s2Step117EarlyControl_branch

private theorem s2Step117EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step117EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 815 254 253 252 251 781 37 s2Step117EarlyControlLog=some s2Step117EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step117EarlyControlPlan s2Step117EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 815 254 253 252 251 781 37 s2Step117EarlyControl_logged

private def s2Step117EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step117EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩

private def s2Step117EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩

private def s2Step117EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩

private def s2Step117FrontBank : WindowBank := ⟨s2Step117EntryFRow,s2Step117EntryGRow,s2Step117EntryFvRow,s2Step117EntryGvRow⟩

private def s2Step117Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 846, 768]

private def s2Step117Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 792, 849, 769]

private def s2Step117Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 794, 770]

private def s2Step117Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 807, 771]

private theorem s2Step117Counter_apart : Disjoint s2Step117HeadFvAfter.live s2Step117CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step117HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117Counter_borrowed : s2Step117HeadFvAfter.checkBorrow 4 s2Step117CounterWork=some s2Step117CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step117HeadFvAfter s2Step117CounterDuring s2Step117CounterWork.toFinset s2Step117Counter_bounded s2Step117Counter_apart rfl

private theorem s2Step117Counter_owned : (815::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step117HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step117HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117Counter_checked : compileHmrCounterStepLog s2Step117HeadFvAfter true 815 [772, 773, 774, 775, 776, 777] s2Step117CounterWork=some s2Step117CounterDuring := by
  have owned : ∀q∈815::[772, 773, 774, 775, 776, 777],q∈s2Step117HeadFvAfter.live := fun q hq => s2Step117Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step117Counter_borrowed

private def s2Step117EntryFAfter : Arena := s2Step117EntryFBefore

private theorem s2Step117EntryBank_incomingDistinct : ([s2Step117EntryFRow,s2Step117EntryGRow,s2Step117EntryFvRow,s2Step117EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117EntryF_Incoming : rowsOwned s2Step117EntryFBefore [s2Step117EntryFRow,s2Step117EntryGRow,s2Step117EntryFvRow,s2Step117EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step117EntryFRow,s2Step117EntryGRow,s2Step117EntryFvRow,s2Step117EntryGvRow] 0 s2Step117EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step117EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117EntryBank_outgoingOwned : rowsOwned s2Step117EntryGvAfter [s2Step117EntryFOut,s2Step117EntryGOut,s2Step117EntryFvOut,s2Step117EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step117EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117EntryF_Outgoing : rowsOwned s2Step117EntryGvAfter [s2Step117EntryFOut,s2Step117EntryGOut,s2Step117EntryFvOut,s2Step117EntryGvOut] :=
  hmrRows_owned_drop s2Step117EntryGvAfter [s2Step117EntryFOut,s2Step117EntryGOut,s2Step117EntryFvOut,s2Step117EntryGvOut] 0 s2Step117EntryBank_outgoingOwned

private theorem s2Step117EntryF_distinct : (s2Step117EntryFRow.sign::s2Step117EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117EntryF_owned : (s2Step117EntryFRow.sign::s2Step117EntryFRow.payload).toFinset⊆s2Step117EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step117EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117EntryF_reserved : s2Step117EntryFBefore.reserve s2Step117EntryFFresh.toFinset=some s2Step117EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step117EntryFFresh,arenaWires]
  · norm_num [s2Step117EntryFBefore,s2Step117EntryFFresh,arenaWires]
  · simp only [s2Step117EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step117EntryF_checked : planRowResizeLog s2Step117EntryFBefore s2Step117EntryFRow 212 s2Step117EntryFFresh=
    some (s2Step117EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩,growRow 768 s2Step117EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step117EntryFBefore s2Step117EntryFAfter s2Step117EntryFRow 212 s2Step117EntryFFresh
    s2Step117EntryF_distinct s2Step117EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step117EntryF_reserved
  have rowEq : WindowRow.mk (s2Step117EntryFRow.payload++s2Step117EntryFFresh) s2Step117EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step117EntryFvAfter : Arena := s2Step117EntryGAfter

private def s2Step117EntryFvBefore : Arena := s2Step117EntryGAfter

private theorem s2Step117EntryFv_Incoming : rowsOwned s2Step117EntryFvBefore [s2Step117EntryFvRow,s2Step117EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step117EntryFRow,s2Step117EntryGRow,s2Step117EntryFvRow,s2Step117EntryGvRow] 2 s2Step117EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step117EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117EntryFv_Outgoing : rowsOwned s2Step117EntryGvAfter [s2Step117EntryFvOut,s2Step117EntryGvOut] :=
  hmrRows_owned_drop s2Step117EntryGvAfter [s2Step117EntryFOut,s2Step117EntryGOut,s2Step117EntryFvOut,s2Step117EntryGvOut] 2 s2Step117EntryBank_outgoingOwned

private theorem s2Step117EntryFv_distinct : (s2Step117EntryFvRow.sign::s2Step117EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117EntryFv_owned : (s2Step117EntryFvRow.sign::s2Step117EntryFvRow.payload).toFinset⊆s2Step117EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step117EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117EntryFv_reserved : s2Step117EntryFvBefore.reserve s2Step117EntryFvFresh.toFinset=some s2Step117EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step117EntryFvFresh,arenaWires]
  · norm_num [s2Step117EntryFvBefore,s2Step117EntryGAfter,s2Step117EntryFvFresh,arenaWires]
  · simp only [s2Step117EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step117EntryFv_checked : planRowResizeLog s2Step117EntryFvBefore s2Step117EntryFvRow 72 s2Step117EntryFvFresh=
    some (s2Step117EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩,growRow 770 s2Step117EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step117EntryFvBefore s2Step117EntryFvAfter s2Step117EntryFvRow 72 s2Step117EntryFvFresh
    s2Step117EntryFv_distinct s2Step117EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step117EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step117EntryFvRow.payload++s2Step117EntryFvFresh) s2Step117EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step117EntryGBefore : Arena := s2Step117EntryFBefore

private theorem s2Step117EntryG_Incoming : rowsOwned s2Step117EntryGBefore [s2Step117EntryGRow,s2Step117EntryFvRow,s2Step117EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step117EntryFRow,s2Step117EntryGRow,s2Step117EntryFvRow,s2Step117EntryGvRow] 1 s2Step117EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step117EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117EntryG_Outgoing : rowsOwned s2Step117EntryGvAfter [s2Step117EntryGOut,s2Step117EntryFvOut,s2Step117EntryGvOut] :=
  hmrRows_owned_drop s2Step117EntryGvAfter [s2Step117EntryFOut,s2Step117EntryGOut,s2Step117EntryFvOut,s2Step117EntryGvOut] 1 s2Step117EntryBank_outgoingOwned

private theorem s2Step117EntryG_distinct : (s2Step117EntryGRow.sign::s2Step117EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117EntryG_owned : (s2Step117EntryGRow.sign::s2Step117EntryGRow.payload).toFinset⊆s2Step117EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step117EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117EntryG_reserved : s2Step117EntryGBefore.reserve s2Step117EntryGFresh.toFinset=some s2Step117EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step117EntryGFresh,arenaWires]
  · norm_num [s2Step117EntryGBefore,s2Step117EntryFBefore,s2Step117EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step117EntryGAfter,s2Step117EntryGBefore,s2Step117EntryFBefore,s2Step117EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step117EntryG_checked : planRowResizeLog s2Step117EntryGBefore s2Step117EntryGRow 212 s2Step117EntryGFresh=
    some (s2Step117EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 792],769⟩,growRow 769 s2Step117EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step117EntryGBefore s2Step117EntryGAfter s2Step117EntryGRow 212 s2Step117EntryGFresh
    s2Step117EntryG_distinct s2Step117EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step117EntryG_reserved
  have rowEq : WindowRow.mk (s2Step117EntryGRow.payload++s2Step117EntryGFresh) s2Step117EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 792],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step117EntryGvBefore : Arena := s2Step117EntryGAfter

private theorem s2Step117EntryGv_Incoming : rowsOwned s2Step117EntryGvBefore [s2Step117EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step117EntryFRow,s2Step117EntryGRow,s2Step117EntryFvRow,s2Step117EntryGvRow] 3 s2Step117EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step117EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117EntryGv_Outgoing : rowsOwned s2Step117EntryGvAfter [s2Step117EntryGvOut] :=
  hmrRows_owned_drop s2Step117EntryGvAfter [s2Step117EntryFOut,s2Step117EntryGOut,s2Step117EntryFvOut,s2Step117EntryGvOut] 3 s2Step117EntryBank_outgoingOwned

private theorem s2Step117EntryGv_distinct : (s2Step117EntryGvRow.sign::s2Step117EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117EntryGv_owned : (s2Step117EntryGvRow.sign::s2Step117EntryGvRow.payload).toFinset⊆s2Step117EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step117EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117EntryGv_reserved : s2Step117EntryGvBefore.reserve s2Step117EntryGvFresh.toFinset=some s2Step117EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step117EntryGvFresh,arenaWires]
  · norm_num [s2Step117EntryGvBefore,s2Step117EntryGAfter,s2Step117EntryGvFresh,arenaWires]
  · simp only [s2Step117EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step117EntryGv_checked : planRowResizeLog s2Step117EntryGvBefore s2Step117EntryGvRow 72 s2Step117EntryGvFresh=
    some (s2Step117EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩,growRow 771 s2Step117EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step117EntryGvBefore s2Step117EntryGvAfter s2Step117EntryGvRow 72 s2Step117EntryGvFresh
    s2Step117EntryGv_distinct s2Step117EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step117EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step117EntryGvRow.payload++s2Step117EntryGvFresh) s2Step117EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step117EntryBank_rows : planWindowRowsLog s2Step117EntryFBefore [(s2Step117EntryFRow,212),(s2Step117EntryGRow,212),(s2Step117EntryFvRow,72),(s2Step117EntryGvRow,72)] [s2Step117EntryFFresh,s2Step117EntryGFresh,s2Step117EntryFvFresh,s2Step117EntryGvFresh]=
    some (s2Step117EntryGvAfter,[s2Step117EntryFOut,s2Step117EntryGOut,s2Step117EntryFvOut,s2Step117EntryGvOut],(growRow 768 s2Step117EntryFFresh ++ (growRow 769 s2Step117EntryGFresh ++ (growRow 770 s2Step117EntryFvFresh ++ (growRow 771 s2Step117EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step117EntryGvAfter [] []=some (s2Step117EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step117EntryGvBefore s2Step117EntryGvAfter s2Step117EntryGvAfter
    s2Step117EntryGvRow s2Step117EntryGvOut 72 s2Step117EntryGvFresh [] [] []
    (growRow 771 s2Step117EntryGvFresh) ([]) s2Step117EntryGv_Incoming s2Step117EntryGv_checked h4 s2Step117EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step117EntryFvBefore s2Step117EntryFvAfter s2Step117EntryGvAfter
    s2Step117EntryFvRow s2Step117EntryFvOut 72 s2Step117EntryFvFresh [(s2Step117EntryGvRow,72)] [s2Step117EntryGvFresh] [s2Step117EntryGvOut]
    (growRow 770 s2Step117EntryFvFresh) ((growRow 771 s2Step117EntryGvFresh ++ [])) s2Step117EntryFv_Incoming s2Step117EntryFv_checked h3 s2Step117EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step117EntryGBefore s2Step117EntryGAfter s2Step117EntryGvAfter
    s2Step117EntryGRow s2Step117EntryGOut 212 s2Step117EntryGFresh [(s2Step117EntryFvRow,72),(s2Step117EntryGvRow,72)] [s2Step117EntryFvFresh,s2Step117EntryGvFresh] [s2Step117EntryFvOut,s2Step117EntryGvOut]
    (growRow 769 s2Step117EntryGFresh) ((growRow 770 s2Step117EntryFvFresh ++ (growRow 771 s2Step117EntryGvFresh ++ []))) s2Step117EntryG_Incoming s2Step117EntryG_checked h2 s2Step117EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step117EntryFBefore s2Step117EntryFAfter s2Step117EntryGvAfter
    s2Step117EntryFRow s2Step117EntryFOut 212 s2Step117EntryFFresh [(s2Step117EntryGRow,212),(s2Step117EntryFvRow,72),(s2Step117EntryGvRow,72)] [s2Step117EntryGFresh,s2Step117EntryFvFresh,s2Step117EntryGvFresh] [s2Step117EntryGOut,s2Step117EntryFvOut,s2Step117EntryGvOut]
    (growRow 768 s2Step117EntryFFresh) ((growRow 769 s2Step117EntryGFresh ++ (growRow 770 s2Step117EntryFvFresh ++ (growRow 771 s2Step117EntryGvFresh ++ [])))) s2Step117EntryF_Incoming s2Step117EntryF_checked h1 s2Step117EntryF_Outgoing
  exact h0

private theorem s2Step117EntryBank_checked : compileHmrBankResizeLog .entry s2Step117EntryFBefore ⟨s2Step117EntryFRow,s2Step117EntryGRow,s2Step117EntryFvRow,s2Step117EntryGvRow⟩ ⟨212,212,72,72⟩ [s2Step117EntryFFresh,s2Step117EntryGFresh,s2Step117EntryFvFresh,s2Step117EntryGvFresh]=
    some (s2Step117EntryGvAfter,⟨s2Step117EntryFOut,s2Step117EntryGOut,s2Step117EntryFvOut,s2Step117EntryGvOut⟩,(growRow 768 s2Step117EntryFFresh ++ (growRow 769 s2Step117EntryGFresh ++ (growRow 770 s2Step117EntryFvFresh ++ (growRow 771 s2Step117EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step117EntryBank_rows]
  rfl

private def s2Step117ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<722) ∨ (724≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117ExitFBefore : Arena := s2Step117ExitGAfter

private def s2Step117ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 846],768⟩

private def s2Step117ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 794],770⟩

private def s2Step117ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 792, 849],769⟩

private def s2Step117ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 807],771⟩

private theorem s2Step117ExitBank_incomingDistinct : ([s2Step117ExitGRow,s2Step117ExitFRow,s2Step117ExitFvRow,s2Step117ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117ExitF_Incoming : rowsOwned s2Step117ExitFBefore [s2Step117ExitFRow,s2Step117ExitFvRow,s2Step117ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step117ExitGRow,s2Step117ExitFRow,s2Step117ExitFvRow,s2Step117ExitGvRow] 1 s2Step117ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step117ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117ExitBank_outgoingOwned : rowsOwned s2Step117ExitGvAfter [s2Step117ExitGOut,s2Step117ExitFOut,s2Step117ExitFvOut,s2Step117ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step117ExitGvAfter (fun q => (0≤q ∧ q<722) ∨ (724≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117ExitF_Outgoing : rowsOwned s2Step117ExitGvAfter [s2Step117ExitFOut,s2Step117ExitFvOut,s2Step117ExitGvOut] :=
  hmrRows_owned_drop s2Step117ExitGvAfter [s2Step117ExitGOut,s2Step117ExitFOut,s2Step117ExitFvOut,s2Step117ExitGvOut] 1 s2Step117ExitBank_outgoingOwned

private theorem s2Step117ExitF_distinct : (s2Step117ExitFRow.sign::s2Step117ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117ExitF_owned : (s2Step117ExitFRow.sign::s2Step117ExitFRow.payload).toFinset⊆s2Step117ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step117ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117ExitF_retired : s2Step117ExitFBefore.retireSet s2Step117ExitFExtra.toFinset=s2Step117ExitFAfter := by
  unfold Arena.retireSet s2Step117ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step117ExitFBefore,s2Step117ExitGAfter,s2Step117ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step117ExitF_checked : planRowResizeLog s2Step117ExitFBefore s2Step117ExitFRow 210 []=
    some (s2Step117ExitFAfter,s2Step117ExitFOut,shrinkRow 768 s2Step117ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step117ExitFBefore s2Step117ExitFRow 210 s2Step117ExitF_distinct s2Step117ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step117ExitFRow.payload.take 210) s2Step117ExitFRow.sign=s2Step117ExitFOut := by decide +kernel
  have hi : s2Step117ExitFRow.payload.drop 210=s2Step117ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step117ExitF_retired] at result
  exact result

private def s2Step117ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<722) ∨ (724≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117ExitFvBefore : Arena := s2Step117ExitFAfter

private theorem s2Step117ExitFv_Incoming : rowsOwned s2Step117ExitFvBefore [s2Step117ExitFvRow,s2Step117ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step117ExitGRow,s2Step117ExitFRow,s2Step117ExitFvRow,s2Step117ExitGvRow] 2 s2Step117ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step117ExitFvBefore (fun q => (0≤q ∧ q<722) ∨ (724≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117ExitFv_Outgoing : rowsOwned s2Step117ExitGvAfter [s2Step117ExitFvOut,s2Step117ExitGvOut] :=
  hmrRows_owned_drop s2Step117ExitGvAfter [s2Step117ExitGOut,s2Step117ExitFOut,s2Step117ExitFvOut,s2Step117ExitGvOut] 2 s2Step117ExitBank_outgoingOwned

private theorem s2Step117ExitFv_distinct : (s2Step117ExitFvRow.sign::s2Step117ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117ExitFv_owned : (s2Step117ExitFvRow.sign::s2Step117ExitFvRow.payload).toFinset⊆s2Step117ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step117ExitFvBefore (fun q => (0≤q ∧ q<722) ∨ (724≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117ExitFv_retired : s2Step117ExitFvBefore.retireSet s2Step117ExitFvExtra.toFinset=s2Step117ExitFvAfter := by
  unfold Arena.retireSet s2Step117ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step117ExitFvBefore,s2Step117ExitFAfter,s2Step117ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step117ExitFv_checked : planRowResizeLog s2Step117ExitFvBefore s2Step117ExitFvRow 72 []=
    some (s2Step117ExitFvAfter,s2Step117ExitFvOut,shrinkRow 770 s2Step117ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step117ExitFvBefore s2Step117ExitFvRow 72 s2Step117ExitFv_distinct s2Step117ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step117ExitFvRow.payload.take 72) s2Step117ExitFvRow.sign=s2Step117ExitFvOut := by decide +kernel
  have hi : s2Step117ExitFvRow.payload.drop 72=s2Step117ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step117ExitFv_retired] at result
  exact result

private def s2Step117ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step117ExitG_Incoming : rowsOwned s2Step117ExitGBefore [s2Step117ExitGRow,s2Step117ExitFRow,s2Step117ExitFvRow,s2Step117ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step117ExitGRow,s2Step117ExitFRow,s2Step117ExitFvRow,s2Step117ExitGvRow] 0 s2Step117ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step117ExitGBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117ExitG_Outgoing : rowsOwned s2Step117ExitGvAfter [s2Step117ExitGOut,s2Step117ExitFOut,s2Step117ExitFvOut,s2Step117ExitGvOut] :=
  hmrRows_owned_drop s2Step117ExitGvAfter [s2Step117ExitGOut,s2Step117ExitFOut,s2Step117ExitFvOut,s2Step117ExitGvOut] 0 s2Step117ExitBank_outgoingOwned

private theorem s2Step117ExitG_distinct : (s2Step117ExitGRow.sign::s2Step117ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117ExitG_owned : (s2Step117ExitGRow.sign::s2Step117ExitGRow.payload).toFinset⊆s2Step117ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step117ExitGBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117ExitG_retired : s2Step117ExitGBefore.retireSet s2Step117ExitGExtra.toFinset=s2Step117ExitGAfter := by
  unfold Arena.retireSet s2Step117ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step117ExitGBefore,s2Step117ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step117ExitG_checked : planRowResizeLog s2Step117ExitGBefore s2Step117ExitGRow 211 []=
    some (s2Step117ExitGAfter,s2Step117ExitGOut,shrinkRow 769 s2Step117ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step117ExitGBefore s2Step117ExitGRow 211 s2Step117ExitG_distinct s2Step117ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step117ExitGRow.payload.take 211) s2Step117ExitGRow.sign=s2Step117ExitGOut := by decide +kernel
  have hi : s2Step117ExitGRow.payload.drop 211=s2Step117ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step117ExitG_retired] at result
  exact result

private def s2Step117ExitGvBefore : Arena := s2Step117ExitFvAfter

private theorem s2Step117ExitGv_Incoming : rowsOwned s2Step117ExitGvBefore [s2Step117ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step117ExitGRow,s2Step117ExitFRow,s2Step117ExitFvRow,s2Step117ExitGvRow] 3 s2Step117ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step117ExitGvBefore (fun q => (0≤q ∧ q<722) ∨ (724≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117ExitGv_Outgoing : rowsOwned s2Step117ExitGvAfter [s2Step117ExitGvOut] :=
  hmrRows_owned_drop s2Step117ExitGvAfter [s2Step117ExitGOut,s2Step117ExitFOut,s2Step117ExitFvOut,s2Step117ExitGvOut] 3 s2Step117ExitBank_outgoingOwned

private theorem s2Step117ExitGv_distinct : (s2Step117ExitGvRow.sign::s2Step117ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117ExitGv_owned : (s2Step117ExitGvRow.sign::s2Step117ExitGvRow.payload).toFinset⊆s2Step117ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step117ExitGvBefore (fun q => (0≤q ∧ q<722) ∨ (724≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117ExitGv_retired : s2Step117ExitGvBefore.retireSet s2Step117ExitGvExtra.toFinset=s2Step117ExitGvAfter := by
  unfold Arena.retireSet s2Step117ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step117ExitGvBefore,s2Step117ExitFvAfter,s2Step117ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step117ExitGv_checked : planRowResizeLog s2Step117ExitGvBefore s2Step117ExitGvRow 72 []=
    some (s2Step117ExitGvAfter,s2Step117ExitGvOut,shrinkRow 771 s2Step117ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step117ExitGvBefore s2Step117ExitGvRow 72 s2Step117ExitGv_distinct s2Step117ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step117ExitGvRow.payload.take 72) s2Step117ExitGvRow.sign=s2Step117ExitGvOut := by decide +kernel
  have hi : s2Step117ExitGvRow.payload.drop 72=s2Step117ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step117ExitGv_retired] at result
  exact result

private theorem s2Step117ExitBank_rows : planWindowRowsLog s2Step117ExitGBefore [(s2Step117ExitGRow,211),(s2Step117ExitFRow,210),(s2Step117ExitFvRow,72),(s2Step117ExitGvRow,72)] [[],[],[],[]]=
    some (s2Step117ExitGvAfter,[s2Step117ExitGOut,s2Step117ExitFOut,s2Step117ExitFvOut,s2Step117ExitGvOut],(shrinkRow 769 s2Step117ExitGExtra ++ (shrinkRow 768 s2Step117ExitFExtra ++ (shrinkRow 770 s2Step117ExitFvExtra ++ (shrinkRow 771 s2Step117ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step117ExitGvAfter [] []=some (s2Step117ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step117ExitGvBefore s2Step117ExitGvAfter s2Step117ExitGvAfter
    s2Step117ExitGvRow s2Step117ExitGvOut 72 [] [] [] []
    (shrinkRow 771 s2Step117ExitGvExtra) ([]) s2Step117ExitGv_Incoming s2Step117ExitGv_checked h4 s2Step117ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step117ExitFvBefore s2Step117ExitFvAfter s2Step117ExitGvAfter
    s2Step117ExitFvRow s2Step117ExitFvOut 72 [] [(s2Step117ExitGvRow,72)] [[]] [s2Step117ExitGvOut]
    (shrinkRow 770 s2Step117ExitFvExtra) ((shrinkRow 771 s2Step117ExitGvExtra ++ [])) s2Step117ExitFv_Incoming s2Step117ExitFv_checked h3 s2Step117ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step117ExitFBefore s2Step117ExitFAfter s2Step117ExitGvAfter
    s2Step117ExitFRow s2Step117ExitFOut 210 [] [(s2Step117ExitFvRow,72),(s2Step117ExitGvRow,72)] [[],[]] [s2Step117ExitFvOut,s2Step117ExitGvOut]
    (shrinkRow 768 s2Step117ExitFExtra) ((shrinkRow 770 s2Step117ExitFvExtra ++ (shrinkRow 771 s2Step117ExitGvExtra ++ []))) s2Step117ExitF_Incoming s2Step117ExitF_checked h2 s2Step117ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step117ExitGBefore s2Step117ExitGAfter s2Step117ExitGvAfter
    s2Step117ExitGRow s2Step117ExitGOut 211 [] [(s2Step117ExitFRow,210),(s2Step117ExitFvRow,72),(s2Step117ExitGvRow,72)] [[],[],[]] [s2Step117ExitFOut,s2Step117ExitFvOut,s2Step117ExitGvOut]
    (shrinkRow 769 s2Step117ExitGExtra) ((shrinkRow 768 s2Step117ExitFExtra ++ (shrinkRow 770 s2Step117ExitFvExtra ++ (shrinkRow 771 s2Step117ExitGvExtra ++ [])))) s2Step117ExitG_Incoming s2Step117ExitG_checked h1 s2Step117ExitG_Outgoing
  exact h0

private theorem s2Step117ExitBank_checked : compileHmrBankResizeLog .exit s2Step117ExitGBefore ⟨s2Step117ExitFRow,s2Step117ExitGRow,s2Step117ExitFvRow,s2Step117ExitGvRow⟩ ⟨210,211,72,72⟩ [[],[],[],[]]=
    some (s2Step117ExitGvAfter,⟨s2Step117ExitFOut,s2Step117ExitGOut,s2Step117ExitFvOut,s2Step117ExitGvOut⟩,(shrinkRow 769 s2Step117ExitGExtra ++ (shrinkRow 768 s2Step117ExitFExtra ++ (shrinkRow 770 s2Step117ExitFvExtra ++ (shrinkRow 771 s2Step117ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step117ExitBank_rows]
  rfl

private theorem s2Step117Add0_apart : Disjoint s2Step117Add0Arena.live s2Step117Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step117Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117Add0_card : s2Step117Add0Arena.live.card=879 := by
  decide +kernel

private theorem s2Step117Add0_borrowed : s2Step117Add0Arena.checkBorrow (hmrHybridCount s2Step117Add0Arena s2Step117Add0B.length) s2Step117Add0Work=some s2Step117Add0During := by
  have len : s2Step117Add0Work.length=hmrHybridCount s2Step117Add0Arena s2Step117Add0B.length := by
    rw [hmrHybridCount,s2Step117Add0_card]
    decide +kernel
  have nd : s2Step117Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step117Add0Arena s2Step117Add0During s2Step117Add0Work.toFinset s2Step117Add0_bounded s2Step117Add0_apart rfl

private theorem s2Step117Add0_distinct : (806::781::802::(s2Step117Add0A++s2Step117Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117Add0_owned : (806::781::802::(s2Step117Add0A++s2Step117Add0B)).toFinset⊆s2Step117Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step117Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117Add0_checked : compileHmrHybridCinLog s2Step117Add0Arena 781 806 802 s2Step117Add0A s2Step117Add0B s2Step117Add0Work=some s2Step117Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step117Add0Arena s2Step117Add0During 781 806 802 s2Step117Add0A s2Step117Add0B s2Step117Add0Work
    (by decide +kernel) (by decide +kernel) s2Step117Add0_distinct
    (fun q hq => s2Step117Add0_owned (List.mem_toFinset.mpr hq)) s2Step117Add0_borrowed

private theorem s2Step117Add1_apart : Disjoint s2Step117Add1Arena.live s2Step117Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step117Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117Add1_card : s2Step117Add1Arena.live.card=879 := by
  decide +kernel

private theorem s2Step117Add1_borrowed : s2Step117Add1Arena.checkBorrow (hmrHybridCount s2Step117Add1Arena s2Step117Add1B.length) s2Step117Add1Work=some s2Step117Add1During := by
  have len : s2Step117Add1Work.length=hmrHybridCount s2Step117Add1Arena s2Step117Add1B.length := by
    rw [hmrHybridCount,s2Step117Add1_card]
    decide +kernel
  have nd : s2Step117Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step117Add1Arena s2Step117Add1During s2Step117Add1Work.toFinset s2Step117Add1_bounded s2Step117Add1_apart rfl

private theorem s2Step117Add1_distinct : (806::781::802::(s2Step117Add1A++s2Step117Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117Add1_owned : (806::781::802::(s2Step117Add1A++s2Step117Add1B)).toFinset⊆s2Step117Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step117Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117Add1_checked : compileHmrHybridCinLog s2Step117Add1Arena 781 806 802 s2Step117Add1A s2Step117Add1B s2Step117Add1Work=some s2Step117Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step117Add1Arena s2Step117Add1During 781 806 802 s2Step117Add1A s2Step117Add1B s2Step117Add1Work
    (by decide +kernel) (by decide +kernel) s2Step117Add1_distinct
    (fun q hq => s2Step117Add1_owned (List.mem_toFinset.mpr hq)) s2Step117Add1_borrowed

private theorem s2Step117F4_apart : Disjoint (s2Step117Add0A++s2Step117Add0B).toFinset (s2Step117Add1A++s2Step117Add1B).toFinset := by
  have nd : ((s2Step117Add0A++s2Step117Add0B)++(s2Step117Add1A++s2Step117Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step117F4_carry : s2Step117F4FlagArena.checkBorrow 1 [802]=some s2Step117Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step117F4FlagArena,s2Step117HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step117F4FlagArena,s2Step117HeadFvAfter,s2Step117Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step117F4_distinct : (815::781::806::802::((s2Step117Add0A++s2Step117Add1A)++(s2Step117Add0B++s2Step117Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117F4_flag : s2Step117HeadFvAfter.checkBorrow 1 [806]=some s2Step117F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step117HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step117F4_owned : (815::781::((s2Step117Add0A++s2Step117Add1A)++(s2Step117Add0B++s2Step117Add1B))).toFinset⊆s2Step117HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step117HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117F4_checked : compileHmrHybridF4Log s2Step117HeadFvAfter 815 781 s2Step117Add0A s2Step117Add0B s2Step117Add1A s2Step117Add1B [806] [802] s2Step117Add0Work s2Step117Add1Work=some s2Step117F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step117HeadFvAfter s2Step117F4FlagArena s2Step117Add0Arena s2Step117Add0During s2Step117Add1During 815 781
    s2Step117Add0A s2Step117Add0B s2Step117Add1A s2Step117Add1B [806] [802] s2Step117Add0Work s2Step117Add1Work
    (fun q hq => s2Step117F4_owned (List.mem_toFinset.mpr hq)) s2Step117F4_flag s2Step117F4_carry
    s2Step117F4_distinct s2Step117F4_apart s2Step117Add0_checked s2Step117Add1_checked

private theorem s2Step117Front_branch : s2Step117FrontSigmaArena.checkBorrow 1 [781]=some s2Step117HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step117FrontSigmaArena,s2Step117EntryGvAfter,s2Step117EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step117FrontSigmaArena,s2Step117EntryGvAfter,s2Step117EntryGAfter,s2Step117HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step117Front_entry : HmrFrontEntryValid s2Step117EntryFBefore s2Step117FrontBank 212 72 ⟨210,211,72,72⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step117FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step117EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step117EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step117FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step117Front_sigma : s2Step117EntryGvAfter.checkBorrow 1 [815]=some s2Step117FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step117EntryGvAfter,s2Step117EntryGAfter,arenaWires]
  · rfl

private def s2Step117HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117HeadFBefore : Arena := s2Step117HeadGAfter

private def s2Step117HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step117HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩

private def s2Step117HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 792],769⟩

private def s2Step117HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805],771⟩

private theorem s2Step117HeadBank_incomingDistinct : ([s2Step117HeadGRow,s2Step117HeadFRow,s2Step117HeadGvRow,s2Step117HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117HeadF_Incoming : rowsOwned s2Step117HeadFBefore [s2Step117HeadFRow,s2Step117HeadGvRow,s2Step117HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step117HeadGRow,s2Step117HeadFRow,s2Step117HeadGvRow,s2Step117HeadFvRow] 1 s2Step117HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step117HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117HeadBank_outgoingOwned : rowsOwned s2Step117HeadFvAfter [s2Step117HeadGOut,s2Step117HeadFOut,s2Step117HeadGvOut,s2Step117HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step117HeadFvAfter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117HeadF_Outgoing : rowsOwned s2Step117HeadFvAfter [s2Step117HeadFOut,s2Step117HeadGvOut,s2Step117HeadFvOut] :=
  hmrRows_owned_drop s2Step117HeadFvAfter [s2Step117HeadGOut,s2Step117HeadFOut,s2Step117HeadGvOut,s2Step117HeadFvOut] 1 s2Step117HeadBank_outgoingOwned

private theorem s2Step117HeadF_distinct : (s2Step117HeadFRow.sign::s2Step117HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117HeadF_owned : (s2Step117HeadFRow.sign::s2Step117HeadFRow.payload).toFinset⊆s2Step117HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step117HeadFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117HeadF_reserved : s2Step117HeadFBefore.reserve s2Step117HeadFFresh.toFinset=some s2Step117HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step117HeadFFresh,arenaWires]
  · norm_num [s2Step117HeadFBefore,s2Step117HeadGAfter,s2Step117HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step117HeadFAfter,s2Step117HeadFBefore,s2Step117HeadGAfter,s2Step117HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step117HeadF_checked : planRowResizeLog s2Step117HeadFBefore s2Step117HeadFRow 213 s2Step117HeadFFresh=
    some (s2Step117HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 846],768⟩,growRow 768 s2Step117HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step117HeadFBefore s2Step117HeadFAfter s2Step117HeadFRow 213 s2Step117HeadFFresh
    s2Step117HeadF_distinct s2Step117HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step117HeadF_reserved
  have rowEq : WindowRow.mk (s2Step117HeadFRow.payload++s2Step117HeadFFresh) s2Step117HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 846],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step117HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step117HeadFvBefore : Arena := s2Step117HeadGvAfter

private theorem s2Step117HeadFv_Incoming : rowsOwned s2Step117HeadFvBefore [s2Step117HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step117HeadGRow,s2Step117HeadFRow,s2Step117HeadGvRow,s2Step117HeadFvRow] 3 s2Step117HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step117HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117HeadFv_Outgoing : rowsOwned s2Step117HeadFvAfter [s2Step117HeadFvOut] :=
  hmrRows_owned_drop s2Step117HeadFvAfter [s2Step117HeadGOut,s2Step117HeadFOut,s2Step117HeadGvOut,s2Step117HeadFvOut] 3 s2Step117HeadBank_outgoingOwned

private theorem s2Step117HeadFv_distinct : (s2Step117HeadFvRow.sign::s2Step117HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117HeadFv_owned : (s2Step117HeadFvRow.sign::s2Step117HeadFvRow.payload).toFinset⊆s2Step117HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step117HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117HeadFv_reserved : s2Step117HeadFvBefore.reserve s2Step117HeadFvFresh.toFinset=some s2Step117HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step117HeadFvFresh,arenaWires]
  · norm_num [s2Step117HeadFvBefore,s2Step117HeadGvAfter,s2Step117HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step117HeadFvAfter,s2Step117HeadFvBefore,s2Step117HeadGvAfter,s2Step117HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step117HeadFv_checked : planRowResizeLog s2Step117HeadFvBefore s2Step117HeadFvRow 73 s2Step117HeadFvFresh=
    some (s2Step117HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 794],770⟩,growRow 770 s2Step117HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step117HeadFvBefore s2Step117HeadFvAfter s2Step117HeadFvRow 73 s2Step117HeadFvFresh
    s2Step117HeadFv_distinct s2Step117HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step117HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step117HeadFvRow.payload++s2Step117HeadFvFresh) s2Step117HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 794],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step117HeadG_Incoming : rowsOwned s2Step117HeadGBefore [s2Step117HeadGRow,s2Step117HeadFRow,s2Step117HeadGvRow,s2Step117HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step117HeadGRow,s2Step117HeadFRow,s2Step117HeadGvRow,s2Step117HeadFvRow] 0 s2Step117HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step117HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117HeadG_Outgoing : rowsOwned s2Step117HeadFvAfter [s2Step117HeadGOut,s2Step117HeadFOut,s2Step117HeadGvOut,s2Step117HeadFvOut] :=
  hmrRows_owned_drop s2Step117HeadFvAfter [s2Step117HeadGOut,s2Step117HeadFOut,s2Step117HeadGvOut,s2Step117HeadFvOut] 0 s2Step117HeadBank_outgoingOwned

private theorem s2Step117HeadG_distinct : (s2Step117HeadGRow.sign::s2Step117HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117HeadG_owned : (s2Step117HeadGRow.sign::s2Step117HeadGRow.payload).toFinset⊆s2Step117HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step117HeadGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117HeadG_reserved : s2Step117HeadGBefore.reserve s2Step117HeadGFresh.toFinset=some s2Step117HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step117HeadGFresh,arenaWires]
  · norm_num [s2Step117HeadGBefore,s2Step117HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step117HeadGAfter,s2Step117HeadGBefore,s2Step117HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step117HeadG_checked : planRowResizeLog s2Step117HeadGBefore s2Step117HeadGRow 213 s2Step117HeadGFresh=
    some (s2Step117HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 792, 849],769⟩,growRow 769 s2Step117HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step117HeadGBefore s2Step117HeadGAfter s2Step117HeadGRow 213 s2Step117HeadGFresh
    s2Step117HeadG_distinct s2Step117HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step117HeadG_reserved
  have rowEq : WindowRow.mk (s2Step117HeadGRow.payload++s2Step117HeadGFresh) s2Step117HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 792, 849],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step117HeadGvBefore : Arena := s2Step117HeadFAfter

private theorem s2Step117HeadGv_Incoming : rowsOwned s2Step117HeadGvBefore [s2Step117HeadGvRow,s2Step117HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step117HeadGRow,s2Step117HeadFRow,s2Step117HeadGvRow,s2Step117HeadFvRow] 2 s2Step117HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step117HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step117HeadGv_Outgoing : rowsOwned s2Step117HeadFvAfter [s2Step117HeadGvOut,s2Step117HeadFvOut] :=
  hmrRows_owned_drop s2Step117HeadFvAfter [s2Step117HeadGOut,s2Step117HeadFOut,s2Step117HeadGvOut,s2Step117HeadFvOut] 2 s2Step117HeadBank_outgoingOwned

private theorem s2Step117HeadGv_distinct : (s2Step117HeadGvRow.sign::s2Step117HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step117HeadGv_owned : (s2Step117HeadGvRow.sign::s2Step117HeadGvRow.payload).toFinset⊆s2Step117HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step117HeadGvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step117HeadGv_reserved : s2Step117HeadGvBefore.reserve s2Step117HeadGvFresh.toFinset=some s2Step117HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step117HeadGvFresh,arenaWires]
  · norm_num [s2Step117HeadGvBefore,s2Step117HeadFAfter,s2Step117HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step117HeadGvAfter,s2Step117HeadGvBefore,s2Step117HeadFAfter,s2Step117HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step117HeadGv_checked : planRowResizeLog s2Step117HeadGvBefore s2Step117HeadGvRow 73 s2Step117HeadGvFresh=
    some (s2Step117HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 807],771⟩,growRow 771 s2Step117HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step117HeadGvBefore s2Step117HeadGvAfter s2Step117HeadGvRow 73 s2Step117HeadGvFresh
    s2Step117HeadGv_distinct s2Step117HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step117HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step117HeadGvRow.payload++s2Step117HeadGvFresh) s2Step117HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 807],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step117HeadBank_rows : planWindowRowsLog s2Step117HeadGBefore [(s2Step117HeadGRow,213),(s2Step117HeadFRow,213),(s2Step117HeadGvRow,73),(s2Step117HeadFvRow,73)] [s2Step117HeadGFresh,s2Step117HeadFFresh,s2Step117HeadGvFresh,s2Step117HeadFvFresh]=
    some (s2Step117HeadFvAfter,[s2Step117HeadGOut,s2Step117HeadFOut,s2Step117HeadGvOut,s2Step117HeadFvOut],(growRow 769 s2Step117HeadGFresh ++ (growRow 768 s2Step117HeadFFresh ++ (growRow 771 s2Step117HeadGvFresh ++ (growRow 770 s2Step117HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step117HeadFvAfter [] []=some (s2Step117HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step117HeadFvBefore s2Step117HeadFvAfter s2Step117HeadFvAfter
    s2Step117HeadFvRow s2Step117HeadFvOut 73 s2Step117HeadFvFresh [] [] []
    (growRow 770 s2Step117HeadFvFresh) ([]) s2Step117HeadFv_Incoming s2Step117HeadFv_checked h4 s2Step117HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step117HeadGvBefore s2Step117HeadGvAfter s2Step117HeadFvAfter
    s2Step117HeadGvRow s2Step117HeadGvOut 73 s2Step117HeadGvFresh [(s2Step117HeadFvRow,73)] [s2Step117HeadFvFresh] [s2Step117HeadFvOut]
    (growRow 771 s2Step117HeadGvFresh) ((growRow 770 s2Step117HeadFvFresh ++ [])) s2Step117HeadGv_Incoming s2Step117HeadGv_checked h3 s2Step117HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step117HeadFBefore s2Step117HeadFAfter s2Step117HeadFvAfter
    s2Step117HeadFRow s2Step117HeadFOut 213 s2Step117HeadFFresh [(s2Step117HeadGvRow,73),(s2Step117HeadFvRow,73)] [s2Step117HeadGvFresh,s2Step117HeadFvFresh] [s2Step117HeadGvOut,s2Step117HeadFvOut]
    (growRow 768 s2Step117HeadFFresh) ((growRow 771 s2Step117HeadGvFresh ++ (growRow 770 s2Step117HeadFvFresh ++ []))) s2Step117HeadF_Incoming s2Step117HeadF_checked h2 s2Step117HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step117HeadGBefore s2Step117HeadGAfter s2Step117HeadFvAfter
    s2Step117HeadGRow s2Step117HeadGOut 213 s2Step117HeadGFresh [(s2Step117HeadFRow,213),(s2Step117HeadGvRow,73),(s2Step117HeadFvRow,73)] [s2Step117HeadFFresh,s2Step117HeadGvFresh,s2Step117HeadFvFresh] [s2Step117HeadFOut,s2Step117HeadGvOut,s2Step117HeadFvOut]
    (growRow 769 s2Step117HeadGFresh) ((growRow 768 s2Step117HeadFFresh ++ (growRow 771 s2Step117HeadGvFresh ++ (growRow 770 s2Step117HeadFvFresh ++ [])))) s2Step117HeadG_Incoming s2Step117HeadG_checked h1 s2Step117HeadG_Outgoing
  exact h0

private theorem s2Step117HeadBank_checked : compileHmrBankResizeLog .headroom s2Step117HeadGBefore ⟨s2Step117HeadFRow,s2Step117HeadGRow,s2Step117HeadFvRow,s2Step117HeadGvRow⟩ ⟨213,213,73,73⟩ [s2Step117HeadGFresh,s2Step117HeadFFresh,s2Step117HeadGvFresh,s2Step117HeadFvFresh]=
    some (s2Step117HeadFvAfter,⟨s2Step117HeadFOut,s2Step117HeadGOut,s2Step117HeadFvOut,s2Step117HeadGvOut⟩,(growRow 769 s2Step117HeadGFresh ++ (growRow 768 s2Step117HeadFFresh ++ (growRow 771 s2Step117HeadGvFresh ++ (growRow 770 s2Step117HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step117HeadBank_rows]
  rfl

private theorem s2Step117Front_checked : compileHmrSourceFrontLog s2Step117EntryFBefore s2Step117FrontBank 212 72 ⟨210,211,72,72⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step117FrontLog=some s2Step117FrontPlan := by
  have pairEq : s2Step117FrontPair=⟨s2Step117HeadFRow,s2Step117HeadGRow,s2Step117HeadFvRow,s2Step117HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step117FrontHead=⟨s2Step117ExitFRow,s2Step117ExitGRow,s2Step117ExitFvRow,s2Step117ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step117Add0A=s2Step117FrontHead.f.wires := by decide +kernel
  have gEq : s2Step117Add0B=s2Step117FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step117Add1A=s2Step117FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step117Add1B=s2Step117FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step117EntryFBefore s2Step117FrontBank 212 72 ⟨210,211,72,72⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step117FrontLog s2Step117FrontPlan
  · exact s2Step117Front_entry
  · exact s2Step117EntryBank_checked
  · exact s2Step117Front_sigma
  · rfl
  · exact s2Step117Front_branch
  · rfl
  · simpa only [s2Step117FrontPlan,pairEq] using s2Step117HeadBank_checked
  · simpa only [s2Step117FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step117F4_checked
  · exact s2Step117Counter_checked
  · rfl
  · simpa only [s2Step117FrontPlan,headEq] using s2Step117ExitBank_checked

private theorem s2Step117Complete_explicit_checked : compileHmrEarlyStepLog s2Step117EntryFBefore s2Step117FrontBank 212 72 ⟨210,211,72,72⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step117CompleteLog=some s2Step117CompletePlan := by
  let Q := s2Step117EarlyControlPlan
  have hq := s2Step117EarlyControl_plan_checked
  have fv1 : s2Step117CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step117CompleteOut.fv.payload[2]?.getD s2Step117CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step117CompleteOut.fv.payload[3]?.getD s2Step117CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step117CompleteOut.fv.payload[4]?.getD s2Step117CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step117EntryFBefore s2Step117EarlyControlArena s2Step117FrontBank 212 72 ⟨210,211,72,72⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step117CompleteLog s2Step117FrontPlan Q
    s2Step117Front_checked s2Step117Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step117Complete_owned s2Step117Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step117EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 815 s2Step117CompleteOut.fv.second (s2Step117CompleteOut.fv.payload[2]?.getD s2Step117CompleteOut.fv.sign) (s2Step117CompleteOut.fv.payload[3]?.getD s2Step117CompleteOut.fv.sign) (s2Step117CompleteOut.fv.payload[4]?.getD s2Step117CompleteOut.fv.sign) 781 37 s2Step117EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep117Arena : Arena := s2Step117EntryFBefore
def s2PrivateStep117Bank : WindowBank := s2Step117FrontBank
def s2PrivateStep117Spec : HmrSourceWalkStepLog := ⟨212,72,⟨210,211,72,72⟩,37,.early s2Step117CompleteLog⟩
def s2PrivateStep117Plan : HmrSourceStepPlan := .early s2Step117CompletePlan
theorem s2PrivateStep117_source : s2PrivateStep117Spec=s2ObservedLogs112[5] := rfl
theorem s2PrivateStep117_checked : compileHmrSourceStepLog s2PrivateStep117Arena s2PrivateStep117Bank
    s2PrivateStep117Spec.fgWidth s2PrivateStep117Spec.vWidth s2PrivateStep117Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 117 s2PrivateStep117Spec.need none s2PrivateStep117Spec.log=some s2PrivateStep117Plan := by
  change compileHmrSourceStepLog s2Step117EntryFBefore s2Step117FrontBank 212 72 ⟨210,211,72,72⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 117 37 none (.early s2Step117CompleteLog)=some (.early s2Step117CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 117<498)]
  rw [s2Step117Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
