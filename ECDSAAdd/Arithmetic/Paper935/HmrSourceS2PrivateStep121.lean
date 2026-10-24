import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep119
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

private def s2Step121CompleteMoves : List (Wire × Wire) := [(825,207)]

private def s2Step121EarlyControlLog : HmrEarlyControlLog := ⟨[825, 819, 806, 849, 802],[781],[807],[790, 815, 867, 877, 879, 882],[]⟩

private def s2Step121FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [807, 790], [], [830, 819]],[[815], [781], [806], [802]],[[], [], [], []]⟩,[792],[817],[867],[877],[879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882]⟩

private def s2Step121CompleteLog : HmrEarlyStepLog := ⟨s2Step121FrontLog,s2Step121CompleteMoves,s2Step121EarlyControlLog⟩

private def s2Step121ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step121ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821],770⟩

private def s2Step121ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],769⟩

private def s2Step121ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830],771⟩

private def s2Step121FrontOut : WindowBank := ⟨s2Step121ExitFOut,s2Step121ExitGOut,s2Step121ExitFvOut,s2Step121ExitGvOut⟩

private def s2Step121CompleteOut : WindowBank := s2Step121FrontOut.repacked s2Step121CompleteMoves

private def s2Step121EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step121EarlyControlPositiveArena,[781],s2Step121EarlyControlEqualityArena,[807],⟨⟨792,false⟩,[⟨⟨781,false⟩,807⟩]⟩⟩

private def s2Step121EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<883)),Finset.filter_subset _ _⟩

private def s2Step121EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<883)),Finset.filter_subset _ _⟩

private def s2Step121EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,825⟩,⟨⟨774,false⟩,819⟩,⟨⟨775,false⟩,806⟩,⟨⟨776,false⟩,849⟩,⟨⟨777,false⟩,802⟩]⟩

private def s2Step121EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step121EarlyControlZeroArena,s2Step121EarlyControlZeroPlan,s2Step121EarlyControlClassPlan,s2Step121EarlyControlFlagArena,s2Step121EarlyControlFittedArena,s2Step121EarlyControlHistoryArena,s2Step121EarlyControlSigmaArena,s2Step121EarlyControlOutputArena,s2Step121EarlyControlLog⟩

private def s2Step121CounterWork : List Wire := [867, 877, 879, 882]

private theorem s2Step121Counter_bounded : s2Step121CounterWork.toFinset⊆arenaWires := by norm_num [s2Step121CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step121HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121CounterDuring : Arena := ⟨s2Step121HeadFvAfter.live∪s2Step121CounterWork.toFinset,Finset.union_subset s2Step121HeadFvAfter.bounded s2Step121Counter_bounded⟩

private def s2Step121EntryFFresh : List Wire := []

private def s2Step121EntryFvFresh : List Wire := []

private def s2Step121EntryGFresh : List Wire := [807, 790]

private def s2Step121EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121EntryGvFresh : List Wire := [830, 819]

private def s2Step121ExitFExtra : List Wire := [781]

private def s2Step121ExitFvExtra : List Wire := [849, 802]

private def s2Step121ExitGExtra : List Wire := [207, 807, 790, 815]

private def s2Step121ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<207) ∨ (208≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121ExitGvExtra : List Wire := [819, 806]

private def s2Step121Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121Add0Work : List Wire := [879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step121Add0_bounded : s2Step121Add0Work.toFinset⊆arenaWires := by
  have h : s2Step121Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step121Add0During : Arena := ⟨s2Step121Add0Arena.live∪s2Step121Add0Work.toFinset,Finset.union_subset s2Step121Add0Arena.bounded s2Step121Add0_bounded⟩

private def s2Step121Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121Add1Work : List Wire := [879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step121Add1_bounded : s2Step121Add1Work.toFinset⊆arenaWires := by
  have h : s2Step121Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step121Add1During : Arena := ⟨s2Step121Add1Arena.live∪s2Step121Add1Work.toFinset,Finset.union_subset s2Step121Add1Arena.bounded s2Step121Add1_bounded⟩

private def s2Step121F4FlagArena : Arena := ⟨s2Step121HeadFvAfter.live∪{867},Finset.union_subset s2Step121HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step121F4Plan : HmrHybridF4Plan := ⟨s2Step121F4FlagArena,[867],s2Step121Add0Arena,[877],s2Step121Add0During,s2Step121Add0Work,s2Step121Add1During,s2Step121Add1Work⟩

private def s2Step121HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781],768⟩

private def s2Step121HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849, 802],770⟩

private def s2Step121HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 807, 790, 815],769⟩

private def s2Step121HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 819, 806],771⟩

private def s2Step121FrontHead : WindowBank := ⟨s2Step121HeadFOut,s2Step121HeadGOut,s2Step121HeadFvOut,s2Step121HeadGvOut⟩

private def s2Step121EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step121EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849],770⟩

private def s2Step121EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 807, 790],769⟩

private def s2Step121EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 819],771⟩

private def s2Step121FrontPair : WindowBank := ⟨s2Step121EntryFOut,s2Step121EntryGOut,s2Step121EntryFvOut,s2Step121EntryGvOut⟩

private def s2Step121FrontSigmaArena : Arena := ⟨s2Step121EntryGvAfter.live∪{792},Finset.union_subset s2Step121EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step121HeadFFresh : List Wire := [781]

private def s2Step121HeadFvFresh : List Wire := [802]

private def s2Step121HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121HeadGFresh : List Wire := [815]

private def s2Step121HeadGvFresh : List Wire := [806]

private def s2Step121FrontPlan : HmrSourceFront := ⟨s2Step121EntryGvAfter,s2Step121FrontPair,(growRow 768 s2Step121EntryFFresh ++ (growRow 769 s2Step121EntryGFresh ++ (growRow 770 s2Step121EntryFvFresh ++ (growRow 771 s2Step121EntryGvFresh ++ [])))),s2Step121FrontSigmaArena,[792],s2Step121HeadGBefore,[817],
  s2Step121HeadFvAfter,s2Step121FrontHead,(growRow 769 s2Step121HeadGFresh ++ (growRow 768 s2Step121HeadFFresh ++ (growRow 771 s2Step121HeadGvFresh ++ (growRow 770 s2Step121HeadFvFresh ++ [])))),s2Step121F4Plan,s2Step121CounterDuring,s2Step121CounterWork,s2Step121ExitGvAfter,s2Step121FrontOut,(shrinkRow 769 s2Step121ExitGExtra ++ (shrinkRow 768 s2Step121ExitFExtra ++ (shrinkRow 770 s2Step121ExitFvExtra ++ (shrinkRow 771 s2Step121ExitGvExtra ++ []))))⟩

private def s2Step121CompletePlan : HmrEarlyStepPlan := ⟨s2Step121FrontPlan,s2Step121EarlyControlArena,s2Step121EarlyControlPlan,s2Step121CompleteMoves⟩

private theorem s2Step121Complete_apart : List.Disjoint (s2Step121CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [792, 817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step121CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[792, 817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step121Complete_owned : (s2Step121CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step121EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step121EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step121CompleteMoveArena : Arena := ⟨s2Step121ExitGvAfter.live∪{207},Finset.union_subset s2Step121ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step121Complete_repack : s2Step121ExitGvAfter.checkRepack s2Step121CompleteMoves=some s2Step121EarlyControlArena := by
  have owned : 825∈s2Step121ExitGvAfter.live := by norm_num [s2Step121ExitGvAfter,arenaWires]
  have reserve : s2Step121ExitGvAfter.reserve {207}=some s2Step121CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step121ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step121CompleteMoveArena.retireSet {825}=s2Step121EarlyControlArena := by
    unfold Arena.retireSet s2Step121EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step121CompleteMoveArena,s2Step121ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step121CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step121CompleteMoveArena.retireSet {825}).checkRepack []=some s2Step121EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step121EarlyControl_branchOwned : ([817] : List Wire).toFinset⊆s2Step121EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step121EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121EarlyControl_branch : compileHmrBranchRetirement s2Step121EarlyControlSigmaArena 817=some s2Step121EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step121EarlyControl_branchOwned
  · ext q
    simp [s2Step121EarlyControlOutputArena,s2Step121EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step121EarlyControl_classEqualityBorrow : s2Step121EarlyControlPositiveArena.checkBorrow (([792, 781] : List Wire).length-1) s2Step121EarlyControlLog.classWork=some s2Step121EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step121EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step121EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step121EarlyControlEqualityArena,s2Step121EarlyControlPositiveArena,s2Step121EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step121EarlyControl_classEqualityOwned : ([792, 781] : List Wire).toFinset⊆s2Step121EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step121EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121EarlyControl_classEquality : compileHmrEqualityLog s2Step121EarlyControlPositiveArena [792, 781] 0 s2Step121EarlyControlLog.classWork=some (s2Step121EarlyControlEqualityArena,s2Step121EarlyControlLog.classWork,s2Step121EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step121EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step121EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step121EarlyControl_classOwned : ([777, 802, 792] : List Wire).toFinset⊆s2Step121EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step121EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121EarlyControl_positiveBorrow : s2Step121EarlyControlZeroArena.checkBorrow (1) s2Step121EarlyControlLog.positiveWork=some s2Step121EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step121EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step121EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step121EarlyControlPositiveArena,s2Step121EarlyControlZeroArena,s2Step121EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step121EarlyControl_class : compileHmrSourceClassLog s2Step121EarlyControlZeroArena false 777 s2Step121EarlyControlZeroPlan.top 0 792 s2Step121EarlyControlLog.positiveWork s2Step121EarlyControlLog.classWork=some s2Step121EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step121EarlyControlClassPlan s2Step121EarlyControlZeroArena false 777 s2Step121EarlyControlZeroPlan.top 0 792
  constructor
  · decide +kernel
  · exact s2Step121EarlyControl_classOwned
  · exact s2Step121EarlyControl_positiveBorrow
  · exact s2Step121EarlyControl_classEquality

private theorem s2Step121EarlyControl_entryRecordOwned : ([817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step121EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step121EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121EarlyControl_entrySigmaOwned : ([792, 254] : List Wire).toFinset⊆s2Step121EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step121EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121EarlyControl_fitBorrow : s2Step121EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step121EarlyControlLog.recordFresh=some s2Step121EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step121EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step121EarlyControlFlagArena (fun q => (0≤q ∧ q<883)) rfl
      decide +kernel
    · ext q
      simp [s2Step121EarlyControlFittedArena,s2Step121EarlyControlFlagArena,s2Step121EarlyControlLog,arenaWires]

private theorem s2Step121EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step121EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step121EarlyControlFlagArena (fun q => (0≤q ∧ q<883)) rfl
  decide +kernel

private theorem s2Step121EarlyControl_fit : compileHmrRecordGrowLog s2Step121EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step121EarlyControlLog.recordFresh=some s2Step121EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step121EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step121EarlyControl_fitBorrow

private theorem s2Step121EarlyControl_flagsBorrow : s2Step121EarlyControlEqualityArena.checkBorrow (6) s2Step121EarlyControlLog.flagWork=some s2Step121EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step121EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step121EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step121EarlyControlFlagArena,s2Step121EarlyControlEqualityArena,s2Step121EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step121EarlyControl_flagsOwned : ([807, 253, 252, 251] : List Wire).toFinset⊆s2Step121EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step121EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121EarlyControl_flags : compileHmrFlagsLog s2Step121EarlyControlClassPlan.equalityArena s2Step121EarlyControlClassPlan.equality.top 253 252 251 s2Step121EarlyControlLog.flagWork=some s2Step121EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step121EarlyControl_flagsOwned⟩
  · exact s2Step121EarlyControl_flagsBorrow

private theorem s2Step121EarlyControl_historyBorrow : s2Step121EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step121EarlyControlLog.recordFresh=some s2Step121EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step121EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step121EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step121EarlyControlHistoryArena,s2Step121EarlyControlArena,s2Step121EarlyControlLog,arenaWires]

private theorem s2Step121EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step121EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step121EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121EarlyControl_history : compileHmrRecordGrowLog s2Step121EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step121EarlyControlLog.recordFresh=some s2Step121EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step121EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step121EarlyControl_historyBorrow

private theorem s2Step121EarlyControl_sigmaOwned : ([254, 792] : List Wire).toFinset⊆s2Step121EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step121EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121EarlyControl_sigmaReleaseOwned : ([792] : List Wire).toFinset⊆s2Step121EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step121EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121EarlyControl_sigmaRelease : s2Step121EarlyControlHistoryArena.release {792} (fun _ => false)=some s2Step121EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step121EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step121EarlyControlSigmaArena,s2Step121EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step121EarlyControl_sigma : compileHmrSigmaDropLog s2Step121EarlyControlHistoryArena false 0 0 254 792 []=some s2Step121EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step121EarlyControl_sigmaOwned⟩
  · exact s2Step121EarlyControl_sigmaRelease

private theorem s2Step121EarlyControl_zeroBorrow : s2Step121EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step121EarlyControlLog.zeroWork=some s2Step121EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step121EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step121EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step121EarlyControlZeroArena,s2Step121EarlyControlArena,s2Step121EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step121EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step121EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step121EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121EarlyControl_zero : compileHmrEqualityLog s2Step121EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step121EarlyControlLog.zeroWork=some (s2Step121EarlyControlZeroArena,s2Step121EarlyControlLog.zeroWork,s2Step121EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step121EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step121EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step121EarlyControl_logged : s2Step121EarlyControlPlan.Logged s2Step121EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 792 254 253 252 251 817 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step121EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step121EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step121EarlyControl_zero
  · exact s2Step121EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step121EarlyControl_flags
  · exact s2Step121EarlyControl_fit
  · exact s2Step121EarlyControl_history
  · exact s2Step121EarlyControl_sigma
  · exact s2Step121EarlyControl_branch

private theorem s2Step121EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step121EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 792 254 253 252 251 817 37 s2Step121EarlyControlLog=some s2Step121EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step121EarlyControlPlan s2Step121EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 792 254 253 252 251 817 37 s2Step121EarlyControl_logged

private def s2Step121EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step121EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849],770⟩

private def s2Step121EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207],769⟩

private def s2Step121EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794],771⟩

private def s2Step121FrontBank : WindowBank := ⟨s2Step121EntryFRow,s2Step121EntryGRow,s2Step121EntryFvRow,s2Step121EntryGvRow⟩

private def s2Step121Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781, 768]

private def s2Step121Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 807, 790, 815, 769]

private def s2Step121Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849, 802, 770]

private def s2Step121Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 819, 806, 771]

private theorem s2Step121Counter_apart : Disjoint s2Step121HeadFvAfter.live s2Step121CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step121HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121Counter_borrowed : s2Step121HeadFvAfter.checkBorrow 4 s2Step121CounterWork=some s2Step121CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step121HeadFvAfter s2Step121CounterDuring s2Step121CounterWork.toFinset s2Step121Counter_bounded s2Step121Counter_apart rfl

private theorem s2Step121Counter_owned : (792::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step121HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step121HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121Counter_checked : compileHmrCounterStepLog s2Step121HeadFvAfter true 792 [772, 773, 774, 775, 776, 777] s2Step121CounterWork=some s2Step121CounterDuring := by
  have owned : ∀q∈792::[772, 773, 774, 775, 776, 777],q∈s2Step121HeadFvAfter.live := fun q hq => s2Step121Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step121Counter_borrowed

private def s2Step121EntryFAfter : Arena := s2Step121EntryFBefore

private theorem s2Step121EntryBank_incomingDistinct : ([s2Step121EntryFRow,s2Step121EntryGRow,s2Step121EntryFvRow,s2Step121EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121EntryF_Incoming : rowsOwned s2Step121EntryFBefore [s2Step121EntryFRow,s2Step121EntryGRow,s2Step121EntryFvRow,s2Step121EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step121EntryFRow,s2Step121EntryGRow,s2Step121EntryFvRow,s2Step121EntryGvRow] 0 s2Step121EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step121EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121EntryBank_outgoingOwned : rowsOwned s2Step121EntryGvAfter [s2Step121EntryFOut,s2Step121EntryGOut,s2Step121EntryFvOut,s2Step121EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step121EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121EntryF_Outgoing : rowsOwned s2Step121EntryGvAfter [s2Step121EntryFOut,s2Step121EntryGOut,s2Step121EntryFvOut,s2Step121EntryGvOut] :=
  hmrRows_owned_drop s2Step121EntryGvAfter [s2Step121EntryFOut,s2Step121EntryGOut,s2Step121EntryFvOut,s2Step121EntryGvOut] 0 s2Step121EntryBank_outgoingOwned

private theorem s2Step121EntryF_distinct : (s2Step121EntryFRow.sign::s2Step121EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121EntryF_owned : (s2Step121EntryFRow.sign::s2Step121EntryFRow.payload).toFinset⊆s2Step121EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step121EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121EntryF_reserved : s2Step121EntryFBefore.reserve s2Step121EntryFFresh.toFinset=some s2Step121EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step121EntryFFresh,arenaWires]
  · norm_num [s2Step121EntryFBefore,s2Step121EntryFFresh,arenaWires]
  · simp only [s2Step121EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step121EntryF_checked : planRowResizeLog s2Step121EntryFBefore s2Step121EntryFRow 210 s2Step121EntryFFresh=
    some (s2Step121EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩,growRow 768 s2Step121EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step121EntryFBefore s2Step121EntryFAfter s2Step121EntryFRow 210 s2Step121EntryFFresh
    s2Step121EntryF_distinct s2Step121EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step121EntryF_reserved
  have rowEq : WindowRow.mk (s2Step121EntryFRow.payload++s2Step121EntryFFresh) s2Step121EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step121EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121EntryFvAfter : Arena := s2Step121EntryGAfter

private def s2Step121EntryFvBefore : Arena := s2Step121EntryGAfter

private theorem s2Step121EntryFv_Incoming : rowsOwned s2Step121EntryFvBefore [s2Step121EntryFvRow,s2Step121EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step121EntryFRow,s2Step121EntryGRow,s2Step121EntryFvRow,s2Step121EntryGvRow] 2 s2Step121EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step121EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121EntryFv_Outgoing : rowsOwned s2Step121EntryGvAfter [s2Step121EntryFvOut,s2Step121EntryGvOut] :=
  hmrRows_owned_drop s2Step121EntryGvAfter [s2Step121EntryFOut,s2Step121EntryGOut,s2Step121EntryFvOut,s2Step121EntryGvOut] 2 s2Step121EntryBank_outgoingOwned

private theorem s2Step121EntryFv_distinct : (s2Step121EntryFvRow.sign::s2Step121EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121EntryFv_owned : (s2Step121EntryFvRow.sign::s2Step121EntryFvRow.payload).toFinset⊆s2Step121EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step121EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121EntryFv_reserved : s2Step121EntryFvBefore.reserve s2Step121EntryFvFresh.toFinset=some s2Step121EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step121EntryFvFresh,arenaWires]
  · norm_num [s2Step121EntryFvBefore,s2Step121EntryGAfter,s2Step121EntryFvFresh,arenaWires]
  · simp only [s2Step121EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step121EntryFv_checked : planRowResizeLog s2Step121EntryFvBefore s2Step121EntryFvRow 75 s2Step121EntryFvFresh=
    some (s2Step121EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849],770⟩,growRow 770 s2Step121EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step121EntryFvBefore s2Step121EntryFvAfter s2Step121EntryFvRow 75 s2Step121EntryFvFresh
    s2Step121EntryFv_distinct s2Step121EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step121EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step121EntryFvRow.payload++s2Step121EntryFvFresh) s2Step121EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step121EntryGBefore : Arena := s2Step121EntryFBefore

private theorem s2Step121EntryG_Incoming : rowsOwned s2Step121EntryGBefore [s2Step121EntryGRow,s2Step121EntryFvRow,s2Step121EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step121EntryFRow,s2Step121EntryGRow,s2Step121EntryFvRow,s2Step121EntryGvRow] 1 s2Step121EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step121EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121EntryG_Outgoing : rowsOwned s2Step121EntryGvAfter [s2Step121EntryGOut,s2Step121EntryFvOut,s2Step121EntryGvOut] :=
  hmrRows_owned_drop s2Step121EntryGvAfter [s2Step121EntryFOut,s2Step121EntryGOut,s2Step121EntryFvOut,s2Step121EntryGvOut] 1 s2Step121EntryBank_outgoingOwned

private theorem s2Step121EntryG_distinct : (s2Step121EntryGRow.sign::s2Step121EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121EntryG_owned : (s2Step121EntryGRow.sign::s2Step121EntryGRow.payload).toFinset⊆s2Step121EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step121EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121EntryG_reserved : s2Step121EntryGBefore.reserve s2Step121EntryGFresh.toFinset=some s2Step121EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step121EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step121EntryGBefore,s2Step121EntryFBefore,s2Step121EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step121EntryGAfter,s2Step121EntryGBefore,s2Step121EntryFBefore,s2Step121EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step121EntryG_checked : planRowResizeLog s2Step121EntryGBefore s2Step121EntryGRow 210 s2Step121EntryGFresh=
    some (s2Step121EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 807, 790],769⟩,growRow 769 s2Step121EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step121EntryGBefore s2Step121EntryGAfter s2Step121EntryGRow 210 s2Step121EntryGFresh
    s2Step121EntryG_distinct s2Step121EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step121EntryG_reserved
  have rowEq : WindowRow.mk (s2Step121EntryGRow.payload++s2Step121EntryGFresh) s2Step121EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 807, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step121EntryGvBefore : Arena := s2Step121EntryGAfter

private theorem s2Step121EntryGv_Incoming : rowsOwned s2Step121EntryGvBefore [s2Step121EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step121EntryFRow,s2Step121EntryGRow,s2Step121EntryFvRow,s2Step121EntryGvRow] 3 s2Step121EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step121EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121EntryGv_Outgoing : rowsOwned s2Step121EntryGvAfter [s2Step121EntryGvOut] :=
  hmrRows_owned_drop s2Step121EntryGvAfter [s2Step121EntryFOut,s2Step121EntryGOut,s2Step121EntryFvOut,s2Step121EntryGvOut] 3 s2Step121EntryBank_outgoingOwned

private theorem s2Step121EntryGv_distinct : (s2Step121EntryGvRow.sign::s2Step121EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121EntryGv_owned : (s2Step121EntryGvRow.sign::s2Step121EntryGvRow.payload).toFinset⊆s2Step121EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step121EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121EntryGv_reserved : s2Step121EntryGvBefore.reserve s2Step121EntryGvFresh.toFinset=some s2Step121EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step121EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step121EntryGvBefore,s2Step121EntryGAfter,s2Step121EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step121EntryGvAfter,s2Step121EntryGvBefore,s2Step121EntryGAfter,s2Step121EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step121EntryGv_checked : planRowResizeLog s2Step121EntryGvBefore s2Step121EntryGvRow 75 s2Step121EntryGvFresh=
    some (s2Step121EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 819],771⟩,growRow 771 s2Step121EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step121EntryGvBefore s2Step121EntryGvAfter s2Step121EntryGvRow 75 s2Step121EntryGvFresh
    s2Step121EntryGv_distinct s2Step121EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step121EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step121EntryGvRow.payload++s2Step121EntryGvFresh) s2Step121EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step121EntryBank_rows : planWindowRowsLog s2Step121EntryFBefore [(s2Step121EntryFRow,210),(s2Step121EntryGRow,210),(s2Step121EntryFvRow,75),(s2Step121EntryGvRow,75)] [s2Step121EntryFFresh,s2Step121EntryGFresh,s2Step121EntryFvFresh,s2Step121EntryGvFresh]=
    some (s2Step121EntryGvAfter,[s2Step121EntryFOut,s2Step121EntryGOut,s2Step121EntryFvOut,s2Step121EntryGvOut],(growRow 768 s2Step121EntryFFresh ++ (growRow 769 s2Step121EntryGFresh ++ (growRow 770 s2Step121EntryFvFresh ++ (growRow 771 s2Step121EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step121EntryGvAfter [] []=some (s2Step121EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step121EntryGvBefore s2Step121EntryGvAfter s2Step121EntryGvAfter
    s2Step121EntryGvRow s2Step121EntryGvOut 75 s2Step121EntryGvFresh [] [] []
    (growRow 771 s2Step121EntryGvFresh) ([]) s2Step121EntryGv_Incoming s2Step121EntryGv_checked h4 s2Step121EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step121EntryFvBefore s2Step121EntryFvAfter s2Step121EntryGvAfter
    s2Step121EntryFvRow s2Step121EntryFvOut 75 s2Step121EntryFvFresh [(s2Step121EntryGvRow,75)] [s2Step121EntryGvFresh] [s2Step121EntryGvOut]
    (growRow 770 s2Step121EntryFvFresh) ((growRow 771 s2Step121EntryGvFresh ++ [])) s2Step121EntryFv_Incoming s2Step121EntryFv_checked h3 s2Step121EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step121EntryGBefore s2Step121EntryGAfter s2Step121EntryGvAfter
    s2Step121EntryGRow s2Step121EntryGOut 210 s2Step121EntryGFresh [(s2Step121EntryFvRow,75),(s2Step121EntryGvRow,75)] [s2Step121EntryFvFresh,s2Step121EntryGvFresh] [s2Step121EntryFvOut,s2Step121EntryGvOut]
    (growRow 769 s2Step121EntryGFresh) ((growRow 770 s2Step121EntryFvFresh ++ (growRow 771 s2Step121EntryGvFresh ++ []))) s2Step121EntryG_Incoming s2Step121EntryG_checked h2 s2Step121EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step121EntryFBefore s2Step121EntryFAfter s2Step121EntryGvAfter
    s2Step121EntryFRow s2Step121EntryFOut 210 s2Step121EntryFFresh [(s2Step121EntryGRow,210),(s2Step121EntryFvRow,75),(s2Step121EntryGvRow,75)] [s2Step121EntryGFresh,s2Step121EntryFvFresh,s2Step121EntryGvFresh] [s2Step121EntryGOut,s2Step121EntryFvOut,s2Step121EntryGvOut]
    (growRow 768 s2Step121EntryFFresh) ((growRow 769 s2Step121EntryGFresh ++ (growRow 770 s2Step121EntryFvFresh ++ (growRow 771 s2Step121EntryGvFresh ++ [])))) s2Step121EntryF_Incoming s2Step121EntryF_checked h1 s2Step121EntryF_Outgoing
  exact h0

private theorem s2Step121EntryBank_checked : compileHmrBankResizeLog .entry s2Step121EntryFBefore ⟨s2Step121EntryFRow,s2Step121EntryGRow,s2Step121EntryFvRow,s2Step121EntryGvRow⟩ ⟨210,210,75,75⟩ [s2Step121EntryFFresh,s2Step121EntryGFresh,s2Step121EntryFvFresh,s2Step121EntryGvFresh]=
    some (s2Step121EntryGvAfter,⟨s2Step121EntryFOut,s2Step121EntryGOut,s2Step121EntryFvOut,s2Step121EntryGvOut⟩,(growRow 768 s2Step121EntryFFresh ++ (growRow 769 s2Step121EntryGFresh ++ (growRow 770 s2Step121EntryFvFresh ++ (growRow 771 s2Step121EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step121EntryBank_rows]
  rfl

private def s2Step121ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<207) ∨ (208≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<207) ∨ (208≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121ExitFBefore : Arena := s2Step121ExitGAfter

private def s2Step121ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781],768⟩

private def s2Step121ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849, 802],770⟩

private def s2Step121ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 807, 790, 815],769⟩

private def s2Step121ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 819, 806],771⟩

private theorem s2Step121ExitBank_incomingDistinct : ([s2Step121ExitGRow,s2Step121ExitFRow,s2Step121ExitFvRow,s2Step121ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121ExitF_Incoming : rowsOwned s2Step121ExitFBefore [s2Step121ExitFRow,s2Step121ExitFvRow,s2Step121ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step121ExitGRow,s2Step121ExitFRow,s2Step121ExitFvRow,s2Step121ExitGvRow] 1 s2Step121ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step121ExitFBefore (fun q => (0≤q ∧ q<207) ∨ (208≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121ExitBank_outgoingOwned : rowsOwned s2Step121ExitGvAfter [s2Step121ExitGOut,s2Step121ExitFOut,s2Step121ExitFvOut,s2Step121ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step121ExitGvAfter (fun q => (0≤q ∧ q<207) ∨ (208≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121ExitF_Outgoing : rowsOwned s2Step121ExitGvAfter [s2Step121ExitFOut,s2Step121ExitFvOut,s2Step121ExitGvOut] :=
  hmrRows_owned_drop s2Step121ExitGvAfter [s2Step121ExitGOut,s2Step121ExitFOut,s2Step121ExitFvOut,s2Step121ExitGvOut] 1 s2Step121ExitBank_outgoingOwned

private theorem s2Step121ExitF_distinct : (s2Step121ExitFRow.sign::s2Step121ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121ExitF_owned : (s2Step121ExitFRow.sign::s2Step121ExitFRow.payload).toFinset⊆s2Step121ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step121ExitFBefore (fun q => (0≤q ∧ q<207) ∨ (208≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121ExitF_retired : s2Step121ExitFBefore.retireSet s2Step121ExitFExtra.toFinset=s2Step121ExitFAfter := by
  unfold Arena.retireSet s2Step121ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step121ExitFBefore,s2Step121ExitGAfter,s2Step121ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step121ExitF_checked : planRowResizeLog s2Step121ExitFBefore s2Step121ExitFRow 210 []=
    some (s2Step121ExitFAfter,s2Step121ExitFOut,shrinkRow 768 s2Step121ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step121ExitFBefore s2Step121ExitFRow 210 s2Step121ExitF_distinct s2Step121ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step121ExitFRow.payload.take 210) s2Step121ExitFRow.sign=s2Step121ExitFOut := by decide +kernel
  have hi : s2Step121ExitFRow.payload.drop 210=s2Step121ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step121ExitF_retired] at result
  exact result

private def s2Step121ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<207) ∨ (208≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121ExitFvBefore : Arena := s2Step121ExitFAfter

private theorem s2Step121ExitFv_Incoming : rowsOwned s2Step121ExitFvBefore [s2Step121ExitFvRow,s2Step121ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step121ExitGRow,s2Step121ExitFRow,s2Step121ExitFvRow,s2Step121ExitGvRow] 2 s2Step121ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step121ExitFvBefore (fun q => (0≤q ∧ q<207) ∨ (208≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121ExitFv_Outgoing : rowsOwned s2Step121ExitGvAfter [s2Step121ExitFvOut,s2Step121ExitGvOut] :=
  hmrRows_owned_drop s2Step121ExitGvAfter [s2Step121ExitGOut,s2Step121ExitFOut,s2Step121ExitFvOut,s2Step121ExitGvOut] 2 s2Step121ExitBank_outgoingOwned

private theorem s2Step121ExitFv_distinct : (s2Step121ExitFvRow.sign::s2Step121ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121ExitFv_owned : (s2Step121ExitFvRow.sign::s2Step121ExitFvRow.payload).toFinset⊆s2Step121ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step121ExitFvBefore (fun q => (0≤q ∧ q<207) ∨ (208≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121ExitFv_retired : s2Step121ExitFvBefore.retireSet s2Step121ExitFvExtra.toFinset=s2Step121ExitFvAfter := by
  unfold Arena.retireSet s2Step121ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step121ExitFvBefore,s2Step121ExitFAfter,s2Step121ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step121ExitFv_checked : planRowResizeLog s2Step121ExitFvBefore s2Step121ExitFvRow 74 []=
    some (s2Step121ExitFvAfter,s2Step121ExitFvOut,shrinkRow 770 s2Step121ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step121ExitFvBefore s2Step121ExitFvRow 74 s2Step121ExitFv_distinct s2Step121ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step121ExitFvRow.payload.take 74) s2Step121ExitFvRow.sign=s2Step121ExitFvOut := by decide +kernel
  have hi : s2Step121ExitFvRow.payload.drop 74=s2Step121ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step121ExitFv_retired] at result
  exact result

private def s2Step121ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step121ExitG_Incoming : rowsOwned s2Step121ExitGBefore [s2Step121ExitGRow,s2Step121ExitFRow,s2Step121ExitFvRow,s2Step121ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step121ExitGRow,s2Step121ExitFRow,s2Step121ExitFvRow,s2Step121ExitGvRow] 0 s2Step121ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step121ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121ExitG_Outgoing : rowsOwned s2Step121ExitGvAfter [s2Step121ExitGOut,s2Step121ExitFOut,s2Step121ExitFvOut,s2Step121ExitGvOut] :=
  hmrRows_owned_drop s2Step121ExitGvAfter [s2Step121ExitGOut,s2Step121ExitFOut,s2Step121ExitFvOut,s2Step121ExitGvOut] 0 s2Step121ExitBank_outgoingOwned

private theorem s2Step121ExitG_distinct : (s2Step121ExitGRow.sign::s2Step121ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121ExitG_owned : (s2Step121ExitGRow.sign::s2Step121ExitGRow.payload).toFinset⊆s2Step121ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step121ExitGBefore (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121ExitG_retired : s2Step121ExitGBefore.retireSet s2Step121ExitGExtra.toFinset=s2Step121ExitGAfter := by
  unfold Arena.retireSet s2Step121ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step121ExitGBefore,s2Step121ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step121ExitG_checked : planRowResizeLog s2Step121ExitGBefore s2Step121ExitGRow 207 []=
    some (s2Step121ExitGAfter,s2Step121ExitGOut,shrinkRow 769 s2Step121ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step121ExitGBefore s2Step121ExitGRow 207 s2Step121ExitG_distinct s2Step121ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step121ExitGRow.payload.take 207) s2Step121ExitGRow.sign=s2Step121ExitGOut := by decide +kernel
  have hi : s2Step121ExitGRow.payload.drop 207=s2Step121ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step121ExitG_retired] at result
  exact result

private def s2Step121ExitGvBefore : Arena := s2Step121ExitFvAfter

private theorem s2Step121ExitGv_Incoming : rowsOwned s2Step121ExitGvBefore [s2Step121ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step121ExitGRow,s2Step121ExitFRow,s2Step121ExitFvRow,s2Step121ExitGvRow] 3 s2Step121ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step121ExitGvBefore (fun q => (0≤q ∧ q<207) ∨ (208≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121ExitGv_Outgoing : rowsOwned s2Step121ExitGvAfter [s2Step121ExitGvOut] :=
  hmrRows_owned_drop s2Step121ExitGvAfter [s2Step121ExitGOut,s2Step121ExitFOut,s2Step121ExitFvOut,s2Step121ExitGvOut] 3 s2Step121ExitBank_outgoingOwned

private theorem s2Step121ExitGv_distinct : (s2Step121ExitGvRow.sign::s2Step121ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121ExitGv_owned : (s2Step121ExitGvRow.sign::s2Step121ExitGvRow.payload).toFinset⊆s2Step121ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step121ExitGvBefore (fun q => (0≤q ∧ q<207) ∨ (208≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<807) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121ExitGv_retired : s2Step121ExitGvBefore.retireSet s2Step121ExitGvExtra.toFinset=s2Step121ExitGvAfter := by
  unfold Arena.retireSet s2Step121ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step121ExitGvBefore,s2Step121ExitFvAfter,s2Step121ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step121ExitGv_checked : planRowResizeLog s2Step121ExitGvBefore s2Step121ExitGvRow 74 []=
    some (s2Step121ExitGvAfter,s2Step121ExitGvOut,shrinkRow 771 s2Step121ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step121ExitGvBefore s2Step121ExitGvRow 74 s2Step121ExitGv_distinct s2Step121ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step121ExitGvRow.payload.take 74) s2Step121ExitGvRow.sign=s2Step121ExitGvOut := by decide +kernel
  have hi : s2Step121ExitGvRow.payload.drop 74=s2Step121ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step121ExitGv_retired] at result
  exact result

private theorem s2Step121ExitBank_rows : planWindowRowsLog s2Step121ExitGBefore [(s2Step121ExitGRow,207),(s2Step121ExitFRow,210),(s2Step121ExitFvRow,74),(s2Step121ExitGvRow,74)] [[],[],[],[]]=
    some (s2Step121ExitGvAfter,[s2Step121ExitGOut,s2Step121ExitFOut,s2Step121ExitFvOut,s2Step121ExitGvOut],(shrinkRow 769 s2Step121ExitGExtra ++ (shrinkRow 768 s2Step121ExitFExtra ++ (shrinkRow 770 s2Step121ExitFvExtra ++ (shrinkRow 771 s2Step121ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step121ExitGvAfter [] []=some (s2Step121ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step121ExitGvBefore s2Step121ExitGvAfter s2Step121ExitGvAfter
    s2Step121ExitGvRow s2Step121ExitGvOut 74 [] [] [] []
    (shrinkRow 771 s2Step121ExitGvExtra) ([]) s2Step121ExitGv_Incoming s2Step121ExitGv_checked h4 s2Step121ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step121ExitFvBefore s2Step121ExitFvAfter s2Step121ExitGvAfter
    s2Step121ExitFvRow s2Step121ExitFvOut 74 [] [(s2Step121ExitGvRow,74)] [[]] [s2Step121ExitGvOut]
    (shrinkRow 770 s2Step121ExitFvExtra) ((shrinkRow 771 s2Step121ExitGvExtra ++ [])) s2Step121ExitFv_Incoming s2Step121ExitFv_checked h3 s2Step121ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step121ExitFBefore s2Step121ExitFAfter s2Step121ExitGvAfter
    s2Step121ExitFRow s2Step121ExitFOut 210 [] [(s2Step121ExitFvRow,74),(s2Step121ExitGvRow,74)] [[],[]] [s2Step121ExitFvOut,s2Step121ExitGvOut]
    (shrinkRow 768 s2Step121ExitFExtra) ((shrinkRow 770 s2Step121ExitFvExtra ++ (shrinkRow 771 s2Step121ExitGvExtra ++ []))) s2Step121ExitF_Incoming s2Step121ExitF_checked h2 s2Step121ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step121ExitGBefore s2Step121ExitGAfter s2Step121ExitGvAfter
    s2Step121ExitGRow s2Step121ExitGOut 207 [] [(s2Step121ExitFRow,210),(s2Step121ExitFvRow,74),(s2Step121ExitGvRow,74)] [[],[],[]] [s2Step121ExitFOut,s2Step121ExitFvOut,s2Step121ExitGvOut]
    (shrinkRow 769 s2Step121ExitGExtra) ((shrinkRow 768 s2Step121ExitFExtra ++ (shrinkRow 770 s2Step121ExitFvExtra ++ (shrinkRow 771 s2Step121ExitGvExtra ++ [])))) s2Step121ExitG_Incoming s2Step121ExitG_checked h1 s2Step121ExitG_Outgoing
  exact h0

private theorem s2Step121ExitBank_checked : compileHmrBankResizeLog .exit s2Step121ExitGBefore ⟨s2Step121ExitFRow,s2Step121ExitGRow,s2Step121ExitFvRow,s2Step121ExitGvRow⟩ ⟨210,207,74,74⟩ [[],[],[],[]]=
    some (s2Step121ExitGvAfter,⟨s2Step121ExitFOut,s2Step121ExitGOut,s2Step121ExitFvOut,s2Step121ExitGvOut⟩,(shrinkRow 769 s2Step121ExitGExtra ++ (shrinkRow 768 s2Step121ExitFExtra ++ (shrinkRow 770 s2Step121ExitFvExtra ++ (shrinkRow 771 s2Step121ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step121ExitBank_rows]
  rfl

private theorem s2Step121Add0_apart : Disjoint s2Step121Add0Arena.live s2Step121Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step121Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121Add0_card : s2Step121Add0Arena.live.card=881 := by
  decide +kernel

private theorem s2Step121Add0_borrowed : s2Step121Add0Arena.checkBorrow (hmrHybridCount s2Step121Add0Arena s2Step121Add0B.length) s2Step121Add0Work=some s2Step121Add0During := by
  have len : s2Step121Add0Work.length=hmrHybridCount s2Step121Add0Arena s2Step121Add0B.length := by
    rw [hmrHybridCount,s2Step121Add0_card]
    decide +kernel
  have nd : s2Step121Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step121Add0Arena s2Step121Add0During s2Step121Add0Work.toFinset s2Step121Add0_bounded s2Step121Add0_apart rfl

private theorem s2Step121Add0_distinct : (867::817::877::(s2Step121Add0A++s2Step121Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121Add0_owned : (867::817::877::(s2Step121Add0A++s2Step121Add0B)).toFinset⊆s2Step121Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step121Add0Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121Add0_checked : compileHmrHybridCinLog s2Step121Add0Arena 817 867 877 s2Step121Add0A s2Step121Add0B s2Step121Add0Work=some s2Step121Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step121Add0Arena s2Step121Add0During 817 867 877 s2Step121Add0A s2Step121Add0B s2Step121Add0Work
    (by decide +kernel) (by decide +kernel) s2Step121Add0_distinct
    (fun q hq => s2Step121Add0_owned (List.mem_toFinset.mpr hq)) s2Step121Add0_borrowed

private theorem s2Step121Add1_apart : Disjoint s2Step121Add1Arena.live s2Step121Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step121Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121Add1_card : s2Step121Add1Arena.live.card=881 := by
  decide +kernel

private theorem s2Step121Add1_borrowed : s2Step121Add1Arena.checkBorrow (hmrHybridCount s2Step121Add1Arena s2Step121Add1B.length) s2Step121Add1Work=some s2Step121Add1During := by
  have len : s2Step121Add1Work.length=hmrHybridCount s2Step121Add1Arena s2Step121Add1B.length := by
    rw [hmrHybridCount,s2Step121Add1_card]
    decide +kernel
  have nd : s2Step121Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step121Add1Arena s2Step121Add1During s2Step121Add1Work.toFinset s2Step121Add1_bounded s2Step121Add1_apart rfl

private theorem s2Step121Add1_distinct : (867::817::877::(s2Step121Add1A++s2Step121Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121Add1_owned : (867::817::877::(s2Step121Add1A++s2Step121Add1B)).toFinset⊆s2Step121Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step121Add1Arena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121Add1_checked : compileHmrHybridCinLog s2Step121Add1Arena 817 867 877 s2Step121Add1A s2Step121Add1B s2Step121Add1Work=some s2Step121Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step121Add1Arena s2Step121Add1During 817 867 877 s2Step121Add1A s2Step121Add1B s2Step121Add1Work
    (by decide +kernel) (by decide +kernel) s2Step121Add1_distinct
    (fun q hq => s2Step121Add1_owned (List.mem_toFinset.mpr hq)) s2Step121Add1_borrowed

private theorem s2Step121F4_apart : Disjoint (s2Step121Add0A++s2Step121Add0B).toFinset (s2Step121Add1A++s2Step121Add1B).toFinset := by
  have nd : ((s2Step121Add0A++s2Step121Add0B)++(s2Step121Add1A++s2Step121Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step121F4_carry : s2Step121F4FlagArena.checkBorrow 1 [877]=some s2Step121Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step121F4FlagArena,s2Step121HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step121F4FlagArena,s2Step121HeadFvAfter,s2Step121Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step121F4_distinct : (792::817::867::877::((s2Step121Add0A++s2Step121Add1A)++(s2Step121Add0B++s2Step121Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121F4_flag : s2Step121HeadFvAfter.checkBorrow 1 [867]=some s2Step121F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step121HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step121F4_owned : (792::817::((s2Step121Add0A++s2Step121Add1A)++(s2Step121Add0B++s2Step121Add1B))).toFinset⊆s2Step121HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step121HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121F4_checked : compileHmrHybridF4Log s2Step121HeadFvAfter 792 817 s2Step121Add0A s2Step121Add0B s2Step121Add1A s2Step121Add1B [867] [877] s2Step121Add0Work s2Step121Add1Work=some s2Step121F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step121HeadFvAfter s2Step121F4FlagArena s2Step121Add0Arena s2Step121Add0During s2Step121Add1During 792 817
    s2Step121Add0A s2Step121Add0B s2Step121Add1A s2Step121Add1B [867] [877] s2Step121Add0Work s2Step121Add1Work
    (fun q hq => s2Step121F4_owned (List.mem_toFinset.mpr hq)) s2Step121F4_flag s2Step121F4_carry
    s2Step121F4_distinct s2Step121F4_apart s2Step121Add0_checked s2Step121Add1_checked

private theorem s2Step121Front_branch : s2Step121FrontSigmaArena.checkBorrow 1 [817]=some s2Step121HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step121FrontSigmaArena,s2Step121EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step121FrontSigmaArena,s2Step121EntryGvAfter,s2Step121HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step121Front_entry : HmrFrontEntryValid s2Step121EntryFBefore s2Step121FrontBank 210 75 ⟨210,207,74,74⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step121FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step121EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step121EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<819) ∨ (820≤q ∧ q<830) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step121FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step121Front_sigma : s2Step121EntryGvAfter.checkBorrow 1 [792]=some s2Step121FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step121EntryGvAfter,arenaWires]
  · rfl

private def s2Step121HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121HeadFBefore : Arena := s2Step121HeadGAfter

private def s2Step121HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721],768⟩

private def s2Step121HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849],770⟩

private def s2Step121HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 807, 790],769⟩

private def s2Step121HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 819],771⟩

private theorem s2Step121HeadBank_incomingDistinct : ([s2Step121HeadGRow,s2Step121HeadFRow,s2Step121HeadGvRow,s2Step121HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121HeadF_Incoming : rowsOwned s2Step121HeadFBefore [s2Step121HeadFRow,s2Step121HeadGvRow,s2Step121HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step121HeadGRow,s2Step121HeadFRow,s2Step121HeadGvRow,s2Step121HeadFvRow] 1 s2Step121HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step121HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121HeadBank_outgoingOwned : rowsOwned s2Step121HeadFvAfter [s2Step121HeadGOut,s2Step121HeadFOut,s2Step121HeadGvOut,s2Step121HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step121HeadFvAfter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121HeadF_Outgoing : rowsOwned s2Step121HeadFvAfter [s2Step121HeadFOut,s2Step121HeadGvOut,s2Step121HeadFvOut] :=
  hmrRows_owned_drop s2Step121HeadFvAfter [s2Step121HeadGOut,s2Step121HeadFOut,s2Step121HeadGvOut,s2Step121HeadFvOut] 1 s2Step121HeadBank_outgoingOwned

private theorem s2Step121HeadF_distinct : (s2Step121HeadFRow.sign::s2Step121HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121HeadF_owned : (s2Step121HeadFRow.sign::s2Step121HeadFRow.payload).toFinset⊆s2Step121HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step121HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121HeadF_reserved : s2Step121HeadFBefore.reserve s2Step121HeadFFresh.toFinset=some s2Step121HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step121HeadFFresh,arenaWires]
  · norm_num [s2Step121HeadFBefore,s2Step121HeadGAfter,s2Step121HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step121HeadFAfter,s2Step121HeadFBefore,s2Step121HeadGAfter,s2Step121HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step121HeadF_checked : planRowResizeLog s2Step121HeadFBefore s2Step121HeadFRow 211 s2Step121HeadFFresh=
    some (s2Step121HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781],768⟩,growRow 768 s2Step121HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step121HeadFBefore s2Step121HeadFAfter s2Step121HeadFRow 211 s2Step121HeadFFresh
    s2Step121HeadF_distinct s2Step121HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step121HeadF_reserved
  have rowEq : WindowRow.mk (s2Step121HeadFRow.payload++s2Step121HeadFFresh) s2Step121HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step121HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step121HeadFvBefore : Arena := s2Step121HeadGvAfter

private theorem s2Step121HeadFv_Incoming : rowsOwned s2Step121HeadFvBefore [s2Step121HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step121HeadGRow,s2Step121HeadFRow,s2Step121HeadGvRow,s2Step121HeadFvRow] 3 s2Step121HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step121HeadFvBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121HeadFv_Outgoing : rowsOwned s2Step121HeadFvAfter [s2Step121HeadFvOut] :=
  hmrRows_owned_drop s2Step121HeadFvAfter [s2Step121HeadGOut,s2Step121HeadFOut,s2Step121HeadGvOut,s2Step121HeadFvOut] 3 s2Step121HeadBank_outgoingOwned

private theorem s2Step121HeadFv_distinct : (s2Step121HeadFvRow.sign::s2Step121HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121HeadFv_owned : (s2Step121HeadFvRow.sign::s2Step121HeadFvRow.payload).toFinset⊆s2Step121HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step121HeadFvBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121HeadFv_reserved : s2Step121HeadFvBefore.reserve s2Step121HeadFvFresh.toFinset=some s2Step121HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step121HeadFvFresh,arenaWires]
  · norm_num [s2Step121HeadFvBefore,s2Step121HeadGvAfter,s2Step121HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step121HeadFvAfter,s2Step121HeadFvBefore,s2Step121HeadGvAfter,s2Step121HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step121HeadFv_checked : planRowResizeLog s2Step121HeadFvBefore s2Step121HeadFvRow 76 s2Step121HeadFvFresh=
    some (s2Step121HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849, 802],770⟩,growRow 770 s2Step121HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step121HeadFvBefore s2Step121HeadFvAfter s2Step121HeadFvRow 76 s2Step121HeadFvFresh
    s2Step121HeadFv_distinct s2Step121HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step121HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step121HeadFvRow.payload++s2Step121HeadFvFresh) s2Step121HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 849, 802],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step121HeadG_Incoming : rowsOwned s2Step121HeadGBefore [s2Step121HeadGRow,s2Step121HeadFRow,s2Step121HeadGvRow,s2Step121HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step121HeadGRow,s2Step121HeadFRow,s2Step121HeadGvRow,s2Step121HeadFvRow] 0 s2Step121HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step121HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121HeadG_Outgoing : rowsOwned s2Step121HeadFvAfter [s2Step121HeadGOut,s2Step121HeadFOut,s2Step121HeadGvOut,s2Step121HeadFvOut] :=
  hmrRows_owned_drop s2Step121HeadFvAfter [s2Step121HeadGOut,s2Step121HeadFOut,s2Step121HeadGvOut,s2Step121HeadFvOut] 0 s2Step121HeadBank_outgoingOwned

private theorem s2Step121HeadG_distinct : (s2Step121HeadGRow.sign::s2Step121HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121HeadG_owned : (s2Step121HeadGRow.sign::s2Step121HeadGRow.payload).toFinset⊆s2Step121HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step121HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121HeadG_reserved : s2Step121HeadGBefore.reserve s2Step121HeadGFresh.toFinset=some s2Step121HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step121HeadGFresh,arenaWires]
  · norm_num [s2Step121HeadGBefore,s2Step121HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step121HeadGAfter,s2Step121HeadGBefore,s2Step121HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step121HeadG_checked : planRowResizeLog s2Step121HeadGBefore s2Step121HeadGRow 211 s2Step121HeadGFresh=
    some (s2Step121HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 807, 790, 815],769⟩,growRow 769 s2Step121HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step121HeadGBefore s2Step121HeadGAfter s2Step121HeadGRow 211 s2Step121HeadGFresh
    s2Step121HeadG_distinct s2Step121HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step121HeadG_reserved
  have rowEq : WindowRow.mk (s2Step121HeadGRow.payload++s2Step121HeadGFresh) s2Step121HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 807, 790, 815],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step121HeadGvBefore : Arena := s2Step121HeadFAfter

private theorem s2Step121HeadGv_Incoming : rowsOwned s2Step121HeadGvBefore [s2Step121HeadGvRow,s2Step121HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step121HeadGRow,s2Step121HeadFRow,s2Step121HeadGvRow,s2Step121HeadFvRow] 2 s2Step121HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step121HeadGvBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step121HeadGv_Outgoing : rowsOwned s2Step121HeadFvAfter [s2Step121HeadGvOut,s2Step121HeadFvOut] :=
  hmrRows_owned_drop s2Step121HeadFvAfter [s2Step121HeadGOut,s2Step121HeadFOut,s2Step121HeadGvOut,s2Step121HeadFvOut] 2 s2Step121HeadBank_outgoingOwned

private theorem s2Step121HeadGv_distinct : (s2Step121HeadGvRow.sign::s2Step121HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step121HeadGv_owned : (s2Step121HeadGvRow.sign::s2Step121HeadGvRow.payload).toFinset⊆s2Step121HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step121HeadGvBefore (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step121HeadGv_reserved : s2Step121HeadGvBefore.reserve s2Step121HeadGvFresh.toFinset=some s2Step121HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step121HeadGvFresh,arenaWires]
  · norm_num [s2Step121HeadGvBefore,s2Step121HeadFAfter,s2Step121HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step121HeadGvAfter,s2Step121HeadGvBefore,s2Step121HeadFAfter,s2Step121HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step121HeadGv_checked : planRowResizeLog s2Step121HeadGvBefore s2Step121HeadGvRow 76 s2Step121HeadGvFresh=
    some (s2Step121HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 819, 806],771⟩,growRow 771 s2Step121HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step121HeadGvBefore s2Step121HeadGvAfter s2Step121HeadGvRow 76 s2Step121HeadGvFresh
    s2Step121HeadGv_distinct s2Step121HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step121HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step121HeadGvRow.payload++s2Step121HeadGvFresh) s2Step121HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 819, 806],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step121HeadBank_rows : planWindowRowsLog s2Step121HeadGBefore [(s2Step121HeadGRow,211),(s2Step121HeadFRow,211),(s2Step121HeadGvRow,76),(s2Step121HeadFvRow,76)] [s2Step121HeadGFresh,s2Step121HeadFFresh,s2Step121HeadGvFresh,s2Step121HeadFvFresh]=
    some (s2Step121HeadFvAfter,[s2Step121HeadGOut,s2Step121HeadFOut,s2Step121HeadGvOut,s2Step121HeadFvOut],(growRow 769 s2Step121HeadGFresh ++ (growRow 768 s2Step121HeadFFresh ++ (growRow 771 s2Step121HeadGvFresh ++ (growRow 770 s2Step121HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step121HeadFvAfter [] []=some (s2Step121HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step121HeadFvBefore s2Step121HeadFvAfter s2Step121HeadFvAfter
    s2Step121HeadFvRow s2Step121HeadFvOut 76 s2Step121HeadFvFresh [] [] []
    (growRow 770 s2Step121HeadFvFresh) ([]) s2Step121HeadFv_Incoming s2Step121HeadFv_checked h4 s2Step121HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step121HeadGvBefore s2Step121HeadGvAfter s2Step121HeadFvAfter
    s2Step121HeadGvRow s2Step121HeadGvOut 76 s2Step121HeadGvFresh [(s2Step121HeadFvRow,76)] [s2Step121HeadFvFresh] [s2Step121HeadFvOut]
    (growRow 771 s2Step121HeadGvFresh) ((growRow 770 s2Step121HeadFvFresh ++ [])) s2Step121HeadGv_Incoming s2Step121HeadGv_checked h3 s2Step121HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step121HeadFBefore s2Step121HeadFAfter s2Step121HeadFvAfter
    s2Step121HeadFRow s2Step121HeadFOut 211 s2Step121HeadFFresh [(s2Step121HeadGvRow,76),(s2Step121HeadFvRow,76)] [s2Step121HeadGvFresh,s2Step121HeadFvFresh] [s2Step121HeadGvOut,s2Step121HeadFvOut]
    (growRow 768 s2Step121HeadFFresh) ((growRow 771 s2Step121HeadGvFresh ++ (growRow 770 s2Step121HeadFvFresh ++ []))) s2Step121HeadF_Incoming s2Step121HeadF_checked h2 s2Step121HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step121HeadGBefore s2Step121HeadGAfter s2Step121HeadFvAfter
    s2Step121HeadGRow s2Step121HeadGOut 211 s2Step121HeadGFresh [(s2Step121HeadFRow,211),(s2Step121HeadGvRow,76),(s2Step121HeadFvRow,76)] [s2Step121HeadFFresh,s2Step121HeadGvFresh,s2Step121HeadFvFresh] [s2Step121HeadFOut,s2Step121HeadGvOut,s2Step121HeadFvOut]
    (growRow 769 s2Step121HeadGFresh) ((growRow 768 s2Step121HeadFFresh ++ (growRow 771 s2Step121HeadGvFresh ++ (growRow 770 s2Step121HeadFvFresh ++ [])))) s2Step121HeadG_Incoming s2Step121HeadG_checked h1 s2Step121HeadG_Outgoing
  exact h0

private theorem s2Step121HeadBank_checked : compileHmrBankResizeLog .headroom s2Step121HeadGBefore ⟨s2Step121HeadFRow,s2Step121HeadGRow,s2Step121HeadFvRow,s2Step121HeadGvRow⟩ ⟨211,211,76,76⟩ [s2Step121HeadGFresh,s2Step121HeadFFresh,s2Step121HeadGvFresh,s2Step121HeadFvFresh]=
    some (s2Step121HeadFvAfter,⟨s2Step121HeadFOut,s2Step121HeadGOut,s2Step121HeadFvOut,s2Step121HeadGvOut⟩,(growRow 769 s2Step121HeadGFresh ++ (growRow 768 s2Step121HeadFFresh ++ (growRow 771 s2Step121HeadGvFresh ++ (growRow 770 s2Step121HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step121HeadBank_rows]
  rfl

private theorem s2Step121Front_checked : compileHmrSourceFrontLog s2Step121EntryFBefore s2Step121FrontBank 210 75 ⟨210,207,74,74⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step121FrontLog=some s2Step121FrontPlan := by
  have pairEq : s2Step121FrontPair=⟨s2Step121HeadFRow,s2Step121HeadGRow,s2Step121HeadFvRow,s2Step121HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step121FrontHead=⟨s2Step121ExitFRow,s2Step121ExitGRow,s2Step121ExitFvRow,s2Step121ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step121Add0A=s2Step121FrontHead.f.wires := by decide +kernel
  have gEq : s2Step121Add0B=s2Step121FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step121Add1A=s2Step121FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step121Add1B=s2Step121FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step121EntryFBefore s2Step121FrontBank 210 75 ⟨210,207,74,74⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step121FrontLog s2Step121FrontPlan
  · exact s2Step121Front_entry
  · exact s2Step121EntryBank_checked
  · exact s2Step121Front_sigma
  · rfl
  · exact s2Step121Front_branch
  · rfl
  · simpa only [s2Step121FrontPlan,pairEq] using s2Step121HeadBank_checked
  · simpa only [s2Step121FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step121F4_checked
  · exact s2Step121Counter_checked
  · rfl
  · simpa only [s2Step121FrontPlan,headEq] using s2Step121ExitBank_checked

private theorem s2Step121Complete_explicit_checked : compileHmrEarlyStepLog s2Step121EntryFBefore s2Step121FrontBank 210 75 ⟨210,207,74,74⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step121CompleteLog=some s2Step121CompletePlan := by
  let Q := s2Step121EarlyControlPlan
  have hq := s2Step121EarlyControl_plan_checked
  have fv1 : s2Step121CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step121CompleteOut.fv.payload[2]?.getD s2Step121CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step121CompleteOut.fv.payload[3]?.getD s2Step121CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step121CompleteOut.fv.payload[4]?.getD s2Step121CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step121EntryFBefore s2Step121EarlyControlArena s2Step121FrontBank 210 75 ⟨210,207,74,74⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step121CompleteLog s2Step121FrontPlan Q
    s2Step121Front_checked s2Step121Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step121Complete_owned s2Step121Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step121EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 792 s2Step121CompleteOut.fv.second (s2Step121CompleteOut.fv.payload[2]?.getD s2Step121CompleteOut.fv.sign) (s2Step121CompleteOut.fv.payload[3]?.getD s2Step121CompleteOut.fv.sign) (s2Step121CompleteOut.fv.payload[4]?.getD s2Step121CompleteOut.fv.sign) 817 37 s2Step121EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep121Arena : Arena := s2Step121EntryFBefore
def s2PrivateStep121Bank : WindowBank := s2Step121FrontBank
def s2PrivateStep121Spec : HmrSourceWalkStepLog := ⟨210,75,⟨210,207,74,74⟩,37,.early s2Step121CompleteLog⟩
def s2PrivateStep121Plan : HmrSourceStepPlan := .early s2Step121CompletePlan
theorem s2PrivateStep121_source : s2PrivateStep121Spec=s2ObservedLogs112[9] := rfl
theorem s2PrivateStep121_checked : compileHmrSourceStepLog s2PrivateStep121Arena s2PrivateStep121Bank
    s2PrivateStep121Spec.fgWidth s2PrivateStep121Spec.vWidth s2PrivateStep121Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 121 s2PrivateStep121Spec.need none s2PrivateStep121Spec.log=some s2PrivateStep121Plan := by
  change compileHmrSourceStepLog s2Step121EntryFBefore s2Step121FrontBank 210 75 ⟨210,207,74,74⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 121 37 none (.early s2Step121CompleteLog)=some (.early s2Step121CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 121<498)]
  rw [s2Step121Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
