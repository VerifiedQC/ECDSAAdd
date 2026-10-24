import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep158
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

private def s2Step160CompleteMoves : List (Wire × Wire) := []

private def s2Step160EarlyControlLog : HmrEarlyControlLog := ⟨[849, 797, 811, 793, 804],[847],[780],[867, 877, 879, 882, 885, 888],[]⟩

private def s2Step160FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[811], [797], [849], [790]],[[], [], [], []]⟩,[803],[778],[793],[804],[847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[793, 804, 847, 780]⟩

private def s2Step160CompleteLog : HmrEarlyStepLog := ⟨s2Step160FrontLog,s2Step160CompleteMoves,s2Step160EarlyControlLog⟩

private def s2Step160ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700],768⟩

private def s2Step160ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩

private def s2Step160ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],769⟩

private def s2Step160ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798],771⟩

private def s2Step160FrontOut : WindowBank := ⟨s2Step160ExitFOut,s2Step160ExitGOut,s2Step160ExitFvOut,s2Step160ExitGvOut⟩

private def s2Step160CompleteOut : WindowBank := s2Step160FrontOut.repacked s2Step160CompleteMoves

private def s2Step160EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step160EarlyControlPositiveArena,[847],s2Step160EarlyControlEqualityArena,[780],⟨⟨803,false⟩,[⟨⟨847,false⟩,780⟩]⟩⟩

private def s2Step160EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,849⟩,⟨⟨774,false⟩,797⟩,⟨⟨775,false⟩,811⟩,⟨⟨776,false⟩,793⟩,⟨⟨777,false⟩,804⟩]⟩

private def s2Step160EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step160EarlyControlZeroArena,s2Step160EarlyControlZeroPlan,s2Step160EarlyControlClassPlan,s2Step160EarlyControlFlagArena,s2Step160EarlyControlFittedArena,s2Step160EarlyControlHistoryArena,s2Step160EarlyControlSigmaArena,s2Step160EarlyControlOutputArena,s2Step160EarlyControlLog⟩

private def s2Step160CounterWork : List Wire := [793, 804, 847, 780]

private theorem s2Step160Counter_bounded : s2Step160CounterWork.toFinset⊆arenaWires := by norm_num [s2Step160CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step160HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160CounterDuring : Arena := ⟨s2Step160HeadFvAfter.live∪s2Step160CounterWork.toFinset,Finset.union_subset s2Step160HeadFvAfter.bounded s2Step160Counter_bounded⟩

private def s2Step160EntryFFresh : List Wire := []

private def s2Step160EntryFvFresh : List Wire := []

private def s2Step160EntryGFresh : List Wire := []

private def s2Step160EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160EntryGvAfter : Arena := s2Step160EntryFBefore

private def s2Step160EntryGvFresh : List Wire := []

private def s2Step160ExitFExtra : List Wire := [797]

private def s2Step160ExitGExtra : List Wire := [811]

private def s2Step160ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160ExitGvExtra : List Wire := [849]

private def s2Step160Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160Add0Work : List Wire := [847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step160Add0_bounded : s2Step160Add0Work.toFinset⊆arenaWires := by
  have h : s2Step160Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step160Add0During : Arena := ⟨s2Step160Add0Arena.live∪s2Step160Add0Work.toFinset,Finset.union_subset s2Step160Add0Arena.bounded s2Step160Add0_bounded⟩

private def s2Step160Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160Add1Work : List Wire := [847, 780, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step160Add1_bounded : s2Step160Add1Work.toFinset⊆arenaWires := by
  have h : s2Step160Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step160Add1During : Arena := ⟨s2Step160Add1Arena.live∪s2Step160Add1Work.toFinset,Finset.union_subset s2Step160Add1Arena.bounded s2Step160Add1_bounded⟩

private def s2Step160F4FlagArena : Arena := ⟨s2Step160HeadFvAfter.live∪{793},Finset.union_subset s2Step160HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step160F4Plan : HmrHybridF4Plan := ⟨s2Step160F4FlagArena,[793],s2Step160Add0Arena,[804],s2Step160Add0During,s2Step160Add0Work,s2Step160Add1During,s2Step160Add1Work⟩

private def s2Step160HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 797],768⟩

private def s2Step160HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩

private def s2Step160HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 811],769⟩

private def s2Step160HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 849],771⟩

private def s2Step160FrontHead : WindowBank := ⟨s2Step160HeadFOut,s2Step160HeadGOut,s2Step160HeadFvOut,s2Step160HeadGvOut⟩

private def s2Step160EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700],768⟩

private def s2Step160EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851],770⟩

private def s2Step160EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],769⟩

private def s2Step160EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798],771⟩

private def s2Step160FrontPair : WindowBank := ⟨s2Step160EntryFOut,s2Step160EntryGOut,s2Step160EntryFvOut,s2Step160EntryGvOut⟩

private def s2Step160FrontSigmaArena : Arena := ⟨s2Step160EntryGvAfter.live∪{803},Finset.union_subset s2Step160EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step160HeadFFresh : List Wire := [797]

private def s2Step160HeadFvFresh : List Wire := [790]

private def s2Step160HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160HeadGFresh : List Wire := [811]

private def s2Step160HeadGvFresh : List Wire := [849]

private def s2Step160FrontPlan : HmrSourceFront := ⟨s2Step160EntryGvAfter,s2Step160FrontPair,(growRow 768 s2Step160EntryFFresh ++ (growRow 769 s2Step160EntryGFresh ++ (growRow 770 s2Step160EntryFvFresh ++ (growRow 771 s2Step160EntryGvFresh ++ [])))),s2Step160FrontSigmaArena,[803],s2Step160HeadGBefore,[778],
  s2Step160HeadFvAfter,s2Step160FrontHead,(growRow 769 s2Step160HeadGFresh ++ (growRow 768 s2Step160HeadFFresh ++ (growRow 771 s2Step160HeadGvFresh ++ (growRow 770 s2Step160HeadFvFresh ++ [])))),s2Step160F4Plan,s2Step160CounterDuring,s2Step160CounterWork,s2Step160ExitGvAfter,s2Step160FrontOut,(shrinkRow 769 s2Step160ExitGExtra ++ (shrinkRow 768 s2Step160ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step160ExitGvExtra ++ []))))⟩

private def s2Step160CompletePlan : HmrEarlyStepPlan := ⟨s2Step160FrontPlan,s2Step160EarlyControlArena,s2Step160EarlyControlPlan,s2Step160CompleteMoves⟩

private theorem s2Step160Complete_apart : List.Disjoint (s2Step160CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [803, 778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step160CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[803, 778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step160Complete_owned : (s2Step160CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step160EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step160EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160Complete_repack : s2Step160ExitGvAfter.checkRepack s2Step160CompleteMoves=some s2Step160EarlyControlArena := by rfl

private theorem s2Step160EarlyControl_branchOwned : ([778] : List Wire).toFinset⊆s2Step160EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step160EarlyControlSigmaArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EarlyControl_branch : compileHmrBranchRetirement s2Step160EarlyControlSigmaArena 778=some s2Step160EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step160EarlyControl_branchOwned
  · ext q
    simp [s2Step160EarlyControlOutputArena,s2Step160EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step160EarlyControl_classEqualityBorrow : s2Step160EarlyControlPositiveArena.checkBorrow (([803, 847] : List Wire).length-1) s2Step160EarlyControlLog.classWork=some s2Step160EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step160EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step160EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step160EarlyControlEqualityArena,s2Step160EarlyControlPositiveArena,s2Step160EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step160EarlyControl_classEqualityOwned : ([803, 847] : List Wire).toFinset⊆s2Step160EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step160EarlyControlPositiveArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EarlyControl_classEquality : compileHmrEqualityLog s2Step160EarlyControlPositiveArena [803, 847] 0 s2Step160EarlyControlLog.classWork=some (s2Step160EarlyControlEqualityArena,s2Step160EarlyControlLog.classWork,s2Step160EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step160EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step160EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step160EarlyControl_classOwned : ([777, 804, 803] : List Wire).toFinset⊆s2Step160EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step160EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EarlyControl_positiveBorrow : s2Step160EarlyControlZeroArena.checkBorrow (1) s2Step160EarlyControlLog.positiveWork=some s2Step160EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step160EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step160EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step160EarlyControlPositiveArena,s2Step160EarlyControlZeroArena,s2Step160EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step160EarlyControl_class : compileHmrSourceClassLog s2Step160EarlyControlZeroArena false 777 s2Step160EarlyControlZeroPlan.top 0 803 s2Step160EarlyControlLog.positiveWork s2Step160EarlyControlLog.classWork=some s2Step160EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step160EarlyControlClassPlan s2Step160EarlyControlZeroArena false 777 s2Step160EarlyControlZeroPlan.top 0 803
  constructor
  · decide +kernel
  · exact s2Step160EarlyControl_classOwned
  · exact s2Step160EarlyControl_positiveBorrow
  · exact s2Step160EarlyControl_classEquality

private theorem s2Step160EarlyControl_entryRecordOwned : ([778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step160EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step160EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EarlyControl_entrySigmaOwned : ([803, 254] : List Wire).toFinset⊆s2Step160EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step160EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EarlyControl_fitBorrow : s2Step160EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step160EarlyControlLog.recordFresh=some s2Step160EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step160EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step160EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step160EarlyControlFittedArena,s2Step160EarlyControlFlagArena,s2Step160EarlyControlLog,arenaWires]

private theorem s2Step160EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step160EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step160EarlyControlFlagArena (fun q => (0≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EarlyControl_fit : compileHmrRecordGrowLog s2Step160EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step160EarlyControlLog.recordFresh=some s2Step160EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step160EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step160EarlyControl_fitBorrow

private theorem s2Step160EarlyControl_flagsBorrow : s2Step160EarlyControlEqualityArena.checkBorrow (6) s2Step160EarlyControlLog.flagWork=some s2Step160EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step160EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step160EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step160EarlyControlFlagArena,s2Step160EarlyControlEqualityArena,s2Step160EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step160EarlyControl_flagsOwned : ([780, 253, 252, 251] : List Wire).toFinset⊆s2Step160EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step160EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EarlyControl_flags : compileHmrFlagsLog s2Step160EarlyControlClassPlan.equalityArena s2Step160EarlyControlClassPlan.equality.top 253 252 251 s2Step160EarlyControlLog.flagWork=some s2Step160EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step160EarlyControl_flagsOwned⟩
  · exact s2Step160EarlyControl_flagsBorrow

private theorem s2Step160EarlyControl_historyBorrow : s2Step160EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step160EarlyControlLog.recordFresh=some s2Step160EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step160EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step160EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step160EarlyControlHistoryArena,s2Step160EarlyControlArena,s2Step160EarlyControlLog,arenaWires]

private theorem s2Step160EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step160EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step160EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EarlyControl_history : compileHmrRecordGrowLog s2Step160EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step160EarlyControlLog.recordFresh=some s2Step160EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step160EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step160EarlyControl_historyBorrow

private theorem s2Step160EarlyControl_sigmaOwned : ([254, 803] : List Wire).toFinset⊆s2Step160EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step160EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EarlyControl_sigmaReleaseOwned : ([803] : List Wire).toFinset⊆s2Step160EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step160EarlyControlHistoryArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EarlyControl_sigmaRelease : s2Step160EarlyControlHistoryArena.release {803} (fun _ => false)=some s2Step160EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step160EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step160EarlyControlSigmaArena,s2Step160EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step160EarlyControl_sigma : compileHmrSigmaDropLog s2Step160EarlyControlHistoryArena false 0 0 254 803 []=some s2Step160EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step160EarlyControl_sigmaOwned⟩
  · exact s2Step160EarlyControl_sigmaRelease

private theorem s2Step160EarlyControl_zeroBorrow : s2Step160EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step160EarlyControlLog.zeroWork=some s2Step160EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step160EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step160EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step160EarlyControlZeroArena,s2Step160EarlyControlArena,s2Step160EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step160EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step160EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step160EarlyControlArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EarlyControl_zero : compileHmrEqualityLog s2Step160EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step160EarlyControlLog.zeroWork=some (s2Step160EarlyControlZeroArena,s2Step160EarlyControlLog.zeroWork,s2Step160EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step160EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step160EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step160EarlyControl_logged : s2Step160EarlyControlPlan.Logged s2Step160EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 803 254 253 252 251 778 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step160EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step160EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step160EarlyControl_zero
  · exact s2Step160EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step160EarlyControl_flags
  · exact s2Step160EarlyControl_fit
  · exact s2Step160EarlyControl_history
  · exact s2Step160EarlyControl_sigma
  · exact s2Step160EarlyControl_branch

private theorem s2Step160EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step160EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 803 254 253 252 251 778 42 s2Step160EarlyControlLog=some s2Step160EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step160EarlyControlPlan s2Step160EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 803 254 253 252 251 778 42 s2Step160EarlyControl_logged

private def s2Step160EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700],768⟩

private def s2Step160EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851],770⟩

private def s2Step160EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],769⟩

private def s2Step160EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798],771⟩

private def s2Step160FrontBank : WindowBank := ⟨s2Step160EntryFRow,s2Step160EntryGRow,s2Step160EntryFvRow,s2Step160EntryGvRow⟩

private def s2Step160Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 797, 768]

private def s2Step160Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 811, 769]

private def s2Step160Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790, 770]

private def s2Step160Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 849, 771]

private theorem s2Step160Counter_apart : Disjoint s2Step160HeadFvAfter.live s2Step160CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step160HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160Counter_borrowed : s2Step160HeadFvAfter.checkBorrow 4 s2Step160CounterWork=some s2Step160CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step160HeadFvAfter s2Step160CounterDuring s2Step160CounterWork.toFinset s2Step160Counter_bounded s2Step160Counter_apart rfl

private theorem s2Step160Counter_owned : (803::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step160HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step160HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160Counter_checked : compileHmrCounterStepLog s2Step160HeadFvAfter true 803 [772, 773, 774, 775, 776, 777] s2Step160CounterWork=some s2Step160CounterDuring := by
  have owned : ∀q∈803::[772, 773, 774, 775, 776, 777],q∈s2Step160HeadFvAfter.live := fun q hq => s2Step160Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step160Counter_borrowed

private def s2Step160EntryFAfter : Arena := s2Step160EntryFBefore

private theorem s2Step160EntryBank_incomingDistinct : ([s2Step160EntryFRow,s2Step160EntryGRow,s2Step160EntryFvRow,s2Step160EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160EntryF_Incoming : rowsOwned s2Step160EntryFBefore [s2Step160EntryFRow,s2Step160EntryGRow,s2Step160EntryFvRow,s2Step160EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step160EntryFRow,s2Step160EntryGRow,s2Step160EntryFvRow,s2Step160EntryGvRow] 0 s2Step160EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step160EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160EntryBank_outgoingOwned : rowsOwned s2Step160EntryGvAfter [s2Step160EntryFOut,s2Step160EntryGOut,s2Step160EntryFvOut,s2Step160EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step160EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160EntryF_Outgoing : rowsOwned s2Step160EntryGvAfter [s2Step160EntryFOut,s2Step160EntryGOut,s2Step160EntryFvOut,s2Step160EntryGvOut] :=
  hmrRows_owned_drop s2Step160EntryGvAfter [s2Step160EntryFOut,s2Step160EntryGOut,s2Step160EntryFvOut,s2Step160EntryGvOut] 0 s2Step160EntryBank_outgoingOwned

private theorem s2Step160EntryF_distinct : (s2Step160EntryFRow.sign::s2Step160EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160EntryF_owned : (s2Step160EntryFRow.sign::s2Step160EntryFRow.payload).toFinset⊆s2Step160EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step160EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EntryF_reserved : s2Step160EntryFBefore.reserve s2Step160EntryFFresh.toFinset=some s2Step160EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step160EntryFFresh,arenaWires]
  · norm_num [s2Step160EntryFBefore,s2Step160EntryFFresh,arenaWires]
  · simp only [s2Step160EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step160EntryF_checked : planRowResizeLog s2Step160EntryFBefore s2Step160EntryFRow 189 s2Step160EntryFFresh=
    some (s2Step160EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700],768⟩,growRow 768 s2Step160EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step160EntryFBefore s2Step160EntryFAfter s2Step160EntryFRow 189 s2Step160EntryFFresh
    s2Step160EntryF_distinct s2Step160EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step160EntryF_reserved
  have rowEq : WindowRow.mk (s2Step160EntryFRow.payload++s2Step160EntryFFresh) s2Step160EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step160EntryFvAfter : Arena := s2Step160EntryFBefore

private def s2Step160EntryFvBefore : Arena := s2Step160EntryFBefore

private theorem s2Step160EntryFv_Incoming : rowsOwned s2Step160EntryFvBefore [s2Step160EntryFvRow,s2Step160EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step160EntryFRow,s2Step160EntryGRow,s2Step160EntryFvRow,s2Step160EntryGvRow] 2 s2Step160EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step160EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160EntryFv_Outgoing : rowsOwned s2Step160EntryGvAfter [s2Step160EntryFvOut,s2Step160EntryGvOut] :=
  hmrRows_owned_drop s2Step160EntryGvAfter [s2Step160EntryFOut,s2Step160EntryGOut,s2Step160EntryFvOut,s2Step160EntryGvOut] 2 s2Step160EntryBank_outgoingOwned

private theorem s2Step160EntryFv_distinct : (s2Step160EntryFvRow.sign::s2Step160EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160EntryFv_owned : (s2Step160EntryFvRow.sign::s2Step160EntryFvRow.payload).toFinset⊆s2Step160EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step160EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EntryFv_reserved : s2Step160EntryFvBefore.reserve s2Step160EntryFvFresh.toFinset=some s2Step160EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step160EntryFvFresh,arenaWires]
  · norm_num [s2Step160EntryFvBefore,s2Step160EntryFBefore,s2Step160EntryFvFresh,arenaWires]
  · simp only [s2Step160EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step160EntryFv_checked : planRowResizeLog s2Step160EntryFvBefore s2Step160EntryFvRow 94 s2Step160EntryFvFresh=
    some (s2Step160EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851],770⟩,growRow 770 s2Step160EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step160EntryFvBefore s2Step160EntryFvAfter s2Step160EntryFvRow 94 s2Step160EntryFvFresh
    s2Step160EntryFv_distinct s2Step160EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step160EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step160EntryFvRow.payload++s2Step160EntryFvFresh) s2Step160EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step160EntryGAfter : Arena := s2Step160EntryFBefore

private def s2Step160EntryGBefore : Arena := s2Step160EntryFBefore

private theorem s2Step160EntryG_Incoming : rowsOwned s2Step160EntryGBefore [s2Step160EntryGRow,s2Step160EntryFvRow,s2Step160EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step160EntryFRow,s2Step160EntryGRow,s2Step160EntryFvRow,s2Step160EntryGvRow] 1 s2Step160EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step160EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160EntryG_Outgoing : rowsOwned s2Step160EntryGvAfter [s2Step160EntryGOut,s2Step160EntryFvOut,s2Step160EntryGvOut] :=
  hmrRows_owned_drop s2Step160EntryGvAfter [s2Step160EntryFOut,s2Step160EntryGOut,s2Step160EntryFvOut,s2Step160EntryGvOut] 1 s2Step160EntryBank_outgoingOwned

private theorem s2Step160EntryG_distinct : (s2Step160EntryGRow.sign::s2Step160EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160EntryG_owned : (s2Step160EntryGRow.sign::s2Step160EntryGRow.payload).toFinset⊆s2Step160EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step160EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EntryG_reserved : s2Step160EntryGBefore.reserve s2Step160EntryGFresh.toFinset=some s2Step160EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step160EntryGFresh,arenaWires]
  · norm_num [s2Step160EntryGBefore,s2Step160EntryFBefore,s2Step160EntryGFresh,arenaWires]
  · simp only [s2Step160EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step160EntryG_checked : planRowResizeLog s2Step160EntryGBefore s2Step160EntryGRow 189 s2Step160EntryGFresh=
    some (s2Step160EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],769⟩,growRow 769 s2Step160EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step160EntryGBefore s2Step160EntryGAfter s2Step160EntryGRow 189 s2Step160EntryGFresh
    s2Step160EntryG_distinct s2Step160EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step160EntryG_reserved
  have rowEq : WindowRow.mk (s2Step160EntryGRow.payload++s2Step160EntryGFresh) s2Step160EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step160EntryGvBefore : Arena := s2Step160EntryFBefore

private theorem s2Step160EntryGv_Incoming : rowsOwned s2Step160EntryGvBefore [s2Step160EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step160EntryFRow,s2Step160EntryGRow,s2Step160EntryFvRow,s2Step160EntryGvRow] 3 s2Step160EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step160EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160EntryGv_Outgoing : rowsOwned s2Step160EntryGvAfter [s2Step160EntryGvOut] :=
  hmrRows_owned_drop s2Step160EntryGvAfter [s2Step160EntryFOut,s2Step160EntryGOut,s2Step160EntryFvOut,s2Step160EntryGvOut] 3 s2Step160EntryBank_outgoingOwned

private theorem s2Step160EntryGv_distinct : (s2Step160EntryGvRow.sign::s2Step160EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160EntryGv_owned : (s2Step160EntryGvRow.sign::s2Step160EntryGvRow.payload).toFinset⊆s2Step160EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step160EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160EntryGv_reserved : s2Step160EntryGvBefore.reserve s2Step160EntryGvFresh.toFinset=some s2Step160EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step160EntryGvFresh,arenaWires]
  · norm_num [s2Step160EntryGvBefore,s2Step160EntryFBefore,s2Step160EntryGvFresh,arenaWires]
  · simp only [s2Step160EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step160EntryGv_checked : planRowResizeLog s2Step160EntryGvBefore s2Step160EntryGvRow 94 s2Step160EntryGvFresh=
    some (s2Step160EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798],771⟩,growRow 771 s2Step160EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step160EntryGvBefore s2Step160EntryGvAfter s2Step160EntryGvRow 94 s2Step160EntryGvFresh
    s2Step160EntryGv_distinct s2Step160EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step160EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step160EntryGvRow.payload++s2Step160EntryGvFresh) s2Step160EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step160EntryBank_rows : planWindowRowsLog s2Step160EntryFBefore [(s2Step160EntryFRow,189),(s2Step160EntryGRow,189),(s2Step160EntryFvRow,94),(s2Step160EntryGvRow,94)] [s2Step160EntryFFresh,s2Step160EntryGFresh,s2Step160EntryFvFresh,s2Step160EntryGvFresh]=
    some (s2Step160EntryGvAfter,[s2Step160EntryFOut,s2Step160EntryGOut,s2Step160EntryFvOut,s2Step160EntryGvOut],(growRow 768 s2Step160EntryFFresh ++ (growRow 769 s2Step160EntryGFresh ++ (growRow 770 s2Step160EntryFvFresh ++ (growRow 771 s2Step160EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step160EntryGvAfter [] []=some (s2Step160EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step160EntryGvBefore s2Step160EntryGvAfter s2Step160EntryGvAfter
    s2Step160EntryGvRow s2Step160EntryGvOut 94 s2Step160EntryGvFresh [] [] []
    (growRow 771 s2Step160EntryGvFresh) ([]) s2Step160EntryGv_Incoming s2Step160EntryGv_checked h4 s2Step160EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step160EntryFvBefore s2Step160EntryFvAfter s2Step160EntryGvAfter
    s2Step160EntryFvRow s2Step160EntryFvOut 94 s2Step160EntryFvFresh [(s2Step160EntryGvRow,94)] [s2Step160EntryGvFresh] [s2Step160EntryGvOut]
    (growRow 770 s2Step160EntryFvFresh) ((growRow 771 s2Step160EntryGvFresh ++ [])) s2Step160EntryFv_Incoming s2Step160EntryFv_checked h3 s2Step160EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step160EntryGBefore s2Step160EntryGAfter s2Step160EntryGvAfter
    s2Step160EntryGRow s2Step160EntryGOut 189 s2Step160EntryGFresh [(s2Step160EntryFvRow,94),(s2Step160EntryGvRow,94)] [s2Step160EntryFvFresh,s2Step160EntryGvFresh] [s2Step160EntryFvOut,s2Step160EntryGvOut]
    (growRow 769 s2Step160EntryGFresh) ((growRow 770 s2Step160EntryFvFresh ++ (growRow 771 s2Step160EntryGvFresh ++ []))) s2Step160EntryG_Incoming s2Step160EntryG_checked h2 s2Step160EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step160EntryFBefore s2Step160EntryFAfter s2Step160EntryGvAfter
    s2Step160EntryFRow s2Step160EntryFOut 189 s2Step160EntryFFresh [(s2Step160EntryGRow,189),(s2Step160EntryFvRow,94),(s2Step160EntryGvRow,94)] [s2Step160EntryGFresh,s2Step160EntryFvFresh,s2Step160EntryGvFresh] [s2Step160EntryGOut,s2Step160EntryFvOut,s2Step160EntryGvOut]
    (growRow 768 s2Step160EntryFFresh) ((growRow 769 s2Step160EntryGFresh ++ (growRow 770 s2Step160EntryFvFresh ++ (growRow 771 s2Step160EntryGvFresh ++ [])))) s2Step160EntryF_Incoming s2Step160EntryF_checked h1 s2Step160EntryF_Outgoing
  exact h0

private theorem s2Step160EntryBank_checked : compileHmrBankResizeLog .entry s2Step160EntryFBefore ⟨s2Step160EntryFRow,s2Step160EntryGRow,s2Step160EntryFvRow,s2Step160EntryGvRow⟩ ⟨189,189,94,94⟩ [s2Step160EntryFFresh,s2Step160EntryGFresh,s2Step160EntryFvFresh,s2Step160EntryGvFresh]=
    some (s2Step160EntryGvAfter,⟨s2Step160EntryFOut,s2Step160EntryGOut,s2Step160EntryFvOut,s2Step160EntryGvOut⟩,(growRow 768 s2Step160EntryFFresh ++ (growRow 769 s2Step160EntryGFresh ++ (growRow 770 s2Step160EntryFvFresh ++ (growRow 771 s2Step160EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step160EntryBank_rows]
  rfl

private def s2Step160ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160ExitFBefore : Arena := s2Step160ExitGAfter

private def s2Step160ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 797],768⟩

private def s2Step160ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩

private def s2Step160ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 811],769⟩

private def s2Step160ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 849],771⟩

private theorem s2Step160ExitBank_incomingDistinct : ([s2Step160ExitGRow,s2Step160ExitFRow,s2Step160ExitFvRow,s2Step160ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160ExitF_Incoming : rowsOwned s2Step160ExitFBefore [s2Step160ExitFRow,s2Step160ExitFvRow,s2Step160ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step160ExitGRow,s2Step160ExitFRow,s2Step160ExitFvRow,s2Step160ExitGvRow] 1 s2Step160ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step160ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160ExitBank_outgoingOwned : rowsOwned s2Step160ExitGvAfter [s2Step160ExitGOut,s2Step160ExitFOut,s2Step160ExitFvOut,s2Step160ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step160ExitGvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160ExitF_Outgoing : rowsOwned s2Step160ExitGvAfter [s2Step160ExitFOut,s2Step160ExitFvOut,s2Step160ExitGvOut] :=
  hmrRows_owned_drop s2Step160ExitGvAfter [s2Step160ExitGOut,s2Step160ExitFOut,s2Step160ExitFvOut,s2Step160ExitGvOut] 1 s2Step160ExitBank_outgoingOwned

private theorem s2Step160ExitF_distinct : (s2Step160ExitFRow.sign::s2Step160ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160ExitF_owned : (s2Step160ExitFRow.sign::s2Step160ExitFRow.payload).toFinset⊆s2Step160ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step160ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160ExitF_retired : s2Step160ExitFBefore.retireSet s2Step160ExitFExtra.toFinset=s2Step160ExitFAfter := by
  unfold Arena.retireSet s2Step160ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step160ExitFBefore,s2Step160ExitGAfter,s2Step160ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step160ExitF_checked : planRowResizeLog s2Step160ExitFBefore s2Step160ExitFRow 189 []=
    some (s2Step160ExitFAfter,s2Step160ExitFOut,shrinkRow 768 s2Step160ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step160ExitFBefore s2Step160ExitFRow 189 s2Step160ExitF_distinct s2Step160ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step160ExitFRow.payload.take 189) s2Step160ExitFRow.sign=s2Step160ExitFOut := by decide +kernel
  have hi : s2Step160ExitFRow.payload.drop 189=s2Step160ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step160ExitF_retired] at result
  exact result

private def s2Step160ExitFvAfter : Arena := s2Step160ExitFAfter

private def s2Step160ExitFvBefore : Arena := s2Step160ExitFAfter

private theorem s2Step160ExitFv_Incoming : rowsOwned s2Step160ExitFvBefore [s2Step160ExitFvRow,s2Step160ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step160ExitGRow,s2Step160ExitFRow,s2Step160ExitFvRow,s2Step160ExitGvRow] 2 s2Step160ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step160ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160ExitFv_Outgoing : rowsOwned s2Step160ExitGvAfter [s2Step160ExitFvOut,s2Step160ExitGvOut] :=
  hmrRows_owned_drop s2Step160ExitGvAfter [s2Step160ExitGOut,s2Step160ExitFOut,s2Step160ExitFvOut,s2Step160ExitGvOut] 2 s2Step160ExitBank_outgoingOwned

private theorem s2Step160ExitFv_distinct : (s2Step160ExitFvRow.sign::s2Step160ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160ExitFv_owned : (s2Step160ExitFvRow.sign::s2Step160ExitFvRow.payload).toFinset⊆s2Step160ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step160ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160ExitFv_reserved : s2Step160ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step160ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step160ExitFv_checked : planRowResizeLog s2Step160ExitFvBefore s2Step160ExitFvRow 95 []=
    some (s2Step160ExitFvAfter,s2Step160ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step160ExitFvBefore s2Step160ExitFvAfter s2Step160ExitFvRow 95 []
    s2Step160ExitFv_distinct s2Step160ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step160ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step160ExitFvRow.payload++[]) s2Step160ExitFvRow.sign=s2Step160ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step160ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step160ExitG_Incoming : rowsOwned s2Step160ExitGBefore [s2Step160ExitGRow,s2Step160ExitFRow,s2Step160ExitFvRow,s2Step160ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step160ExitGRow,s2Step160ExitFRow,s2Step160ExitFvRow,s2Step160ExitGvRow] 0 s2Step160ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step160ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160ExitG_Outgoing : rowsOwned s2Step160ExitGvAfter [s2Step160ExitGOut,s2Step160ExitFOut,s2Step160ExitFvOut,s2Step160ExitGvOut] :=
  hmrRows_owned_drop s2Step160ExitGvAfter [s2Step160ExitGOut,s2Step160ExitFOut,s2Step160ExitFvOut,s2Step160ExitGvOut] 0 s2Step160ExitBank_outgoingOwned

private theorem s2Step160ExitG_distinct : (s2Step160ExitGRow.sign::s2Step160ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160ExitG_owned : (s2Step160ExitGRow.sign::s2Step160ExitGRow.payload).toFinset⊆s2Step160ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step160ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160ExitG_retired : s2Step160ExitGBefore.retireSet s2Step160ExitGExtra.toFinset=s2Step160ExitGAfter := by
  unfold Arena.retireSet s2Step160ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step160ExitGBefore,s2Step160ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step160ExitG_checked : planRowResizeLog s2Step160ExitGBefore s2Step160ExitGRow 189 []=
    some (s2Step160ExitGAfter,s2Step160ExitGOut,shrinkRow 769 s2Step160ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step160ExitGBefore s2Step160ExitGRow 189 s2Step160ExitG_distinct s2Step160ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step160ExitGRow.payload.take 189) s2Step160ExitGRow.sign=s2Step160ExitGOut := by decide +kernel
  have hi : s2Step160ExitGRow.payload.drop 189=s2Step160ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step160ExitG_retired] at result
  exact result

private def s2Step160ExitGvBefore : Arena := s2Step160ExitFAfter

private theorem s2Step160ExitGv_Incoming : rowsOwned s2Step160ExitGvBefore [s2Step160ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step160ExitGRow,s2Step160ExitFRow,s2Step160ExitFvRow,s2Step160ExitGvRow] 3 s2Step160ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step160ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160ExitGv_Outgoing : rowsOwned s2Step160ExitGvAfter [s2Step160ExitGvOut] :=
  hmrRows_owned_drop s2Step160ExitGvAfter [s2Step160ExitGOut,s2Step160ExitFOut,s2Step160ExitFvOut,s2Step160ExitGvOut] 3 s2Step160ExitBank_outgoingOwned

private theorem s2Step160ExitGv_distinct : (s2Step160ExitGvRow.sign::s2Step160ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160ExitGv_owned : (s2Step160ExitGvRow.sign::s2Step160ExitGvRow.payload).toFinset⊆s2Step160ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step160ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160ExitGv_retired : s2Step160ExitGvBefore.retireSet s2Step160ExitGvExtra.toFinset=s2Step160ExitGvAfter := by
  unfold Arena.retireSet s2Step160ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step160ExitGvBefore,s2Step160ExitFAfter,s2Step160ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step160ExitGv_checked : planRowResizeLog s2Step160ExitGvBefore s2Step160ExitGvRow 94 []=
    some (s2Step160ExitGvAfter,s2Step160ExitGvOut,shrinkRow 771 s2Step160ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step160ExitGvBefore s2Step160ExitGvRow 94 s2Step160ExitGv_distinct s2Step160ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step160ExitGvRow.payload.take 94) s2Step160ExitGvRow.sign=s2Step160ExitGvOut := by decide +kernel
  have hi : s2Step160ExitGvRow.payload.drop 94=s2Step160ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step160ExitGv_retired] at result
  exact result

private theorem s2Step160ExitBank_rows : planWindowRowsLog s2Step160ExitGBefore [(s2Step160ExitGRow,189),(s2Step160ExitFRow,189),(s2Step160ExitFvRow,95),(s2Step160ExitGvRow,94)] [[],[],[],[]]=
    some (s2Step160ExitGvAfter,[s2Step160ExitGOut,s2Step160ExitFOut,s2Step160ExitFvOut,s2Step160ExitGvOut],(shrinkRow 769 s2Step160ExitGExtra ++ (shrinkRow 768 s2Step160ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step160ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step160ExitGvAfter [] []=some (s2Step160ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step160ExitGvBefore s2Step160ExitGvAfter s2Step160ExitGvAfter
    s2Step160ExitGvRow s2Step160ExitGvOut 94 [] [] [] []
    (shrinkRow 771 s2Step160ExitGvExtra) ([]) s2Step160ExitGv_Incoming s2Step160ExitGv_checked h4 s2Step160ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step160ExitFvBefore s2Step160ExitFvAfter s2Step160ExitGvAfter
    s2Step160ExitFvRow s2Step160ExitFvOut 95 [] [(s2Step160ExitGvRow,94)] [[]] [s2Step160ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step160ExitGvExtra ++ [])) s2Step160ExitFv_Incoming s2Step160ExitFv_checked h3 s2Step160ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step160ExitFBefore s2Step160ExitFAfter s2Step160ExitGvAfter
    s2Step160ExitFRow s2Step160ExitFOut 189 [] [(s2Step160ExitFvRow,95),(s2Step160ExitGvRow,94)] [[],[]] [s2Step160ExitFvOut,s2Step160ExitGvOut]
    (shrinkRow 768 s2Step160ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step160ExitGvExtra ++ []))) s2Step160ExitF_Incoming s2Step160ExitF_checked h2 s2Step160ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step160ExitGBefore s2Step160ExitGAfter s2Step160ExitGvAfter
    s2Step160ExitGRow s2Step160ExitGOut 189 [] [(s2Step160ExitFRow,189),(s2Step160ExitFvRow,95),(s2Step160ExitGvRow,94)] [[],[],[]] [s2Step160ExitFOut,s2Step160ExitFvOut,s2Step160ExitGvOut]
    (shrinkRow 769 s2Step160ExitGExtra) ((shrinkRow 768 s2Step160ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step160ExitGvExtra ++ [])))) s2Step160ExitG_Incoming s2Step160ExitG_checked h1 s2Step160ExitG_Outgoing
  exact h0

private theorem s2Step160ExitBank_checked : compileHmrBankResizeLog .exit s2Step160ExitGBefore ⟨s2Step160ExitFRow,s2Step160ExitGRow,s2Step160ExitFvRow,s2Step160ExitGvRow⟩ ⟨189,189,95,94⟩ [[],[],[],[]]=
    some (s2Step160ExitGvAfter,⟨s2Step160ExitFOut,s2Step160ExitGOut,s2Step160ExitFvOut,s2Step160ExitGvOut⟩,(shrinkRow 769 s2Step160ExitGExtra ++ (shrinkRow 768 s2Step160ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step160ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step160ExitBank_rows]
  rfl

private theorem s2Step160Add0_apart : Disjoint s2Step160Add0Arena.live s2Step160Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step160Add0Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160Add0_card : s2Step160Add0Arena.live.card=882 := by
  decide +kernel

private theorem s2Step160Add0_borrowed : s2Step160Add0Arena.checkBorrow (hmrHybridCount s2Step160Add0Arena s2Step160Add0B.length) s2Step160Add0Work=some s2Step160Add0During := by
  have len : s2Step160Add0Work.length=hmrHybridCount s2Step160Add0Arena s2Step160Add0B.length := by
    rw [hmrHybridCount,s2Step160Add0_card]
    decide +kernel
  have nd : s2Step160Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step160Add0Arena s2Step160Add0During s2Step160Add0Work.toFinset s2Step160Add0_bounded s2Step160Add0_apart rfl

private theorem s2Step160Add0_distinct : (793::778::804::(s2Step160Add0A++s2Step160Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160Add0_owned : (793::778::804::(s2Step160Add0A++s2Step160Add0B)).toFinset⊆s2Step160Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step160Add0Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160Add0_checked : compileHmrHybridCinLog s2Step160Add0Arena 778 793 804 s2Step160Add0A s2Step160Add0B s2Step160Add0Work=some s2Step160Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step160Add0Arena s2Step160Add0During 778 793 804 s2Step160Add0A s2Step160Add0B s2Step160Add0Work
    (by decide +kernel) (by decide +kernel) s2Step160Add0_distinct
    (fun q hq => s2Step160Add0_owned (List.mem_toFinset.mpr hq)) s2Step160Add0_borrowed

private theorem s2Step160Add1_apart : Disjoint s2Step160Add1Arena.live s2Step160Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step160Add1Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160Add1_card : s2Step160Add1Arena.live.card=882 := by
  decide +kernel

private theorem s2Step160Add1_borrowed : s2Step160Add1Arena.checkBorrow (hmrHybridCount s2Step160Add1Arena s2Step160Add1B.length) s2Step160Add1Work=some s2Step160Add1During := by
  have len : s2Step160Add1Work.length=hmrHybridCount s2Step160Add1Arena s2Step160Add1B.length := by
    rw [hmrHybridCount,s2Step160Add1_card]
    decide +kernel
  have nd : s2Step160Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step160Add1Arena s2Step160Add1During s2Step160Add1Work.toFinset s2Step160Add1_bounded s2Step160Add1_apart rfl

private theorem s2Step160Add1_distinct : (793::778::804::(s2Step160Add1A++s2Step160Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160Add1_owned : (793::778::804::(s2Step160Add1A++s2Step160Add1B)).toFinset⊆s2Step160Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step160Add1Arena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160Add1_checked : compileHmrHybridCinLog s2Step160Add1Arena 778 793 804 s2Step160Add1A s2Step160Add1B s2Step160Add1Work=some s2Step160Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step160Add1Arena s2Step160Add1During 778 793 804 s2Step160Add1A s2Step160Add1B s2Step160Add1Work
    (by decide +kernel) (by decide +kernel) s2Step160Add1_distinct
    (fun q hq => s2Step160Add1_owned (List.mem_toFinset.mpr hq)) s2Step160Add1_borrowed

private theorem s2Step160F4_apart : Disjoint (s2Step160Add0A++s2Step160Add0B).toFinset (s2Step160Add1A++s2Step160Add1B).toFinset := by
  have nd : ((s2Step160Add0A++s2Step160Add0B)++(s2Step160Add1A++s2Step160Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step160F4_carry : s2Step160F4FlagArena.checkBorrow 1 [804]=some s2Step160Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step160F4FlagArena,s2Step160HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step160F4FlagArena,s2Step160HeadFvAfter,s2Step160Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step160F4_distinct : (803::778::793::804::((s2Step160Add0A++s2Step160Add1A)++(s2Step160Add0B++s2Step160Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160F4_flag : s2Step160HeadFvAfter.checkBorrow 1 [793]=some s2Step160F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step160HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step160F4_owned : (803::778::((s2Step160Add0A++s2Step160Add1A)++(s2Step160Add0B++s2Step160Add1B))).toFinset⊆s2Step160HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step160HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160F4_checked : compileHmrHybridF4Log s2Step160HeadFvAfter 803 778 s2Step160Add0A s2Step160Add0B s2Step160Add1A s2Step160Add1B [793] [804] s2Step160Add0Work s2Step160Add1Work=some s2Step160F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step160HeadFvAfter s2Step160F4FlagArena s2Step160Add0Arena s2Step160Add0During s2Step160Add1During 803 778
    s2Step160Add0A s2Step160Add0B s2Step160Add1A s2Step160Add1B [793] [804] s2Step160Add0Work s2Step160Add1Work
    (fun q hq => s2Step160F4_owned (List.mem_toFinset.mpr hq)) s2Step160F4_flag s2Step160F4_carry
    s2Step160F4_distinct s2Step160F4_apart s2Step160Add0_checked s2Step160Add1_checked

private theorem s2Step160Front_branch : s2Step160FrontSigmaArena.checkBorrow 1 [778]=some s2Step160HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step160FrontSigmaArena,s2Step160EntryGvAfter,s2Step160EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step160FrontSigmaArena,s2Step160EntryGvAfter,s2Step160EntryFBefore,s2Step160HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step160Front_entry : HmrFrontEntryValid s2Step160EntryFBefore s2Step160FrontBank 189 94 ⟨189,189,95,94⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step160FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step160EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step160EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<803) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step160FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step160Front_sigma : s2Step160EntryGvAfter.checkBorrow 1 [803]=some s2Step160FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step160EntryGvAfter,s2Step160EntryFBefore,arenaWires]
  · rfl

private def s2Step160HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160HeadFBefore : Arena := s2Step160HeadGAfter

private def s2Step160HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700],768⟩

private def s2Step160HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851],770⟩

private def s2Step160HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188],769⟩

private def s2Step160HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798],771⟩

private theorem s2Step160HeadBank_incomingDistinct : ([s2Step160HeadGRow,s2Step160HeadFRow,s2Step160HeadGvRow,s2Step160HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160HeadF_Incoming : rowsOwned s2Step160HeadFBefore [s2Step160HeadFRow,s2Step160HeadGvRow,s2Step160HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step160HeadGRow,s2Step160HeadFRow,s2Step160HeadGvRow,s2Step160HeadFvRow] 1 s2Step160HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step160HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160HeadBank_outgoingOwned : rowsOwned s2Step160HeadFvAfter [s2Step160HeadGOut,s2Step160HeadFOut,s2Step160HeadGvOut,s2Step160HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step160HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160HeadF_Outgoing : rowsOwned s2Step160HeadFvAfter [s2Step160HeadFOut,s2Step160HeadGvOut,s2Step160HeadFvOut] :=
  hmrRows_owned_drop s2Step160HeadFvAfter [s2Step160HeadGOut,s2Step160HeadFOut,s2Step160HeadGvOut,s2Step160HeadFvOut] 1 s2Step160HeadBank_outgoingOwned

private theorem s2Step160HeadF_distinct : (s2Step160HeadFRow.sign::s2Step160HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160HeadF_owned : (s2Step160HeadFRow.sign::s2Step160HeadFRow.payload).toFinset⊆s2Step160HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step160HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160HeadF_reserved : s2Step160HeadFBefore.reserve s2Step160HeadFFresh.toFinset=some s2Step160HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step160HeadFFresh,arenaWires]
  · norm_num [s2Step160HeadFBefore,s2Step160HeadGAfter,s2Step160HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step160HeadFAfter,s2Step160HeadFBefore,s2Step160HeadGAfter,s2Step160HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step160HeadF_checked : planRowResizeLog s2Step160HeadFBefore s2Step160HeadFRow 190 s2Step160HeadFFresh=
    some (s2Step160HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 797],768⟩,growRow 768 s2Step160HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step160HeadFBefore s2Step160HeadFAfter s2Step160HeadFRow 190 s2Step160HeadFFresh
    s2Step160HeadF_distinct s2Step160HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step160HeadF_reserved
  have rowEq : WindowRow.mk (s2Step160HeadFRow.payload++s2Step160HeadFFresh) s2Step160HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 797],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step160HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step160HeadFvBefore : Arena := s2Step160HeadGvAfter

private theorem s2Step160HeadFv_Incoming : rowsOwned s2Step160HeadFvBefore [s2Step160HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step160HeadGRow,s2Step160HeadFRow,s2Step160HeadGvRow,s2Step160HeadFvRow] 3 s2Step160HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step160HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160HeadFv_Outgoing : rowsOwned s2Step160HeadFvAfter [s2Step160HeadFvOut] :=
  hmrRows_owned_drop s2Step160HeadFvAfter [s2Step160HeadGOut,s2Step160HeadFOut,s2Step160HeadGvOut,s2Step160HeadFvOut] 3 s2Step160HeadBank_outgoingOwned

private theorem s2Step160HeadFv_distinct : (s2Step160HeadFvRow.sign::s2Step160HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160HeadFv_owned : (s2Step160HeadFvRow.sign::s2Step160HeadFvRow.payload).toFinset⊆s2Step160HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step160HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160HeadFv_reserved : s2Step160HeadFvBefore.reserve s2Step160HeadFvFresh.toFinset=some s2Step160HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step160HeadFvFresh,arenaWires]
  · norm_num [s2Step160HeadFvBefore,s2Step160HeadGvAfter,s2Step160HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step160HeadFvAfter,s2Step160HeadFvBefore,s2Step160HeadGvAfter,s2Step160HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step160HeadFv_checked : planRowResizeLog s2Step160HeadFvBefore s2Step160HeadFvRow 95 s2Step160HeadFvFresh=
    some (s2Step160HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩,growRow 770 s2Step160HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step160HeadFvBefore s2Step160HeadFvAfter s2Step160HeadFvRow 95 s2Step160HeadFvFresh
    s2Step160HeadFv_distinct s2Step160HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step160HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step160HeadFvRow.payload++s2Step160HeadFvFresh) s2Step160HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 796, 815, 801, 851, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step160HeadG_Incoming : rowsOwned s2Step160HeadGBefore [s2Step160HeadGRow,s2Step160HeadFRow,s2Step160HeadGvRow,s2Step160HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step160HeadGRow,s2Step160HeadFRow,s2Step160HeadGvRow,s2Step160HeadFvRow] 0 s2Step160HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step160HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160HeadG_Outgoing : rowsOwned s2Step160HeadFvAfter [s2Step160HeadGOut,s2Step160HeadFOut,s2Step160HeadGvOut,s2Step160HeadFvOut] :=
  hmrRows_owned_drop s2Step160HeadFvAfter [s2Step160HeadGOut,s2Step160HeadFOut,s2Step160HeadGvOut,s2Step160HeadFvOut] 0 s2Step160HeadBank_outgoingOwned

private theorem s2Step160HeadG_distinct : (s2Step160HeadGRow.sign::s2Step160HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160HeadG_owned : (s2Step160HeadGRow.sign::s2Step160HeadGRow.payload).toFinset⊆s2Step160HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step160HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160HeadG_reserved : s2Step160HeadGBefore.reserve s2Step160HeadGFresh.toFinset=some s2Step160HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step160HeadGFresh,arenaWires]
  · norm_num [s2Step160HeadGBefore,s2Step160HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step160HeadGAfter,s2Step160HeadGBefore,s2Step160HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step160HeadG_checked : planRowResizeLog s2Step160HeadGBefore s2Step160HeadGRow 190 s2Step160HeadGFresh=
    some (s2Step160HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 811],769⟩,growRow 769 s2Step160HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step160HeadGBefore s2Step160HeadGAfter s2Step160HeadGRow 190 s2Step160HeadGFresh
    s2Step160HeadG_distinct s2Step160HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step160HeadG_reserved
  have rowEq : WindowRow.mk (s2Step160HeadGRow.payload++s2Step160HeadGFresh) s2Step160HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 811],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step160HeadGvBefore : Arena := s2Step160HeadFAfter

private theorem s2Step160HeadGv_Incoming : rowsOwned s2Step160HeadGvBefore [s2Step160HeadGvRow,s2Step160HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step160HeadGRow,s2Step160HeadFRow,s2Step160HeadGvRow,s2Step160HeadFvRow] 2 s2Step160HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step160HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step160HeadGv_Outgoing : rowsOwned s2Step160HeadFvAfter [s2Step160HeadGvOut,s2Step160HeadFvOut] :=
  hmrRows_owned_drop s2Step160HeadFvAfter [s2Step160HeadGOut,s2Step160HeadFOut,s2Step160HeadGvOut,s2Step160HeadFvOut] 2 s2Step160HeadBank_outgoingOwned

private theorem s2Step160HeadGv_distinct : (s2Step160HeadGvRow.sign::s2Step160HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step160HeadGv_owned : (s2Step160HeadGvRow.sign::s2Step160HeadGvRow.payload).toFinset⊆s2Step160HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step160HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<793) ∨ (794≤q ∧ q<804) ∨ (805≤q ∧ q<847) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step160HeadGv_reserved : s2Step160HeadGvBefore.reserve s2Step160HeadGvFresh.toFinset=some s2Step160HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step160HeadGvFresh,arenaWires]
  · norm_num [s2Step160HeadGvBefore,s2Step160HeadFAfter,s2Step160HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step160HeadGvAfter,s2Step160HeadGvBefore,s2Step160HeadFAfter,s2Step160HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step160HeadGv_checked : planRowResizeLog s2Step160HeadGvBefore s2Step160HeadGvRow 95 s2Step160HeadGvFresh=
    some (s2Step160HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 849],771⟩,growRow 771 s2Step160HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step160HeadGvBefore s2Step160HeadGvAfter s2Step160HeadGvRow 95 s2Step160HeadGvFresh
    s2Step160HeadGv_distinct s2Step160HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step160HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step160HeadGvRow.payload++s2Step160HeadGvFresh) s2Step160HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 779, 786, 791, 839, 798, 849],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step160HeadBank_rows : planWindowRowsLog s2Step160HeadGBefore [(s2Step160HeadGRow,190),(s2Step160HeadFRow,190),(s2Step160HeadGvRow,95),(s2Step160HeadFvRow,95)] [s2Step160HeadGFresh,s2Step160HeadFFresh,s2Step160HeadGvFresh,s2Step160HeadFvFresh]=
    some (s2Step160HeadFvAfter,[s2Step160HeadGOut,s2Step160HeadFOut,s2Step160HeadGvOut,s2Step160HeadFvOut],(growRow 769 s2Step160HeadGFresh ++ (growRow 768 s2Step160HeadFFresh ++ (growRow 771 s2Step160HeadGvFresh ++ (growRow 770 s2Step160HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step160HeadFvAfter [] []=some (s2Step160HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step160HeadFvBefore s2Step160HeadFvAfter s2Step160HeadFvAfter
    s2Step160HeadFvRow s2Step160HeadFvOut 95 s2Step160HeadFvFresh [] [] []
    (growRow 770 s2Step160HeadFvFresh) ([]) s2Step160HeadFv_Incoming s2Step160HeadFv_checked h4 s2Step160HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step160HeadGvBefore s2Step160HeadGvAfter s2Step160HeadFvAfter
    s2Step160HeadGvRow s2Step160HeadGvOut 95 s2Step160HeadGvFresh [(s2Step160HeadFvRow,95)] [s2Step160HeadFvFresh] [s2Step160HeadFvOut]
    (growRow 771 s2Step160HeadGvFresh) ((growRow 770 s2Step160HeadFvFresh ++ [])) s2Step160HeadGv_Incoming s2Step160HeadGv_checked h3 s2Step160HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step160HeadFBefore s2Step160HeadFAfter s2Step160HeadFvAfter
    s2Step160HeadFRow s2Step160HeadFOut 190 s2Step160HeadFFresh [(s2Step160HeadGvRow,95),(s2Step160HeadFvRow,95)] [s2Step160HeadGvFresh,s2Step160HeadFvFresh] [s2Step160HeadGvOut,s2Step160HeadFvOut]
    (growRow 768 s2Step160HeadFFresh) ((growRow 771 s2Step160HeadGvFresh ++ (growRow 770 s2Step160HeadFvFresh ++ []))) s2Step160HeadF_Incoming s2Step160HeadF_checked h2 s2Step160HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step160HeadGBefore s2Step160HeadGAfter s2Step160HeadFvAfter
    s2Step160HeadGRow s2Step160HeadGOut 190 s2Step160HeadGFresh [(s2Step160HeadFRow,190),(s2Step160HeadGvRow,95),(s2Step160HeadFvRow,95)] [s2Step160HeadFFresh,s2Step160HeadGvFresh,s2Step160HeadFvFresh] [s2Step160HeadFOut,s2Step160HeadGvOut,s2Step160HeadFvOut]
    (growRow 769 s2Step160HeadGFresh) ((growRow 768 s2Step160HeadFFresh ++ (growRow 771 s2Step160HeadGvFresh ++ (growRow 770 s2Step160HeadFvFresh ++ [])))) s2Step160HeadG_Incoming s2Step160HeadG_checked h1 s2Step160HeadG_Outgoing
  exact h0

private theorem s2Step160HeadBank_checked : compileHmrBankResizeLog .headroom s2Step160HeadGBefore ⟨s2Step160HeadFRow,s2Step160HeadGRow,s2Step160HeadFvRow,s2Step160HeadGvRow⟩ ⟨190,190,95,95⟩ [s2Step160HeadGFresh,s2Step160HeadFFresh,s2Step160HeadGvFresh,s2Step160HeadFvFresh]=
    some (s2Step160HeadFvAfter,⟨s2Step160HeadFOut,s2Step160HeadGOut,s2Step160HeadFvOut,s2Step160HeadGvOut⟩,(growRow 769 s2Step160HeadGFresh ++ (growRow 768 s2Step160HeadFFresh ++ (growRow 771 s2Step160HeadGvFresh ++ (growRow 770 s2Step160HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step160HeadBank_rows]
  rfl

private theorem s2Step160Front_checked : compileHmrSourceFrontLog s2Step160EntryFBefore s2Step160FrontBank 189 94 ⟨189,189,95,94⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step160FrontLog=some s2Step160FrontPlan := by
  have pairEq : s2Step160FrontPair=⟨s2Step160HeadFRow,s2Step160HeadGRow,s2Step160HeadFvRow,s2Step160HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step160FrontHead=⟨s2Step160ExitFRow,s2Step160ExitGRow,s2Step160ExitFvRow,s2Step160ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step160Add0A=s2Step160FrontHead.f.wires := by decide +kernel
  have gEq : s2Step160Add0B=s2Step160FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step160Add1A=s2Step160FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step160Add1B=s2Step160FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step160EntryFBefore s2Step160FrontBank 189 94 ⟨189,189,95,94⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step160FrontLog s2Step160FrontPlan
  · exact s2Step160Front_entry
  · exact s2Step160EntryBank_checked
  · exact s2Step160Front_sigma
  · rfl
  · exact s2Step160Front_branch
  · rfl
  · simpa only [s2Step160FrontPlan,pairEq] using s2Step160HeadBank_checked
  · simpa only [s2Step160FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step160F4_checked
  · exact s2Step160Counter_checked
  · rfl
  · simpa only [s2Step160FrontPlan,headEq] using s2Step160ExitBank_checked

private theorem s2Step160Complete_explicit_checked : compileHmrEarlyStepLog s2Step160EntryFBefore s2Step160FrontBank 189 94 ⟨189,189,95,94⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step160CompleteLog=some s2Step160CompletePlan := by
  let Q := s2Step160EarlyControlPlan
  have hq := s2Step160EarlyControl_plan_checked
  have fv1 : s2Step160CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step160CompleteOut.fv.payload[2]?.getD s2Step160CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step160CompleteOut.fv.payload[3]?.getD s2Step160CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step160CompleteOut.fv.payload[4]?.getD s2Step160CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step160EntryFBefore s2Step160EarlyControlArena s2Step160FrontBank 189 94 ⟨189,189,95,94⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step160CompleteLog s2Step160FrontPlan Q
    s2Step160Front_checked s2Step160Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step160Complete_owned s2Step160Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step160EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 803 s2Step160CompleteOut.fv.second (s2Step160CompleteOut.fv.payload[2]?.getD s2Step160CompleteOut.fv.sign) (s2Step160CompleteOut.fv.payload[3]?.getD s2Step160CompleteOut.fv.sign) (s2Step160CompleteOut.fv.payload[4]?.getD s2Step160CompleteOut.fv.sign) 778 42 s2Step160EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep160Arena : Arena := s2Step160EntryFBefore
def s2PrivateStep160Bank : WindowBank := s2Step160FrontBank
def s2PrivateStep160Spec : HmrSourceWalkStepLog := ⟨189,94,⟨189,189,95,94⟩,42,.early s2Step160CompleteLog⟩
def s2PrivateStep160Plan : HmrSourceStepPlan := .early s2Step160CompletePlan
theorem s2PrivateStep160_source : s2PrivateStep160Spec=s2ObservedLogs160[0] := rfl
theorem s2PrivateStep160_checked : compileHmrSourceStepLog s2PrivateStep160Arena s2PrivateStep160Bank
    s2PrivateStep160Spec.fgWidth s2PrivateStep160Spec.vWidth s2PrivateStep160Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 160 s2PrivateStep160Spec.need none s2PrivateStep160Spec.log=some s2PrivateStep160Plan := by
  change compileHmrSourceStepLog s2Step160EntryFBefore s2Step160FrontBank 189 94 ⟨189,189,95,94⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 160 42 none (.early s2Step160CompleteLog)=some (.early s2Step160CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 160<498)]
  rw [s2Step160Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
