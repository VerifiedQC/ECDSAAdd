import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep159
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

private def s2Step161CompleteMoves : List (Wire × Wire) := [(785,188),(799,700)]

private def s2Step161EarlyControlLog : HmrEarlyControlLog := ⟨[799, 785, 793, 804, 811],[797],[847],[780, 867, 877, 879, 882, 885],[]⟩

private def s2Step161FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [778]],[[797], [811], [793], [804]],[[], [], [], []]⟩,[803],[849],[847],[780],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[847, 780, 867, 877]⟩

private def s2Step161CompleteLog : HmrEarlyStepLog := ⟨s2Step161FrontLog,s2Step161CompleteMoves,s2Step161EarlyControlLog⟩

private def s2Step161ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699],768⟩

private def s2Step161ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩

private def s2Step161ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187],769⟩

private def s2Step161ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778],771⟩

private def s2Step161FrontOut : WindowBank := ⟨s2Step161ExitFOut,s2Step161ExitGOut,s2Step161ExitFvOut,s2Step161ExitGvOut⟩

private def s2Step161CompleteOut : WindowBank := s2Step161FrontOut.repacked s2Step161CompleteMoves

private def s2Step161EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step161EarlyControlPositiveArena,[797],s2Step161EarlyControlEqualityArena,[847],⟨⟨803,false⟩,[⟨⟨797,false⟩,847⟩]⟩⟩

private def s2Step161EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,799⟩,⟨⟨774,false⟩,785⟩,⟨⟨775,false⟩,793⟩,⟨⟨776,false⟩,804⟩,⟨⟨777,false⟩,811⟩]⟩

private def s2Step161EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step161EarlyControlZeroArena,s2Step161EarlyControlZeroPlan,s2Step161EarlyControlClassPlan,s2Step161EarlyControlFlagArena,s2Step161EarlyControlFittedArena,s2Step161EarlyControlHistoryArena,s2Step161EarlyControlSigmaArena,s2Step161EarlyControlOutputArena,s2Step161EarlyControlLog⟩

private def s2Step161CounterWork : List Wire := [847, 780, 867, 877]

private theorem s2Step161Counter_bounded : s2Step161CounterWork.toFinset⊆arenaWires := by norm_num [s2Step161CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step161HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161CounterDuring : Arena := ⟨s2Step161HeadFvAfter.live∪s2Step161CounterWork.toFinset,Finset.union_subset s2Step161HeadFvAfter.bounded s2Step161Counter_bounded⟩

private def s2Step161EntryFFresh : List Wire := []

private def s2Step161EntryFvFresh : List Wire := []

private def s2Step161EntryGFresh : List Wire := []

private def s2Step161EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161EntryGvFresh : List Wire := [778]

private def s2Step161ExitFExtra : List Wire := [700, 811]

private def s2Step161ExitFvExtra : List Wire := [804]

private def s2Step161ExitGExtra : List Wire := [188, 797]

private def s2Step161ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<700) ∨ (701≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161ExitGvExtra : List Wire := [793]

private def s2Step161Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step161Add0_bounded : s2Step161Add0Work.toFinset⊆arenaWires := by
  have h : s2Step161Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step161Add0During : Arena := ⟨s2Step161Add0Arena.live∪s2Step161Add0Work.toFinset,Finset.union_subset s2Step161Add0Arena.bounded s2Step161Add0_bounded⟩

private def s2Step161Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step161Add1_bounded : s2Step161Add1Work.toFinset⊆arenaWires := by
  have h : s2Step161Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step161Add1During : Arena := ⟨s2Step161Add1Arena.live∪s2Step161Add1Work.toFinset,Finset.union_subset s2Step161Add1Arena.bounded s2Step161Add1_bounded⟩

private def s2Step161F4FlagArena : Arena := ⟨s2Step161HeadFvAfter.live∪{847},Finset.union_subset s2Step161HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step161F4Plan : HmrHybridF4Plan := ⟨s2Step161F4FlagArena,[847],s2Step161Add0Arena,[780],s2Step161Add0During,s2Step161Add0Work,s2Step161Add1During,s2Step161Add1Work⟩

private def s2Step161HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 811],768⟩

private def s2Step161HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804],770⟩

private def s2Step161HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 797],769⟩

private def s2Step161HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 793],771⟩

private def s2Step161FrontHead : WindowBank := ⟨s2Step161HeadFOut,s2Step161HeadGOut,s2Step161HeadFvOut,s2Step161HeadGvOut⟩

private def s2Step161EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700],768⟩

private def s2Step161EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩

private def s2Step161EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],769⟩

private def s2Step161EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778],771⟩

private def s2Step161FrontPair : WindowBank := ⟨s2Step161EntryFOut,s2Step161EntryGOut,s2Step161EntryFvOut,s2Step161EntryGvOut⟩

private def s2Step161FrontSigmaArena : Arena := ⟨s2Step161EntryGvAfter.live∪{803},Finset.union_subset s2Step161EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step161HeadFFresh : List Wire := [811]

private def s2Step161HeadFvFresh : List Wire := [804]

private def s2Step161HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161HeadGFresh : List Wire := [797]

private def s2Step161HeadGvFresh : List Wire := [793]

private def s2Step161FrontPlan : HmrSourceFront := ⟨s2Step161EntryGvAfter,s2Step161FrontPair,(growRow 768 s2Step161EntryFFresh ++ (growRow 769 s2Step161EntryGFresh ++ (growRow 770 s2Step161EntryFvFresh ++ (growRow 771 s2Step161EntryGvFresh ++ [])))),s2Step161FrontSigmaArena,[803],s2Step161HeadGBefore,[849],
  s2Step161HeadFvAfter,s2Step161FrontHead,(growRow 769 s2Step161HeadGFresh ++ (growRow 768 s2Step161HeadFFresh ++ (growRow 771 s2Step161HeadGvFresh ++ (growRow 770 s2Step161HeadFvFresh ++ [])))),s2Step161F4Plan,s2Step161CounterDuring,s2Step161CounterWork,s2Step161ExitGvAfter,s2Step161FrontOut,(shrinkRow 769 s2Step161ExitGExtra ++ (shrinkRow 768 s2Step161ExitFExtra ++ (shrinkRow 770 s2Step161ExitFvExtra ++ (shrinkRow 771 s2Step161ExitGvExtra ++ []))))⟩

private def s2Step161CompletePlan : HmrEarlyStepPlan := ⟨s2Step161FrontPlan,s2Step161EarlyControlArena,s2Step161EarlyControlPlan,s2Step161CompleteMoves⟩

private theorem s2Step161Complete_apart : List.Disjoint (s2Step161CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [803, 849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step161CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[803, 849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step161Complete_owned : (s2Step161CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step161EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step161EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step161CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,700),(701,780),(781,785),(786,793),(794,797),(798,804),(805,811),(812,847),(848,867),(868,877),(878,879),(880,882),(883,885),(886,888),(889,890)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step161CompleteRelocationMove0Borrowed : Arena := ⟨s2Step161ExitGvAfter.live∪{188},Finset.union_subset s2Step161ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step161CompleteRelocationMove1Borrowed : Arena := ⟨s2Step161CompleteRelocationMove0After.live∪{700},Finset.union_subset s2Step161CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step161CompleteRelocation_move0_owned : 785∈s2Step161ExitGvAfter.live := by norm_num [s2Step161ExitGvAfter,arenaWires]

private theorem s2Step161CompleteRelocation_move0_reserve : s2Step161ExitGvAfter.reserve {188}=some s2Step161CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step161ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step161CompleteRelocation_move0_retire : s2Step161CompleteRelocationMove0Borrowed.retireSet {785}=s2Step161CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step161CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step161CompleteRelocationMove0Borrowed,s2Step161ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step161CompleteRelocation_move1_owned : 799∈s2Step161CompleteRelocationMove0After.live := by norm_num [s2Step161CompleteRelocationMove0After,arenaWires]

private theorem s2Step161CompleteRelocation_move1_reserve : s2Step161CompleteRelocationMove0After.reserve {700}=some s2Step161CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step161CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step161CompleteRelocation_move1_retire : s2Step161CompleteRelocationMove1Borrowed.retireSet {799}=s2Step161EarlyControlArena := by
  unfold Arena.retireSet s2Step161EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step161CompleteRelocationMove1Borrowed,s2Step161CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step161CompleteRelocation_checked : s2Step161ExitGvAfter.checkRepack [(785,188),(799,700)]=some s2Step161EarlyControlArena := by
  have tail2 : s2Step161EarlyControlArena.checkRepack []=some s2Step161EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step161CompleteRelocationMove0After s2Step161CompleteRelocationMove1Borrowed s2Step161EarlyControlArena s2Step161EarlyControlArena 799 700 []
    s2Step161CompleteRelocation_move1_owned s2Step161CompleteRelocation_move1_reserve s2Step161CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step161ExitGvAfter s2Step161CompleteRelocationMove0Borrowed s2Step161CompleteRelocationMove0After s2Step161EarlyControlArena 785 188 [(799,700)]
    s2Step161CompleteRelocation_move0_owned s2Step161CompleteRelocation_move0_reserve s2Step161CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step161Complete_repack : s2Step161ExitGvAfter.checkRepack s2Step161CompleteMoves=some s2Step161EarlyControlArena := by
  simpa only [s2Step161CompleteMoves] using s2Step161CompleteRelocation_checked

private theorem s2Step161EarlyControl_branchOwned : ([849] : List Wire).toFinset⊆s2Step161EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step161EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EarlyControl_branch : compileHmrBranchRetirement s2Step161EarlyControlSigmaArena 849=some s2Step161EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step161EarlyControl_branchOwned
  · ext q
    simp [s2Step161EarlyControlOutputArena,s2Step161EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step161EarlyControl_classEqualityBorrow : s2Step161EarlyControlPositiveArena.checkBorrow (([803, 797] : List Wire).length-1) s2Step161EarlyControlLog.classWork=some s2Step161EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step161EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step161EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step161EarlyControlEqualityArena,s2Step161EarlyControlPositiveArena,s2Step161EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step161EarlyControl_classEqualityOwned : ([803, 797] : List Wire).toFinset⊆s2Step161EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step161EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EarlyControl_classEquality : compileHmrEqualityLog s2Step161EarlyControlPositiveArena [803, 797] 0 s2Step161EarlyControlLog.classWork=some (s2Step161EarlyControlEqualityArena,s2Step161EarlyControlLog.classWork,s2Step161EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step161EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step161EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step161EarlyControl_classOwned : ([777, 811, 803] : List Wire).toFinset⊆s2Step161EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step161EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EarlyControl_positiveBorrow : s2Step161EarlyControlZeroArena.checkBorrow (1) s2Step161EarlyControlLog.positiveWork=some s2Step161EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step161EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step161EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step161EarlyControlPositiveArena,s2Step161EarlyControlZeroArena,s2Step161EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step161EarlyControl_class : compileHmrSourceClassLog s2Step161EarlyControlZeroArena false 777 s2Step161EarlyControlZeroPlan.top 0 803 s2Step161EarlyControlLog.positiveWork s2Step161EarlyControlLog.classWork=some s2Step161EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step161EarlyControlClassPlan s2Step161EarlyControlZeroArena false 777 s2Step161EarlyControlZeroPlan.top 0 803
  constructor
  · decide +kernel
  · exact s2Step161EarlyControl_classOwned
  · exact s2Step161EarlyControl_positiveBorrow
  · exact s2Step161EarlyControl_classEquality

private theorem s2Step161EarlyControl_entryRecordOwned : ([849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step161EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step161EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EarlyControl_entrySigmaOwned : ([803, 254] : List Wire).toFinset⊆s2Step161EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step161EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EarlyControl_fitBorrow : s2Step161EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step161EarlyControlLog.recordFresh=some s2Step161EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step161EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step161EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step161EarlyControlFittedArena,s2Step161EarlyControlFlagArena,s2Step161EarlyControlLog,arenaWires]

private theorem s2Step161EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step161EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step161EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EarlyControl_fit : compileHmrRecordGrowLog s2Step161EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step161EarlyControlLog.recordFresh=some s2Step161EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step161EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step161EarlyControl_fitBorrow

private theorem s2Step161EarlyControl_flagsBorrow : s2Step161EarlyControlEqualityArena.checkBorrow (6) s2Step161EarlyControlLog.flagWork=some s2Step161EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step161EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step161EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step161EarlyControlFlagArena,s2Step161EarlyControlEqualityArena,s2Step161EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step161EarlyControl_flagsOwned : ([847, 253, 252, 251] : List Wire).toFinset⊆s2Step161EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step161EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EarlyControl_flags : compileHmrFlagsLog s2Step161EarlyControlClassPlan.equalityArena s2Step161EarlyControlClassPlan.equality.top 253 252 251 s2Step161EarlyControlLog.flagWork=some s2Step161EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step161EarlyControl_flagsOwned⟩
  · exact s2Step161EarlyControl_flagsBorrow

private theorem s2Step161EarlyControl_historyBorrow : s2Step161EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step161EarlyControlLog.recordFresh=some s2Step161EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step161EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step161EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step161EarlyControlHistoryArena,s2Step161EarlyControlArena,s2Step161EarlyControlLog,arenaWires]

private theorem s2Step161EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step161EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step161EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EarlyControl_history : compileHmrRecordGrowLog s2Step161EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step161EarlyControlLog.recordFresh=some s2Step161EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step161EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step161EarlyControl_historyBorrow

private theorem s2Step161EarlyControl_sigmaOwned : ([254, 803] : List Wire).toFinset⊆s2Step161EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step161EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EarlyControl_sigmaReleaseOwned : ([803] : List Wire).toFinset⊆s2Step161EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step161EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EarlyControl_sigmaRelease : s2Step161EarlyControlHistoryArena.release {803} (fun _ => false)=some s2Step161EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step161EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step161EarlyControlSigmaArena,s2Step161EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step161EarlyControl_sigma : compileHmrSigmaDropLog s2Step161EarlyControlHistoryArena false 0 0 254 803 []=some s2Step161EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step161EarlyControl_sigmaOwned⟩
  · exact s2Step161EarlyControl_sigmaRelease

private theorem s2Step161EarlyControl_zeroBorrow : s2Step161EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step161EarlyControlLog.zeroWork=some s2Step161EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step161EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step161EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step161EarlyControlZeroArena,s2Step161EarlyControlArena,s2Step161EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step161EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step161EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step161EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<799) ∨ (800≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EarlyControl_zero : compileHmrEqualityLog s2Step161EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step161EarlyControlLog.zeroWork=some (s2Step161EarlyControlZeroArena,s2Step161EarlyControlLog.zeroWork,s2Step161EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step161EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step161EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step161EarlyControl_logged : s2Step161EarlyControlPlan.Logged s2Step161EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 803 254 253 252 251 849 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step161EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step161EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step161EarlyControl_zero
  · exact s2Step161EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step161EarlyControl_flags
  · exact s2Step161EarlyControl_fit
  · exact s2Step161EarlyControl_history
  · exact s2Step161EarlyControl_sigma
  · exact s2Step161EarlyControl_branch

private theorem s2Step161EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step161EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 803 254 253 252 251 849 42 s2Step161EarlyControlLog=some s2Step161EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step161EarlyControlPlan s2Step161EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 803 254 253 252 251 849 42 s2Step161EarlyControl_logged

private def s2Step161EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700],768⟩

private def s2Step161EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩

private def s2Step161EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],769⟩

private def s2Step161EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798],771⟩

private def s2Step161FrontBank : WindowBank := ⟨s2Step161EntryFRow,s2Step161EntryGRow,s2Step161EntryFvRow,s2Step161EntryGvRow⟩

private def s2Step161Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 811, 768]

private def s2Step161Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 797, 769]

private def s2Step161Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804, 770]

private def s2Step161Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 793, 771]

private theorem s2Step161Counter_apart : Disjoint s2Step161HeadFvAfter.live s2Step161CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step161HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161Counter_borrowed : s2Step161HeadFvAfter.checkBorrow 4 s2Step161CounterWork=some s2Step161CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step161HeadFvAfter s2Step161CounterDuring s2Step161CounterWork.toFinset s2Step161Counter_bounded s2Step161Counter_apart rfl

private theorem s2Step161Counter_owned : (803::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step161HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step161HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161Counter_checked : compileHmrCounterStepLog s2Step161HeadFvAfter true 803 [772, 773, 774, 775, 776, 777] s2Step161CounterWork=some s2Step161CounterDuring := by
  have owned : ∀q∈803::[772, 773, 774, 775, 776, 777],q∈s2Step161HeadFvAfter.live := fun q hq => s2Step161Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step161Counter_borrowed

private def s2Step161EntryFAfter : Arena := s2Step161EntryFBefore

private theorem s2Step161EntryBank_incomingDistinct : ([s2Step161EntryFRow,s2Step161EntryGRow,s2Step161EntryFvRow,s2Step161EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161EntryF_Incoming : rowsOwned s2Step161EntryFBefore [s2Step161EntryFRow,s2Step161EntryGRow,s2Step161EntryFvRow,s2Step161EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step161EntryFRow,s2Step161EntryGRow,s2Step161EntryFvRow,s2Step161EntryGvRow] 0 s2Step161EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step161EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161EntryBank_outgoingOwned : rowsOwned s2Step161EntryGvAfter [s2Step161EntryFOut,s2Step161EntryGOut,s2Step161EntryFvOut,s2Step161EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step161EntryGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161EntryF_Outgoing : rowsOwned s2Step161EntryGvAfter [s2Step161EntryFOut,s2Step161EntryGOut,s2Step161EntryFvOut,s2Step161EntryGvOut] :=
  hmrRows_owned_drop s2Step161EntryGvAfter [s2Step161EntryFOut,s2Step161EntryGOut,s2Step161EntryFvOut,s2Step161EntryGvOut] 0 s2Step161EntryBank_outgoingOwned

private theorem s2Step161EntryF_distinct : (s2Step161EntryFRow.sign::s2Step161EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161EntryF_owned : (s2Step161EntryFRow.sign::s2Step161EntryFRow.payload).toFinset⊆s2Step161EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step161EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EntryF_reserved : s2Step161EntryFBefore.reserve s2Step161EntryFFresh.toFinset=some s2Step161EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step161EntryFFresh,arenaWires]
  · norm_num [s2Step161EntryFBefore,s2Step161EntryFFresh,arenaWires]
  · simp only [s2Step161EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step161EntryF_checked : planRowResizeLog s2Step161EntryFBefore s2Step161EntryFRow 189 s2Step161EntryFFresh=
    some (s2Step161EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700],768⟩,growRow 768 s2Step161EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step161EntryFBefore s2Step161EntryFAfter s2Step161EntryFRow 189 s2Step161EntryFFresh
    s2Step161EntryF_distinct s2Step161EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step161EntryF_reserved
  have rowEq : WindowRow.mk (s2Step161EntryFRow.payload++s2Step161EntryFFresh) s2Step161EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step161EntryFvAfter : Arena := s2Step161EntryFBefore

private def s2Step161EntryFvBefore : Arena := s2Step161EntryFBefore

private theorem s2Step161EntryFv_Incoming : rowsOwned s2Step161EntryFvBefore [s2Step161EntryFvRow,s2Step161EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step161EntryFRow,s2Step161EntryGRow,s2Step161EntryFvRow,s2Step161EntryGvRow] 2 s2Step161EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step161EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161EntryFv_Outgoing : rowsOwned s2Step161EntryGvAfter [s2Step161EntryFvOut,s2Step161EntryGvOut] :=
  hmrRows_owned_drop s2Step161EntryGvAfter [s2Step161EntryFOut,s2Step161EntryGOut,s2Step161EntryFvOut,s2Step161EntryGvOut] 2 s2Step161EntryBank_outgoingOwned

private theorem s2Step161EntryFv_distinct : (s2Step161EntryFvRow.sign::s2Step161EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161EntryFv_owned : (s2Step161EntryFvRow.sign::s2Step161EntryFvRow.payload).toFinset⊆s2Step161EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step161EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EntryFv_reserved : s2Step161EntryFvBefore.reserve s2Step161EntryFvFresh.toFinset=some s2Step161EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step161EntryFvFresh,arenaWires]
  · norm_num [s2Step161EntryFvBefore,s2Step161EntryFBefore,s2Step161EntryFvFresh,arenaWires]
  · simp only [s2Step161EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step161EntryFv_checked : planRowResizeLog s2Step161EntryFvBefore s2Step161EntryFvRow 95 s2Step161EntryFvFresh=
    some (s2Step161EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩,growRow 770 s2Step161EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step161EntryFvBefore s2Step161EntryFvAfter s2Step161EntryFvRow 95 s2Step161EntryFvFresh
    s2Step161EntryFv_distinct s2Step161EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step161EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step161EntryFvRow.payload++s2Step161EntryFvFresh) s2Step161EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step161EntryGAfter : Arena := s2Step161EntryFBefore

private def s2Step161EntryGBefore : Arena := s2Step161EntryFBefore

private theorem s2Step161EntryG_Incoming : rowsOwned s2Step161EntryGBefore [s2Step161EntryGRow,s2Step161EntryFvRow,s2Step161EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step161EntryFRow,s2Step161EntryGRow,s2Step161EntryFvRow,s2Step161EntryGvRow] 1 s2Step161EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step161EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161EntryG_Outgoing : rowsOwned s2Step161EntryGvAfter [s2Step161EntryGOut,s2Step161EntryFvOut,s2Step161EntryGvOut] :=
  hmrRows_owned_drop s2Step161EntryGvAfter [s2Step161EntryFOut,s2Step161EntryGOut,s2Step161EntryFvOut,s2Step161EntryGvOut] 1 s2Step161EntryBank_outgoingOwned

private theorem s2Step161EntryG_distinct : (s2Step161EntryGRow.sign::s2Step161EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161EntryG_owned : (s2Step161EntryGRow.sign::s2Step161EntryGRow.payload).toFinset⊆s2Step161EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step161EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EntryG_reserved : s2Step161EntryGBefore.reserve s2Step161EntryGFresh.toFinset=some s2Step161EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step161EntryGFresh,arenaWires]
  · norm_num [s2Step161EntryGBefore,s2Step161EntryFBefore,s2Step161EntryGFresh,arenaWires]
  · simp only [s2Step161EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step161EntryG_checked : planRowResizeLog s2Step161EntryGBefore s2Step161EntryGRow 189 s2Step161EntryGFresh=
    some (s2Step161EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],769⟩,growRow 769 s2Step161EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step161EntryGBefore s2Step161EntryGAfter s2Step161EntryGRow 189 s2Step161EntryGFresh
    s2Step161EntryG_distinct s2Step161EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step161EntryG_reserved
  have rowEq : WindowRow.mk (s2Step161EntryGRow.payload++s2Step161EntryGFresh) s2Step161EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step161EntryGvBefore : Arena := s2Step161EntryFBefore

private theorem s2Step161EntryGv_Incoming : rowsOwned s2Step161EntryGvBefore [s2Step161EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step161EntryFRow,s2Step161EntryGRow,s2Step161EntryFvRow,s2Step161EntryGvRow] 3 s2Step161EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step161EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161EntryGv_Outgoing : rowsOwned s2Step161EntryGvAfter [s2Step161EntryGvOut] :=
  hmrRows_owned_drop s2Step161EntryGvAfter [s2Step161EntryFOut,s2Step161EntryGOut,s2Step161EntryFvOut,s2Step161EntryGvOut] 3 s2Step161EntryBank_outgoingOwned

private theorem s2Step161EntryGv_distinct : (s2Step161EntryGvRow.sign::s2Step161EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161EntryGv_owned : (s2Step161EntryGvRow.sign::s2Step161EntryGvRow.payload).toFinset⊆s2Step161EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step161EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161EntryGv_reserved : s2Step161EntryGvBefore.reserve s2Step161EntryGvFresh.toFinset=some s2Step161EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step161EntryGvFresh,arenaWires]
  · norm_num [s2Step161EntryGvBefore,s2Step161EntryFBefore,s2Step161EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step161EntryGvAfter,s2Step161EntryGvBefore,s2Step161EntryFBefore,s2Step161EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step161EntryGv_checked : planRowResizeLog s2Step161EntryGvBefore s2Step161EntryGvRow 95 s2Step161EntryGvFresh=
    some (s2Step161EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778],771⟩,growRow 771 s2Step161EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step161EntryGvBefore s2Step161EntryGvAfter s2Step161EntryGvRow 95 s2Step161EntryGvFresh
    s2Step161EntryGv_distinct s2Step161EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step161EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step161EntryGvRow.payload++s2Step161EntryGvFresh) s2Step161EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step161EntryBank_rows : planWindowRowsLog s2Step161EntryFBefore [(s2Step161EntryFRow,189),(s2Step161EntryGRow,189),(s2Step161EntryFvRow,95),(s2Step161EntryGvRow,95)] [s2Step161EntryFFresh,s2Step161EntryGFresh,s2Step161EntryFvFresh,s2Step161EntryGvFresh]=
    some (s2Step161EntryGvAfter,[s2Step161EntryFOut,s2Step161EntryGOut,s2Step161EntryFvOut,s2Step161EntryGvOut],(growRow 768 s2Step161EntryFFresh ++ (growRow 769 s2Step161EntryGFresh ++ (growRow 770 s2Step161EntryFvFresh ++ (growRow 771 s2Step161EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step161EntryGvAfter [] []=some (s2Step161EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step161EntryGvBefore s2Step161EntryGvAfter s2Step161EntryGvAfter
    s2Step161EntryGvRow s2Step161EntryGvOut 95 s2Step161EntryGvFresh [] [] []
    (growRow 771 s2Step161EntryGvFresh) ([]) s2Step161EntryGv_Incoming s2Step161EntryGv_checked h4 s2Step161EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step161EntryFvBefore s2Step161EntryFvAfter s2Step161EntryGvAfter
    s2Step161EntryFvRow s2Step161EntryFvOut 95 s2Step161EntryFvFresh [(s2Step161EntryGvRow,95)] [s2Step161EntryGvFresh] [s2Step161EntryGvOut]
    (growRow 770 s2Step161EntryFvFresh) ((growRow 771 s2Step161EntryGvFresh ++ [])) s2Step161EntryFv_Incoming s2Step161EntryFv_checked h3 s2Step161EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step161EntryGBefore s2Step161EntryGAfter s2Step161EntryGvAfter
    s2Step161EntryGRow s2Step161EntryGOut 189 s2Step161EntryGFresh [(s2Step161EntryFvRow,95),(s2Step161EntryGvRow,95)] [s2Step161EntryFvFresh,s2Step161EntryGvFresh] [s2Step161EntryFvOut,s2Step161EntryGvOut]
    (growRow 769 s2Step161EntryGFresh) ((growRow 770 s2Step161EntryFvFresh ++ (growRow 771 s2Step161EntryGvFresh ++ []))) s2Step161EntryG_Incoming s2Step161EntryG_checked h2 s2Step161EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step161EntryFBefore s2Step161EntryFAfter s2Step161EntryGvAfter
    s2Step161EntryFRow s2Step161EntryFOut 189 s2Step161EntryFFresh [(s2Step161EntryGRow,189),(s2Step161EntryFvRow,95),(s2Step161EntryGvRow,95)] [s2Step161EntryGFresh,s2Step161EntryFvFresh,s2Step161EntryGvFresh] [s2Step161EntryGOut,s2Step161EntryFvOut,s2Step161EntryGvOut]
    (growRow 768 s2Step161EntryFFresh) ((growRow 769 s2Step161EntryGFresh ++ (growRow 770 s2Step161EntryFvFresh ++ (growRow 771 s2Step161EntryGvFresh ++ [])))) s2Step161EntryF_Incoming s2Step161EntryF_checked h1 s2Step161EntryF_Outgoing
  exact h0

private theorem s2Step161EntryBank_checked : compileHmrBankResizeLog .entry s2Step161EntryFBefore ⟨s2Step161EntryFRow,s2Step161EntryGRow,s2Step161EntryFvRow,s2Step161EntryGvRow⟩ ⟨189,189,95,95⟩ [s2Step161EntryFFresh,s2Step161EntryGFresh,s2Step161EntryFvFresh,s2Step161EntryGvFresh]=
    some (s2Step161EntryGvAfter,⟨s2Step161EntryFOut,s2Step161EntryGOut,s2Step161EntryFvOut,s2Step161EntryGvOut⟩,(growRow 768 s2Step161EntryFFresh ++ (growRow 769 s2Step161EntryGFresh ++ (growRow 770 s2Step161EntryFvFresh ++ (growRow 771 s2Step161EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step161EntryBank_rows]
  rfl

private def s2Step161ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<700) ∨ (701≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161ExitFBefore : Arena := s2Step161ExitGAfter

private def s2Step161ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 811],768⟩

private def s2Step161ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804],770⟩

private def s2Step161ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 797],769⟩

private def s2Step161ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 793],771⟩

private theorem s2Step161ExitBank_incomingDistinct : ([s2Step161ExitGRow,s2Step161ExitFRow,s2Step161ExitFvRow,s2Step161ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161ExitF_Incoming : rowsOwned s2Step161ExitFBefore [s2Step161ExitFRow,s2Step161ExitFvRow,s2Step161ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step161ExitGRow,s2Step161ExitFRow,s2Step161ExitFvRow,s2Step161ExitGvRow] 1 s2Step161ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step161ExitFBefore (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161ExitBank_outgoingOwned : rowsOwned s2Step161ExitGvAfter [s2Step161ExitGOut,s2Step161ExitFOut,s2Step161ExitFvOut,s2Step161ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step161ExitGvAfter (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<700) ∨ (701≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161ExitF_Outgoing : rowsOwned s2Step161ExitGvAfter [s2Step161ExitFOut,s2Step161ExitFvOut,s2Step161ExitGvOut] :=
  hmrRows_owned_drop s2Step161ExitGvAfter [s2Step161ExitGOut,s2Step161ExitFOut,s2Step161ExitFvOut,s2Step161ExitGvOut] 1 s2Step161ExitBank_outgoingOwned

private theorem s2Step161ExitF_distinct : (s2Step161ExitFRow.sign::s2Step161ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161ExitF_owned : (s2Step161ExitFRow.sign::s2Step161ExitFRow.payload).toFinset⊆s2Step161ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step161ExitFBefore (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161ExitF_retired : s2Step161ExitFBefore.retireSet s2Step161ExitFExtra.toFinset=s2Step161ExitFAfter := by
  unfold Arena.retireSet s2Step161ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step161ExitFBefore,s2Step161ExitGAfter,s2Step161ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step161ExitF_checked : planRowResizeLog s2Step161ExitFBefore s2Step161ExitFRow 188 []=
    some (s2Step161ExitFAfter,s2Step161ExitFOut,shrinkRow 768 s2Step161ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step161ExitFBefore s2Step161ExitFRow 188 s2Step161ExitF_distinct s2Step161ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step161ExitFRow.payload.take 188) s2Step161ExitFRow.sign=s2Step161ExitFOut := by decide +kernel
  have hi : s2Step161ExitFRow.payload.drop 188=s2Step161ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step161ExitF_retired] at result
  exact result

private def s2Step161ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<700) ∨ (701≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161ExitFvBefore : Arena := s2Step161ExitFAfter

private theorem s2Step161ExitFv_Incoming : rowsOwned s2Step161ExitFvBefore [s2Step161ExitFvRow,s2Step161ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step161ExitGRow,s2Step161ExitFRow,s2Step161ExitFvRow,s2Step161ExitGvRow] 2 s2Step161ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step161ExitFvBefore (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<700) ∨ (701≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161ExitFv_Outgoing : rowsOwned s2Step161ExitGvAfter [s2Step161ExitFvOut,s2Step161ExitGvOut] :=
  hmrRows_owned_drop s2Step161ExitGvAfter [s2Step161ExitGOut,s2Step161ExitFOut,s2Step161ExitFvOut,s2Step161ExitGvOut] 2 s2Step161ExitBank_outgoingOwned

private theorem s2Step161ExitFv_distinct : (s2Step161ExitFvRow.sign::s2Step161ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161ExitFv_owned : (s2Step161ExitFvRow.sign::s2Step161ExitFvRow.payload).toFinset⊆s2Step161ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step161ExitFvBefore (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<700) ∨ (701≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161ExitFv_retired : s2Step161ExitFvBefore.retireSet s2Step161ExitFvExtra.toFinset=s2Step161ExitFvAfter := by
  unfold Arena.retireSet s2Step161ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step161ExitFvBefore,s2Step161ExitFAfter,s2Step161ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step161ExitFv_checked : planRowResizeLog s2Step161ExitFvBefore s2Step161ExitFvRow 95 []=
    some (s2Step161ExitFvAfter,s2Step161ExitFvOut,shrinkRow 770 s2Step161ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step161ExitFvBefore s2Step161ExitFvRow 95 s2Step161ExitFv_distinct s2Step161ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step161ExitFvRow.payload.take 95) s2Step161ExitFvRow.sign=s2Step161ExitFvOut := by decide +kernel
  have hi : s2Step161ExitFvRow.payload.drop 95=s2Step161ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step161ExitFv_retired] at result
  exact result

private def s2Step161ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step161ExitG_Incoming : rowsOwned s2Step161ExitGBefore [s2Step161ExitGRow,s2Step161ExitFRow,s2Step161ExitFvRow,s2Step161ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step161ExitGRow,s2Step161ExitFRow,s2Step161ExitFvRow,s2Step161ExitGvRow] 0 s2Step161ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step161ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161ExitG_Outgoing : rowsOwned s2Step161ExitGvAfter [s2Step161ExitGOut,s2Step161ExitFOut,s2Step161ExitFvOut,s2Step161ExitGvOut] :=
  hmrRows_owned_drop s2Step161ExitGvAfter [s2Step161ExitGOut,s2Step161ExitFOut,s2Step161ExitFvOut,s2Step161ExitGvOut] 0 s2Step161ExitBank_outgoingOwned

private theorem s2Step161ExitG_distinct : (s2Step161ExitGRow.sign::s2Step161ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161ExitG_owned : (s2Step161ExitGRow.sign::s2Step161ExitGRow.payload).toFinset⊆s2Step161ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step161ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161ExitG_retired : s2Step161ExitGBefore.retireSet s2Step161ExitGExtra.toFinset=s2Step161ExitGAfter := by
  unfold Arena.retireSet s2Step161ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step161ExitGBefore,s2Step161ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step161ExitG_checked : planRowResizeLog s2Step161ExitGBefore s2Step161ExitGRow 188 []=
    some (s2Step161ExitGAfter,s2Step161ExitGOut,shrinkRow 769 s2Step161ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step161ExitGBefore s2Step161ExitGRow 188 s2Step161ExitG_distinct s2Step161ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step161ExitGRow.payload.take 188) s2Step161ExitGRow.sign=s2Step161ExitGOut := by decide +kernel
  have hi : s2Step161ExitGRow.payload.drop 188=s2Step161ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step161ExitG_retired] at result
  exact result

private def s2Step161ExitGvBefore : Arena := s2Step161ExitFvAfter

private theorem s2Step161ExitGv_Incoming : rowsOwned s2Step161ExitGvBefore [s2Step161ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step161ExitGRow,s2Step161ExitFRow,s2Step161ExitFvRow,s2Step161ExitGvRow] 3 s2Step161ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step161ExitGvBefore (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<700) ∨ (701≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161ExitGv_Outgoing : rowsOwned s2Step161ExitGvAfter [s2Step161ExitGvOut] :=
  hmrRows_owned_drop s2Step161ExitGvAfter [s2Step161ExitGOut,s2Step161ExitFOut,s2Step161ExitFvOut,s2Step161ExitGvOut] 3 s2Step161ExitBank_outgoingOwned

private theorem s2Step161ExitGv_distinct : (s2Step161ExitGvRow.sign::s2Step161ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161ExitGv_owned : (s2Step161ExitGvRow.sign::s2Step161ExitGvRow.payload).toFinset⊆s2Step161ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step161ExitGvBefore (fun q => (0≤q ∧ q<188) ∨ (189≤q ∧ q<700) ∨ (701≤q ∧ q<780) ∨ (781≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161ExitGv_retired : s2Step161ExitGvBefore.retireSet s2Step161ExitGvExtra.toFinset=s2Step161ExitGvAfter := by
  unfold Arena.retireSet s2Step161ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step161ExitGvBefore,s2Step161ExitFvAfter,s2Step161ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step161ExitGv_checked : planRowResizeLog s2Step161ExitGvBefore s2Step161ExitGvRow 95 []=
    some (s2Step161ExitGvAfter,s2Step161ExitGvOut,shrinkRow 771 s2Step161ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step161ExitGvBefore s2Step161ExitGvRow 95 s2Step161ExitGv_distinct s2Step161ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step161ExitGvRow.payload.take 95) s2Step161ExitGvRow.sign=s2Step161ExitGvOut := by decide +kernel
  have hi : s2Step161ExitGvRow.payload.drop 95=s2Step161ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step161ExitGv_retired] at result
  exact result

private theorem s2Step161ExitBank_rows : planWindowRowsLog s2Step161ExitGBefore [(s2Step161ExitGRow,188),(s2Step161ExitFRow,188),(s2Step161ExitFvRow,95),(s2Step161ExitGvRow,95)] [[],[],[],[]]=
    some (s2Step161ExitGvAfter,[s2Step161ExitGOut,s2Step161ExitFOut,s2Step161ExitFvOut,s2Step161ExitGvOut],(shrinkRow 769 s2Step161ExitGExtra ++ (shrinkRow 768 s2Step161ExitFExtra ++ (shrinkRow 770 s2Step161ExitFvExtra ++ (shrinkRow 771 s2Step161ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step161ExitGvAfter [] []=some (s2Step161ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step161ExitGvBefore s2Step161ExitGvAfter s2Step161ExitGvAfter
    s2Step161ExitGvRow s2Step161ExitGvOut 95 [] [] [] []
    (shrinkRow 771 s2Step161ExitGvExtra) ([]) s2Step161ExitGv_Incoming s2Step161ExitGv_checked h4 s2Step161ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step161ExitFvBefore s2Step161ExitFvAfter s2Step161ExitGvAfter
    s2Step161ExitFvRow s2Step161ExitFvOut 95 [] [(s2Step161ExitGvRow,95)] [[]] [s2Step161ExitGvOut]
    (shrinkRow 770 s2Step161ExitFvExtra) ((shrinkRow 771 s2Step161ExitGvExtra ++ [])) s2Step161ExitFv_Incoming s2Step161ExitFv_checked h3 s2Step161ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step161ExitFBefore s2Step161ExitFAfter s2Step161ExitGvAfter
    s2Step161ExitFRow s2Step161ExitFOut 188 [] [(s2Step161ExitFvRow,95),(s2Step161ExitGvRow,95)] [[],[]] [s2Step161ExitFvOut,s2Step161ExitGvOut]
    (shrinkRow 768 s2Step161ExitFExtra) ((shrinkRow 770 s2Step161ExitFvExtra ++ (shrinkRow 771 s2Step161ExitGvExtra ++ []))) s2Step161ExitF_Incoming s2Step161ExitF_checked h2 s2Step161ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step161ExitGBefore s2Step161ExitGAfter s2Step161ExitGvAfter
    s2Step161ExitGRow s2Step161ExitGOut 188 [] [(s2Step161ExitFRow,188),(s2Step161ExitFvRow,95),(s2Step161ExitGvRow,95)] [[],[],[]] [s2Step161ExitFOut,s2Step161ExitFvOut,s2Step161ExitGvOut]
    (shrinkRow 769 s2Step161ExitGExtra) ((shrinkRow 768 s2Step161ExitFExtra ++ (shrinkRow 770 s2Step161ExitFvExtra ++ (shrinkRow 771 s2Step161ExitGvExtra ++ [])))) s2Step161ExitG_Incoming s2Step161ExitG_checked h1 s2Step161ExitG_Outgoing
  exact h0

private theorem s2Step161ExitBank_checked : compileHmrBankResizeLog .exit s2Step161ExitGBefore ⟨s2Step161ExitFRow,s2Step161ExitGRow,s2Step161ExitFvRow,s2Step161ExitGvRow⟩ ⟨188,188,95,95⟩ [[],[],[],[]]=
    some (s2Step161ExitGvAfter,⟨s2Step161ExitFOut,s2Step161ExitGOut,s2Step161ExitFvOut,s2Step161ExitGvOut⟩,(shrinkRow 769 s2Step161ExitGExtra ++ (shrinkRow 768 s2Step161ExitFExtra ++ (shrinkRow 770 s2Step161ExitFvExtra ++ (shrinkRow 771 s2Step161ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step161ExitBank_rows]
  rfl

private theorem s2Step161Add0_apart : Disjoint s2Step161Add0Arena.live s2Step161Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step161Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161Add0_card : s2Step161Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step161Add0_borrowed : s2Step161Add0Arena.checkBorrow (hmrHybridCount s2Step161Add0Arena s2Step161Add0B.length) s2Step161Add0Work=some s2Step161Add0During := by
  have len : s2Step161Add0Work.length=hmrHybridCount s2Step161Add0Arena s2Step161Add0B.length := by
    rw [hmrHybridCount,s2Step161Add0_card]
    decide +kernel
  have nd : s2Step161Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step161Add0Arena s2Step161Add0During s2Step161Add0Work.toFinset s2Step161Add0_bounded s2Step161Add0_apart rfl

private theorem s2Step161Add0_distinct : (847::849::780::(s2Step161Add0A++s2Step161Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161Add0_owned : (847::849::780::(s2Step161Add0A++s2Step161Add0B)).toFinset⊆s2Step161Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step161Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161Add0_checked : compileHmrHybridCinLog s2Step161Add0Arena 849 847 780 s2Step161Add0A s2Step161Add0B s2Step161Add0Work=some s2Step161Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step161Add0Arena s2Step161Add0During 849 847 780 s2Step161Add0A s2Step161Add0B s2Step161Add0Work
    (by decide +kernel) (by decide +kernel) s2Step161Add0_distinct
    (fun q hq => s2Step161Add0_owned (List.mem_toFinset.mpr hq)) s2Step161Add0_borrowed

private theorem s2Step161Add1_apart : Disjoint s2Step161Add1Arena.live s2Step161Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step161Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161Add1_card : s2Step161Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step161Add1_borrowed : s2Step161Add1Arena.checkBorrow (hmrHybridCount s2Step161Add1Arena s2Step161Add1B.length) s2Step161Add1Work=some s2Step161Add1During := by
  have len : s2Step161Add1Work.length=hmrHybridCount s2Step161Add1Arena s2Step161Add1B.length := by
    rw [hmrHybridCount,s2Step161Add1_card]
    decide +kernel
  have nd : s2Step161Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step161Add1Arena s2Step161Add1During s2Step161Add1Work.toFinset s2Step161Add1_bounded s2Step161Add1_apart rfl

private theorem s2Step161Add1_distinct : (847::849::780::(s2Step161Add1A++s2Step161Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161Add1_owned : (847::849::780::(s2Step161Add1A++s2Step161Add1B)).toFinset⊆s2Step161Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step161Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161Add1_checked : compileHmrHybridCinLog s2Step161Add1Arena 849 847 780 s2Step161Add1A s2Step161Add1B s2Step161Add1Work=some s2Step161Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step161Add1Arena s2Step161Add1During 849 847 780 s2Step161Add1A s2Step161Add1B s2Step161Add1Work
    (by decide +kernel) (by decide +kernel) s2Step161Add1_distinct
    (fun q hq => s2Step161Add1_owned (List.mem_toFinset.mpr hq)) s2Step161Add1_borrowed

private theorem s2Step161F4_apart : Disjoint (s2Step161Add0A++s2Step161Add0B).toFinset (s2Step161Add1A++s2Step161Add1B).toFinset := by
  have nd : ((s2Step161Add0A++s2Step161Add0B)++(s2Step161Add1A++s2Step161Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step161F4_carry : s2Step161F4FlagArena.checkBorrow 1 [780]=some s2Step161Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step161F4FlagArena,s2Step161HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step161F4FlagArena,s2Step161HeadFvAfter,s2Step161Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step161F4_distinct : (803::849::847::780::((s2Step161Add0A++s2Step161Add1A)++(s2Step161Add0B++s2Step161Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161F4_flag : s2Step161HeadFvAfter.checkBorrow 1 [847]=some s2Step161F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step161HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step161F4_owned : (803::849::((s2Step161Add0A++s2Step161Add1A)++(s2Step161Add0B++s2Step161Add1B))).toFinset⊆s2Step161HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step161HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161F4_checked : compileHmrHybridF4Log s2Step161HeadFvAfter 803 849 s2Step161Add0A s2Step161Add0B s2Step161Add1A s2Step161Add1B [847] [780] s2Step161Add0Work s2Step161Add1Work=some s2Step161F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step161HeadFvAfter s2Step161F4FlagArena s2Step161Add0Arena s2Step161Add0During s2Step161Add1During 803 849
    s2Step161Add0A s2Step161Add0B s2Step161Add1A s2Step161Add1B [847] [780] s2Step161Add0Work s2Step161Add1Work
    (fun q hq => s2Step161F4_owned (List.mem_toFinset.mpr hq)) s2Step161F4_flag s2Step161F4_carry
    s2Step161F4_distinct s2Step161F4_apart s2Step161Add0_checked s2Step161Add1_checked

private theorem s2Step161Front_branch : s2Step161FrontSigmaArena.checkBorrow 1 [849]=some s2Step161HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step161FrontSigmaArena,s2Step161EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step161FrontSigmaArena,s2Step161EntryGvAfter,s2Step161HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step161Front_entry : HmrFrontEntryValid s2Step161EntryFBefore s2Step161FrontBank 189 95 ⟨188,188,95,95⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step161FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step161EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step161EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step161FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step161Front_sigma : s2Step161EntryGvAfter.checkBorrow 1 [803]=some s2Step161FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step161EntryGvAfter,arenaWires]
  · rfl

private def s2Step161HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161HeadFBefore : Arena := s2Step161HeadGAfter

private def s2Step161HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700],768⟩

private def s2Step161HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩

private def s2Step161HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],769⟩

private def s2Step161HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778],771⟩

private theorem s2Step161HeadBank_incomingDistinct : ([s2Step161HeadGRow,s2Step161HeadFRow,s2Step161HeadGvRow,s2Step161HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161HeadF_Incoming : rowsOwned s2Step161HeadFBefore [s2Step161HeadFRow,s2Step161HeadGvRow,s2Step161HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step161HeadGRow,s2Step161HeadFRow,s2Step161HeadGvRow,s2Step161HeadFvRow] 1 s2Step161HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step161HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161HeadBank_outgoingOwned : rowsOwned s2Step161HeadFvAfter [s2Step161HeadGOut,s2Step161HeadFOut,s2Step161HeadGvOut,s2Step161HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step161HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161HeadF_Outgoing : rowsOwned s2Step161HeadFvAfter [s2Step161HeadFOut,s2Step161HeadGvOut,s2Step161HeadFvOut] :=
  hmrRows_owned_drop s2Step161HeadFvAfter [s2Step161HeadGOut,s2Step161HeadFOut,s2Step161HeadGvOut,s2Step161HeadFvOut] 1 s2Step161HeadBank_outgoingOwned

private theorem s2Step161HeadF_distinct : (s2Step161HeadFRow.sign::s2Step161HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161HeadF_owned : (s2Step161HeadFRow.sign::s2Step161HeadFRow.payload).toFinset⊆s2Step161HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step161HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161HeadF_reserved : s2Step161HeadFBefore.reserve s2Step161HeadFFresh.toFinset=some s2Step161HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step161HeadFFresh,arenaWires]
  · norm_num [s2Step161HeadFBefore,s2Step161HeadGAfter,s2Step161HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step161HeadFAfter,s2Step161HeadFBefore,s2Step161HeadGAfter,s2Step161HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step161HeadF_checked : planRowResizeLog s2Step161HeadFBefore s2Step161HeadFRow 190 s2Step161HeadFFresh=
    some (s2Step161HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 811],768⟩,growRow 768 s2Step161HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step161HeadFBefore s2Step161HeadFAfter s2Step161HeadFRow 190 s2Step161HeadFFresh
    s2Step161HeadF_distinct s2Step161HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step161HeadF_reserved
  have rowEq : WindowRow.mk (s2Step161HeadFRow.payload++s2Step161HeadFFresh) s2Step161HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 811],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step161HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step161HeadFvBefore : Arena := s2Step161HeadGvAfter

private theorem s2Step161HeadFv_Incoming : rowsOwned s2Step161HeadFvBefore [s2Step161HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step161HeadGRow,s2Step161HeadFRow,s2Step161HeadGvRow,s2Step161HeadFvRow] 3 s2Step161HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step161HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161HeadFv_Outgoing : rowsOwned s2Step161HeadFvAfter [s2Step161HeadFvOut] :=
  hmrRows_owned_drop s2Step161HeadFvAfter [s2Step161HeadGOut,s2Step161HeadFOut,s2Step161HeadGvOut,s2Step161HeadFvOut] 3 s2Step161HeadBank_outgoingOwned

private theorem s2Step161HeadFv_distinct : (s2Step161HeadFvRow.sign::s2Step161HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161HeadFv_owned : (s2Step161HeadFvRow.sign::s2Step161HeadFvRow.payload).toFinset⊆s2Step161HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step161HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161HeadFv_reserved : s2Step161HeadFvBefore.reserve s2Step161HeadFvFresh.toFinset=some s2Step161HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step161HeadFvFresh,arenaWires]
  · norm_num [s2Step161HeadFvBefore,s2Step161HeadGvAfter,s2Step161HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step161HeadFvAfter,s2Step161HeadFvBefore,s2Step161HeadGvAfter,s2Step161HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step161HeadFv_checked : planRowResizeLog s2Step161HeadFvBefore s2Step161HeadFvRow 96 s2Step161HeadFvFresh=
    some (s2Step161HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804],770⟩,growRow 770 s2Step161HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step161HeadFvBefore s2Step161HeadFvAfter s2Step161HeadFvRow 96 s2Step161HeadFvFresh
    s2Step161HeadFv_distinct s2Step161HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step161HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step161HeadFvRow.payload++s2Step161HeadFvFresh) s2Step161HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 804],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step161HeadG_Incoming : rowsOwned s2Step161HeadGBefore [s2Step161HeadGRow,s2Step161HeadFRow,s2Step161HeadGvRow,s2Step161HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step161HeadGRow,s2Step161HeadFRow,s2Step161HeadGvRow,s2Step161HeadFvRow] 0 s2Step161HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step161HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161HeadG_Outgoing : rowsOwned s2Step161HeadFvAfter [s2Step161HeadGOut,s2Step161HeadFOut,s2Step161HeadGvOut,s2Step161HeadFvOut] :=
  hmrRows_owned_drop s2Step161HeadFvAfter [s2Step161HeadGOut,s2Step161HeadFOut,s2Step161HeadGvOut,s2Step161HeadFvOut] 0 s2Step161HeadBank_outgoingOwned

private theorem s2Step161HeadG_distinct : (s2Step161HeadGRow.sign::s2Step161HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161HeadG_owned : (s2Step161HeadGRow.sign::s2Step161HeadGRow.payload).toFinset⊆s2Step161HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step161HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161HeadG_reserved : s2Step161HeadGBefore.reserve s2Step161HeadGFresh.toFinset=some s2Step161HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step161HeadGFresh,arenaWires]
  · norm_num [s2Step161HeadGBefore,s2Step161HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step161HeadGAfter,s2Step161HeadGBefore,s2Step161HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step161HeadG_checked : planRowResizeLog s2Step161HeadGBefore s2Step161HeadGRow 190 s2Step161HeadGFresh=
    some (s2Step161HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 797],769⟩,growRow 769 s2Step161HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step161HeadGBefore s2Step161HeadGAfter s2Step161HeadGRow 190 s2Step161HeadGFresh
    s2Step161HeadG_distinct s2Step161HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step161HeadG_reserved
  have rowEq : WindowRow.mk (s2Step161HeadGRow.payload++s2Step161HeadGFresh) s2Step161HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 797],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step161HeadGvBefore : Arena := s2Step161HeadFAfter

private theorem s2Step161HeadGv_Incoming : rowsOwned s2Step161HeadGvBefore [s2Step161HeadGvRow,s2Step161HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step161HeadGRow,s2Step161HeadFRow,s2Step161HeadGvRow,s2Step161HeadFvRow] 2 s2Step161HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step161HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step161HeadGv_Outgoing : rowsOwned s2Step161HeadFvAfter [s2Step161HeadGvOut,s2Step161HeadFvOut] :=
  hmrRows_owned_drop s2Step161HeadFvAfter [s2Step161HeadGOut,s2Step161HeadFOut,s2Step161HeadGvOut,s2Step161HeadFvOut] 2 s2Step161HeadBank_outgoingOwned

private theorem s2Step161HeadGv_distinct : (s2Step161HeadGvRow.sign::s2Step161HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step161HeadGv_owned : (s2Step161HeadGvRow.sign::s2Step161HeadGvRow.payload).toFinset⊆s2Step161HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step161HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step161HeadGv_reserved : s2Step161HeadGvBefore.reserve s2Step161HeadGvFresh.toFinset=some s2Step161HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step161HeadGvFresh,arenaWires]
  · norm_num [s2Step161HeadGvBefore,s2Step161HeadFAfter,s2Step161HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step161HeadGvAfter,s2Step161HeadGvBefore,s2Step161HeadFAfter,s2Step161HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step161HeadGv_checked : planRowResizeLog s2Step161HeadGvBefore s2Step161HeadGvRow 96 s2Step161HeadGvFresh=
    some (s2Step161HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 793],771⟩,growRow 771 s2Step161HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step161HeadGvBefore s2Step161HeadGvAfter s2Step161HeadGvRow 96 s2Step161HeadGvFresh
    s2Step161HeadGv_distinct s2Step161HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step161HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step161HeadGvRow.payload++s2Step161HeadGvFresh) s2Step161HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 778, 793],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step161HeadBank_rows : planWindowRowsLog s2Step161HeadGBefore [(s2Step161HeadGRow,190),(s2Step161HeadFRow,190),(s2Step161HeadGvRow,96),(s2Step161HeadFvRow,96)] [s2Step161HeadGFresh,s2Step161HeadFFresh,s2Step161HeadGvFresh,s2Step161HeadFvFresh]=
    some (s2Step161HeadFvAfter,[s2Step161HeadGOut,s2Step161HeadFOut,s2Step161HeadGvOut,s2Step161HeadFvOut],(growRow 769 s2Step161HeadGFresh ++ (growRow 768 s2Step161HeadFFresh ++ (growRow 771 s2Step161HeadGvFresh ++ (growRow 770 s2Step161HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step161HeadFvAfter [] []=some (s2Step161HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step161HeadFvBefore s2Step161HeadFvAfter s2Step161HeadFvAfter
    s2Step161HeadFvRow s2Step161HeadFvOut 96 s2Step161HeadFvFresh [] [] []
    (growRow 770 s2Step161HeadFvFresh) ([]) s2Step161HeadFv_Incoming s2Step161HeadFv_checked h4 s2Step161HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step161HeadGvBefore s2Step161HeadGvAfter s2Step161HeadFvAfter
    s2Step161HeadGvRow s2Step161HeadGvOut 96 s2Step161HeadGvFresh [(s2Step161HeadFvRow,96)] [s2Step161HeadFvFresh] [s2Step161HeadFvOut]
    (growRow 771 s2Step161HeadGvFresh) ((growRow 770 s2Step161HeadFvFresh ++ [])) s2Step161HeadGv_Incoming s2Step161HeadGv_checked h3 s2Step161HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step161HeadFBefore s2Step161HeadFAfter s2Step161HeadFvAfter
    s2Step161HeadFRow s2Step161HeadFOut 190 s2Step161HeadFFresh [(s2Step161HeadGvRow,96),(s2Step161HeadFvRow,96)] [s2Step161HeadGvFresh,s2Step161HeadFvFresh] [s2Step161HeadGvOut,s2Step161HeadFvOut]
    (growRow 768 s2Step161HeadFFresh) ((growRow 771 s2Step161HeadGvFresh ++ (growRow 770 s2Step161HeadFvFresh ++ []))) s2Step161HeadF_Incoming s2Step161HeadF_checked h2 s2Step161HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step161HeadGBefore s2Step161HeadGAfter s2Step161HeadFvAfter
    s2Step161HeadGRow s2Step161HeadGOut 190 s2Step161HeadGFresh [(s2Step161HeadFRow,190),(s2Step161HeadGvRow,96),(s2Step161HeadFvRow,96)] [s2Step161HeadFFresh,s2Step161HeadGvFresh,s2Step161HeadFvFresh] [s2Step161HeadFOut,s2Step161HeadGvOut,s2Step161HeadFvOut]
    (growRow 769 s2Step161HeadGFresh) ((growRow 768 s2Step161HeadFFresh ++ (growRow 771 s2Step161HeadGvFresh ++ (growRow 770 s2Step161HeadFvFresh ++ [])))) s2Step161HeadG_Incoming s2Step161HeadG_checked h1 s2Step161HeadG_Outgoing
  exact h0

private theorem s2Step161HeadBank_checked : compileHmrBankResizeLog .headroom s2Step161HeadGBefore ⟨s2Step161HeadFRow,s2Step161HeadGRow,s2Step161HeadFvRow,s2Step161HeadGvRow⟩ ⟨190,190,96,96⟩ [s2Step161HeadGFresh,s2Step161HeadFFresh,s2Step161HeadGvFresh,s2Step161HeadFvFresh]=
    some (s2Step161HeadFvAfter,⟨s2Step161HeadFOut,s2Step161HeadGOut,s2Step161HeadFvOut,s2Step161HeadGvOut⟩,(growRow 769 s2Step161HeadGFresh ++ (growRow 768 s2Step161HeadFFresh ++ (growRow 771 s2Step161HeadGvFresh ++ (growRow 770 s2Step161HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step161HeadBank_rows]
  rfl

private theorem s2Step161Front_checked : compileHmrSourceFrontLog s2Step161EntryFBefore s2Step161FrontBank 189 95 ⟨188,188,95,95⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step161FrontLog=some s2Step161FrontPlan := by
  have pairEq : s2Step161FrontPair=⟨s2Step161HeadFRow,s2Step161HeadGRow,s2Step161HeadFvRow,s2Step161HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step161FrontHead=⟨s2Step161ExitFRow,s2Step161ExitGRow,s2Step161ExitFvRow,s2Step161ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step161Add0A=s2Step161FrontHead.f.wires := by decide +kernel
  have gEq : s2Step161Add0B=s2Step161FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step161Add1A=s2Step161FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step161Add1B=s2Step161FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step161EntryFBefore s2Step161FrontBank 189 95 ⟨188,188,95,95⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step161FrontLog s2Step161FrontPlan
  · exact s2Step161Front_entry
  · exact s2Step161EntryBank_checked
  · exact s2Step161Front_sigma
  · rfl
  · exact s2Step161Front_branch
  · rfl
  · simpa only [s2Step161FrontPlan,pairEq] using s2Step161HeadBank_checked
  · simpa only [s2Step161FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step161F4_checked
  · exact s2Step161Counter_checked
  · rfl
  · simpa only [s2Step161FrontPlan,headEq] using s2Step161ExitBank_checked

private theorem s2Step161Complete_explicit_checked : compileHmrEarlyStepLog s2Step161EntryFBefore s2Step161FrontBank 189 95 ⟨188,188,95,95⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step161CompleteLog=some s2Step161CompletePlan := by
  let Q := s2Step161EarlyControlPlan
  have hq := s2Step161EarlyControl_plan_checked
  have fv1 : s2Step161CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step161CompleteOut.fv.payload[2]?.getD s2Step161CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step161CompleteOut.fv.payload[3]?.getD s2Step161CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step161CompleteOut.fv.payload[4]?.getD s2Step161CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step161EntryFBefore s2Step161EarlyControlArena s2Step161FrontBank 189 95 ⟨188,188,95,95⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step161CompleteLog s2Step161FrontPlan Q
    s2Step161Front_checked s2Step161Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step161Complete_owned s2Step161Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step161EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 803 s2Step161CompleteOut.fv.second (s2Step161CompleteOut.fv.payload[2]?.getD s2Step161CompleteOut.fv.sign) (s2Step161CompleteOut.fv.payload[3]?.getD s2Step161CompleteOut.fv.sign) (s2Step161CompleteOut.fv.payload[4]?.getD s2Step161CompleteOut.fv.sign) 849 42 s2Step161EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep161Arena : Arena := s2Step161EntryFBefore
def s2PrivateStep161Bank : WindowBank := s2Step161FrontBank
def s2PrivateStep161Spec : HmrSourceWalkStepLog := ⟨189,95,⟨188,188,95,95⟩,42,.early s2Step161CompleteLog⟩
def s2PrivateStep161Plan : HmrSourceStepPlan := .early s2Step161CompletePlan
theorem s2PrivateStep161_source : s2PrivateStep161Spec=s2ObservedLogs160[1] := rfl
theorem s2PrivateStep161_checked : compileHmrSourceStepLog s2PrivateStep161Arena s2PrivateStep161Bank
    s2PrivateStep161Spec.fgWidth s2PrivateStep161Spec.vWidth s2PrivateStep161Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 161 s2PrivateStep161Spec.need none s2PrivateStep161Spec.log=some s2PrivateStep161Plan := by
  change compileHmrSourceStepLog s2Step161EntryFBefore s2Step161FrontBank 189 95 ⟨188,188,95,95⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 161 42 none (.early s2Step161CompleteLog)=some (.early s2Step161CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 161<498)]
  rw [s2Step161Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
