import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep160
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

private def s2Step162CompleteMoves : List (Wire × Wire) := [(810,187)]

private def s2Step162EarlyControlLog : HmrEarlyControlLog := ⟨[810, 793, 785, 799, 811],[797],[847],[780, 867, 877, 879, 882, 885],[]⟩

private def s2Step162FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[799], [785], [793], [804]],[[], [], [], []]⟩,[849],[803],[811],[797],[847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[811, 797, 847, 780]⟩

private def s2Step162CompleteLog : HmrEarlyStepLog := ⟨s2Step162FrontLog,s2Step162CompleteMoves,s2Step162EarlyControlLog⟩

private def s2Step162ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩

private def s2Step162ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804],770⟩

private def s2Step162ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186],769⟩

private def s2Step162ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778],771⟩

private def s2Step162FrontOut : WindowBank := ⟨s2Step162ExitFOut,s2Step162ExitGOut,s2Step162ExitFvOut,s2Step162ExitGvOut⟩

private def s2Step162CompleteOut : WindowBank := s2Step162FrontOut.repacked s2Step162CompleteMoves

private def s2Step162EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step162EarlyControlPositiveArena,[797],s2Step162EarlyControlEqualityArena,[847],⟨⟨849,false⟩,[⟨⟨797,false⟩,847⟩]⟩⟩

private def s2Step162EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (804≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,810⟩,⟨⟨774,false⟩,793⟩,⟨⟨775,false⟩,785⟩,⟨⟨776,false⟩,799⟩,⟨⟨777,false⟩,811⟩]⟩

private def s2Step162EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step162EarlyControlZeroArena,s2Step162EarlyControlZeroPlan,s2Step162EarlyControlClassPlan,s2Step162EarlyControlFlagArena,s2Step162EarlyControlFittedArena,s2Step162EarlyControlHistoryArena,s2Step162EarlyControlSigmaArena,s2Step162EarlyControlOutputArena,s2Step162EarlyControlLog⟩

private def s2Step162CounterWork : List Wire := [811, 797, 847, 780]

private theorem s2Step162Counter_bounded : s2Step162CounterWork.toFinset⊆arenaWires := by norm_num [s2Step162CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step162HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162CounterDuring : Arena := ⟨s2Step162HeadFvAfter.live∪s2Step162CounterWork.toFinset,Finset.union_subset s2Step162HeadFvAfter.bounded s2Step162Counter_bounded⟩

private def s2Step162EntryFFresh : List Wire := []

private def s2Step162EntryFvFresh : List Wire := []

private def s2Step162EntryGFresh : List Wire := []

private def s2Step162EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162EntryGvAfter : Arena := s2Step162EntryFBefore

private def s2Step162EntryGvFresh : List Wire := []

private def s2Step162ExitFExtra : List Wire := [785]

private def s2Step162ExitGExtra : List Wire := [187, 799]

private def s2Step162ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<187) ∨ (188≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162ExitGvExtra : List Wire := [793]

private def s2Step162Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162Add0Work : List Wire := [847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step162Add0_bounded : s2Step162Add0Work.toFinset⊆arenaWires := by
  have h : s2Step162Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step162Add0During : Arena := ⟨s2Step162Add0Arena.live∪s2Step162Add0Work.toFinset,Finset.union_subset s2Step162Add0Arena.bounded s2Step162Add0_bounded⟩

private def s2Step162Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162Add1Work : List Wire := [847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step162Add1_bounded : s2Step162Add1Work.toFinset⊆arenaWires := by
  have h : s2Step162Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step162Add1During : Arena := ⟨s2Step162Add1Arena.live∪s2Step162Add1Work.toFinset,Finset.union_subset s2Step162Add1Arena.bounded s2Step162Add1_bounded⟩

private def s2Step162F4FlagArena : Arena := ⟨s2Step162HeadFvAfter.live∪{811},Finset.union_subset s2Step162HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step162F4Plan : HmrHybridF4Plan := ⟨s2Step162F4FlagArena,[811],s2Step162Add0Arena,[797],s2Step162Add0During,s2Step162Add0Work,s2Step162Add1During,s2Step162Add1Work⟩

private def s2Step162HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 785],768⟩

private def s2Step162HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804],770⟩

private def s2Step162HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 799],769⟩

private def s2Step162HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 793],771⟩

private def s2Step162FrontHead : WindowBank := ⟨s2Step162HeadFOut,s2Step162HeadGOut,s2Step162HeadFvOut,s2Step162HeadGvOut⟩

private def s2Step162EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩

private def s2Step162EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩

private def s2Step162EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187],769⟩

private def s2Step162EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778],771⟩

private def s2Step162FrontPair : WindowBank := ⟨s2Step162EntryFOut,s2Step162EntryGOut,s2Step162EntryFvOut,s2Step162EntryGvOut⟩

private def s2Step162FrontSigmaArena : Arena := ⟨s2Step162EntryGvAfter.live∪{849},Finset.union_subset s2Step162EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step162HeadFFresh : List Wire := [785]

private def s2Step162HeadFvFresh : List Wire := [804]

private def s2Step162HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162HeadGFresh : List Wire := [799]

private def s2Step162HeadGvFresh : List Wire := [793]

private def s2Step162FrontPlan : HmrSourceFront := ⟨s2Step162EntryGvAfter,s2Step162FrontPair,(growRow 768 s2Step162EntryFFresh ++ (growRow 769 s2Step162EntryGFresh ++ (growRow 770 s2Step162EntryFvFresh ++ (growRow 771 s2Step162EntryGvFresh ++ [])))),s2Step162FrontSigmaArena,[849],s2Step162HeadGBefore,[803],
  s2Step162HeadFvAfter,s2Step162FrontHead,(growRow 769 s2Step162HeadGFresh ++ (growRow 768 s2Step162HeadFFresh ++ (growRow 771 s2Step162HeadGvFresh ++ (growRow 770 s2Step162HeadFvFresh ++ [])))),s2Step162F4Plan,s2Step162CounterDuring,s2Step162CounterWork,s2Step162ExitGvAfter,s2Step162FrontOut,(shrinkRow 769 s2Step162ExitGExtra ++ (shrinkRow 768 s2Step162ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step162ExitGvExtra ++ []))))⟩

private def s2Step162CompletePlan : HmrEarlyStepPlan := ⟨s2Step162FrontPlan,s2Step162EarlyControlArena,s2Step162EarlyControlPlan,s2Step162CompleteMoves⟩

private theorem s2Step162Complete_apart : List.Disjoint (s2Step162CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [849, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step162CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[849, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step162Complete_owned : (s2Step162CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step162EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step162EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step162CompleteMoveArena : Arena := ⟨s2Step162ExitGvAfter.live∪{187},Finset.union_subset s2Step162ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step162Complete_repack : s2Step162ExitGvAfter.checkRepack s2Step162CompleteMoves=some s2Step162EarlyControlArena := by
  have owned : 810∈s2Step162ExitGvAfter.live := by norm_num [s2Step162ExitGvAfter,arenaWires]
  have reserve : s2Step162ExitGvAfter.reserve {187}=some s2Step162CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step162ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step162CompleteMoveArena.retireSet {810}=s2Step162EarlyControlArena := by
    unfold Arena.retireSet s2Step162EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step162CompleteMoveArena,s2Step162ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step162CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step162CompleteMoveArena.retireSet {810}).checkRepack []=some s2Step162EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step162EarlyControl_branchOwned : ([803] : List Wire).toFinset⊆s2Step162EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step162EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EarlyControl_branch : compileHmrBranchRetirement s2Step162EarlyControlSigmaArena 803=some s2Step162EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step162EarlyControl_branchOwned
  · ext q
    simp [s2Step162EarlyControlOutputArena,s2Step162EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step162EarlyControl_classEqualityBorrow : s2Step162EarlyControlPositiveArena.checkBorrow (([849, 797] : List Wire).length-1) s2Step162EarlyControlLog.classWork=some s2Step162EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step162EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step162EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step162EarlyControlEqualityArena,s2Step162EarlyControlPositiveArena,s2Step162EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step162EarlyControl_classEqualityOwned : ([849, 797] : List Wire).toFinset⊆s2Step162EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step162EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EarlyControl_classEquality : compileHmrEqualityLog s2Step162EarlyControlPositiveArena [849, 797] 0 s2Step162EarlyControlLog.classWork=some (s2Step162EarlyControlEqualityArena,s2Step162EarlyControlLog.classWork,s2Step162EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step162EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step162EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step162EarlyControl_classOwned : ([777, 811, 849] : List Wire).toFinset⊆s2Step162EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step162EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EarlyControl_positiveBorrow : s2Step162EarlyControlZeroArena.checkBorrow (1) s2Step162EarlyControlLog.positiveWork=some s2Step162EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step162EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step162EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step162EarlyControlPositiveArena,s2Step162EarlyControlZeroArena,s2Step162EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step162EarlyControl_class : compileHmrSourceClassLog s2Step162EarlyControlZeroArena false 777 s2Step162EarlyControlZeroPlan.top 0 849 s2Step162EarlyControlLog.positiveWork s2Step162EarlyControlLog.classWork=some s2Step162EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step162EarlyControlClassPlan s2Step162EarlyControlZeroArena false 777 s2Step162EarlyControlZeroPlan.top 0 849
  constructor
  · decide +kernel
  · exact s2Step162EarlyControl_classOwned
  · exact s2Step162EarlyControl_positiveBorrow
  · exact s2Step162EarlyControl_classEquality

private theorem s2Step162EarlyControl_entryRecordOwned : ([803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step162EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step162EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EarlyControl_entrySigmaOwned : ([849, 254] : List Wire).toFinset⊆s2Step162EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step162EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EarlyControl_fitBorrow : s2Step162EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step162EarlyControlLog.recordFresh=some s2Step162EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step162EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step162EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step162EarlyControlFittedArena,s2Step162EarlyControlFlagArena,s2Step162EarlyControlLog,arenaWires]

private theorem s2Step162EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step162EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step162EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EarlyControl_fit : compileHmrRecordGrowLog s2Step162EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step162EarlyControlLog.recordFresh=some s2Step162EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step162EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step162EarlyControl_fitBorrow

private theorem s2Step162EarlyControl_flagsBorrow : s2Step162EarlyControlEqualityArena.checkBorrow (6) s2Step162EarlyControlLog.flagWork=some s2Step162EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step162EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step162EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step162EarlyControlFlagArena,s2Step162EarlyControlEqualityArena,s2Step162EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step162EarlyControl_flagsOwned : ([847, 253, 252, 251] : List Wire).toFinset⊆s2Step162EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step162EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EarlyControl_flags : compileHmrFlagsLog s2Step162EarlyControlClassPlan.equalityArena s2Step162EarlyControlClassPlan.equality.top 253 252 251 s2Step162EarlyControlLog.flagWork=some s2Step162EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step162EarlyControl_flagsOwned⟩
  · exact s2Step162EarlyControl_flagsBorrow

private theorem s2Step162EarlyControl_historyBorrow : s2Step162EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step162EarlyControlLog.recordFresh=some s2Step162EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step162EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step162EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step162EarlyControlHistoryArena,s2Step162EarlyControlArena,s2Step162EarlyControlLog,arenaWires]

private theorem s2Step162EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step162EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step162EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EarlyControl_history : compileHmrRecordGrowLog s2Step162EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step162EarlyControlLog.recordFresh=some s2Step162EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step162EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step162EarlyControl_historyBorrow

private theorem s2Step162EarlyControl_sigmaOwned : ([254, 849] : List Wire).toFinset⊆s2Step162EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step162EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EarlyControl_sigmaReleaseOwned : ([849] : List Wire).toFinset⊆s2Step162EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step162EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EarlyControl_sigmaRelease : s2Step162EarlyControlHistoryArena.release {849} (fun _ => false)=some s2Step162EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step162EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step162EarlyControlSigmaArena,s2Step162EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step162EarlyControl_sigma : compileHmrSigmaDropLog s2Step162EarlyControlHistoryArena false 0 0 254 849 []=some s2Step162EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step162EarlyControl_sigmaOwned⟩
  · exact s2Step162EarlyControl_sigmaRelease

private theorem s2Step162EarlyControl_zeroBorrow : s2Step162EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step162EarlyControlLog.zeroWork=some s2Step162EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step162EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step162EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step162EarlyControlZeroArena,s2Step162EarlyControlArena,s2Step162EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step162EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step162EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step162EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<810) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EarlyControl_zero : compileHmrEqualityLog s2Step162EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step162EarlyControlLog.zeroWork=some (s2Step162EarlyControlZeroArena,s2Step162EarlyControlLog.zeroWork,s2Step162EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step162EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step162EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step162EarlyControl_logged : s2Step162EarlyControlPlan.Logged s2Step162EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 849 254 253 252 251 803 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step162EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step162EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step162EarlyControl_zero
  · exact s2Step162EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step162EarlyControl_flags
  · exact s2Step162EarlyControl_fit
  · exact s2Step162EarlyControl_history
  · exact s2Step162EarlyControl_sigma
  · exact s2Step162EarlyControl_branch

private theorem s2Step162EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step162EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 849 254 253 252 251 803 42 s2Step162EarlyControlLog=some s2Step162EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step162EarlyControlPlan s2Step162EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 849 254 253 252 251 803 42 s2Step162EarlyControl_logged

private def s2Step162EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩

private def s2Step162EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩

private def s2Step162EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187],769⟩

private def s2Step162EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778],771⟩

private def s2Step162FrontBank : WindowBank := ⟨s2Step162EntryFRow,s2Step162EntryGRow,s2Step162EntryFvRow,s2Step162EntryGvRow⟩

private def s2Step162Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 785, 768]

private def s2Step162Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 799, 769]

private def s2Step162Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 770]

private def s2Step162Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 793, 771]

private theorem s2Step162Counter_apart : Disjoint s2Step162HeadFvAfter.live s2Step162CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step162HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162Counter_borrowed : s2Step162HeadFvAfter.checkBorrow 4 s2Step162CounterWork=some s2Step162CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step162HeadFvAfter s2Step162CounterDuring s2Step162CounterWork.toFinset s2Step162Counter_bounded s2Step162Counter_apart rfl

private theorem s2Step162Counter_owned : (849::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step162HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step162HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162Counter_checked : compileHmrCounterStepLog s2Step162HeadFvAfter true 849 [772, 773, 774, 775, 776, 777] s2Step162CounterWork=some s2Step162CounterDuring := by
  have owned : ∀q∈849::[772, 773, 774, 775, 776, 777],q∈s2Step162HeadFvAfter.live := fun q hq => s2Step162Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step162Counter_borrowed

private def s2Step162EntryFAfter : Arena := s2Step162EntryFBefore

private theorem s2Step162EntryBank_incomingDistinct : ([s2Step162EntryFRow,s2Step162EntryGRow,s2Step162EntryFvRow,s2Step162EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162EntryF_Incoming : rowsOwned s2Step162EntryFBefore [s2Step162EntryFRow,s2Step162EntryGRow,s2Step162EntryFvRow,s2Step162EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step162EntryFRow,s2Step162EntryGRow,s2Step162EntryFvRow,s2Step162EntryGvRow] 0 s2Step162EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step162EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162EntryBank_outgoingOwned : rowsOwned s2Step162EntryGvAfter [s2Step162EntryFOut,s2Step162EntryGOut,s2Step162EntryFvOut,s2Step162EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step162EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162EntryF_Outgoing : rowsOwned s2Step162EntryGvAfter [s2Step162EntryFOut,s2Step162EntryGOut,s2Step162EntryFvOut,s2Step162EntryGvOut] :=
  hmrRows_owned_drop s2Step162EntryGvAfter [s2Step162EntryFOut,s2Step162EntryGOut,s2Step162EntryFvOut,s2Step162EntryGvOut] 0 s2Step162EntryBank_outgoingOwned

private theorem s2Step162EntryF_distinct : (s2Step162EntryFRow.sign::s2Step162EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162EntryF_owned : (s2Step162EntryFRow.sign::s2Step162EntryFRow.payload).toFinset⊆s2Step162EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step162EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EntryF_reserved : s2Step162EntryFBefore.reserve s2Step162EntryFFresh.toFinset=some s2Step162EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step162EntryFFresh,arenaWires]
  · norm_num [s2Step162EntryFBefore,s2Step162EntryFFresh,arenaWires]
  · simp only [s2Step162EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step162EntryF_checked : planRowResizeLog s2Step162EntryFBefore s2Step162EntryFRow 188 s2Step162EntryFFresh=
    some (s2Step162EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩,growRow 768 s2Step162EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step162EntryFBefore s2Step162EntryFAfter s2Step162EntryFRow 188 s2Step162EntryFFresh
    s2Step162EntryF_distinct s2Step162EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step162EntryF_reserved
  have rowEq : WindowRow.mk (s2Step162EntryFRow.payload++s2Step162EntryFFresh) s2Step162EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step162EntryFvAfter : Arena := s2Step162EntryFBefore

private def s2Step162EntryFvBefore : Arena := s2Step162EntryFBefore

private theorem s2Step162EntryFv_Incoming : rowsOwned s2Step162EntryFvBefore [s2Step162EntryFvRow,s2Step162EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step162EntryFRow,s2Step162EntryGRow,s2Step162EntryFvRow,s2Step162EntryGvRow] 2 s2Step162EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step162EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162EntryFv_Outgoing : rowsOwned s2Step162EntryGvAfter [s2Step162EntryFvOut,s2Step162EntryGvOut] :=
  hmrRows_owned_drop s2Step162EntryGvAfter [s2Step162EntryFOut,s2Step162EntryGOut,s2Step162EntryFvOut,s2Step162EntryGvOut] 2 s2Step162EntryBank_outgoingOwned

private theorem s2Step162EntryFv_distinct : (s2Step162EntryFvRow.sign::s2Step162EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162EntryFv_owned : (s2Step162EntryFvRow.sign::s2Step162EntryFvRow.payload).toFinset⊆s2Step162EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step162EntryFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EntryFv_reserved : s2Step162EntryFvBefore.reserve s2Step162EntryFvFresh.toFinset=some s2Step162EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step162EntryFvFresh,arenaWires]
  · norm_num [s2Step162EntryFvBefore,s2Step162EntryFBefore,s2Step162EntryFvFresh,arenaWires]
  · simp only [s2Step162EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step162EntryFv_checked : planRowResizeLog s2Step162EntryFvBefore s2Step162EntryFvRow 95 s2Step162EntryFvFresh=
    some (s2Step162EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩,growRow 770 s2Step162EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step162EntryFvBefore s2Step162EntryFvAfter s2Step162EntryFvRow 95 s2Step162EntryFvFresh
    s2Step162EntryFv_distinct s2Step162EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step162EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step162EntryFvRow.payload++s2Step162EntryFvFresh) s2Step162EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step162EntryGAfter : Arena := s2Step162EntryFBefore

private def s2Step162EntryGBefore : Arena := s2Step162EntryFBefore

private theorem s2Step162EntryG_Incoming : rowsOwned s2Step162EntryGBefore [s2Step162EntryGRow,s2Step162EntryFvRow,s2Step162EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step162EntryFRow,s2Step162EntryGRow,s2Step162EntryFvRow,s2Step162EntryGvRow] 1 s2Step162EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step162EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162EntryG_Outgoing : rowsOwned s2Step162EntryGvAfter [s2Step162EntryGOut,s2Step162EntryFvOut,s2Step162EntryGvOut] :=
  hmrRows_owned_drop s2Step162EntryGvAfter [s2Step162EntryFOut,s2Step162EntryGOut,s2Step162EntryFvOut,s2Step162EntryGvOut] 1 s2Step162EntryBank_outgoingOwned

private theorem s2Step162EntryG_distinct : (s2Step162EntryGRow.sign::s2Step162EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162EntryG_owned : (s2Step162EntryGRow.sign::s2Step162EntryGRow.payload).toFinset⊆s2Step162EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step162EntryGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EntryG_reserved : s2Step162EntryGBefore.reserve s2Step162EntryGFresh.toFinset=some s2Step162EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step162EntryGFresh,arenaWires]
  · norm_num [s2Step162EntryGBefore,s2Step162EntryFBefore,s2Step162EntryGFresh,arenaWires]
  · simp only [s2Step162EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step162EntryG_checked : planRowResizeLog s2Step162EntryGBefore s2Step162EntryGRow 188 s2Step162EntryGFresh=
    some (s2Step162EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187],769⟩,growRow 769 s2Step162EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step162EntryGBefore s2Step162EntryGAfter s2Step162EntryGRow 188 s2Step162EntryGFresh
    s2Step162EntryG_distinct s2Step162EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step162EntryG_reserved
  have rowEq : WindowRow.mk (s2Step162EntryGRow.payload++s2Step162EntryGFresh) s2Step162EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step162EntryGvBefore : Arena := s2Step162EntryFBefore

private theorem s2Step162EntryGv_Incoming : rowsOwned s2Step162EntryGvBefore [s2Step162EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step162EntryFRow,s2Step162EntryGRow,s2Step162EntryFvRow,s2Step162EntryGvRow] 3 s2Step162EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step162EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162EntryGv_Outgoing : rowsOwned s2Step162EntryGvAfter [s2Step162EntryGvOut] :=
  hmrRows_owned_drop s2Step162EntryGvAfter [s2Step162EntryFOut,s2Step162EntryGOut,s2Step162EntryFvOut,s2Step162EntryGvOut] 3 s2Step162EntryBank_outgoingOwned

private theorem s2Step162EntryGv_distinct : (s2Step162EntryGvRow.sign::s2Step162EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162EntryGv_owned : (s2Step162EntryGvRow.sign::s2Step162EntryGvRow.payload).toFinset⊆s2Step162EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step162EntryGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162EntryGv_reserved : s2Step162EntryGvBefore.reserve s2Step162EntryGvFresh.toFinset=some s2Step162EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step162EntryGvFresh,arenaWires]
  · norm_num [s2Step162EntryGvBefore,s2Step162EntryFBefore,s2Step162EntryGvFresh,arenaWires]
  · simp only [s2Step162EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step162EntryGv_checked : planRowResizeLog s2Step162EntryGvBefore s2Step162EntryGvRow 95 s2Step162EntryGvFresh=
    some (s2Step162EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778],771⟩,growRow 771 s2Step162EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step162EntryGvBefore s2Step162EntryGvAfter s2Step162EntryGvRow 95 s2Step162EntryGvFresh
    s2Step162EntryGv_distinct s2Step162EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step162EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step162EntryGvRow.payload++s2Step162EntryGvFresh) s2Step162EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step162EntryBank_rows : planWindowRowsLog s2Step162EntryFBefore [(s2Step162EntryFRow,188),(s2Step162EntryGRow,188),(s2Step162EntryFvRow,95),(s2Step162EntryGvRow,95)] [s2Step162EntryFFresh,s2Step162EntryGFresh,s2Step162EntryFvFresh,s2Step162EntryGvFresh]=
    some (s2Step162EntryGvAfter,[s2Step162EntryFOut,s2Step162EntryGOut,s2Step162EntryFvOut,s2Step162EntryGvOut],(growRow 768 s2Step162EntryFFresh ++ (growRow 769 s2Step162EntryGFresh ++ (growRow 770 s2Step162EntryFvFresh ++ (growRow 771 s2Step162EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step162EntryGvAfter [] []=some (s2Step162EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step162EntryGvBefore s2Step162EntryGvAfter s2Step162EntryGvAfter
    s2Step162EntryGvRow s2Step162EntryGvOut 95 s2Step162EntryGvFresh [] [] []
    (growRow 771 s2Step162EntryGvFresh) ([]) s2Step162EntryGv_Incoming s2Step162EntryGv_checked h4 s2Step162EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step162EntryFvBefore s2Step162EntryFvAfter s2Step162EntryGvAfter
    s2Step162EntryFvRow s2Step162EntryFvOut 95 s2Step162EntryFvFresh [(s2Step162EntryGvRow,95)] [s2Step162EntryGvFresh] [s2Step162EntryGvOut]
    (growRow 770 s2Step162EntryFvFresh) ((growRow 771 s2Step162EntryGvFresh ++ [])) s2Step162EntryFv_Incoming s2Step162EntryFv_checked h3 s2Step162EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step162EntryGBefore s2Step162EntryGAfter s2Step162EntryGvAfter
    s2Step162EntryGRow s2Step162EntryGOut 188 s2Step162EntryGFresh [(s2Step162EntryFvRow,95),(s2Step162EntryGvRow,95)] [s2Step162EntryFvFresh,s2Step162EntryGvFresh] [s2Step162EntryFvOut,s2Step162EntryGvOut]
    (growRow 769 s2Step162EntryGFresh) ((growRow 770 s2Step162EntryFvFresh ++ (growRow 771 s2Step162EntryGvFresh ++ []))) s2Step162EntryG_Incoming s2Step162EntryG_checked h2 s2Step162EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step162EntryFBefore s2Step162EntryFAfter s2Step162EntryGvAfter
    s2Step162EntryFRow s2Step162EntryFOut 188 s2Step162EntryFFresh [(s2Step162EntryGRow,188),(s2Step162EntryFvRow,95),(s2Step162EntryGvRow,95)] [s2Step162EntryGFresh,s2Step162EntryFvFresh,s2Step162EntryGvFresh] [s2Step162EntryGOut,s2Step162EntryFvOut,s2Step162EntryGvOut]
    (growRow 768 s2Step162EntryFFresh) ((growRow 769 s2Step162EntryGFresh ++ (growRow 770 s2Step162EntryFvFresh ++ (growRow 771 s2Step162EntryGvFresh ++ [])))) s2Step162EntryF_Incoming s2Step162EntryF_checked h1 s2Step162EntryF_Outgoing
  exact h0

private theorem s2Step162EntryBank_checked : compileHmrBankResizeLog .entry s2Step162EntryFBefore ⟨s2Step162EntryFRow,s2Step162EntryGRow,s2Step162EntryFvRow,s2Step162EntryGvRow⟩ ⟨188,188,95,95⟩ [s2Step162EntryFFresh,s2Step162EntryGFresh,s2Step162EntryFvFresh,s2Step162EntryGvFresh]=
    some (s2Step162EntryGvAfter,⟨s2Step162EntryFOut,s2Step162EntryGOut,s2Step162EntryFvOut,s2Step162EntryGvOut⟩,(growRow 768 s2Step162EntryFFresh ++ (growRow 769 s2Step162EntryGFresh ++ (growRow 770 s2Step162EntryFvFresh ++ (growRow 771 s2Step162EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step162EntryBank_rows]
  rfl

private def s2Step162ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<187) ∨ (188≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<187) ∨ (188≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162ExitFBefore : Arena := s2Step162ExitGAfter

private def s2Step162ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 785],768⟩

private def s2Step162ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804],770⟩

private def s2Step162ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 799],769⟩

private def s2Step162ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 793],771⟩

private theorem s2Step162ExitBank_incomingDistinct : ([s2Step162ExitGRow,s2Step162ExitFRow,s2Step162ExitFvRow,s2Step162ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162ExitF_Incoming : rowsOwned s2Step162ExitFBefore [s2Step162ExitFRow,s2Step162ExitFvRow,s2Step162ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step162ExitGRow,s2Step162ExitFRow,s2Step162ExitFvRow,s2Step162ExitGvRow] 1 s2Step162ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step162ExitFBefore (fun q => (0≤q ∧ q<187) ∨ (188≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162ExitBank_outgoingOwned : rowsOwned s2Step162ExitGvAfter [s2Step162ExitGOut,s2Step162ExitFOut,s2Step162ExitFvOut,s2Step162ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step162ExitGvAfter (fun q => (0≤q ∧ q<187) ∨ (188≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162ExitF_Outgoing : rowsOwned s2Step162ExitGvAfter [s2Step162ExitFOut,s2Step162ExitFvOut,s2Step162ExitGvOut] :=
  hmrRows_owned_drop s2Step162ExitGvAfter [s2Step162ExitGOut,s2Step162ExitFOut,s2Step162ExitFvOut,s2Step162ExitGvOut] 1 s2Step162ExitBank_outgoingOwned

private theorem s2Step162ExitF_distinct : (s2Step162ExitFRow.sign::s2Step162ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162ExitF_owned : (s2Step162ExitFRow.sign::s2Step162ExitFRow.payload).toFinset⊆s2Step162ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step162ExitFBefore (fun q => (0≤q ∧ q<187) ∨ (188≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162ExitF_retired : s2Step162ExitFBefore.retireSet s2Step162ExitFExtra.toFinset=s2Step162ExitFAfter := by
  unfold Arena.retireSet s2Step162ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step162ExitFBefore,s2Step162ExitGAfter,s2Step162ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step162ExitF_checked : planRowResizeLog s2Step162ExitFBefore s2Step162ExitFRow 188 []=
    some (s2Step162ExitFAfter,s2Step162ExitFOut,shrinkRow 768 s2Step162ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step162ExitFBefore s2Step162ExitFRow 188 s2Step162ExitF_distinct s2Step162ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step162ExitFRow.payload.take 188) s2Step162ExitFRow.sign=s2Step162ExitFOut := by decide +kernel
  have hi : s2Step162ExitFRow.payload.drop 188=s2Step162ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step162ExitF_retired] at result
  exact result

private def s2Step162ExitFvAfter : Arena := s2Step162ExitFAfter

private def s2Step162ExitFvBefore : Arena := s2Step162ExitFAfter

private theorem s2Step162ExitFv_Incoming : rowsOwned s2Step162ExitFvBefore [s2Step162ExitFvRow,s2Step162ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step162ExitGRow,s2Step162ExitFRow,s2Step162ExitFvRow,s2Step162ExitGvRow] 2 s2Step162ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step162ExitFvBefore (fun q => (0≤q ∧ q<187) ∨ (188≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162ExitFv_Outgoing : rowsOwned s2Step162ExitGvAfter [s2Step162ExitFvOut,s2Step162ExitGvOut] :=
  hmrRows_owned_drop s2Step162ExitGvAfter [s2Step162ExitGOut,s2Step162ExitFOut,s2Step162ExitFvOut,s2Step162ExitGvOut] 2 s2Step162ExitBank_outgoingOwned

private theorem s2Step162ExitFv_distinct : (s2Step162ExitFvRow.sign::s2Step162ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162ExitFv_owned : (s2Step162ExitFvRow.sign::s2Step162ExitFvRow.payload).toFinset⊆s2Step162ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step162ExitFvBefore (fun q => (0≤q ∧ q<187) ∨ (188≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162ExitFv_reserved : s2Step162ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step162ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step162ExitFv_checked : planRowResizeLog s2Step162ExitFvBefore s2Step162ExitFvRow 96 []=
    some (s2Step162ExitFvAfter,s2Step162ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step162ExitFvBefore s2Step162ExitFvAfter s2Step162ExitFvRow 96 []
    s2Step162ExitFv_distinct s2Step162ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step162ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step162ExitFvRow.payload++[]) s2Step162ExitFvRow.sign=s2Step162ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step162ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step162ExitG_Incoming : rowsOwned s2Step162ExitGBefore [s2Step162ExitGRow,s2Step162ExitFRow,s2Step162ExitFvRow,s2Step162ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step162ExitGRow,s2Step162ExitFRow,s2Step162ExitFvRow,s2Step162ExitGvRow] 0 s2Step162ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step162ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162ExitG_Outgoing : rowsOwned s2Step162ExitGvAfter [s2Step162ExitGOut,s2Step162ExitFOut,s2Step162ExitFvOut,s2Step162ExitGvOut] :=
  hmrRows_owned_drop s2Step162ExitGvAfter [s2Step162ExitGOut,s2Step162ExitFOut,s2Step162ExitFvOut,s2Step162ExitGvOut] 0 s2Step162ExitBank_outgoingOwned

private theorem s2Step162ExitG_distinct : (s2Step162ExitGRow.sign::s2Step162ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162ExitG_owned : (s2Step162ExitGRow.sign::s2Step162ExitGRow.payload).toFinset⊆s2Step162ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step162ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162ExitG_retired : s2Step162ExitGBefore.retireSet s2Step162ExitGExtra.toFinset=s2Step162ExitGAfter := by
  unfold Arena.retireSet s2Step162ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step162ExitGBefore,s2Step162ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step162ExitG_checked : planRowResizeLog s2Step162ExitGBefore s2Step162ExitGRow 187 []=
    some (s2Step162ExitGAfter,s2Step162ExitGOut,shrinkRow 769 s2Step162ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step162ExitGBefore s2Step162ExitGRow 187 s2Step162ExitG_distinct s2Step162ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step162ExitGRow.payload.take 187) s2Step162ExitGRow.sign=s2Step162ExitGOut := by decide +kernel
  have hi : s2Step162ExitGRow.payload.drop 187=s2Step162ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step162ExitG_retired] at result
  exact result

private def s2Step162ExitGvBefore : Arena := s2Step162ExitFAfter

private theorem s2Step162ExitGv_Incoming : rowsOwned s2Step162ExitGvBefore [s2Step162ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step162ExitGRow,s2Step162ExitFRow,s2Step162ExitFvRow,s2Step162ExitGvRow] 3 s2Step162ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step162ExitGvBefore (fun q => (0≤q ∧ q<187) ∨ (188≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162ExitGv_Outgoing : rowsOwned s2Step162ExitGvAfter [s2Step162ExitGvOut] :=
  hmrRows_owned_drop s2Step162ExitGvAfter [s2Step162ExitGOut,s2Step162ExitFOut,s2Step162ExitFvOut,s2Step162ExitGvOut] 3 s2Step162ExitBank_outgoingOwned

private theorem s2Step162ExitGv_distinct : (s2Step162ExitGvRow.sign::s2Step162ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162ExitGv_owned : (s2Step162ExitGvRow.sign::s2Step162ExitGvRow.payload).toFinset⊆s2Step162ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step162ExitGvBefore (fun q => (0≤q ∧ q<187) ∨ (188≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162ExitGv_retired : s2Step162ExitGvBefore.retireSet s2Step162ExitGvExtra.toFinset=s2Step162ExitGvAfter := by
  unfold Arena.retireSet s2Step162ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step162ExitGvBefore,s2Step162ExitFAfter,s2Step162ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step162ExitGv_checked : planRowResizeLog s2Step162ExitGvBefore s2Step162ExitGvRow 95 []=
    some (s2Step162ExitGvAfter,s2Step162ExitGvOut,shrinkRow 771 s2Step162ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step162ExitGvBefore s2Step162ExitGvRow 95 s2Step162ExitGv_distinct s2Step162ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step162ExitGvRow.payload.take 95) s2Step162ExitGvRow.sign=s2Step162ExitGvOut := by decide +kernel
  have hi : s2Step162ExitGvRow.payload.drop 95=s2Step162ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step162ExitGv_retired] at result
  exact result

private theorem s2Step162ExitBank_rows : planWindowRowsLog s2Step162ExitGBefore [(s2Step162ExitGRow,187),(s2Step162ExitFRow,188),(s2Step162ExitFvRow,96),(s2Step162ExitGvRow,95)] [[],[],[],[]]=
    some (s2Step162ExitGvAfter,[s2Step162ExitGOut,s2Step162ExitFOut,s2Step162ExitFvOut,s2Step162ExitGvOut],(shrinkRow 769 s2Step162ExitGExtra ++ (shrinkRow 768 s2Step162ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step162ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step162ExitGvAfter [] []=some (s2Step162ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step162ExitGvBefore s2Step162ExitGvAfter s2Step162ExitGvAfter
    s2Step162ExitGvRow s2Step162ExitGvOut 95 [] [] [] []
    (shrinkRow 771 s2Step162ExitGvExtra) ([]) s2Step162ExitGv_Incoming s2Step162ExitGv_checked h4 s2Step162ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step162ExitFvBefore s2Step162ExitFvAfter s2Step162ExitGvAfter
    s2Step162ExitFvRow s2Step162ExitFvOut 96 [] [(s2Step162ExitGvRow,95)] [[]] [s2Step162ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step162ExitGvExtra ++ [])) s2Step162ExitFv_Incoming s2Step162ExitFv_checked h3 s2Step162ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step162ExitFBefore s2Step162ExitFAfter s2Step162ExitGvAfter
    s2Step162ExitFRow s2Step162ExitFOut 188 [] [(s2Step162ExitFvRow,96),(s2Step162ExitGvRow,95)] [[],[]] [s2Step162ExitFvOut,s2Step162ExitGvOut]
    (shrinkRow 768 s2Step162ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step162ExitGvExtra ++ []))) s2Step162ExitF_Incoming s2Step162ExitF_checked h2 s2Step162ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step162ExitGBefore s2Step162ExitGAfter s2Step162ExitGvAfter
    s2Step162ExitGRow s2Step162ExitGOut 187 [] [(s2Step162ExitFRow,188),(s2Step162ExitFvRow,96),(s2Step162ExitGvRow,95)] [[],[],[]] [s2Step162ExitFOut,s2Step162ExitFvOut,s2Step162ExitGvOut]
    (shrinkRow 769 s2Step162ExitGExtra) ((shrinkRow 768 s2Step162ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step162ExitGvExtra ++ [])))) s2Step162ExitG_Incoming s2Step162ExitG_checked h1 s2Step162ExitG_Outgoing
  exact h0

private theorem s2Step162ExitBank_checked : compileHmrBankResizeLog .exit s2Step162ExitGBefore ⟨s2Step162ExitFRow,s2Step162ExitGRow,s2Step162ExitFvRow,s2Step162ExitGvRow⟩ ⟨188,187,96,95⟩ [[],[],[],[]]=
    some (s2Step162ExitGvAfter,⟨s2Step162ExitFOut,s2Step162ExitGOut,s2Step162ExitFvOut,s2Step162ExitGvOut⟩,(shrinkRow 769 s2Step162ExitGExtra ++ (shrinkRow 768 s2Step162ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step162ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step162ExitBank_rows]
  rfl

private theorem s2Step162Add0_apart : Disjoint s2Step162Add0Arena.live s2Step162Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step162Add0Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162Add0_card : s2Step162Add0Arena.live.card=882 := by
  decide +kernel

private theorem s2Step162Add0_borrowed : s2Step162Add0Arena.checkBorrow (hmrHybridCount s2Step162Add0Arena s2Step162Add0B.length) s2Step162Add0Work=some s2Step162Add0During := by
  have len : s2Step162Add0Work.length=hmrHybridCount s2Step162Add0Arena s2Step162Add0B.length := by
    rw [hmrHybridCount,s2Step162Add0_card]
    decide +kernel
  have nd : s2Step162Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step162Add0Arena s2Step162Add0During s2Step162Add0Work.toFinset s2Step162Add0_bounded s2Step162Add0_apart rfl

private theorem s2Step162Add0_distinct : (811::803::797::(s2Step162Add0A++s2Step162Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162Add0_owned : (811::803::797::(s2Step162Add0A++s2Step162Add0B)).toFinset⊆s2Step162Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step162Add0Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162Add0_checked : compileHmrHybridCinLog s2Step162Add0Arena 803 811 797 s2Step162Add0A s2Step162Add0B s2Step162Add0Work=some s2Step162Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step162Add0Arena s2Step162Add0During 803 811 797 s2Step162Add0A s2Step162Add0B s2Step162Add0Work
    (by decide +kernel) (by decide +kernel) s2Step162Add0_distinct
    (fun q hq => s2Step162Add0_owned (List.mem_toFinset.mpr hq)) s2Step162Add0_borrowed

private theorem s2Step162Add1_apart : Disjoint s2Step162Add1Arena.live s2Step162Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step162Add1Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162Add1_card : s2Step162Add1Arena.live.card=882 := by
  decide +kernel

private theorem s2Step162Add1_borrowed : s2Step162Add1Arena.checkBorrow (hmrHybridCount s2Step162Add1Arena s2Step162Add1B.length) s2Step162Add1Work=some s2Step162Add1During := by
  have len : s2Step162Add1Work.length=hmrHybridCount s2Step162Add1Arena s2Step162Add1B.length := by
    rw [hmrHybridCount,s2Step162Add1_card]
    decide +kernel
  have nd : s2Step162Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step162Add1Arena s2Step162Add1During s2Step162Add1Work.toFinset s2Step162Add1_bounded s2Step162Add1_apart rfl

private theorem s2Step162Add1_distinct : (811::803::797::(s2Step162Add1A++s2Step162Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162Add1_owned : (811::803::797::(s2Step162Add1A++s2Step162Add1B)).toFinset⊆s2Step162Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step162Add1Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162Add1_checked : compileHmrHybridCinLog s2Step162Add1Arena 803 811 797 s2Step162Add1A s2Step162Add1B s2Step162Add1Work=some s2Step162Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step162Add1Arena s2Step162Add1During 803 811 797 s2Step162Add1A s2Step162Add1B s2Step162Add1Work
    (by decide +kernel) (by decide +kernel) s2Step162Add1_distinct
    (fun q hq => s2Step162Add1_owned (List.mem_toFinset.mpr hq)) s2Step162Add1_borrowed

private theorem s2Step162F4_apart : Disjoint (s2Step162Add0A++s2Step162Add0B).toFinset (s2Step162Add1A++s2Step162Add1B).toFinset := by
  have nd : ((s2Step162Add0A++s2Step162Add0B)++(s2Step162Add1A++s2Step162Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step162F4_carry : s2Step162F4FlagArena.checkBorrow 1 [797]=some s2Step162Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step162F4FlagArena,s2Step162HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step162F4FlagArena,s2Step162HeadFvAfter,s2Step162Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step162F4_distinct : (849::803::811::797::((s2Step162Add0A++s2Step162Add1A)++(s2Step162Add0B++s2Step162Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162F4_flag : s2Step162HeadFvAfter.checkBorrow 1 [811]=some s2Step162F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step162HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step162F4_owned : (849::803::((s2Step162Add0A++s2Step162Add1A)++(s2Step162Add0B++s2Step162Add1B))).toFinset⊆s2Step162HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step162HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162F4_checked : compileHmrHybridF4Log s2Step162HeadFvAfter 849 803 s2Step162Add0A s2Step162Add0B s2Step162Add1A s2Step162Add1B [811] [797] s2Step162Add0Work s2Step162Add1Work=some s2Step162F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step162HeadFvAfter s2Step162F4FlagArena s2Step162Add0Arena s2Step162Add0During s2Step162Add1During 849 803
    s2Step162Add0A s2Step162Add0B s2Step162Add1A s2Step162Add1B [811] [797] s2Step162Add0Work s2Step162Add1Work
    (fun q hq => s2Step162F4_owned (List.mem_toFinset.mpr hq)) s2Step162F4_flag s2Step162F4_carry
    s2Step162F4_distinct s2Step162F4_apart s2Step162Add0_checked s2Step162Add1_checked

private theorem s2Step162Front_branch : s2Step162FrontSigmaArena.checkBorrow 1 [803]=some s2Step162HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step162FrontSigmaArena,s2Step162EntryGvAfter,s2Step162EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step162FrontSigmaArena,s2Step162EntryGvAfter,s2Step162EntryFBefore,s2Step162HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step162Front_entry : HmrFrontEntryValid s2Step162EntryFBefore s2Step162FrontBank 188 95 ⟨188,187,96,95⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step162FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step162EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step162EntryFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step162FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step162Front_sigma : s2Step162EntryGvAfter.checkBorrow 1 [849]=some s2Step162FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step162EntryGvAfter,s2Step162EntryFBefore,arenaWires]
  · rfl

private def s2Step162HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162HeadFBefore : Arena := s2Step162HeadGAfter

private def s2Step162HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩

private def s2Step162HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩

private def s2Step162HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187],769⟩

private def s2Step162HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778],771⟩

private theorem s2Step162HeadBank_incomingDistinct : ([s2Step162HeadGRow,s2Step162HeadFRow,s2Step162HeadGvRow,s2Step162HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162HeadF_Incoming : rowsOwned s2Step162HeadFBefore [s2Step162HeadFRow,s2Step162HeadGvRow,s2Step162HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step162HeadGRow,s2Step162HeadFRow,s2Step162HeadGvRow,s2Step162HeadFvRow] 1 s2Step162HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step162HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162HeadBank_outgoingOwned : rowsOwned s2Step162HeadFvAfter [s2Step162HeadGOut,s2Step162HeadFOut,s2Step162HeadGvOut,s2Step162HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step162HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162HeadF_Outgoing : rowsOwned s2Step162HeadFvAfter [s2Step162HeadFOut,s2Step162HeadGvOut,s2Step162HeadFvOut] :=
  hmrRows_owned_drop s2Step162HeadFvAfter [s2Step162HeadGOut,s2Step162HeadFOut,s2Step162HeadGvOut,s2Step162HeadFvOut] 1 s2Step162HeadBank_outgoingOwned

private theorem s2Step162HeadF_distinct : (s2Step162HeadFRow.sign::s2Step162HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162HeadF_owned : (s2Step162HeadFRow.sign::s2Step162HeadFRow.payload).toFinset⊆s2Step162HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step162HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162HeadF_reserved : s2Step162HeadFBefore.reserve s2Step162HeadFFresh.toFinset=some s2Step162HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step162HeadFFresh,arenaWires]
  · norm_num [s2Step162HeadFBefore,s2Step162HeadGAfter,s2Step162HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step162HeadFAfter,s2Step162HeadFBefore,s2Step162HeadGAfter,s2Step162HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step162HeadF_checked : planRowResizeLog s2Step162HeadFBefore s2Step162HeadFRow 189 s2Step162HeadFFresh=
    some (s2Step162HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 785],768⟩,growRow 768 s2Step162HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step162HeadFBefore s2Step162HeadFAfter s2Step162HeadFRow 189 s2Step162HeadFFresh
    s2Step162HeadF_distinct s2Step162HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step162HeadF_reserved
  have rowEq : WindowRow.mk (s2Step162HeadFRow.payload++s2Step162HeadFFresh) s2Step162HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 785],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step162HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step162HeadFvBefore : Arena := s2Step162HeadGvAfter

private theorem s2Step162HeadFv_Incoming : rowsOwned s2Step162HeadFvBefore [s2Step162HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step162HeadGRow,s2Step162HeadFRow,s2Step162HeadGvRow,s2Step162HeadFvRow] 3 s2Step162HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step162HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162HeadFv_Outgoing : rowsOwned s2Step162HeadFvAfter [s2Step162HeadFvOut] :=
  hmrRows_owned_drop s2Step162HeadFvAfter [s2Step162HeadGOut,s2Step162HeadFOut,s2Step162HeadGvOut,s2Step162HeadFvOut] 3 s2Step162HeadBank_outgoingOwned

private theorem s2Step162HeadFv_distinct : (s2Step162HeadFvRow.sign::s2Step162HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162HeadFv_owned : (s2Step162HeadFvRow.sign::s2Step162HeadFvRow.payload).toFinset⊆s2Step162HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step162HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162HeadFv_reserved : s2Step162HeadFvBefore.reserve s2Step162HeadFvFresh.toFinset=some s2Step162HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step162HeadFvFresh,arenaWires]
  · norm_num [s2Step162HeadFvBefore,s2Step162HeadGvAfter,s2Step162HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step162HeadFvAfter,s2Step162HeadFvBefore,s2Step162HeadGvAfter,s2Step162HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step162HeadFv_checked : planRowResizeLog s2Step162HeadFvBefore s2Step162HeadFvRow 96 s2Step162HeadFvFresh=
    some (s2Step162HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804],770⟩,growRow 770 s2Step162HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step162HeadFvBefore s2Step162HeadFvAfter s2Step162HeadFvRow 96 s2Step162HeadFvFresh
    s2Step162HeadFv_distinct s2Step162HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step162HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step162HeadFvRow.payload++s2Step162HeadFvFresh) s2Step162HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step162HeadG_Incoming : rowsOwned s2Step162HeadGBefore [s2Step162HeadGRow,s2Step162HeadFRow,s2Step162HeadGvRow,s2Step162HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step162HeadGRow,s2Step162HeadFRow,s2Step162HeadGvRow,s2Step162HeadFvRow] 0 s2Step162HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step162HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162HeadG_Outgoing : rowsOwned s2Step162HeadFvAfter [s2Step162HeadGOut,s2Step162HeadFOut,s2Step162HeadGvOut,s2Step162HeadFvOut] :=
  hmrRows_owned_drop s2Step162HeadFvAfter [s2Step162HeadGOut,s2Step162HeadFOut,s2Step162HeadGvOut,s2Step162HeadFvOut] 0 s2Step162HeadBank_outgoingOwned

private theorem s2Step162HeadG_distinct : (s2Step162HeadGRow.sign::s2Step162HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162HeadG_owned : (s2Step162HeadGRow.sign::s2Step162HeadGRow.payload).toFinset⊆s2Step162HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step162HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162HeadG_reserved : s2Step162HeadGBefore.reserve s2Step162HeadGFresh.toFinset=some s2Step162HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step162HeadGFresh,arenaWires]
  · norm_num [s2Step162HeadGBefore,s2Step162HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step162HeadGAfter,s2Step162HeadGBefore,s2Step162HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step162HeadG_checked : planRowResizeLog s2Step162HeadGBefore s2Step162HeadGRow 189 s2Step162HeadGFresh=
    some (s2Step162HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 799],769⟩,growRow 769 s2Step162HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step162HeadGBefore s2Step162HeadGAfter s2Step162HeadGRow 189 s2Step162HeadGFresh
    s2Step162HeadG_distinct s2Step162HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step162HeadG_reserved
  have rowEq : WindowRow.mk (s2Step162HeadGRow.payload++s2Step162HeadGFresh) s2Step162HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 799],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step162HeadGvBefore : Arena := s2Step162HeadFAfter

private theorem s2Step162HeadGv_Incoming : rowsOwned s2Step162HeadGvBefore [s2Step162HeadGvRow,s2Step162HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step162HeadGRow,s2Step162HeadFRow,s2Step162HeadGvRow,s2Step162HeadFvRow] 2 s2Step162HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step162HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step162HeadGv_Outgoing : rowsOwned s2Step162HeadFvAfter [s2Step162HeadGvOut,s2Step162HeadFvOut] :=
  hmrRows_owned_drop s2Step162HeadFvAfter [s2Step162HeadGOut,s2Step162HeadFOut,s2Step162HeadGvOut,s2Step162HeadFvOut] 2 s2Step162HeadBank_outgoingOwned

private theorem s2Step162HeadGv_distinct : (s2Step162HeadGvRow.sign::s2Step162HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step162HeadGv_owned : (s2Step162HeadGvRow.sign::s2Step162HeadGvRow.payload).toFinset⊆s2Step162HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step162HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step162HeadGv_reserved : s2Step162HeadGvBefore.reserve s2Step162HeadGvFresh.toFinset=some s2Step162HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step162HeadGvFresh,arenaWires]
  · norm_num [s2Step162HeadGvBefore,s2Step162HeadFAfter,s2Step162HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step162HeadGvAfter,s2Step162HeadGvBefore,s2Step162HeadFAfter,s2Step162HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step162HeadGv_checked : planRowResizeLog s2Step162HeadGvBefore s2Step162HeadGvRow 96 s2Step162HeadGvFresh=
    some (s2Step162HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 793],771⟩,growRow 771 s2Step162HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step162HeadGvBefore s2Step162HeadGvAfter s2Step162HeadGvRow 96 s2Step162HeadGvFresh
    s2Step162HeadGv_distinct s2Step162HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step162HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step162HeadGvRow.payload++s2Step162HeadGvFresh) s2Step162HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 793],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step162HeadBank_rows : planWindowRowsLog s2Step162HeadGBefore [(s2Step162HeadGRow,189),(s2Step162HeadFRow,189),(s2Step162HeadGvRow,96),(s2Step162HeadFvRow,96)] [s2Step162HeadGFresh,s2Step162HeadFFresh,s2Step162HeadGvFresh,s2Step162HeadFvFresh]=
    some (s2Step162HeadFvAfter,[s2Step162HeadGOut,s2Step162HeadFOut,s2Step162HeadGvOut,s2Step162HeadFvOut],(growRow 769 s2Step162HeadGFresh ++ (growRow 768 s2Step162HeadFFresh ++ (growRow 771 s2Step162HeadGvFresh ++ (growRow 770 s2Step162HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step162HeadFvAfter [] []=some (s2Step162HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step162HeadFvBefore s2Step162HeadFvAfter s2Step162HeadFvAfter
    s2Step162HeadFvRow s2Step162HeadFvOut 96 s2Step162HeadFvFresh [] [] []
    (growRow 770 s2Step162HeadFvFresh) ([]) s2Step162HeadFv_Incoming s2Step162HeadFv_checked h4 s2Step162HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step162HeadGvBefore s2Step162HeadGvAfter s2Step162HeadFvAfter
    s2Step162HeadGvRow s2Step162HeadGvOut 96 s2Step162HeadGvFresh [(s2Step162HeadFvRow,96)] [s2Step162HeadFvFresh] [s2Step162HeadFvOut]
    (growRow 771 s2Step162HeadGvFresh) ((growRow 770 s2Step162HeadFvFresh ++ [])) s2Step162HeadGv_Incoming s2Step162HeadGv_checked h3 s2Step162HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step162HeadFBefore s2Step162HeadFAfter s2Step162HeadFvAfter
    s2Step162HeadFRow s2Step162HeadFOut 189 s2Step162HeadFFresh [(s2Step162HeadGvRow,96),(s2Step162HeadFvRow,96)] [s2Step162HeadGvFresh,s2Step162HeadFvFresh] [s2Step162HeadGvOut,s2Step162HeadFvOut]
    (growRow 768 s2Step162HeadFFresh) ((growRow 771 s2Step162HeadGvFresh ++ (growRow 770 s2Step162HeadFvFresh ++ []))) s2Step162HeadF_Incoming s2Step162HeadF_checked h2 s2Step162HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step162HeadGBefore s2Step162HeadGAfter s2Step162HeadFvAfter
    s2Step162HeadGRow s2Step162HeadGOut 189 s2Step162HeadGFresh [(s2Step162HeadFRow,189),(s2Step162HeadGvRow,96),(s2Step162HeadFvRow,96)] [s2Step162HeadFFresh,s2Step162HeadGvFresh,s2Step162HeadFvFresh] [s2Step162HeadFOut,s2Step162HeadGvOut,s2Step162HeadFvOut]
    (growRow 769 s2Step162HeadGFresh) ((growRow 768 s2Step162HeadFFresh ++ (growRow 771 s2Step162HeadGvFresh ++ (growRow 770 s2Step162HeadFvFresh ++ [])))) s2Step162HeadG_Incoming s2Step162HeadG_checked h1 s2Step162HeadG_Outgoing
  exact h0

private theorem s2Step162HeadBank_checked : compileHmrBankResizeLog .headroom s2Step162HeadGBefore ⟨s2Step162HeadFRow,s2Step162HeadGRow,s2Step162HeadFvRow,s2Step162HeadGvRow⟩ ⟨189,189,96,96⟩ [s2Step162HeadGFresh,s2Step162HeadFFresh,s2Step162HeadGvFresh,s2Step162HeadFvFresh]=
    some (s2Step162HeadFvAfter,⟨s2Step162HeadFOut,s2Step162HeadGOut,s2Step162HeadFvOut,s2Step162HeadGvOut⟩,(growRow 769 s2Step162HeadGFresh ++ (growRow 768 s2Step162HeadFFresh ++ (growRow 771 s2Step162HeadGvFresh ++ (growRow 770 s2Step162HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step162HeadBank_rows]
  rfl

private theorem s2Step162Front_checked : compileHmrSourceFrontLog s2Step162EntryFBefore s2Step162FrontBank 188 95 ⟨188,187,96,95⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step162FrontLog=some s2Step162FrontPlan := by
  have pairEq : s2Step162FrontPair=⟨s2Step162HeadFRow,s2Step162HeadGRow,s2Step162HeadFvRow,s2Step162HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step162FrontHead=⟨s2Step162ExitFRow,s2Step162ExitGRow,s2Step162ExitFvRow,s2Step162ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step162Add0A=s2Step162FrontHead.f.wires := by decide +kernel
  have gEq : s2Step162Add0B=s2Step162FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step162Add1A=s2Step162FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step162Add1B=s2Step162FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step162EntryFBefore s2Step162FrontBank 188 95 ⟨188,187,96,95⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step162FrontLog s2Step162FrontPlan
  · exact s2Step162Front_entry
  · exact s2Step162EntryBank_checked
  · exact s2Step162Front_sigma
  · rfl
  · exact s2Step162Front_branch
  · rfl
  · simpa only [s2Step162FrontPlan,pairEq] using s2Step162HeadBank_checked
  · simpa only [s2Step162FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step162F4_checked
  · exact s2Step162Counter_checked
  · rfl
  · simpa only [s2Step162FrontPlan,headEq] using s2Step162ExitBank_checked

private theorem s2Step162Complete_explicit_checked : compileHmrEarlyStepLog s2Step162EntryFBefore s2Step162FrontBank 188 95 ⟨188,187,96,95⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step162CompleteLog=some s2Step162CompletePlan := by
  let Q := s2Step162EarlyControlPlan
  have hq := s2Step162EarlyControl_plan_checked
  have fv1 : s2Step162CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step162CompleteOut.fv.payload[2]?.getD s2Step162CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step162CompleteOut.fv.payload[3]?.getD s2Step162CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step162CompleteOut.fv.payload[4]?.getD s2Step162CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step162EntryFBefore s2Step162EarlyControlArena s2Step162FrontBank 188 95 ⟨188,187,96,95⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step162CompleteLog s2Step162FrontPlan Q
    s2Step162Front_checked s2Step162Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step162Complete_owned s2Step162Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step162EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 849 s2Step162CompleteOut.fv.second (s2Step162CompleteOut.fv.payload[2]?.getD s2Step162CompleteOut.fv.sign) (s2Step162CompleteOut.fv.payload[3]?.getD s2Step162CompleteOut.fv.sign) (s2Step162CompleteOut.fv.payload[4]?.getD s2Step162CompleteOut.fv.sign) 803 42 s2Step162EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep162Arena : Arena := s2Step162EntryFBefore
def s2PrivateStep162Bank : WindowBank := s2Step162FrontBank
def s2PrivateStep162Spec : HmrSourceWalkStepLog := ⟨188,95,⟨188,187,96,95⟩,42,.early s2Step162CompleteLog⟩
def s2PrivateStep162Plan : HmrSourceStepPlan := .early s2Step162CompletePlan
theorem s2PrivateStep162_source : s2PrivateStep162Spec=s2ObservedLogs160[2] := rfl
theorem s2PrivateStep162_checked : compileHmrSourceStepLog s2PrivateStep162Arena s2PrivateStep162Bank
    s2PrivateStep162Spec.fgWidth s2PrivateStep162Spec.vWidth s2PrivateStep162Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 162 s2PrivateStep162Spec.need none s2PrivateStep162Spec.log=some s2PrivateStep162Plan := by
  change compileHmrSourceStepLog s2Step162EntryFBefore s2Step162FrontBank 188 95 ⟨188,187,96,95⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 162 42 none (.early s2Step162CompleteLog)=some (.early s2Step162CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 162<498)]
  rw [s2Step162Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
