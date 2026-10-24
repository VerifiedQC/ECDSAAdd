import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep157
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

private def s2Step159CompleteMoves : List (Wire × Wire) := [(811,701)]

private def s2Step159EarlyControlLog : HmrEarlyControlLog := ⟨[811, 797, 849, 790, 793],[804],[847],[780, 867, 877, 879, 882, 885],[]⟩

private def s2Step159FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [849], [], []],[[790], [797], [798], [851]],[[], [], [], []]⟩,[778],[803],[793],[804],[847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[793, 804, 847, 780]⟩

private def s2Step159CompleteLog : HmrEarlyStepLog := ⟨s2Step159FrontLog,s2Step159CompleteMoves,s2Step159EarlyControlLog⟩

private def s2Step159ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700],768⟩

private def s2Step159ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851],770⟩

private def s2Step159ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],769⟩

private def s2Step159ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798],771⟩

private def s2Step159FrontOut : WindowBank := ⟨s2Step159ExitFOut,s2Step159ExitGOut,s2Step159ExitFvOut,s2Step159ExitGvOut⟩

private def s2Step159CompleteOut : WindowBank := s2Step159FrontOut.repacked s2Step159CompleteMoves

private def s2Step159EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step159EarlyControlPositiveArena,[804],s2Step159EarlyControlEqualityArena,[847],⟨⟨778,false⟩,[⟨⟨804,false⟩,847⟩]⟩⟩

private def s2Step159EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,811⟩,⟨⟨774,false⟩,797⟩,⟨⟨775,false⟩,849⟩,⟨⟨776,false⟩,790⟩,⟨⟨777,false⟩,793⟩]⟩

private def s2Step159EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step159EarlyControlZeroArena,s2Step159EarlyControlZeroPlan,s2Step159EarlyControlClassPlan,s2Step159EarlyControlFlagArena,s2Step159EarlyControlFittedArena,s2Step159EarlyControlHistoryArena,s2Step159EarlyControlSigmaArena,s2Step159EarlyControlOutputArena,s2Step159EarlyControlLog⟩

private def s2Step159CounterWork : List Wire := [793, 804, 847, 780]

private theorem s2Step159Counter_bounded : s2Step159CounterWork.toFinset⊆arenaWires := by norm_num [s2Step159CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step159HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159CounterDuring : Arena := ⟨s2Step159HeadFvAfter.live∪s2Step159CounterWork.toFinset,Finset.union_subset s2Step159HeadFvAfter.bounded s2Step159Counter_bounded⟩

private def s2Step159EntryFFresh : List Wire := []

private def s2Step159EntryFvFresh : List Wire := []

private def s2Step159EntryGFresh : List Wire := [849]

private def s2Step159EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159EntryGvAfter : Arena := s2Step159EntryGAfter

private def s2Step159EntryGvFresh : List Wire := []

private def s2Step159ExitFExtra : List Wire := [701, 797]

private def s2Step159ExitGExtra : List Wire := [849, 790]

private def s2Step159ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<701) ∨ (702≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159ExitGvAfter : Arena := s2Step159ExitFAfter

private def s2Step159Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159Add0Work : List Wire := [847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step159Add0_bounded : s2Step159Add0Work.toFinset⊆arenaWires := by
  have h : s2Step159Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step159Add0During : Arena := ⟨s2Step159Add0Arena.live∪s2Step159Add0Work.toFinset,Finset.union_subset s2Step159Add0Arena.bounded s2Step159Add0_bounded⟩

private def s2Step159Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159Add1Work : List Wire := [847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step159Add1_bounded : s2Step159Add1Work.toFinset⊆arenaWires := by
  have h : s2Step159Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step159Add1During : Arena := ⟨s2Step159Add1Arena.live∪s2Step159Add1Work.toFinset,Finset.union_subset s2Step159Add1Arena.bounded s2Step159Add1_bounded⟩

private def s2Step159F4FlagArena : Arena := ⟨s2Step159HeadFvAfter.live∪{793},Finset.union_subset s2Step159HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step159F4Plan : HmrHybridF4Plan := ⟨s2Step159F4FlagArena,[793],s2Step159Add0Arena,[804],s2Step159Add0During,s2Step159Add0Work,s2Step159Add1During,s2Step159Add1Work⟩

private def s2Step159HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 797],768⟩

private def s2Step159HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851],770⟩

private def s2Step159HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 849, 790],769⟩

private def s2Step159HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798],771⟩

private def s2Step159FrontHead : WindowBank := ⟨s2Step159HeadFOut,s2Step159HeadGOut,s2Step159HeadFvOut,s2Step159HeadGvOut⟩

private def s2Step159EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701],768⟩

private def s2Step159EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩

private def s2Step159EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 849],769⟩

private def s2Step159EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private def s2Step159FrontPair : WindowBank := ⟨s2Step159EntryFOut,s2Step159EntryGOut,s2Step159EntryFvOut,s2Step159EntryGvOut⟩

private def s2Step159FrontSigmaArena : Arena := ⟨s2Step159EntryGvAfter.live∪{778},Finset.union_subset s2Step159EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step159HeadFFresh : List Wire := [797]

private def s2Step159HeadFvFresh : List Wire := [851]

private def s2Step159HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159HeadGFresh : List Wire := [790]

private def s2Step159HeadGvFresh : List Wire := [798]

private def s2Step159FrontPlan : HmrSourceFront := ⟨s2Step159EntryGvAfter,s2Step159FrontPair,(growRow 768 s2Step159EntryFFresh ++ (growRow 769 s2Step159EntryGFresh ++ (growRow 770 s2Step159EntryFvFresh ++ (growRow 771 s2Step159EntryGvFresh ++ [])))),s2Step159FrontSigmaArena,[778],s2Step159HeadGBefore,[803],
  s2Step159HeadFvAfter,s2Step159FrontHead,(growRow 769 s2Step159HeadGFresh ++ (growRow 768 s2Step159HeadFFresh ++ (growRow 771 s2Step159HeadGvFresh ++ (growRow 770 s2Step159HeadFvFresh ++ [])))),s2Step159F4Plan,s2Step159CounterDuring,s2Step159CounterWork,s2Step159ExitGvAfter,s2Step159FrontOut,(shrinkRow 769 s2Step159ExitGExtra ++ (shrinkRow 768 s2Step159ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step159CompletePlan : HmrEarlyStepPlan := ⟨s2Step159FrontPlan,s2Step159EarlyControlArena,s2Step159EarlyControlPlan,s2Step159CompleteMoves⟩

private theorem s2Step159Complete_apart : List.Disjoint (s2Step159CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [778, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step159CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[778, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step159Complete_owned : (s2Step159CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step159EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step159EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step159CompleteMoveArena : Arena := ⟨s2Step159ExitGvAfter.live∪{701},Finset.union_subset s2Step159ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step159Complete_repack : s2Step159ExitGvAfter.checkRepack s2Step159CompleteMoves=some s2Step159EarlyControlArena := by
  have owned : 811∈s2Step159ExitGvAfter.live := by norm_num [s2Step159ExitGvAfter,s2Step159ExitFAfter,arenaWires]
  have reserve : s2Step159ExitGvAfter.reserve {701}=some s2Step159CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step159ExitGvAfter,s2Step159ExitFAfter,arenaWires]
    · rfl
  have retired : s2Step159CompleteMoveArena.retireSet {811}=s2Step159EarlyControlArena := by
    unfold Arena.retireSet s2Step159EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step159CompleteMoveArena,s2Step159ExitGvAfter,s2Step159ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step159CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step159CompleteMoveArena.retireSet {811}).checkRepack []=some s2Step159EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step159EarlyControl_branchOwned : ([803] : List Wire).toFinset⊆s2Step159EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step159EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EarlyControl_branch : compileHmrBranchRetirement s2Step159EarlyControlSigmaArena 803=some s2Step159EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step159EarlyControl_branchOwned
  · ext q
    simp [s2Step159EarlyControlOutputArena,s2Step159EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step159EarlyControl_classEqualityBorrow : s2Step159EarlyControlPositiveArena.checkBorrow (([778, 804] : List Wire).length-1) s2Step159EarlyControlLog.classWork=some s2Step159EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step159EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step159EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step159EarlyControlEqualityArena,s2Step159EarlyControlPositiveArena,s2Step159EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step159EarlyControl_classEqualityOwned : ([778, 804] : List Wire).toFinset⊆s2Step159EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step159EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EarlyControl_classEquality : compileHmrEqualityLog s2Step159EarlyControlPositiveArena [778, 804] 0 s2Step159EarlyControlLog.classWork=some (s2Step159EarlyControlEqualityArena,s2Step159EarlyControlLog.classWork,s2Step159EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step159EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step159EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step159EarlyControl_classOwned : ([777, 793, 778] : List Wire).toFinset⊆s2Step159EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step159EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EarlyControl_positiveBorrow : s2Step159EarlyControlZeroArena.checkBorrow (1) s2Step159EarlyControlLog.positiveWork=some s2Step159EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step159EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step159EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step159EarlyControlPositiveArena,s2Step159EarlyControlZeroArena,s2Step159EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step159EarlyControl_class : compileHmrSourceClassLog s2Step159EarlyControlZeroArena false 777 s2Step159EarlyControlZeroPlan.top 0 778 s2Step159EarlyControlLog.positiveWork s2Step159EarlyControlLog.classWork=some s2Step159EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step159EarlyControlClassPlan s2Step159EarlyControlZeroArena false 777 s2Step159EarlyControlZeroPlan.top 0 778
  constructor
  · decide +kernel
  · exact s2Step159EarlyControl_classOwned
  · exact s2Step159EarlyControl_positiveBorrow
  · exact s2Step159EarlyControl_classEquality

private theorem s2Step159EarlyControl_entryRecordOwned : ([803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step159EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step159EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EarlyControl_entrySigmaOwned : ([778, 254] : List Wire).toFinset⊆s2Step159EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step159EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EarlyControl_fitBorrow : s2Step159EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step159EarlyControlLog.recordFresh=some s2Step159EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step159EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step159EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step159EarlyControlFittedArena,s2Step159EarlyControlFlagArena,s2Step159EarlyControlLog,arenaWires]

private theorem s2Step159EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step159EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step159EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EarlyControl_fit : compileHmrRecordGrowLog s2Step159EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step159EarlyControlLog.recordFresh=some s2Step159EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step159EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step159EarlyControl_fitBorrow

private theorem s2Step159EarlyControl_flagsBorrow : s2Step159EarlyControlEqualityArena.checkBorrow (6) s2Step159EarlyControlLog.flagWork=some s2Step159EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step159EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step159EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step159EarlyControlFlagArena,s2Step159EarlyControlEqualityArena,s2Step159EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step159EarlyControl_flagsOwned : ([847, 253, 252, 251] : List Wire).toFinset⊆s2Step159EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step159EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EarlyControl_flags : compileHmrFlagsLog s2Step159EarlyControlClassPlan.equalityArena s2Step159EarlyControlClassPlan.equality.top 253 252 251 s2Step159EarlyControlLog.flagWork=some s2Step159EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step159EarlyControl_flagsOwned⟩
  · exact s2Step159EarlyControl_flagsBorrow

private theorem s2Step159EarlyControl_historyBorrow : s2Step159EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step159EarlyControlLog.recordFresh=some s2Step159EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step159EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step159EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step159EarlyControlHistoryArena,s2Step159EarlyControlArena,s2Step159EarlyControlLog,arenaWires]

private theorem s2Step159EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step159EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step159EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EarlyControl_history : compileHmrRecordGrowLog s2Step159EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step159EarlyControlLog.recordFresh=some s2Step159EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step159EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step159EarlyControl_historyBorrow

private theorem s2Step159EarlyControl_sigmaOwned : ([254, 778] : List Wire).toFinset⊆s2Step159EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step159EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EarlyControl_sigmaReleaseOwned : ([778] : List Wire).toFinset⊆s2Step159EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step159EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EarlyControl_sigmaRelease : s2Step159EarlyControlHistoryArena.release {778} (fun _ => false)=some s2Step159EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step159EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step159EarlyControlSigmaArena,s2Step159EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step159EarlyControl_sigma : compileHmrSigmaDropLog s2Step159EarlyControlHistoryArena false 0 0 254 778 []=some s2Step159EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step159EarlyControl_sigmaOwned⟩
  · exact s2Step159EarlyControl_sigmaRelease

private theorem s2Step159EarlyControl_zeroBorrow : s2Step159EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step159EarlyControlLog.zeroWork=some s2Step159EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step159EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step159EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step159EarlyControlZeroArena,s2Step159EarlyControlArena,s2Step159EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step159EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step159EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step159EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EarlyControl_zero : compileHmrEqualityLog s2Step159EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step159EarlyControlLog.zeroWork=some (s2Step159EarlyControlZeroArena,s2Step159EarlyControlLog.zeroWork,s2Step159EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step159EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step159EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step159EarlyControl_logged : s2Step159EarlyControlPlan.Logged s2Step159EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 803 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step159EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step159EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step159EarlyControl_zero
  · exact s2Step159EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step159EarlyControl_flags
  · exact s2Step159EarlyControl_fit
  · exact s2Step159EarlyControl_history
  · exact s2Step159EarlyControl_sigma
  · exact s2Step159EarlyControl_branch

private theorem s2Step159EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step159EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 803 42 s2Step159EarlyControlLog=some s2Step159EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step159EarlyControlPlan s2Step159EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 803 42 s2Step159EarlyControl_logged

private def s2Step159EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701],768⟩

private def s2Step159EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩

private def s2Step159EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],769⟩

private def s2Step159EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private def s2Step159FrontBank : WindowBank := ⟨s2Step159EntryFRow,s2Step159EntryGRow,s2Step159EntryFvRow,s2Step159EntryGvRow⟩

private def s2Step159Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 797, 768]

private def s2Step159Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 849, 790, 769]

private def s2Step159Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 770]

private def s2Step159Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 771]

private theorem s2Step159Counter_apart : Disjoint s2Step159HeadFvAfter.live s2Step159CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step159HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159Counter_borrowed : s2Step159HeadFvAfter.checkBorrow 4 s2Step159CounterWork=some s2Step159CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step159HeadFvAfter s2Step159CounterDuring s2Step159CounterWork.toFinset s2Step159Counter_bounded s2Step159Counter_apart rfl

private theorem s2Step159Counter_owned : (778::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step159HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step159HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159Counter_checked : compileHmrCounterStepLog s2Step159HeadFvAfter true 778 [772, 773, 774, 775, 776, 777] s2Step159CounterWork=some s2Step159CounterDuring := by
  have owned : ∀q∈778::[772, 773, 774, 775, 776, 777],q∈s2Step159HeadFvAfter.live := fun q hq => s2Step159Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step159Counter_borrowed

private def s2Step159EntryFAfter : Arena := s2Step159EntryFBefore

private theorem s2Step159EntryBank_incomingDistinct : ([s2Step159EntryFRow,s2Step159EntryGRow,s2Step159EntryFvRow,s2Step159EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159EntryF_Incoming : rowsOwned s2Step159EntryFBefore [s2Step159EntryFRow,s2Step159EntryGRow,s2Step159EntryFvRow,s2Step159EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step159EntryFRow,s2Step159EntryGRow,s2Step159EntryFvRow,s2Step159EntryGvRow] 0 s2Step159EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step159EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159EntryBank_outgoingOwned : rowsOwned s2Step159EntryGvAfter [s2Step159EntryFOut,s2Step159EntryGOut,s2Step159EntryFvOut,s2Step159EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step159EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159EntryF_Outgoing : rowsOwned s2Step159EntryGvAfter [s2Step159EntryFOut,s2Step159EntryGOut,s2Step159EntryFvOut,s2Step159EntryGvOut] :=
  hmrRows_owned_drop s2Step159EntryGvAfter [s2Step159EntryFOut,s2Step159EntryGOut,s2Step159EntryFvOut,s2Step159EntryGvOut] 0 s2Step159EntryBank_outgoingOwned

private theorem s2Step159EntryF_distinct : (s2Step159EntryFRow.sign::s2Step159EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159EntryF_owned : (s2Step159EntryFRow.sign::s2Step159EntryFRow.payload).toFinset⊆s2Step159EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step159EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EntryF_reserved : s2Step159EntryFBefore.reserve s2Step159EntryFFresh.toFinset=some s2Step159EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step159EntryFFresh,arenaWires]
  · norm_num [s2Step159EntryFBefore,s2Step159EntryFFresh,arenaWires]
  · simp only [s2Step159EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step159EntryF_checked : planRowResizeLog s2Step159EntryFBefore s2Step159EntryFRow 190 s2Step159EntryFFresh=
    some (s2Step159EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701],768⟩,growRow 768 s2Step159EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step159EntryFBefore s2Step159EntryFAfter s2Step159EntryFRow 190 s2Step159EntryFFresh
    s2Step159EntryF_distinct s2Step159EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step159EntryF_reserved
  have rowEq : WindowRow.mk (s2Step159EntryFRow.payload++s2Step159EntryFFresh) s2Step159EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step159EntryFvAfter : Arena := s2Step159EntryGAfter

private def s2Step159EntryFvBefore : Arena := s2Step159EntryGAfter

private theorem s2Step159EntryFv_Incoming : rowsOwned s2Step159EntryFvBefore [s2Step159EntryFvRow,s2Step159EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step159EntryFRow,s2Step159EntryGRow,s2Step159EntryFvRow,s2Step159EntryGvRow] 2 s2Step159EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step159EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159EntryFv_Outgoing : rowsOwned s2Step159EntryGvAfter [s2Step159EntryFvOut,s2Step159EntryGvOut] :=
  hmrRows_owned_drop s2Step159EntryGvAfter [s2Step159EntryFOut,s2Step159EntryGOut,s2Step159EntryFvOut,s2Step159EntryGvOut] 2 s2Step159EntryBank_outgoingOwned

private theorem s2Step159EntryFv_distinct : (s2Step159EntryFvRow.sign::s2Step159EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159EntryFv_owned : (s2Step159EntryFvRow.sign::s2Step159EntryFvRow.payload).toFinset⊆s2Step159EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step159EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EntryFv_reserved : s2Step159EntryFvBefore.reserve s2Step159EntryFvFresh.toFinset=some s2Step159EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step159EntryFvFresh,arenaWires]
  · norm_num [s2Step159EntryFvBefore,s2Step159EntryGAfter,s2Step159EntryFvFresh,arenaWires]
  · simp only [s2Step159EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step159EntryFv_checked : planRowResizeLog s2Step159EntryFvBefore s2Step159EntryFvRow 93 s2Step159EntryFvFresh=
    some (s2Step159EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩,growRow 770 s2Step159EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step159EntryFvBefore s2Step159EntryFvAfter s2Step159EntryFvRow 93 s2Step159EntryFvFresh
    s2Step159EntryFv_distinct s2Step159EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step159EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step159EntryFvRow.payload++s2Step159EntryFvFresh) s2Step159EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step159EntryGBefore : Arena := s2Step159EntryFBefore

private theorem s2Step159EntryG_Incoming : rowsOwned s2Step159EntryGBefore [s2Step159EntryGRow,s2Step159EntryFvRow,s2Step159EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step159EntryFRow,s2Step159EntryGRow,s2Step159EntryFvRow,s2Step159EntryGvRow] 1 s2Step159EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step159EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159EntryG_Outgoing : rowsOwned s2Step159EntryGvAfter [s2Step159EntryGOut,s2Step159EntryFvOut,s2Step159EntryGvOut] :=
  hmrRows_owned_drop s2Step159EntryGvAfter [s2Step159EntryFOut,s2Step159EntryGOut,s2Step159EntryFvOut,s2Step159EntryGvOut] 1 s2Step159EntryBank_outgoingOwned

private theorem s2Step159EntryG_distinct : (s2Step159EntryGRow.sign::s2Step159EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159EntryG_owned : (s2Step159EntryGRow.sign::s2Step159EntryGRow.payload).toFinset⊆s2Step159EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step159EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EntryG_reserved : s2Step159EntryGBefore.reserve s2Step159EntryGFresh.toFinset=some s2Step159EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step159EntryGFresh,arenaWires]
  · norm_num [s2Step159EntryGBefore,s2Step159EntryFBefore,s2Step159EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step159EntryGAfter,s2Step159EntryGBefore,s2Step159EntryFBefore,s2Step159EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step159EntryG_checked : planRowResizeLog s2Step159EntryGBefore s2Step159EntryGRow 190 s2Step159EntryGFresh=
    some (s2Step159EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 849],769⟩,growRow 769 s2Step159EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step159EntryGBefore s2Step159EntryGAfter s2Step159EntryGRow 190 s2Step159EntryGFresh
    s2Step159EntryG_distinct s2Step159EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step159EntryG_reserved
  have rowEq : WindowRow.mk (s2Step159EntryGRow.payload++s2Step159EntryGFresh) s2Step159EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 849],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step159EntryGvBefore : Arena := s2Step159EntryGAfter

private theorem s2Step159EntryGv_Incoming : rowsOwned s2Step159EntryGvBefore [s2Step159EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step159EntryFRow,s2Step159EntryGRow,s2Step159EntryFvRow,s2Step159EntryGvRow] 3 s2Step159EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step159EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159EntryGv_Outgoing : rowsOwned s2Step159EntryGvAfter [s2Step159EntryGvOut] :=
  hmrRows_owned_drop s2Step159EntryGvAfter [s2Step159EntryFOut,s2Step159EntryGOut,s2Step159EntryFvOut,s2Step159EntryGvOut] 3 s2Step159EntryBank_outgoingOwned

private theorem s2Step159EntryGv_distinct : (s2Step159EntryGvRow.sign::s2Step159EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159EntryGv_owned : (s2Step159EntryGvRow.sign::s2Step159EntryGvRow.payload).toFinset⊆s2Step159EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step159EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159EntryGv_reserved : s2Step159EntryGvBefore.reserve s2Step159EntryGvFresh.toFinset=some s2Step159EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step159EntryGvFresh,arenaWires]
  · norm_num [s2Step159EntryGvBefore,s2Step159EntryGAfter,s2Step159EntryGvFresh,arenaWires]
  · simp only [s2Step159EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step159EntryGv_checked : planRowResizeLog s2Step159EntryGvBefore s2Step159EntryGvRow 93 s2Step159EntryGvFresh=
    some (s2Step159EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩,growRow 771 s2Step159EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step159EntryGvBefore s2Step159EntryGvAfter s2Step159EntryGvRow 93 s2Step159EntryGvFresh
    s2Step159EntryGv_distinct s2Step159EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step159EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step159EntryGvRow.payload++s2Step159EntryGvFresh) s2Step159EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step159EntryBank_rows : planWindowRowsLog s2Step159EntryFBefore [(s2Step159EntryFRow,190),(s2Step159EntryGRow,190),(s2Step159EntryFvRow,93),(s2Step159EntryGvRow,93)] [s2Step159EntryFFresh,s2Step159EntryGFresh,s2Step159EntryFvFresh,s2Step159EntryGvFresh]=
    some (s2Step159EntryGvAfter,[s2Step159EntryFOut,s2Step159EntryGOut,s2Step159EntryFvOut,s2Step159EntryGvOut],(growRow 768 s2Step159EntryFFresh ++ (growRow 769 s2Step159EntryGFresh ++ (growRow 770 s2Step159EntryFvFresh ++ (growRow 771 s2Step159EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step159EntryGvAfter [] []=some (s2Step159EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step159EntryGvBefore s2Step159EntryGvAfter s2Step159EntryGvAfter
    s2Step159EntryGvRow s2Step159EntryGvOut 93 s2Step159EntryGvFresh [] [] []
    (growRow 771 s2Step159EntryGvFresh) ([]) s2Step159EntryGv_Incoming s2Step159EntryGv_checked h4 s2Step159EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step159EntryFvBefore s2Step159EntryFvAfter s2Step159EntryGvAfter
    s2Step159EntryFvRow s2Step159EntryFvOut 93 s2Step159EntryFvFresh [(s2Step159EntryGvRow,93)] [s2Step159EntryGvFresh] [s2Step159EntryGvOut]
    (growRow 770 s2Step159EntryFvFresh) ((growRow 771 s2Step159EntryGvFresh ++ [])) s2Step159EntryFv_Incoming s2Step159EntryFv_checked h3 s2Step159EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step159EntryGBefore s2Step159EntryGAfter s2Step159EntryGvAfter
    s2Step159EntryGRow s2Step159EntryGOut 190 s2Step159EntryGFresh [(s2Step159EntryFvRow,93),(s2Step159EntryGvRow,93)] [s2Step159EntryFvFresh,s2Step159EntryGvFresh] [s2Step159EntryFvOut,s2Step159EntryGvOut]
    (growRow 769 s2Step159EntryGFresh) ((growRow 770 s2Step159EntryFvFresh ++ (growRow 771 s2Step159EntryGvFresh ++ []))) s2Step159EntryG_Incoming s2Step159EntryG_checked h2 s2Step159EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step159EntryFBefore s2Step159EntryFAfter s2Step159EntryGvAfter
    s2Step159EntryFRow s2Step159EntryFOut 190 s2Step159EntryFFresh [(s2Step159EntryGRow,190),(s2Step159EntryFvRow,93),(s2Step159EntryGvRow,93)] [s2Step159EntryGFresh,s2Step159EntryFvFresh,s2Step159EntryGvFresh] [s2Step159EntryGOut,s2Step159EntryFvOut,s2Step159EntryGvOut]
    (growRow 768 s2Step159EntryFFresh) ((growRow 769 s2Step159EntryGFresh ++ (growRow 770 s2Step159EntryFvFresh ++ (growRow 771 s2Step159EntryGvFresh ++ [])))) s2Step159EntryF_Incoming s2Step159EntryF_checked h1 s2Step159EntryF_Outgoing
  exact h0

private theorem s2Step159EntryBank_checked : compileHmrBankResizeLog .entry s2Step159EntryFBefore ⟨s2Step159EntryFRow,s2Step159EntryGRow,s2Step159EntryFvRow,s2Step159EntryGvRow⟩ ⟨190,190,93,93⟩ [s2Step159EntryFFresh,s2Step159EntryGFresh,s2Step159EntryFvFresh,s2Step159EntryGvFresh]=
    some (s2Step159EntryGvAfter,⟨s2Step159EntryFOut,s2Step159EntryGOut,s2Step159EntryFvOut,s2Step159EntryGvOut⟩,(growRow 768 s2Step159EntryFFresh ++ (growRow 769 s2Step159EntryGFresh ++ (growRow 770 s2Step159EntryFvFresh ++ (growRow 771 s2Step159EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step159EntryBank_rows]
  rfl

private def s2Step159ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159ExitFBefore : Arena := s2Step159ExitGAfter

private def s2Step159ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 797],768⟩

private def s2Step159ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851],770⟩

private def s2Step159ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 849, 790],769⟩

private def s2Step159ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798],771⟩

private theorem s2Step159ExitBank_incomingDistinct : ([s2Step159ExitGRow,s2Step159ExitFRow,s2Step159ExitFvRow,s2Step159ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159ExitF_Incoming : rowsOwned s2Step159ExitFBefore [s2Step159ExitFRow,s2Step159ExitFvRow,s2Step159ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step159ExitGRow,s2Step159ExitFRow,s2Step159ExitFvRow,s2Step159ExitGvRow] 1 s2Step159ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step159ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159ExitBank_outgoingOwned : rowsOwned s2Step159ExitGvAfter [s2Step159ExitGOut,s2Step159ExitFOut,s2Step159ExitFvOut,s2Step159ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step159ExitGvAfter (fun q => (0≤q ∧ q<701) ∨ (702≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159ExitF_Outgoing : rowsOwned s2Step159ExitGvAfter [s2Step159ExitFOut,s2Step159ExitFvOut,s2Step159ExitGvOut] :=
  hmrRows_owned_drop s2Step159ExitGvAfter [s2Step159ExitGOut,s2Step159ExitFOut,s2Step159ExitFvOut,s2Step159ExitGvOut] 1 s2Step159ExitBank_outgoingOwned

private theorem s2Step159ExitF_distinct : (s2Step159ExitFRow.sign::s2Step159ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159ExitF_owned : (s2Step159ExitFRow.sign::s2Step159ExitFRow.payload).toFinset⊆s2Step159ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step159ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159ExitF_retired : s2Step159ExitFBefore.retireSet s2Step159ExitFExtra.toFinset=s2Step159ExitFAfter := by
  unfold Arena.retireSet s2Step159ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step159ExitFBefore,s2Step159ExitGAfter,s2Step159ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step159ExitF_checked : planRowResizeLog s2Step159ExitFBefore s2Step159ExitFRow 189 []=
    some (s2Step159ExitFAfter,s2Step159ExitFOut,shrinkRow 768 s2Step159ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step159ExitFBefore s2Step159ExitFRow 189 s2Step159ExitF_distinct s2Step159ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step159ExitFRow.payload.take 189) s2Step159ExitFRow.sign=s2Step159ExitFOut := by decide +kernel
  have hi : s2Step159ExitFRow.payload.drop 189=s2Step159ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step159ExitF_retired] at result
  exact result

private def s2Step159ExitFvAfter : Arena := s2Step159ExitFAfter

private def s2Step159ExitFvBefore : Arena := s2Step159ExitFAfter

private theorem s2Step159ExitFv_Incoming : rowsOwned s2Step159ExitFvBefore [s2Step159ExitFvRow,s2Step159ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step159ExitGRow,s2Step159ExitFRow,s2Step159ExitFvRow,s2Step159ExitGvRow] 2 s2Step159ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step159ExitFvBefore (fun q => (0≤q ∧ q<701) ∨ (702≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159ExitFv_Outgoing : rowsOwned s2Step159ExitGvAfter [s2Step159ExitFvOut,s2Step159ExitGvOut] :=
  hmrRows_owned_drop s2Step159ExitGvAfter [s2Step159ExitGOut,s2Step159ExitFOut,s2Step159ExitFvOut,s2Step159ExitGvOut] 2 s2Step159ExitBank_outgoingOwned

private theorem s2Step159ExitFv_distinct : (s2Step159ExitFvRow.sign::s2Step159ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159ExitFv_owned : (s2Step159ExitFvRow.sign::s2Step159ExitFvRow.payload).toFinset⊆s2Step159ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step159ExitFvBefore (fun q => (0≤q ∧ q<701) ∨ (702≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159ExitFv_reserved : s2Step159ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step159ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step159ExitFv_checked : planRowResizeLog s2Step159ExitFvBefore s2Step159ExitFvRow 94 []=
    some (s2Step159ExitFvAfter,s2Step159ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step159ExitFvBefore s2Step159ExitFvAfter s2Step159ExitFvRow 94 []
    s2Step159ExitFv_distinct s2Step159ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step159ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step159ExitFvRow.payload++[]) s2Step159ExitFvRow.sign=s2Step159ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step159ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step159ExitG_Incoming : rowsOwned s2Step159ExitGBefore [s2Step159ExitGRow,s2Step159ExitFRow,s2Step159ExitFvRow,s2Step159ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step159ExitGRow,s2Step159ExitFRow,s2Step159ExitFvRow,s2Step159ExitGvRow] 0 s2Step159ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step159ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159ExitG_Outgoing : rowsOwned s2Step159ExitGvAfter [s2Step159ExitGOut,s2Step159ExitFOut,s2Step159ExitFvOut,s2Step159ExitGvOut] :=
  hmrRows_owned_drop s2Step159ExitGvAfter [s2Step159ExitGOut,s2Step159ExitFOut,s2Step159ExitFvOut,s2Step159ExitGvOut] 0 s2Step159ExitBank_outgoingOwned

private theorem s2Step159ExitG_distinct : (s2Step159ExitGRow.sign::s2Step159ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159ExitG_owned : (s2Step159ExitGRow.sign::s2Step159ExitGRow.payload).toFinset⊆s2Step159ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step159ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159ExitG_retired : s2Step159ExitGBefore.retireSet s2Step159ExitGExtra.toFinset=s2Step159ExitGAfter := by
  unfold Arena.retireSet s2Step159ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step159ExitGBefore,s2Step159ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step159ExitG_checked : planRowResizeLog s2Step159ExitGBefore s2Step159ExitGRow 189 []=
    some (s2Step159ExitGAfter,s2Step159ExitGOut,shrinkRow 769 s2Step159ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step159ExitGBefore s2Step159ExitGRow 189 s2Step159ExitG_distinct s2Step159ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step159ExitGRow.payload.take 189) s2Step159ExitGRow.sign=s2Step159ExitGOut := by decide +kernel
  have hi : s2Step159ExitGRow.payload.drop 189=s2Step159ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step159ExitG_retired] at result
  exact result

private def s2Step159ExitGvBefore : Arena := s2Step159ExitFAfter

private theorem s2Step159ExitGv_Incoming : rowsOwned s2Step159ExitGvBefore [s2Step159ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step159ExitGRow,s2Step159ExitFRow,s2Step159ExitFvRow,s2Step159ExitGvRow] 3 s2Step159ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step159ExitGvBefore (fun q => (0≤q ∧ q<701) ∨ (702≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159ExitGv_Outgoing : rowsOwned s2Step159ExitGvAfter [s2Step159ExitGvOut] :=
  hmrRows_owned_drop s2Step159ExitGvAfter [s2Step159ExitGOut,s2Step159ExitFOut,s2Step159ExitFvOut,s2Step159ExitGvOut] 3 s2Step159ExitBank_outgoingOwned

private theorem s2Step159ExitGv_distinct : (s2Step159ExitGvRow.sign::s2Step159ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159ExitGv_owned : (s2Step159ExitGvRow.sign::s2Step159ExitGvRow.payload).toFinset⊆s2Step159ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step159ExitGvBefore (fun q => (0≤q ∧ q<701) ∨ (702≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159ExitGv_reserved : s2Step159ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step159ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step159ExitGv_checked : planRowResizeLog s2Step159ExitGvBefore s2Step159ExitGvRow 94 []=
    some (s2Step159ExitGvAfter,s2Step159ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step159ExitGvBefore s2Step159ExitGvAfter s2Step159ExitGvRow 94 []
    s2Step159ExitGv_distinct s2Step159ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step159ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step159ExitGvRow.payload++[]) s2Step159ExitGvRow.sign=s2Step159ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step159ExitBank_rows : planWindowRowsLog s2Step159ExitGBefore [(s2Step159ExitGRow,189),(s2Step159ExitFRow,189),(s2Step159ExitFvRow,94),(s2Step159ExitGvRow,94)] [[],[],[],[]]=
    some (s2Step159ExitGvAfter,[s2Step159ExitGOut,s2Step159ExitFOut,s2Step159ExitFvOut,s2Step159ExitGvOut],(shrinkRow 769 s2Step159ExitGExtra ++ (shrinkRow 768 s2Step159ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step159ExitGvAfter [] []=some (s2Step159ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step159ExitGvBefore s2Step159ExitGvAfter s2Step159ExitGvAfter
    s2Step159ExitGvRow s2Step159ExitGvOut 94 [] [] [] []
    (growRow 771 []) ([]) s2Step159ExitGv_Incoming s2Step159ExitGv_checked h4 s2Step159ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step159ExitFvBefore s2Step159ExitFvAfter s2Step159ExitGvAfter
    s2Step159ExitFvRow s2Step159ExitFvOut 94 [] [(s2Step159ExitGvRow,94)] [[]] [s2Step159ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step159ExitFv_Incoming s2Step159ExitFv_checked h3 s2Step159ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step159ExitFBefore s2Step159ExitFAfter s2Step159ExitGvAfter
    s2Step159ExitFRow s2Step159ExitFOut 189 [] [(s2Step159ExitFvRow,94),(s2Step159ExitGvRow,94)] [[],[]] [s2Step159ExitFvOut,s2Step159ExitGvOut]
    (shrinkRow 768 s2Step159ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step159ExitF_Incoming s2Step159ExitF_checked h2 s2Step159ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step159ExitGBefore s2Step159ExitGAfter s2Step159ExitGvAfter
    s2Step159ExitGRow s2Step159ExitGOut 189 [] [(s2Step159ExitFRow,189),(s2Step159ExitFvRow,94),(s2Step159ExitGvRow,94)] [[],[],[]] [s2Step159ExitFOut,s2Step159ExitFvOut,s2Step159ExitGvOut]
    (shrinkRow 769 s2Step159ExitGExtra) ((shrinkRow 768 s2Step159ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step159ExitG_Incoming s2Step159ExitG_checked h1 s2Step159ExitG_Outgoing
  exact h0

private theorem s2Step159ExitBank_checked : compileHmrBankResizeLog .exit s2Step159ExitGBefore ⟨s2Step159ExitFRow,s2Step159ExitGRow,s2Step159ExitFvRow,s2Step159ExitGvRow⟩ ⟨189,189,94,94⟩ [[],[],[],[]]=
    some (s2Step159ExitGvAfter,⟨s2Step159ExitFOut,s2Step159ExitGOut,s2Step159ExitFvOut,s2Step159ExitGvOut⟩,(shrinkRow 769 s2Step159ExitGExtra ++ (shrinkRow 768 s2Step159ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step159ExitBank_rows]
  rfl

private theorem s2Step159Add0_apart : Disjoint s2Step159Add0Arena.live s2Step159Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step159Add0Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159Add0_card : s2Step159Add0Arena.live.card=882 := by
  decide +kernel

private theorem s2Step159Add0_borrowed : s2Step159Add0Arena.checkBorrow (hmrHybridCount s2Step159Add0Arena s2Step159Add0B.length) s2Step159Add0Work=some s2Step159Add0During := by
  have len : s2Step159Add0Work.length=hmrHybridCount s2Step159Add0Arena s2Step159Add0B.length := by
    rw [hmrHybridCount,s2Step159Add0_card]
    decide +kernel
  have nd : s2Step159Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step159Add0Arena s2Step159Add0During s2Step159Add0Work.toFinset s2Step159Add0_bounded s2Step159Add0_apart rfl

private theorem s2Step159Add0_distinct : (793::803::804::(s2Step159Add0A++s2Step159Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159Add0_owned : (793::803::804::(s2Step159Add0A++s2Step159Add0B)).toFinset⊆s2Step159Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step159Add0Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159Add0_checked : compileHmrHybridCinLog s2Step159Add0Arena 803 793 804 s2Step159Add0A s2Step159Add0B s2Step159Add0Work=some s2Step159Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step159Add0Arena s2Step159Add0During 803 793 804 s2Step159Add0A s2Step159Add0B s2Step159Add0Work
    (by decide +kernel) (by decide +kernel) s2Step159Add0_distinct
    (fun q hq => s2Step159Add0_owned (List.mem_toFinset.mpr hq)) s2Step159Add0_borrowed

private theorem s2Step159Add1_apart : Disjoint s2Step159Add1Arena.live s2Step159Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step159Add1Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159Add1_card : s2Step159Add1Arena.live.card=882 := by
  decide +kernel

private theorem s2Step159Add1_borrowed : s2Step159Add1Arena.checkBorrow (hmrHybridCount s2Step159Add1Arena s2Step159Add1B.length) s2Step159Add1Work=some s2Step159Add1During := by
  have len : s2Step159Add1Work.length=hmrHybridCount s2Step159Add1Arena s2Step159Add1B.length := by
    rw [hmrHybridCount,s2Step159Add1_card]
    decide +kernel
  have nd : s2Step159Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step159Add1Arena s2Step159Add1During s2Step159Add1Work.toFinset s2Step159Add1_bounded s2Step159Add1_apart rfl

private theorem s2Step159Add1_distinct : (793::803::804::(s2Step159Add1A++s2Step159Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159Add1_owned : (793::803::804::(s2Step159Add1A++s2Step159Add1B)).toFinset⊆s2Step159Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step159Add1Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159Add1_checked : compileHmrHybridCinLog s2Step159Add1Arena 803 793 804 s2Step159Add1A s2Step159Add1B s2Step159Add1Work=some s2Step159Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step159Add1Arena s2Step159Add1During 803 793 804 s2Step159Add1A s2Step159Add1B s2Step159Add1Work
    (by decide +kernel) (by decide +kernel) s2Step159Add1_distinct
    (fun q hq => s2Step159Add1_owned (List.mem_toFinset.mpr hq)) s2Step159Add1_borrowed

private theorem s2Step159F4_apart : Disjoint (s2Step159Add0A++s2Step159Add0B).toFinset (s2Step159Add1A++s2Step159Add1B).toFinset := by
  have nd : ((s2Step159Add0A++s2Step159Add0B)++(s2Step159Add1A++s2Step159Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step159F4_carry : s2Step159F4FlagArena.checkBorrow 1 [804]=some s2Step159Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step159F4FlagArena,s2Step159HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step159F4FlagArena,s2Step159HeadFvAfter,s2Step159Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step159F4_distinct : (778::803::793::804::((s2Step159Add0A++s2Step159Add1A)++(s2Step159Add0B++s2Step159Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159F4_flag : s2Step159HeadFvAfter.checkBorrow 1 [793]=some s2Step159F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step159HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step159F4_owned : (778::803::((s2Step159Add0A++s2Step159Add1A)++(s2Step159Add0B++s2Step159Add1B))).toFinset⊆s2Step159HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step159HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159F4_checked : compileHmrHybridF4Log s2Step159HeadFvAfter 778 803 s2Step159Add0A s2Step159Add0B s2Step159Add1A s2Step159Add1B [793] [804] s2Step159Add0Work s2Step159Add1Work=some s2Step159F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step159HeadFvAfter s2Step159F4FlagArena s2Step159Add0Arena s2Step159Add0During s2Step159Add1During 778 803
    s2Step159Add0A s2Step159Add0B s2Step159Add1A s2Step159Add1B [793] [804] s2Step159Add0Work s2Step159Add1Work
    (fun q hq => s2Step159F4_owned (List.mem_toFinset.mpr hq)) s2Step159F4_flag s2Step159F4_carry
    s2Step159F4_distinct s2Step159F4_apart s2Step159Add0_checked s2Step159Add1_checked

private theorem s2Step159Front_branch : s2Step159FrontSigmaArena.checkBorrow 1 [803]=some s2Step159HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step159FrontSigmaArena,s2Step159EntryGvAfter,s2Step159EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step159FrontSigmaArena,s2Step159EntryGvAfter,s2Step159EntryGAfter,s2Step159HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step159Front_entry : HmrFrontEntryValid s2Step159EntryFBefore s2Step159FrontBank 190 93 ⟨189,189,94,94⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step159FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step159EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step159EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step159FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step159Front_sigma : s2Step159EntryGvAfter.checkBorrow 1 [778]=some s2Step159FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step159EntryGvAfter,s2Step159EntryGAfter,arenaWires]
  · rfl

private def s2Step159HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<798) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159HeadFBefore : Arena := s2Step159HeadGAfter

private def s2Step159HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701],768⟩

private def s2Step159HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩

private def s2Step159HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 849],769⟩

private def s2Step159HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private theorem s2Step159HeadBank_incomingDistinct : ([s2Step159HeadGRow,s2Step159HeadFRow,s2Step159HeadGvRow,s2Step159HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159HeadF_Incoming : rowsOwned s2Step159HeadFBefore [s2Step159HeadFRow,s2Step159HeadGvRow,s2Step159HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step159HeadGRow,s2Step159HeadFRow,s2Step159HeadGvRow,s2Step159HeadFvRow] 1 s2Step159HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step159HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159HeadBank_outgoingOwned : rowsOwned s2Step159HeadFvAfter [s2Step159HeadGOut,s2Step159HeadFOut,s2Step159HeadGvOut,s2Step159HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step159HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159HeadF_Outgoing : rowsOwned s2Step159HeadFvAfter [s2Step159HeadFOut,s2Step159HeadGvOut,s2Step159HeadFvOut] :=
  hmrRows_owned_drop s2Step159HeadFvAfter [s2Step159HeadGOut,s2Step159HeadFOut,s2Step159HeadGvOut,s2Step159HeadFvOut] 1 s2Step159HeadBank_outgoingOwned

private theorem s2Step159HeadF_distinct : (s2Step159HeadFRow.sign::s2Step159HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159HeadF_owned : (s2Step159HeadFRow.sign::s2Step159HeadFRow.payload).toFinset⊆s2Step159HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step159HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159HeadF_reserved : s2Step159HeadFBefore.reserve s2Step159HeadFFresh.toFinset=some s2Step159HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step159HeadFFresh,arenaWires]
  · norm_num [s2Step159HeadFBefore,s2Step159HeadGAfter,s2Step159HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step159HeadFAfter,s2Step159HeadFBefore,s2Step159HeadGAfter,s2Step159HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step159HeadF_checked : planRowResizeLog s2Step159HeadFBefore s2Step159HeadFRow 191 s2Step159HeadFFresh=
    some (s2Step159HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 797],768⟩,growRow 768 s2Step159HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step159HeadFBefore s2Step159HeadFAfter s2Step159HeadFRow 191 s2Step159HeadFFresh
    s2Step159HeadF_distinct s2Step159HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step159HeadF_reserved
  have rowEq : WindowRow.mk (s2Step159HeadFRow.payload++s2Step159HeadFFresh) s2Step159HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 797],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step159HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step159HeadFvBefore : Arena := s2Step159HeadGvAfter

private theorem s2Step159HeadFv_Incoming : rowsOwned s2Step159HeadFvBefore [s2Step159HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step159HeadGRow,s2Step159HeadFRow,s2Step159HeadGvRow,s2Step159HeadFvRow] 3 s2Step159HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step159HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159HeadFv_Outgoing : rowsOwned s2Step159HeadFvAfter [s2Step159HeadFvOut] :=
  hmrRows_owned_drop s2Step159HeadFvAfter [s2Step159HeadGOut,s2Step159HeadFOut,s2Step159HeadGvOut,s2Step159HeadFvOut] 3 s2Step159HeadBank_outgoingOwned

private theorem s2Step159HeadFv_distinct : (s2Step159HeadFvRow.sign::s2Step159HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159HeadFv_owned : (s2Step159HeadFvRow.sign::s2Step159HeadFvRow.payload).toFinset⊆s2Step159HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step159HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159HeadFv_reserved : s2Step159HeadFvBefore.reserve s2Step159HeadFvFresh.toFinset=some s2Step159HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step159HeadFvFresh,arenaWires]
  · norm_num [s2Step159HeadFvBefore,s2Step159HeadGvAfter,s2Step159HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step159HeadFvAfter,s2Step159HeadFvBefore,s2Step159HeadGvAfter,s2Step159HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step159HeadFv_checked : planRowResizeLog s2Step159HeadFvBefore s2Step159HeadFvRow 94 s2Step159HeadFvFresh=
    some (s2Step159HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851],770⟩,growRow 770 s2Step159HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step159HeadFvBefore s2Step159HeadFvAfter s2Step159HeadFvRow 94 s2Step159HeadFvFresh
    s2Step159HeadFv_distinct s2Step159HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step159HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step159HeadFvRow.payload++s2Step159HeadFvFresh) s2Step159HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step159HeadG_Incoming : rowsOwned s2Step159HeadGBefore [s2Step159HeadGRow,s2Step159HeadFRow,s2Step159HeadGvRow,s2Step159HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step159HeadGRow,s2Step159HeadFRow,s2Step159HeadGvRow,s2Step159HeadFvRow] 0 s2Step159HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step159HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159HeadG_Outgoing : rowsOwned s2Step159HeadFvAfter [s2Step159HeadGOut,s2Step159HeadFOut,s2Step159HeadGvOut,s2Step159HeadFvOut] :=
  hmrRows_owned_drop s2Step159HeadFvAfter [s2Step159HeadGOut,s2Step159HeadFOut,s2Step159HeadGvOut,s2Step159HeadFvOut] 0 s2Step159HeadBank_outgoingOwned

private theorem s2Step159HeadG_distinct : (s2Step159HeadGRow.sign::s2Step159HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159HeadG_owned : (s2Step159HeadGRow.sign::s2Step159HeadGRow.payload).toFinset⊆s2Step159HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step159HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159HeadG_reserved : s2Step159HeadGBefore.reserve s2Step159HeadGFresh.toFinset=some s2Step159HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step159HeadGFresh,arenaWires]
  · norm_num [s2Step159HeadGBefore,s2Step159HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step159HeadGAfter,s2Step159HeadGBefore,s2Step159HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step159HeadG_checked : planRowResizeLog s2Step159HeadGBefore s2Step159HeadGRow 191 s2Step159HeadGFresh=
    some (s2Step159HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 849, 790],769⟩,growRow 769 s2Step159HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step159HeadGBefore s2Step159HeadGAfter s2Step159HeadGRow 191 s2Step159HeadGFresh
    s2Step159HeadG_distinct s2Step159HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step159HeadG_reserved
  have rowEq : WindowRow.mk (s2Step159HeadGRow.payload++s2Step159HeadGFresh) s2Step159HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 849, 790],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step159HeadGvBefore : Arena := s2Step159HeadFAfter

private theorem s2Step159HeadGv_Incoming : rowsOwned s2Step159HeadGvBefore [s2Step159HeadGvRow,s2Step159HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step159HeadGRow,s2Step159HeadFRow,s2Step159HeadGvRow,s2Step159HeadFvRow] 2 s2Step159HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step159HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<798) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step159HeadGv_Outgoing : rowsOwned s2Step159HeadFvAfter [s2Step159HeadGvOut,s2Step159HeadFvOut] :=
  hmrRows_owned_drop s2Step159HeadFvAfter [s2Step159HeadGOut,s2Step159HeadFOut,s2Step159HeadGvOut,s2Step159HeadFvOut] 2 s2Step159HeadBank_outgoingOwned

private theorem s2Step159HeadGv_distinct : (s2Step159HeadGvRow.sign::s2Step159HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step159HeadGv_owned : (s2Step159HeadGvRow.sign::s2Step159HeadGvRow.payload).toFinset⊆s2Step159HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step159HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<798) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step159HeadGv_reserved : s2Step159HeadGvBefore.reserve s2Step159HeadGvFresh.toFinset=some s2Step159HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step159HeadGvFresh,arenaWires]
  · norm_num [s2Step159HeadGvBefore,s2Step159HeadFAfter,s2Step159HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step159HeadGvAfter,s2Step159HeadGvBefore,s2Step159HeadFAfter,s2Step159HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step159HeadGv_checked : planRowResizeLog s2Step159HeadGvBefore s2Step159HeadGvRow 94 s2Step159HeadGvFresh=
    some (s2Step159HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798],771⟩,growRow 771 s2Step159HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step159HeadGvBefore s2Step159HeadGvAfter s2Step159HeadGvRow 94 s2Step159HeadGvFresh
    s2Step159HeadGv_distinct s2Step159HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step159HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step159HeadGvRow.payload++s2Step159HeadGvFresh) s2Step159HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step159HeadBank_rows : planWindowRowsLog s2Step159HeadGBefore [(s2Step159HeadGRow,191),(s2Step159HeadFRow,191),(s2Step159HeadGvRow,94),(s2Step159HeadFvRow,94)] [s2Step159HeadGFresh,s2Step159HeadFFresh,s2Step159HeadGvFresh,s2Step159HeadFvFresh]=
    some (s2Step159HeadFvAfter,[s2Step159HeadGOut,s2Step159HeadFOut,s2Step159HeadGvOut,s2Step159HeadFvOut],(growRow 769 s2Step159HeadGFresh ++ (growRow 768 s2Step159HeadFFresh ++ (growRow 771 s2Step159HeadGvFresh ++ (growRow 770 s2Step159HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step159HeadFvAfter [] []=some (s2Step159HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step159HeadFvBefore s2Step159HeadFvAfter s2Step159HeadFvAfter
    s2Step159HeadFvRow s2Step159HeadFvOut 94 s2Step159HeadFvFresh [] [] []
    (growRow 770 s2Step159HeadFvFresh) ([]) s2Step159HeadFv_Incoming s2Step159HeadFv_checked h4 s2Step159HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step159HeadGvBefore s2Step159HeadGvAfter s2Step159HeadFvAfter
    s2Step159HeadGvRow s2Step159HeadGvOut 94 s2Step159HeadGvFresh [(s2Step159HeadFvRow,94)] [s2Step159HeadFvFresh] [s2Step159HeadFvOut]
    (growRow 771 s2Step159HeadGvFresh) ((growRow 770 s2Step159HeadFvFresh ++ [])) s2Step159HeadGv_Incoming s2Step159HeadGv_checked h3 s2Step159HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step159HeadFBefore s2Step159HeadFAfter s2Step159HeadFvAfter
    s2Step159HeadFRow s2Step159HeadFOut 191 s2Step159HeadFFresh [(s2Step159HeadGvRow,94),(s2Step159HeadFvRow,94)] [s2Step159HeadGvFresh,s2Step159HeadFvFresh] [s2Step159HeadGvOut,s2Step159HeadFvOut]
    (growRow 768 s2Step159HeadFFresh) ((growRow 771 s2Step159HeadGvFresh ++ (growRow 770 s2Step159HeadFvFresh ++ []))) s2Step159HeadF_Incoming s2Step159HeadF_checked h2 s2Step159HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step159HeadGBefore s2Step159HeadGAfter s2Step159HeadFvAfter
    s2Step159HeadGRow s2Step159HeadGOut 191 s2Step159HeadGFresh [(s2Step159HeadFRow,191),(s2Step159HeadGvRow,94),(s2Step159HeadFvRow,94)] [s2Step159HeadFFresh,s2Step159HeadGvFresh,s2Step159HeadFvFresh] [s2Step159HeadFOut,s2Step159HeadGvOut,s2Step159HeadFvOut]
    (growRow 769 s2Step159HeadGFresh) ((growRow 768 s2Step159HeadFFresh ++ (growRow 771 s2Step159HeadGvFresh ++ (growRow 770 s2Step159HeadFvFresh ++ [])))) s2Step159HeadG_Incoming s2Step159HeadG_checked h1 s2Step159HeadG_Outgoing
  exact h0

private theorem s2Step159HeadBank_checked : compileHmrBankResizeLog .headroom s2Step159HeadGBefore ⟨s2Step159HeadFRow,s2Step159HeadGRow,s2Step159HeadFvRow,s2Step159HeadGvRow⟩ ⟨191,191,94,94⟩ [s2Step159HeadGFresh,s2Step159HeadFFresh,s2Step159HeadGvFresh,s2Step159HeadFvFresh]=
    some (s2Step159HeadFvAfter,⟨s2Step159HeadFOut,s2Step159HeadGOut,s2Step159HeadFvOut,s2Step159HeadGvOut⟩,(growRow 769 s2Step159HeadGFresh ++ (growRow 768 s2Step159HeadFFresh ++ (growRow 771 s2Step159HeadGvFresh ++ (growRow 770 s2Step159HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step159HeadBank_rows]
  rfl

private theorem s2Step159Front_checked : compileHmrSourceFrontLog s2Step159EntryFBefore s2Step159FrontBank 190 93 ⟨189,189,94,94⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step159FrontLog=some s2Step159FrontPlan := by
  have pairEq : s2Step159FrontPair=⟨s2Step159HeadFRow,s2Step159HeadGRow,s2Step159HeadFvRow,s2Step159HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step159FrontHead=⟨s2Step159ExitFRow,s2Step159ExitGRow,s2Step159ExitFvRow,s2Step159ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step159Add0A=s2Step159FrontHead.f.wires := by decide +kernel
  have gEq : s2Step159Add0B=s2Step159FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step159Add1A=s2Step159FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step159Add1B=s2Step159FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step159EntryFBefore s2Step159FrontBank 190 93 ⟨189,189,94,94⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step159FrontLog s2Step159FrontPlan
  · exact s2Step159Front_entry
  · exact s2Step159EntryBank_checked
  · exact s2Step159Front_sigma
  · rfl
  · exact s2Step159Front_branch
  · rfl
  · simpa only [s2Step159FrontPlan,pairEq] using s2Step159HeadBank_checked
  · simpa only [s2Step159FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step159F4_checked
  · exact s2Step159Counter_checked
  · rfl
  · simpa only [s2Step159FrontPlan,headEq] using s2Step159ExitBank_checked

private theorem s2Step159Complete_explicit_checked : compileHmrEarlyStepLog s2Step159EntryFBefore s2Step159FrontBank 190 93 ⟨189,189,94,94⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step159CompleteLog=some s2Step159CompletePlan := by
  let Q := s2Step159EarlyControlPlan
  have hq := s2Step159EarlyControl_plan_checked
  have fv1 : s2Step159CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step159CompleteOut.fv.payload[2]?.getD s2Step159CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step159CompleteOut.fv.payload[3]?.getD s2Step159CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step159CompleteOut.fv.payload[4]?.getD s2Step159CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step159EntryFBefore s2Step159EarlyControlArena s2Step159FrontBank 190 93 ⟨189,189,94,94⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step159CompleteLog s2Step159FrontPlan Q
    s2Step159Front_checked s2Step159Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step159Complete_owned s2Step159Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step159EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 s2Step159CompleteOut.fv.second (s2Step159CompleteOut.fv.payload[2]?.getD s2Step159CompleteOut.fv.sign) (s2Step159CompleteOut.fv.payload[3]?.getD s2Step159CompleteOut.fv.sign) (s2Step159CompleteOut.fv.payload[4]?.getD s2Step159CompleteOut.fv.sign) 803 42 s2Step159EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep159Arena : Arena := s2Step159EntryFBefore
def s2PrivateStep159Bank : WindowBank := s2Step159FrontBank
def s2PrivateStep159Spec : HmrSourceWalkStepLog := ⟨190,93,⟨189,189,94,94⟩,42,.early s2Step159CompleteLog⟩
def s2PrivateStep159Plan : HmrSourceStepPlan := .early s2Step159CompletePlan
theorem s2PrivateStep159_source : s2PrivateStep159Spec=s2ObservedLogs144[15] := rfl
theorem s2PrivateStep159_checked : compileHmrSourceStepLog s2PrivateStep159Arena s2PrivateStep159Bank
    s2PrivateStep159Spec.fgWidth s2PrivateStep159Spec.vWidth s2PrivateStep159Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 159 s2PrivateStep159Spec.need none s2PrivateStep159Spec.log=some s2PrivateStep159Plan := by
  change compileHmrSourceStepLog s2Step159EntryFBefore s2Step159FrontBank 190 93 ⟨189,189,94,94⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 159 42 none (.early s2Step159CompleteLog)=some (.early s2Step159CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 159<498)]
  rw [s2Step159Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
