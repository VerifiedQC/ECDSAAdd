import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep156
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

private def s2Step158CompleteMoves : List (Wire × Wire) := [(803,189)]

private def s2Step158EarlyControlLog : HmrEarlyControlLog := ⟨[803, 790, 797, 798, 851],[793],[804],[847, 780, 867, 877, 879, 882],[]⟩

private def s2Step158FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[851], [798], [790], [797]],[[], [], [], []]⟩,[778],[849],[793],[804],[847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[793, 804, 847, 780]⟩

private def s2Step158CompleteLog : HmrEarlyStepLog := ⟨s2Step158FrontLog,s2Step158CompleteMoves,s2Step158EarlyControlLog⟩

private def s2Step158ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701],768⟩

private def s2Step158ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩

private def s2Step158ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],769⟩

private def s2Step158ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private def s2Step158FrontOut : WindowBank := ⟨s2Step158ExitFOut,s2Step158ExitGOut,s2Step158ExitFvOut,s2Step158ExitGvOut⟩

private def s2Step158CompleteOut : WindowBank := s2Step158FrontOut.repacked s2Step158CompleteMoves

private def s2Step158EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step158EarlyControlPositiveArena,[793],s2Step158EarlyControlEqualityArena,[804],⟨⟨778,false⟩,[⟨⟨793,false⟩,804⟩]⟩⟩

private def s2Step158EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,803⟩,⟨⟨774,false⟩,790⟩,⟨⟨775,false⟩,797⟩,⟨⟨776,false⟩,798⟩,⟨⟨777,false⟩,851⟩]⟩

private def s2Step158EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step158EarlyControlZeroArena,s2Step158EarlyControlZeroPlan,s2Step158EarlyControlClassPlan,s2Step158EarlyControlFlagArena,s2Step158EarlyControlFittedArena,s2Step158EarlyControlHistoryArena,s2Step158EarlyControlSigmaArena,s2Step158EarlyControlOutputArena,s2Step158EarlyControlLog⟩

private def s2Step158CounterWork : List Wire := [793, 804, 847, 780]

private theorem s2Step158Counter_bounded : s2Step158CounterWork.toFinset⊆arenaWires := by norm_num [s2Step158CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step158HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158CounterDuring : Arena := ⟨s2Step158HeadFvAfter.live∪s2Step158CounterWork.toFinset,Finset.union_subset s2Step158HeadFvAfter.bounded s2Step158Counter_bounded⟩

private def s2Step158EntryFFresh : List Wire := []

private def s2Step158EntryFvFresh : List Wire := []

private def s2Step158EntryGFresh : List Wire := []

private def s2Step158EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158EntryGvAfter : Arena := s2Step158EntryFBefore

private def s2Step158EntryGvFresh : List Wire := []

private def s2Step158ExitFExtra : List Wire := [798]

private def s2Step158ExitFvExtra : List Wire := [797]

private def s2Step158ExitGExtra : List Wire := [189, 851]

private def s2Step158ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<189) ∨ (190≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158ExitGvExtra : List Wire := [790]

private def s2Step158Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158Add0Work : List Wire := [847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step158Add0_bounded : s2Step158Add0Work.toFinset⊆arenaWires := by
  have h : s2Step158Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step158Add0During : Arena := ⟨s2Step158Add0Arena.live∪s2Step158Add0Work.toFinset,Finset.union_subset s2Step158Add0Arena.bounded s2Step158Add0_bounded⟩

private def s2Step158Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158Add1Work : List Wire := [847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step158Add1_bounded : s2Step158Add1Work.toFinset⊆arenaWires := by
  have h : s2Step158Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step158Add1During : Arena := ⟨s2Step158Add1Arena.live∪s2Step158Add1Work.toFinset,Finset.union_subset s2Step158Add1Arena.bounded s2Step158Add1_bounded⟩

private def s2Step158F4FlagArena : Arena := ⟨s2Step158HeadFvAfter.live∪{793},Finset.union_subset s2Step158HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step158F4Plan : HmrHybridF4Plan := ⟨s2Step158F4FlagArena,[793],s2Step158Add0Arena,[804],s2Step158Add0During,s2Step158Add0Work,s2Step158Add1During,s2Step158Add1Work⟩

private def s2Step158HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 798],768⟩

private def s2Step158HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797],770⟩

private def s2Step158HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 851],769⟩

private def s2Step158HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790],771⟩

private def s2Step158FrontHead : WindowBank := ⟨s2Step158HeadFOut,s2Step158HeadGOut,s2Step158HeadFvOut,s2Step158HeadGvOut⟩

private def s2Step158EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701],768⟩

private def s2Step158EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩

private def s2Step158EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189],769⟩

private def s2Step158EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private def s2Step158FrontPair : WindowBank := ⟨s2Step158EntryFOut,s2Step158EntryGOut,s2Step158EntryFvOut,s2Step158EntryGvOut⟩

private def s2Step158FrontSigmaArena : Arena := ⟨s2Step158EntryGvAfter.live∪{778},Finset.union_subset s2Step158EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step158HeadFFresh : List Wire := [798]

private def s2Step158HeadFvFresh : List Wire := [797]

private def s2Step158HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158HeadGFresh : List Wire := [851]

private def s2Step158HeadGvFresh : List Wire := [790]

private def s2Step158FrontPlan : HmrSourceFront := ⟨s2Step158EntryGvAfter,s2Step158FrontPair,(growRow 768 s2Step158EntryFFresh ++ (growRow 769 s2Step158EntryGFresh ++ (growRow 770 s2Step158EntryFvFresh ++ (growRow 771 s2Step158EntryGvFresh ++ [])))),s2Step158FrontSigmaArena,[778],s2Step158HeadGBefore,[849],
  s2Step158HeadFvAfter,s2Step158FrontHead,(growRow 769 s2Step158HeadGFresh ++ (growRow 768 s2Step158HeadFFresh ++ (growRow 771 s2Step158HeadGvFresh ++ (growRow 770 s2Step158HeadFvFresh ++ [])))),s2Step158F4Plan,s2Step158CounterDuring,s2Step158CounterWork,s2Step158ExitGvAfter,s2Step158FrontOut,(shrinkRow 769 s2Step158ExitGExtra ++ (shrinkRow 768 s2Step158ExitFExtra ++ (shrinkRow 770 s2Step158ExitFvExtra ++ (shrinkRow 771 s2Step158ExitGvExtra ++ []))))⟩

private def s2Step158CompletePlan : HmrEarlyStepPlan := ⟨s2Step158FrontPlan,s2Step158EarlyControlArena,s2Step158EarlyControlPlan,s2Step158CompleteMoves⟩

private theorem s2Step158Complete_apart : List.Disjoint (s2Step158CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [778, 849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step158CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[778, 849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step158Complete_owned : (s2Step158CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step158EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step158EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step158CompleteMoveArena : Arena := ⟨s2Step158ExitGvAfter.live∪{189},Finset.union_subset s2Step158ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step158Complete_repack : s2Step158ExitGvAfter.checkRepack s2Step158CompleteMoves=some s2Step158EarlyControlArena := by
  have owned : 803∈s2Step158ExitGvAfter.live := by norm_num [s2Step158ExitGvAfter,arenaWires]
  have reserve : s2Step158ExitGvAfter.reserve {189}=some s2Step158CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step158ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step158CompleteMoveArena.retireSet {803}=s2Step158EarlyControlArena := by
    unfold Arena.retireSet s2Step158EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step158CompleteMoveArena,s2Step158ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step158CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step158CompleteMoveArena.retireSet {803}).checkRepack []=some s2Step158EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step158EarlyControl_branchOwned : ([849] : List Wire).toFinset⊆s2Step158EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step158EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EarlyControl_branch : compileHmrBranchRetirement s2Step158EarlyControlSigmaArena 849=some s2Step158EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step158EarlyControl_branchOwned
  · ext q
    simp [s2Step158EarlyControlOutputArena,s2Step158EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step158EarlyControl_classEqualityBorrow : s2Step158EarlyControlPositiveArena.checkBorrow (([778, 793] : List Wire).length-1) s2Step158EarlyControlLog.classWork=some s2Step158EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step158EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step158EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step158EarlyControlEqualityArena,s2Step158EarlyControlPositiveArena,s2Step158EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step158EarlyControl_classEqualityOwned : ([778, 793] : List Wire).toFinset⊆s2Step158EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step158EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EarlyControl_classEquality : compileHmrEqualityLog s2Step158EarlyControlPositiveArena [778, 793] 0 s2Step158EarlyControlLog.classWork=some (s2Step158EarlyControlEqualityArena,s2Step158EarlyControlLog.classWork,s2Step158EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step158EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step158EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step158EarlyControl_classOwned : ([777, 851, 778] : List Wire).toFinset⊆s2Step158EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step158EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EarlyControl_positiveBorrow : s2Step158EarlyControlZeroArena.checkBorrow (1) s2Step158EarlyControlLog.positiveWork=some s2Step158EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step158EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step158EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step158EarlyControlPositiveArena,s2Step158EarlyControlZeroArena,s2Step158EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step158EarlyControl_class : compileHmrSourceClassLog s2Step158EarlyControlZeroArena false 777 s2Step158EarlyControlZeroPlan.top 0 778 s2Step158EarlyControlLog.positiveWork s2Step158EarlyControlLog.classWork=some s2Step158EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step158EarlyControlClassPlan s2Step158EarlyControlZeroArena false 777 s2Step158EarlyControlZeroPlan.top 0 778
  constructor
  · decide +kernel
  · exact s2Step158EarlyControl_classOwned
  · exact s2Step158EarlyControl_positiveBorrow
  · exact s2Step158EarlyControl_classEquality

private theorem s2Step158EarlyControl_entryRecordOwned : ([849, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step158EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step158EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EarlyControl_entrySigmaOwned : ([778, 254] : List Wire).toFinset⊆s2Step158EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step158EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EarlyControl_fitBorrow : s2Step158EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step158EarlyControlLog.recordFresh=some s2Step158EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step158EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step158EarlyControlFlagArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step158EarlyControlFittedArena,s2Step158EarlyControlFlagArena,s2Step158EarlyControlLog,arenaWires]

private theorem s2Step158EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step158EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step158EarlyControlFlagArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EarlyControl_fit : compileHmrRecordGrowLog s2Step158EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step158EarlyControlLog.recordFresh=some s2Step158EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step158EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step158EarlyControl_fitBorrow

private theorem s2Step158EarlyControl_flagsBorrow : s2Step158EarlyControlEqualityArena.checkBorrow (6) s2Step158EarlyControlLog.flagWork=some s2Step158EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step158EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step158EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step158EarlyControlFlagArena,s2Step158EarlyControlEqualityArena,s2Step158EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step158EarlyControl_flagsOwned : ([804, 253, 252, 251] : List Wire).toFinset⊆s2Step158EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step158EarlyControlEqualityArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EarlyControl_flags : compileHmrFlagsLog s2Step158EarlyControlClassPlan.equalityArena s2Step158EarlyControlClassPlan.equality.top 253 252 251 s2Step158EarlyControlLog.flagWork=some s2Step158EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step158EarlyControl_flagsOwned⟩
  · exact s2Step158EarlyControl_flagsBorrow

private theorem s2Step158EarlyControl_historyBorrow : s2Step158EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step158EarlyControlLog.recordFresh=some s2Step158EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step158EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step158EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step158EarlyControlHistoryArena,s2Step158EarlyControlArena,s2Step158EarlyControlLog,arenaWires]

private theorem s2Step158EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step158EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step158EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EarlyControl_history : compileHmrRecordGrowLog s2Step158EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step158EarlyControlLog.recordFresh=some s2Step158EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step158EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step158EarlyControl_historyBorrow

private theorem s2Step158EarlyControl_sigmaOwned : ([254, 778] : List Wire).toFinset⊆s2Step158EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step158EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EarlyControl_sigmaReleaseOwned : ([778] : List Wire).toFinset⊆s2Step158EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step158EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EarlyControl_sigmaRelease : s2Step158EarlyControlHistoryArena.release {778} (fun _ => false)=some s2Step158EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step158EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step158EarlyControlSigmaArena,s2Step158EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step158EarlyControl_sigma : compileHmrSigmaDropLog s2Step158EarlyControlHistoryArena false 0 0 254 778 []=some s2Step158EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step158EarlyControl_sigmaOwned⟩
  · exact s2Step158EarlyControl_sigmaRelease

private theorem s2Step158EarlyControl_zeroBorrow : s2Step158EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step158EarlyControlLog.zeroWork=some s2Step158EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step158EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step158EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step158EarlyControlZeroArena,s2Step158EarlyControlArena,s2Step158EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step158EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step158EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step158EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<803) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EarlyControl_zero : compileHmrEqualityLog s2Step158EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step158EarlyControlLog.zeroWork=some (s2Step158EarlyControlZeroArena,s2Step158EarlyControlLog.zeroWork,s2Step158EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step158EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step158EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step158EarlyControl_logged : s2Step158EarlyControlPlan.Logged s2Step158EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 849 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step158EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step158EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step158EarlyControl_zero
  · exact s2Step158EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step158EarlyControl_flags
  · exact s2Step158EarlyControl_fit
  · exact s2Step158EarlyControl_history
  · exact s2Step158EarlyControl_sigma
  · exact s2Step158EarlyControl_branch

private theorem s2Step158EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step158EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 849 42 s2Step158EarlyControlLog=some s2Step158EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step158EarlyControlPlan s2Step158EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 849 42 s2Step158EarlyControl_logged

private def s2Step158EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701],768⟩

private def s2Step158EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩

private def s2Step158EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189],769⟩

private def s2Step158EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private def s2Step158FrontBank : WindowBank := ⟨s2Step158EntryFRow,s2Step158EntryGRow,s2Step158EntryFvRow,s2Step158EntryGvRow⟩

private def s2Step158Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 798, 768]

private def s2Step158Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 851, 769]

private def s2Step158Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797, 770]

private def s2Step158Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790, 771]

private theorem s2Step158Counter_apart : Disjoint s2Step158HeadFvAfter.live s2Step158CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step158HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158Counter_borrowed : s2Step158HeadFvAfter.checkBorrow 4 s2Step158CounterWork=some s2Step158CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step158HeadFvAfter s2Step158CounterDuring s2Step158CounterWork.toFinset s2Step158Counter_bounded s2Step158Counter_apart rfl

private theorem s2Step158Counter_owned : (778::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step158HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step158HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158Counter_checked : compileHmrCounterStepLog s2Step158HeadFvAfter true 778 [772, 773, 774, 775, 776, 777] s2Step158CounterWork=some s2Step158CounterDuring := by
  have owned : ∀q∈778::[772, 773, 774, 775, 776, 777],q∈s2Step158HeadFvAfter.live := fun q hq => s2Step158Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step158Counter_borrowed

private def s2Step158EntryFAfter : Arena := s2Step158EntryFBefore

private theorem s2Step158EntryBank_incomingDistinct : ([s2Step158EntryFRow,s2Step158EntryGRow,s2Step158EntryFvRow,s2Step158EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158EntryF_Incoming : rowsOwned s2Step158EntryFBefore [s2Step158EntryFRow,s2Step158EntryGRow,s2Step158EntryFvRow,s2Step158EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step158EntryFRow,s2Step158EntryGRow,s2Step158EntryFvRow,s2Step158EntryGvRow] 0 s2Step158EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step158EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158EntryBank_outgoingOwned : rowsOwned s2Step158EntryGvAfter [s2Step158EntryFOut,s2Step158EntryGOut,s2Step158EntryFvOut,s2Step158EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step158EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158EntryF_Outgoing : rowsOwned s2Step158EntryGvAfter [s2Step158EntryFOut,s2Step158EntryGOut,s2Step158EntryFvOut,s2Step158EntryGvOut] :=
  hmrRows_owned_drop s2Step158EntryGvAfter [s2Step158EntryFOut,s2Step158EntryGOut,s2Step158EntryFvOut,s2Step158EntryGvOut] 0 s2Step158EntryBank_outgoingOwned

private theorem s2Step158EntryF_distinct : (s2Step158EntryFRow.sign::s2Step158EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158EntryF_owned : (s2Step158EntryFRow.sign::s2Step158EntryFRow.payload).toFinset⊆s2Step158EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step158EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EntryF_reserved : s2Step158EntryFBefore.reserve s2Step158EntryFFresh.toFinset=some s2Step158EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step158EntryFFresh,arenaWires]
  · norm_num [s2Step158EntryFBefore,s2Step158EntryFFresh,arenaWires]
  · simp only [s2Step158EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step158EntryF_checked : planRowResizeLog s2Step158EntryFBefore s2Step158EntryFRow 190 s2Step158EntryFFresh=
    some (s2Step158EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701],768⟩,growRow 768 s2Step158EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step158EntryFBefore s2Step158EntryFAfter s2Step158EntryFRow 190 s2Step158EntryFFresh
    s2Step158EntryF_distinct s2Step158EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step158EntryF_reserved
  have rowEq : WindowRow.mk (s2Step158EntryFRow.payload++s2Step158EntryFFresh) s2Step158EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step158EntryFvAfter : Arena := s2Step158EntryFBefore

private def s2Step158EntryFvBefore : Arena := s2Step158EntryFBefore

private theorem s2Step158EntryFv_Incoming : rowsOwned s2Step158EntryFvBefore [s2Step158EntryFvRow,s2Step158EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step158EntryFRow,s2Step158EntryGRow,s2Step158EntryFvRow,s2Step158EntryGvRow] 2 s2Step158EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step158EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158EntryFv_Outgoing : rowsOwned s2Step158EntryGvAfter [s2Step158EntryFvOut,s2Step158EntryGvOut] :=
  hmrRows_owned_drop s2Step158EntryGvAfter [s2Step158EntryFOut,s2Step158EntryGOut,s2Step158EntryFvOut,s2Step158EntryGvOut] 2 s2Step158EntryBank_outgoingOwned

private theorem s2Step158EntryFv_distinct : (s2Step158EntryFvRow.sign::s2Step158EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158EntryFv_owned : (s2Step158EntryFvRow.sign::s2Step158EntryFvRow.payload).toFinset⊆s2Step158EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step158EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EntryFv_reserved : s2Step158EntryFvBefore.reserve s2Step158EntryFvFresh.toFinset=some s2Step158EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step158EntryFvFresh,arenaWires]
  · norm_num [s2Step158EntryFvBefore,s2Step158EntryFBefore,s2Step158EntryFvFresh,arenaWires]
  · simp only [s2Step158EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step158EntryFv_checked : planRowResizeLog s2Step158EntryFvBefore s2Step158EntryFvRow 93 s2Step158EntryFvFresh=
    some (s2Step158EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩,growRow 770 s2Step158EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step158EntryFvBefore s2Step158EntryFvAfter s2Step158EntryFvRow 93 s2Step158EntryFvFresh
    s2Step158EntryFv_distinct s2Step158EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step158EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step158EntryFvRow.payload++s2Step158EntryFvFresh) s2Step158EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step158EntryGAfter : Arena := s2Step158EntryFBefore

private def s2Step158EntryGBefore : Arena := s2Step158EntryFBefore

private theorem s2Step158EntryG_Incoming : rowsOwned s2Step158EntryGBefore [s2Step158EntryGRow,s2Step158EntryFvRow,s2Step158EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step158EntryFRow,s2Step158EntryGRow,s2Step158EntryFvRow,s2Step158EntryGvRow] 1 s2Step158EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step158EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158EntryG_Outgoing : rowsOwned s2Step158EntryGvAfter [s2Step158EntryGOut,s2Step158EntryFvOut,s2Step158EntryGvOut] :=
  hmrRows_owned_drop s2Step158EntryGvAfter [s2Step158EntryFOut,s2Step158EntryGOut,s2Step158EntryFvOut,s2Step158EntryGvOut] 1 s2Step158EntryBank_outgoingOwned

private theorem s2Step158EntryG_distinct : (s2Step158EntryGRow.sign::s2Step158EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158EntryG_owned : (s2Step158EntryGRow.sign::s2Step158EntryGRow.payload).toFinset⊆s2Step158EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step158EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EntryG_reserved : s2Step158EntryGBefore.reserve s2Step158EntryGFresh.toFinset=some s2Step158EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step158EntryGFresh,arenaWires]
  · norm_num [s2Step158EntryGBefore,s2Step158EntryFBefore,s2Step158EntryGFresh,arenaWires]
  · simp only [s2Step158EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step158EntryG_checked : planRowResizeLog s2Step158EntryGBefore s2Step158EntryGRow 190 s2Step158EntryGFresh=
    some (s2Step158EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189],769⟩,growRow 769 s2Step158EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step158EntryGBefore s2Step158EntryGAfter s2Step158EntryGRow 190 s2Step158EntryGFresh
    s2Step158EntryG_distinct s2Step158EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step158EntryG_reserved
  have rowEq : WindowRow.mk (s2Step158EntryGRow.payload++s2Step158EntryGFresh) s2Step158EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step158EntryGvBefore : Arena := s2Step158EntryFBefore

private theorem s2Step158EntryGv_Incoming : rowsOwned s2Step158EntryGvBefore [s2Step158EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step158EntryFRow,s2Step158EntryGRow,s2Step158EntryFvRow,s2Step158EntryGvRow] 3 s2Step158EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step158EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158EntryGv_Outgoing : rowsOwned s2Step158EntryGvAfter [s2Step158EntryGvOut] :=
  hmrRows_owned_drop s2Step158EntryGvAfter [s2Step158EntryFOut,s2Step158EntryGOut,s2Step158EntryFvOut,s2Step158EntryGvOut] 3 s2Step158EntryBank_outgoingOwned

private theorem s2Step158EntryGv_distinct : (s2Step158EntryGvRow.sign::s2Step158EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158EntryGv_owned : (s2Step158EntryGvRow.sign::s2Step158EntryGvRow.payload).toFinset⊆s2Step158EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step158EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158EntryGv_reserved : s2Step158EntryGvBefore.reserve s2Step158EntryGvFresh.toFinset=some s2Step158EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step158EntryGvFresh,arenaWires]
  · norm_num [s2Step158EntryGvBefore,s2Step158EntryFBefore,s2Step158EntryGvFresh,arenaWires]
  · simp only [s2Step158EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step158EntryGv_checked : planRowResizeLog s2Step158EntryGvBefore s2Step158EntryGvRow 93 s2Step158EntryGvFresh=
    some (s2Step158EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩,growRow 771 s2Step158EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step158EntryGvBefore s2Step158EntryGvAfter s2Step158EntryGvRow 93 s2Step158EntryGvFresh
    s2Step158EntryGv_distinct s2Step158EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step158EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step158EntryGvRow.payload++s2Step158EntryGvFresh) s2Step158EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step158EntryBank_rows : planWindowRowsLog s2Step158EntryFBefore [(s2Step158EntryFRow,190),(s2Step158EntryGRow,190),(s2Step158EntryFvRow,93),(s2Step158EntryGvRow,93)] [s2Step158EntryFFresh,s2Step158EntryGFresh,s2Step158EntryFvFresh,s2Step158EntryGvFresh]=
    some (s2Step158EntryGvAfter,[s2Step158EntryFOut,s2Step158EntryGOut,s2Step158EntryFvOut,s2Step158EntryGvOut],(growRow 768 s2Step158EntryFFresh ++ (growRow 769 s2Step158EntryGFresh ++ (growRow 770 s2Step158EntryFvFresh ++ (growRow 771 s2Step158EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step158EntryGvAfter [] []=some (s2Step158EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step158EntryGvBefore s2Step158EntryGvAfter s2Step158EntryGvAfter
    s2Step158EntryGvRow s2Step158EntryGvOut 93 s2Step158EntryGvFresh [] [] []
    (growRow 771 s2Step158EntryGvFresh) ([]) s2Step158EntryGv_Incoming s2Step158EntryGv_checked h4 s2Step158EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step158EntryFvBefore s2Step158EntryFvAfter s2Step158EntryGvAfter
    s2Step158EntryFvRow s2Step158EntryFvOut 93 s2Step158EntryFvFresh [(s2Step158EntryGvRow,93)] [s2Step158EntryGvFresh] [s2Step158EntryGvOut]
    (growRow 770 s2Step158EntryFvFresh) ((growRow 771 s2Step158EntryGvFresh ++ [])) s2Step158EntryFv_Incoming s2Step158EntryFv_checked h3 s2Step158EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step158EntryGBefore s2Step158EntryGAfter s2Step158EntryGvAfter
    s2Step158EntryGRow s2Step158EntryGOut 190 s2Step158EntryGFresh [(s2Step158EntryFvRow,93),(s2Step158EntryGvRow,93)] [s2Step158EntryFvFresh,s2Step158EntryGvFresh] [s2Step158EntryFvOut,s2Step158EntryGvOut]
    (growRow 769 s2Step158EntryGFresh) ((growRow 770 s2Step158EntryFvFresh ++ (growRow 771 s2Step158EntryGvFresh ++ []))) s2Step158EntryG_Incoming s2Step158EntryG_checked h2 s2Step158EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step158EntryFBefore s2Step158EntryFAfter s2Step158EntryGvAfter
    s2Step158EntryFRow s2Step158EntryFOut 190 s2Step158EntryFFresh [(s2Step158EntryGRow,190),(s2Step158EntryFvRow,93),(s2Step158EntryGvRow,93)] [s2Step158EntryGFresh,s2Step158EntryFvFresh,s2Step158EntryGvFresh] [s2Step158EntryGOut,s2Step158EntryFvOut,s2Step158EntryGvOut]
    (growRow 768 s2Step158EntryFFresh) ((growRow 769 s2Step158EntryGFresh ++ (growRow 770 s2Step158EntryFvFresh ++ (growRow 771 s2Step158EntryGvFresh ++ [])))) s2Step158EntryF_Incoming s2Step158EntryF_checked h1 s2Step158EntryF_Outgoing
  exact h0

private theorem s2Step158EntryBank_checked : compileHmrBankResizeLog .entry s2Step158EntryFBefore ⟨s2Step158EntryFRow,s2Step158EntryGRow,s2Step158EntryFvRow,s2Step158EntryGvRow⟩ ⟨190,190,93,93⟩ [s2Step158EntryFFresh,s2Step158EntryGFresh,s2Step158EntryFvFresh,s2Step158EntryGvFresh]=
    some (s2Step158EntryGvAfter,⟨s2Step158EntryFOut,s2Step158EntryGOut,s2Step158EntryFvOut,s2Step158EntryGvOut⟩,(growRow 768 s2Step158EntryFFresh ++ (growRow 769 s2Step158EntryGFresh ++ (growRow 770 s2Step158EntryFvFresh ++ (growRow 771 s2Step158EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step158EntryBank_rows]
  rfl

private def s2Step158ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<189) ∨ (190≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<798) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<189) ∨ (190≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158ExitFBefore : Arena := s2Step158ExitGAfter

private def s2Step158ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 798],768⟩

private def s2Step158ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797],770⟩

private def s2Step158ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 851],769⟩

private def s2Step158ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790],771⟩

private theorem s2Step158ExitBank_incomingDistinct : ([s2Step158ExitGRow,s2Step158ExitFRow,s2Step158ExitFvRow,s2Step158ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158ExitF_Incoming : rowsOwned s2Step158ExitFBefore [s2Step158ExitFRow,s2Step158ExitFvRow,s2Step158ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step158ExitGRow,s2Step158ExitFRow,s2Step158ExitFvRow,s2Step158ExitGvRow] 1 s2Step158ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step158ExitFBefore (fun q => (0≤q ∧ q<189) ∨ (190≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158ExitBank_outgoingOwned : rowsOwned s2Step158ExitGvAfter [s2Step158ExitGOut,s2Step158ExitFOut,s2Step158ExitFvOut,s2Step158ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step158ExitGvAfter (fun q => (0≤q ∧ q<189) ∨ (190≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158ExitF_Outgoing : rowsOwned s2Step158ExitGvAfter [s2Step158ExitFOut,s2Step158ExitFvOut,s2Step158ExitGvOut] :=
  hmrRows_owned_drop s2Step158ExitGvAfter [s2Step158ExitGOut,s2Step158ExitFOut,s2Step158ExitFvOut,s2Step158ExitGvOut] 1 s2Step158ExitBank_outgoingOwned

private theorem s2Step158ExitF_distinct : (s2Step158ExitFRow.sign::s2Step158ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158ExitF_owned : (s2Step158ExitFRow.sign::s2Step158ExitFRow.payload).toFinset⊆s2Step158ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step158ExitFBefore (fun q => (0≤q ∧ q<189) ∨ (190≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158ExitF_retired : s2Step158ExitFBefore.retireSet s2Step158ExitFExtra.toFinset=s2Step158ExitFAfter := by
  unfold Arena.retireSet s2Step158ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step158ExitFBefore,s2Step158ExitGAfter,s2Step158ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step158ExitF_checked : planRowResizeLog s2Step158ExitFBefore s2Step158ExitFRow 190 []=
    some (s2Step158ExitFAfter,s2Step158ExitFOut,shrinkRow 768 s2Step158ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step158ExitFBefore s2Step158ExitFRow 190 s2Step158ExitF_distinct s2Step158ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step158ExitFRow.payload.take 190) s2Step158ExitFRow.sign=s2Step158ExitFOut := by decide +kernel
  have hi : s2Step158ExitFRow.payload.drop 190=s2Step158ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step158ExitF_retired] at result
  exact result

private def s2Step158ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<189) ∨ (190≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158ExitFvBefore : Arena := s2Step158ExitFAfter

private theorem s2Step158ExitFv_Incoming : rowsOwned s2Step158ExitFvBefore [s2Step158ExitFvRow,s2Step158ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step158ExitGRow,s2Step158ExitFRow,s2Step158ExitFvRow,s2Step158ExitGvRow] 2 s2Step158ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step158ExitFvBefore (fun q => (0≤q ∧ q<189) ∨ (190≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<798) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158ExitFv_Outgoing : rowsOwned s2Step158ExitGvAfter [s2Step158ExitFvOut,s2Step158ExitGvOut] :=
  hmrRows_owned_drop s2Step158ExitGvAfter [s2Step158ExitGOut,s2Step158ExitFOut,s2Step158ExitFvOut,s2Step158ExitGvOut] 2 s2Step158ExitBank_outgoingOwned

private theorem s2Step158ExitFv_distinct : (s2Step158ExitFvRow.sign::s2Step158ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158ExitFv_owned : (s2Step158ExitFvRow.sign::s2Step158ExitFvRow.payload).toFinset⊆s2Step158ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step158ExitFvBefore (fun q => (0≤q ∧ q<189) ∨ (190≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<798) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158ExitFv_retired : s2Step158ExitFvBefore.retireSet s2Step158ExitFvExtra.toFinset=s2Step158ExitFvAfter := by
  unfold Arena.retireSet s2Step158ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step158ExitFvBefore,s2Step158ExitFAfter,s2Step158ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step158ExitFv_checked : planRowResizeLog s2Step158ExitFvBefore s2Step158ExitFvRow 93 []=
    some (s2Step158ExitFvAfter,s2Step158ExitFvOut,shrinkRow 770 s2Step158ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step158ExitFvBefore s2Step158ExitFvRow 93 s2Step158ExitFv_distinct s2Step158ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step158ExitFvRow.payload.take 93) s2Step158ExitFvRow.sign=s2Step158ExitFvOut := by decide +kernel
  have hi : s2Step158ExitFvRow.payload.drop 93=s2Step158ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step158ExitFv_retired] at result
  exact result

private def s2Step158ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step158ExitG_Incoming : rowsOwned s2Step158ExitGBefore [s2Step158ExitGRow,s2Step158ExitFRow,s2Step158ExitFvRow,s2Step158ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step158ExitGRow,s2Step158ExitFRow,s2Step158ExitFvRow,s2Step158ExitGvRow] 0 s2Step158ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step158ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158ExitG_Outgoing : rowsOwned s2Step158ExitGvAfter [s2Step158ExitGOut,s2Step158ExitFOut,s2Step158ExitFvOut,s2Step158ExitGvOut] :=
  hmrRows_owned_drop s2Step158ExitGvAfter [s2Step158ExitGOut,s2Step158ExitFOut,s2Step158ExitFvOut,s2Step158ExitGvOut] 0 s2Step158ExitBank_outgoingOwned

private theorem s2Step158ExitG_distinct : (s2Step158ExitGRow.sign::s2Step158ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158ExitG_owned : (s2Step158ExitGRow.sign::s2Step158ExitGRow.payload).toFinset⊆s2Step158ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step158ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158ExitG_retired : s2Step158ExitGBefore.retireSet s2Step158ExitGExtra.toFinset=s2Step158ExitGAfter := by
  unfold Arena.retireSet s2Step158ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step158ExitGBefore,s2Step158ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step158ExitG_checked : planRowResizeLog s2Step158ExitGBefore s2Step158ExitGRow 189 []=
    some (s2Step158ExitGAfter,s2Step158ExitGOut,shrinkRow 769 s2Step158ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step158ExitGBefore s2Step158ExitGRow 189 s2Step158ExitG_distinct s2Step158ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step158ExitGRow.payload.take 189) s2Step158ExitGRow.sign=s2Step158ExitGOut := by decide +kernel
  have hi : s2Step158ExitGRow.payload.drop 189=s2Step158ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step158ExitG_retired] at result
  exact result

private def s2Step158ExitGvBefore : Arena := s2Step158ExitFvAfter

private theorem s2Step158ExitGv_Incoming : rowsOwned s2Step158ExitGvBefore [s2Step158ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step158ExitGRow,s2Step158ExitFRow,s2Step158ExitFvRow,s2Step158ExitGvRow] 3 s2Step158ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step158ExitGvBefore (fun q => (0≤q ∧ q<189) ∨ (190≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158ExitGv_Outgoing : rowsOwned s2Step158ExitGvAfter [s2Step158ExitGvOut] :=
  hmrRows_owned_drop s2Step158ExitGvAfter [s2Step158ExitGOut,s2Step158ExitFOut,s2Step158ExitFvOut,s2Step158ExitGvOut] 3 s2Step158ExitBank_outgoingOwned

private theorem s2Step158ExitGv_distinct : (s2Step158ExitGvRow.sign::s2Step158ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158ExitGv_owned : (s2Step158ExitGvRow.sign::s2Step158ExitGvRow.payload).toFinset⊆s2Step158ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step158ExitGvBefore (fun q => (0≤q ∧ q<189) ∨ (190≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158ExitGv_retired : s2Step158ExitGvBefore.retireSet s2Step158ExitGvExtra.toFinset=s2Step158ExitGvAfter := by
  unfold Arena.retireSet s2Step158ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step158ExitGvBefore,s2Step158ExitFvAfter,s2Step158ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step158ExitGv_checked : planRowResizeLog s2Step158ExitGvBefore s2Step158ExitGvRow 93 []=
    some (s2Step158ExitGvAfter,s2Step158ExitGvOut,shrinkRow 771 s2Step158ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step158ExitGvBefore s2Step158ExitGvRow 93 s2Step158ExitGv_distinct s2Step158ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step158ExitGvRow.payload.take 93) s2Step158ExitGvRow.sign=s2Step158ExitGvOut := by decide +kernel
  have hi : s2Step158ExitGvRow.payload.drop 93=s2Step158ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step158ExitGv_retired] at result
  exact result

private theorem s2Step158ExitBank_rows : planWindowRowsLog s2Step158ExitGBefore [(s2Step158ExitGRow,189),(s2Step158ExitFRow,190),(s2Step158ExitFvRow,93),(s2Step158ExitGvRow,93)] [[],[],[],[]]=
    some (s2Step158ExitGvAfter,[s2Step158ExitGOut,s2Step158ExitFOut,s2Step158ExitFvOut,s2Step158ExitGvOut],(shrinkRow 769 s2Step158ExitGExtra ++ (shrinkRow 768 s2Step158ExitFExtra ++ (shrinkRow 770 s2Step158ExitFvExtra ++ (shrinkRow 771 s2Step158ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step158ExitGvAfter [] []=some (s2Step158ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step158ExitGvBefore s2Step158ExitGvAfter s2Step158ExitGvAfter
    s2Step158ExitGvRow s2Step158ExitGvOut 93 [] [] [] []
    (shrinkRow 771 s2Step158ExitGvExtra) ([]) s2Step158ExitGv_Incoming s2Step158ExitGv_checked h4 s2Step158ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step158ExitFvBefore s2Step158ExitFvAfter s2Step158ExitGvAfter
    s2Step158ExitFvRow s2Step158ExitFvOut 93 [] [(s2Step158ExitGvRow,93)] [[]] [s2Step158ExitGvOut]
    (shrinkRow 770 s2Step158ExitFvExtra) ((shrinkRow 771 s2Step158ExitGvExtra ++ [])) s2Step158ExitFv_Incoming s2Step158ExitFv_checked h3 s2Step158ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step158ExitFBefore s2Step158ExitFAfter s2Step158ExitGvAfter
    s2Step158ExitFRow s2Step158ExitFOut 190 [] [(s2Step158ExitFvRow,93),(s2Step158ExitGvRow,93)] [[],[]] [s2Step158ExitFvOut,s2Step158ExitGvOut]
    (shrinkRow 768 s2Step158ExitFExtra) ((shrinkRow 770 s2Step158ExitFvExtra ++ (shrinkRow 771 s2Step158ExitGvExtra ++ []))) s2Step158ExitF_Incoming s2Step158ExitF_checked h2 s2Step158ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step158ExitGBefore s2Step158ExitGAfter s2Step158ExitGvAfter
    s2Step158ExitGRow s2Step158ExitGOut 189 [] [(s2Step158ExitFRow,190),(s2Step158ExitFvRow,93),(s2Step158ExitGvRow,93)] [[],[],[]] [s2Step158ExitFOut,s2Step158ExitFvOut,s2Step158ExitGvOut]
    (shrinkRow 769 s2Step158ExitGExtra) ((shrinkRow 768 s2Step158ExitFExtra ++ (shrinkRow 770 s2Step158ExitFvExtra ++ (shrinkRow 771 s2Step158ExitGvExtra ++ [])))) s2Step158ExitG_Incoming s2Step158ExitG_checked h1 s2Step158ExitG_Outgoing
  exact h0

private theorem s2Step158ExitBank_checked : compileHmrBankResizeLog .exit s2Step158ExitGBefore ⟨s2Step158ExitFRow,s2Step158ExitGRow,s2Step158ExitFvRow,s2Step158ExitGvRow⟩ ⟨190,189,93,93⟩ [[],[],[],[]]=
    some (s2Step158ExitGvAfter,⟨s2Step158ExitFOut,s2Step158ExitGOut,s2Step158ExitFvOut,s2Step158ExitGvOut⟩,(shrinkRow 769 s2Step158ExitGExtra ++ (shrinkRow 768 s2Step158ExitFExtra ++ (shrinkRow 770 s2Step158ExitFvExtra ++ (shrinkRow 771 s2Step158ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step158ExitBank_rows]
  rfl

private theorem s2Step158Add0_apart : Disjoint s2Step158Add0Arena.live s2Step158Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step158Add0Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158Add0_card : s2Step158Add0Arena.live.card=882 := by
  decide +kernel

private theorem s2Step158Add0_borrowed : s2Step158Add0Arena.checkBorrow (hmrHybridCount s2Step158Add0Arena s2Step158Add0B.length) s2Step158Add0Work=some s2Step158Add0During := by
  have len : s2Step158Add0Work.length=hmrHybridCount s2Step158Add0Arena s2Step158Add0B.length := by
    rw [hmrHybridCount,s2Step158Add0_card]
    decide +kernel
  have nd : s2Step158Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step158Add0Arena s2Step158Add0During s2Step158Add0Work.toFinset s2Step158Add0_bounded s2Step158Add0_apart rfl

private theorem s2Step158Add0_distinct : (793::849::804::(s2Step158Add0A++s2Step158Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158Add0_owned : (793::849::804::(s2Step158Add0A++s2Step158Add0B)).toFinset⊆s2Step158Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step158Add0Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158Add0_checked : compileHmrHybridCinLog s2Step158Add0Arena 849 793 804 s2Step158Add0A s2Step158Add0B s2Step158Add0Work=some s2Step158Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step158Add0Arena s2Step158Add0During 849 793 804 s2Step158Add0A s2Step158Add0B s2Step158Add0Work
    (by decide +kernel) (by decide +kernel) s2Step158Add0_distinct
    (fun q hq => s2Step158Add0_owned (List.mem_toFinset.mpr hq)) s2Step158Add0_borrowed

private theorem s2Step158Add1_apart : Disjoint s2Step158Add1Arena.live s2Step158Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step158Add1Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158Add1_card : s2Step158Add1Arena.live.card=882 := by
  decide +kernel

private theorem s2Step158Add1_borrowed : s2Step158Add1Arena.checkBorrow (hmrHybridCount s2Step158Add1Arena s2Step158Add1B.length) s2Step158Add1Work=some s2Step158Add1During := by
  have len : s2Step158Add1Work.length=hmrHybridCount s2Step158Add1Arena s2Step158Add1B.length := by
    rw [hmrHybridCount,s2Step158Add1_card]
    decide +kernel
  have nd : s2Step158Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step158Add1Arena s2Step158Add1During s2Step158Add1Work.toFinset s2Step158Add1_bounded s2Step158Add1_apart rfl

private theorem s2Step158Add1_distinct : (793::849::804::(s2Step158Add1A++s2Step158Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158Add1_owned : (793::849::804::(s2Step158Add1A++s2Step158Add1B)).toFinset⊆s2Step158Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step158Add1Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158Add1_checked : compileHmrHybridCinLog s2Step158Add1Arena 849 793 804 s2Step158Add1A s2Step158Add1B s2Step158Add1Work=some s2Step158Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step158Add1Arena s2Step158Add1During 849 793 804 s2Step158Add1A s2Step158Add1B s2Step158Add1Work
    (by decide +kernel) (by decide +kernel) s2Step158Add1_distinct
    (fun q hq => s2Step158Add1_owned (List.mem_toFinset.mpr hq)) s2Step158Add1_borrowed

private theorem s2Step158F4_apart : Disjoint (s2Step158Add0A++s2Step158Add0B).toFinset (s2Step158Add1A++s2Step158Add1B).toFinset := by
  have nd : ((s2Step158Add0A++s2Step158Add0B)++(s2Step158Add1A++s2Step158Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step158F4_carry : s2Step158F4FlagArena.checkBorrow 1 [804]=some s2Step158Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step158F4FlagArena,s2Step158HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step158F4FlagArena,s2Step158HeadFvAfter,s2Step158Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step158F4_distinct : (778::849::793::804::((s2Step158Add0A++s2Step158Add1A)++(s2Step158Add0B++s2Step158Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158F4_flag : s2Step158HeadFvAfter.checkBorrow 1 [793]=some s2Step158F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step158HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step158F4_owned : (778::849::((s2Step158Add0A++s2Step158Add1A)++(s2Step158Add0B++s2Step158Add1B))).toFinset⊆s2Step158HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step158HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158F4_checked : compileHmrHybridF4Log s2Step158HeadFvAfter 778 849 s2Step158Add0A s2Step158Add0B s2Step158Add1A s2Step158Add1B [793] [804] s2Step158Add0Work s2Step158Add1Work=some s2Step158F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step158HeadFvAfter s2Step158F4FlagArena s2Step158Add0Arena s2Step158Add0During s2Step158Add1During 778 849
    s2Step158Add0A s2Step158Add0B s2Step158Add1A s2Step158Add1B [793] [804] s2Step158Add0Work s2Step158Add1Work
    (fun q hq => s2Step158F4_owned (List.mem_toFinset.mpr hq)) s2Step158F4_flag s2Step158F4_carry
    s2Step158F4_distinct s2Step158F4_apart s2Step158Add0_checked s2Step158Add1_checked

private theorem s2Step158Front_branch : s2Step158FrontSigmaArena.checkBorrow 1 [849]=some s2Step158HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step158FrontSigmaArena,s2Step158EntryGvAfter,s2Step158EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step158FrontSigmaArena,s2Step158EntryGvAfter,s2Step158EntryFBefore,s2Step158HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step158Front_entry : HmrFrontEntryValid s2Step158EntryFBefore s2Step158FrontBank 190 93 ⟨190,189,93,93⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step158FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step158EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step158EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step158FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step158Front_sigma : s2Step158EntryGvAfter.checkBorrow 1 [778]=some s2Step158FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step158EntryGvAfter,s2Step158EntryFBefore,arenaWires]
  · rfl

private def s2Step158HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158HeadFBefore : Arena := s2Step158HeadGAfter

private def s2Step158HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701],768⟩

private def s2Step158HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801],770⟩

private def s2Step158HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189],769⟩

private def s2Step158HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839],771⟩

private theorem s2Step158HeadBank_incomingDistinct : ([s2Step158HeadGRow,s2Step158HeadFRow,s2Step158HeadGvRow,s2Step158HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158HeadF_Incoming : rowsOwned s2Step158HeadFBefore [s2Step158HeadFRow,s2Step158HeadGvRow,s2Step158HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step158HeadGRow,s2Step158HeadFRow,s2Step158HeadGvRow,s2Step158HeadFvRow] 1 s2Step158HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step158HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158HeadBank_outgoingOwned : rowsOwned s2Step158HeadFvAfter [s2Step158HeadGOut,s2Step158HeadFOut,s2Step158HeadGvOut,s2Step158HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step158HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158HeadF_Outgoing : rowsOwned s2Step158HeadFvAfter [s2Step158HeadFOut,s2Step158HeadGvOut,s2Step158HeadFvOut] :=
  hmrRows_owned_drop s2Step158HeadFvAfter [s2Step158HeadGOut,s2Step158HeadFOut,s2Step158HeadGvOut,s2Step158HeadFvOut] 1 s2Step158HeadBank_outgoingOwned

private theorem s2Step158HeadF_distinct : (s2Step158HeadFRow.sign::s2Step158HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158HeadF_owned : (s2Step158HeadFRow.sign::s2Step158HeadFRow.payload).toFinset⊆s2Step158HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step158HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158HeadF_reserved : s2Step158HeadFBefore.reserve s2Step158HeadFFresh.toFinset=some s2Step158HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step158HeadFFresh,arenaWires]
  · norm_num [s2Step158HeadFBefore,s2Step158HeadGAfter,s2Step158HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step158HeadFAfter,s2Step158HeadFBefore,s2Step158HeadGAfter,s2Step158HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step158HeadF_checked : planRowResizeLog s2Step158HeadFBefore s2Step158HeadFRow 191 s2Step158HeadFFresh=
    some (s2Step158HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 798],768⟩,growRow 768 s2Step158HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step158HeadFBefore s2Step158HeadFAfter s2Step158HeadFRow 191 s2Step158HeadFFresh
    s2Step158HeadF_distinct s2Step158HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step158HeadF_reserved
  have rowEq : WindowRow.mk (s2Step158HeadFRow.payload++s2Step158HeadFFresh) s2Step158HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 798],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step158HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step158HeadFvBefore : Arena := s2Step158HeadGvAfter

private theorem s2Step158HeadFv_Incoming : rowsOwned s2Step158HeadFvBefore [s2Step158HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step158HeadGRow,s2Step158HeadFRow,s2Step158HeadGvRow,s2Step158HeadFvRow] 3 s2Step158HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step158HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158HeadFv_Outgoing : rowsOwned s2Step158HeadFvAfter [s2Step158HeadFvOut] :=
  hmrRows_owned_drop s2Step158HeadFvAfter [s2Step158HeadGOut,s2Step158HeadFOut,s2Step158HeadGvOut,s2Step158HeadFvOut] 3 s2Step158HeadBank_outgoingOwned

private theorem s2Step158HeadFv_distinct : (s2Step158HeadFvRow.sign::s2Step158HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158HeadFv_owned : (s2Step158HeadFvRow.sign::s2Step158HeadFvRow.payload).toFinset⊆s2Step158HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step158HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158HeadFv_reserved : s2Step158HeadFvBefore.reserve s2Step158HeadFvFresh.toFinset=some s2Step158HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step158HeadFvFresh,arenaWires]
  · norm_num [s2Step158HeadFvBefore,s2Step158HeadGvAfter,s2Step158HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step158HeadFvAfter,s2Step158HeadFvBefore,s2Step158HeadGvAfter,s2Step158HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step158HeadFv_checked : planRowResizeLog s2Step158HeadFvBefore s2Step158HeadFvRow 94 s2Step158HeadFvFresh=
    some (s2Step158HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797],770⟩,growRow 770 s2Step158HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step158HeadFvBefore s2Step158HeadFvAfter s2Step158HeadFvRow 94 s2Step158HeadFvFresh
    s2Step158HeadFv_distinct s2Step158HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step158HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step158HeadFvRow.payload++s2Step158HeadFvFresh) s2Step158HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 797],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step158HeadG_Incoming : rowsOwned s2Step158HeadGBefore [s2Step158HeadGRow,s2Step158HeadFRow,s2Step158HeadGvRow,s2Step158HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step158HeadGRow,s2Step158HeadFRow,s2Step158HeadGvRow,s2Step158HeadFvRow] 0 s2Step158HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step158HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158HeadG_Outgoing : rowsOwned s2Step158HeadFvAfter [s2Step158HeadGOut,s2Step158HeadFOut,s2Step158HeadGvOut,s2Step158HeadFvOut] :=
  hmrRows_owned_drop s2Step158HeadFvAfter [s2Step158HeadGOut,s2Step158HeadFOut,s2Step158HeadGvOut,s2Step158HeadFvOut] 0 s2Step158HeadBank_outgoingOwned

private theorem s2Step158HeadG_distinct : (s2Step158HeadGRow.sign::s2Step158HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158HeadG_owned : (s2Step158HeadGRow.sign::s2Step158HeadGRow.payload).toFinset⊆s2Step158HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step158HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (799≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158HeadG_reserved : s2Step158HeadGBefore.reserve s2Step158HeadGFresh.toFinset=some s2Step158HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step158HeadGFresh,arenaWires]
  · norm_num [s2Step158HeadGBefore,s2Step158HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step158HeadGAfter,s2Step158HeadGBefore,s2Step158HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step158HeadG_checked : planRowResizeLog s2Step158HeadGBefore s2Step158HeadGRow 191 s2Step158HeadGFresh=
    some (s2Step158HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 851],769⟩,growRow 769 s2Step158HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step158HeadGBefore s2Step158HeadGAfter s2Step158HeadGRow 191 s2Step158HeadGFresh
    s2Step158HeadG_distinct s2Step158HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step158HeadG_reserved
  have rowEq : WindowRow.mk (s2Step158HeadGRow.payload++s2Step158HeadGFresh) s2Step158HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 851],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step158HeadGvBefore : Arena := s2Step158HeadFAfter

private theorem s2Step158HeadGv_Incoming : rowsOwned s2Step158HeadGvBefore [s2Step158HeadGvRow,s2Step158HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step158HeadGRow,s2Step158HeadFRow,s2Step158HeadGvRow,s2Step158HeadFvRow] 2 s2Step158HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step158HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step158HeadGv_Outgoing : rowsOwned s2Step158HeadFvAfter [s2Step158HeadGvOut,s2Step158HeadFvOut] :=
  hmrRows_owned_drop s2Step158HeadFvAfter [s2Step158HeadGOut,s2Step158HeadFOut,s2Step158HeadGvOut,s2Step158HeadFvOut] 2 s2Step158HeadBank_outgoingOwned

private theorem s2Step158HeadGv_distinct : (s2Step158HeadGvRow.sign::s2Step158HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step158HeadGv_owned : (s2Step158HeadGvRow.sign::s2Step158HeadGvRow.payload).toFinset⊆s2Step158HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step158HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step158HeadGv_reserved : s2Step158HeadGvBefore.reserve s2Step158HeadGvFresh.toFinset=some s2Step158HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step158HeadGvFresh,arenaWires]
  · norm_num [s2Step158HeadGvBefore,s2Step158HeadFAfter,s2Step158HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step158HeadGvAfter,s2Step158HeadGvBefore,s2Step158HeadFAfter,s2Step158HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step158HeadGv_checked : planRowResizeLog s2Step158HeadGvBefore s2Step158HeadGvRow 94 s2Step158HeadGvFresh=
    some (s2Step158HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790],771⟩,growRow 771 s2Step158HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step158HeadGvBefore s2Step158HeadGvAfter s2Step158HeadGvRow 94 s2Step158HeadGvFresh
    s2Step158HeadGv_distinct s2Step158HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step158HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step158HeadGvRow.payload++s2Step158HeadGvFresh) s2Step158HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 790],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step158HeadBank_rows : planWindowRowsLog s2Step158HeadGBefore [(s2Step158HeadGRow,191),(s2Step158HeadFRow,191),(s2Step158HeadGvRow,94),(s2Step158HeadFvRow,94)] [s2Step158HeadGFresh,s2Step158HeadFFresh,s2Step158HeadGvFresh,s2Step158HeadFvFresh]=
    some (s2Step158HeadFvAfter,[s2Step158HeadGOut,s2Step158HeadFOut,s2Step158HeadGvOut,s2Step158HeadFvOut],(growRow 769 s2Step158HeadGFresh ++ (growRow 768 s2Step158HeadFFresh ++ (growRow 771 s2Step158HeadGvFresh ++ (growRow 770 s2Step158HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step158HeadFvAfter [] []=some (s2Step158HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step158HeadFvBefore s2Step158HeadFvAfter s2Step158HeadFvAfter
    s2Step158HeadFvRow s2Step158HeadFvOut 94 s2Step158HeadFvFresh [] [] []
    (growRow 770 s2Step158HeadFvFresh) ([]) s2Step158HeadFv_Incoming s2Step158HeadFv_checked h4 s2Step158HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step158HeadGvBefore s2Step158HeadGvAfter s2Step158HeadFvAfter
    s2Step158HeadGvRow s2Step158HeadGvOut 94 s2Step158HeadGvFresh [(s2Step158HeadFvRow,94)] [s2Step158HeadFvFresh] [s2Step158HeadFvOut]
    (growRow 771 s2Step158HeadGvFresh) ((growRow 770 s2Step158HeadFvFresh ++ [])) s2Step158HeadGv_Incoming s2Step158HeadGv_checked h3 s2Step158HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step158HeadFBefore s2Step158HeadFAfter s2Step158HeadFvAfter
    s2Step158HeadFRow s2Step158HeadFOut 191 s2Step158HeadFFresh [(s2Step158HeadGvRow,94),(s2Step158HeadFvRow,94)] [s2Step158HeadGvFresh,s2Step158HeadFvFresh] [s2Step158HeadGvOut,s2Step158HeadFvOut]
    (growRow 768 s2Step158HeadFFresh) ((growRow 771 s2Step158HeadGvFresh ++ (growRow 770 s2Step158HeadFvFresh ++ []))) s2Step158HeadF_Incoming s2Step158HeadF_checked h2 s2Step158HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step158HeadGBefore s2Step158HeadGAfter s2Step158HeadFvAfter
    s2Step158HeadGRow s2Step158HeadGOut 191 s2Step158HeadGFresh [(s2Step158HeadFRow,191),(s2Step158HeadGvRow,94),(s2Step158HeadFvRow,94)] [s2Step158HeadFFresh,s2Step158HeadGvFresh,s2Step158HeadFvFresh] [s2Step158HeadFOut,s2Step158HeadGvOut,s2Step158HeadFvOut]
    (growRow 769 s2Step158HeadGFresh) ((growRow 768 s2Step158HeadFFresh ++ (growRow 771 s2Step158HeadGvFresh ++ (growRow 770 s2Step158HeadFvFresh ++ [])))) s2Step158HeadG_Incoming s2Step158HeadG_checked h1 s2Step158HeadG_Outgoing
  exact h0

private theorem s2Step158HeadBank_checked : compileHmrBankResizeLog .headroom s2Step158HeadGBefore ⟨s2Step158HeadFRow,s2Step158HeadGRow,s2Step158HeadFvRow,s2Step158HeadGvRow⟩ ⟨191,191,94,94⟩ [s2Step158HeadGFresh,s2Step158HeadFFresh,s2Step158HeadGvFresh,s2Step158HeadFvFresh]=
    some (s2Step158HeadFvAfter,⟨s2Step158HeadFOut,s2Step158HeadGOut,s2Step158HeadFvOut,s2Step158HeadGvOut⟩,(growRow 769 s2Step158HeadGFresh ++ (growRow 768 s2Step158HeadFFresh ++ (growRow 771 s2Step158HeadGvFresh ++ (growRow 770 s2Step158HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step158HeadBank_rows]
  rfl

private theorem s2Step158Front_checked : compileHmrSourceFrontLog s2Step158EntryFBefore s2Step158FrontBank 190 93 ⟨190,189,93,93⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step158FrontLog=some s2Step158FrontPlan := by
  have pairEq : s2Step158FrontPair=⟨s2Step158HeadFRow,s2Step158HeadGRow,s2Step158HeadFvRow,s2Step158HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step158FrontHead=⟨s2Step158ExitFRow,s2Step158ExitGRow,s2Step158ExitFvRow,s2Step158ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step158Add0A=s2Step158FrontHead.f.wires := by decide +kernel
  have gEq : s2Step158Add0B=s2Step158FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step158Add1A=s2Step158FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step158Add1B=s2Step158FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step158EntryFBefore s2Step158FrontBank 190 93 ⟨190,189,93,93⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step158FrontLog s2Step158FrontPlan
  · exact s2Step158Front_entry
  · exact s2Step158EntryBank_checked
  · exact s2Step158Front_sigma
  · rfl
  · exact s2Step158Front_branch
  · rfl
  · simpa only [s2Step158FrontPlan,pairEq] using s2Step158HeadBank_checked
  · simpa only [s2Step158FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step158F4_checked
  · exact s2Step158Counter_checked
  · rfl
  · simpa only [s2Step158FrontPlan,headEq] using s2Step158ExitBank_checked

private theorem s2Step158Complete_explicit_checked : compileHmrEarlyStepLog s2Step158EntryFBefore s2Step158FrontBank 190 93 ⟨190,189,93,93⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step158CompleteLog=some s2Step158CompletePlan := by
  let Q := s2Step158EarlyControlPlan
  have hq := s2Step158EarlyControl_plan_checked
  have fv1 : s2Step158CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step158CompleteOut.fv.payload[2]?.getD s2Step158CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step158CompleteOut.fv.payload[3]?.getD s2Step158CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step158CompleteOut.fv.payload[4]?.getD s2Step158CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step158EntryFBefore s2Step158EarlyControlArena s2Step158FrontBank 190 93 ⟨190,189,93,93⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step158CompleteLog s2Step158FrontPlan Q
    s2Step158Front_checked s2Step158Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step158Complete_owned s2Step158Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step158EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 s2Step158CompleteOut.fv.second (s2Step158CompleteOut.fv.payload[2]?.getD s2Step158CompleteOut.fv.sign) (s2Step158CompleteOut.fv.payload[3]?.getD s2Step158CompleteOut.fv.sign) (s2Step158CompleteOut.fv.payload[4]?.getD s2Step158CompleteOut.fv.sign) 849 42 s2Step158EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep158Arena : Arena := s2Step158EntryFBefore
def s2PrivateStep158Bank : WindowBank := s2Step158FrontBank
def s2PrivateStep158Spec : HmrSourceWalkStepLog := ⟨190,93,⟨190,189,93,93⟩,42,.early s2Step158CompleteLog⟩
def s2PrivateStep158Plan : HmrSourceStepPlan := .early s2Step158CompletePlan
theorem s2PrivateStep158_source : s2PrivateStep158Spec=s2ObservedLogs144[14] := rfl
theorem s2PrivateStep158_checked : compileHmrSourceStepLog s2PrivateStep158Arena s2PrivateStep158Bank
    s2PrivateStep158Spec.fgWidth s2PrivateStep158Spec.vWidth s2PrivateStep158Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 158 s2PrivateStep158Spec.need none s2PrivateStep158Spec.log=some s2PrivateStep158Plan := by
  change compileHmrSourceStepLog s2Step158EntryFBefore s2Step158FrontBank 190 93 ⟨190,189,93,93⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 158 42 none (.early s2Step158CompleteLog)=some (.early s2Step158CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 158<498)]
  rw [s2Step158Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
