import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep143
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

private def s2Step145CompleteMoves : List (Wire × Wire) := [(797,196),(780,708)]

private def s2Step145EarlyControlLog : HmrEarlyControlLog := ⟨[780, 797, 783, 789, 841],[778],[849],[790, 815, 867, 877, 879, 882],[]⟩

private def s2Step145FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[841], [789], [783], [816]],[[], [], [], []]⟩,[836],[845],[778],[849],[790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[778, 849, 790, 815]⟩

private def s2Step145CompleteLog : HmrEarlyStepLog := ⟨s2Step145FrontLog,s2Step145CompleteMoves,s2Step145EarlyControlLog⟩

private def s2Step145ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707],768⟩

private def s2Step145ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816],770⟩

private def s2Step145ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195],769⟩

private def s2Step145ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788],771⟩

private def s2Step145FrontOut : WindowBank := ⟨s2Step145ExitFOut,s2Step145ExitGOut,s2Step145ExitFvOut,s2Step145ExitGvOut⟩

private def s2Step145CompleteOut : WindowBank := s2Step145FrontOut.repacked s2Step145CompleteMoves

private def s2Step145EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step145EarlyControlPositiveArena,[778],s2Step145EarlyControlEqualityArena,[849],⟨⟨836,false⟩,[⟨⟨778,false⟩,849⟩]⟩⟩

private def s2Step145EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,780⟩,⟨⟨774,false⟩,797⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,789⟩,⟨⟨777,false⟩,841⟩]⟩

private def s2Step145EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step145EarlyControlZeroArena,s2Step145EarlyControlZeroPlan,s2Step145EarlyControlClassPlan,s2Step145EarlyControlFlagArena,s2Step145EarlyControlFittedArena,s2Step145EarlyControlHistoryArena,s2Step145EarlyControlSigmaArena,s2Step145EarlyControlOutputArena,s2Step145EarlyControlLog⟩

private def s2Step145CounterWork : List Wire := [778, 849, 790, 815]

private theorem s2Step145Counter_bounded : s2Step145CounterWork.toFinset⊆arenaWires := by norm_num [s2Step145CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step145HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145CounterDuring : Arena := ⟨s2Step145HeadFvAfter.live∪s2Step145CounterWork.toFinset,Finset.union_subset s2Step145HeadFvAfter.bounded s2Step145Counter_bounded⟩

private def s2Step145EntryFFresh : List Wire := []

private def s2Step145EntryFvFresh : List Wire := []

private def s2Step145EntryGFresh : List Wire := []

private def s2Step145EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145EntryGvAfter : Arena := s2Step145EntryFBefore

private def s2Step145EntryGvFresh : List Wire := []

private def s2Step145ExitFExtra : List Wire := [708, 789]

private def s2Step145ExitGExtra : List Wire := [196, 841]

private def s2Step145ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<196) ∨ (197≤q ∧ q<708) ∨ (709≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145ExitGvExtra : List Wire := [783]

private def s2Step145Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step145Add0_bounded : s2Step145Add0Work.toFinset⊆arenaWires := by
  have h : s2Step145Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step145Add0During : Arena := ⟨s2Step145Add0Arena.live∪s2Step145Add0Work.toFinset,Finset.union_subset s2Step145Add0Arena.bounded s2Step145Add0_bounded⟩

private def s2Step145Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step145Add1_bounded : s2Step145Add1Work.toFinset⊆arenaWires := by
  have h : s2Step145Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step145Add1During : Arena := ⟨s2Step145Add1Arena.live∪s2Step145Add1Work.toFinset,Finset.union_subset s2Step145Add1Arena.bounded s2Step145Add1_bounded⟩

private def s2Step145F4FlagArena : Arena := ⟨s2Step145HeadFvAfter.live∪{778},Finset.union_subset s2Step145HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step145F4Plan : HmrHybridF4Plan := ⟨s2Step145F4FlagArena,[778],s2Step145Add0Arena,[849],s2Step145Add0During,s2Step145Add0Work,s2Step145Add1During,s2Step145Add1Work⟩

private def s2Step145HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 789],768⟩

private def s2Step145HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816],770⟩

private def s2Step145HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 841],769⟩

private def s2Step145HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 783],771⟩

private def s2Step145FrontHead : WindowBank := ⟨s2Step145HeadFOut,s2Step145HeadGOut,s2Step145HeadFvOut,s2Step145HeadGvOut⟩

private def s2Step145EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708],768⟩

private def s2Step145EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩

private def s2Step145EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],769⟩

private def s2Step145EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788],771⟩

private def s2Step145FrontPair : WindowBank := ⟨s2Step145EntryFOut,s2Step145EntryGOut,s2Step145EntryFvOut,s2Step145EntryGvOut⟩

private def s2Step145FrontSigmaArena : Arena := ⟨s2Step145EntryGvAfter.live∪{836},Finset.union_subset s2Step145EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step145HeadFFresh : List Wire := [789]

private def s2Step145HeadFvFresh : List Wire := [816]

private def s2Step145HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145HeadGFresh : List Wire := [841]

private def s2Step145HeadGvFresh : List Wire := [783]

private def s2Step145FrontPlan : HmrSourceFront := ⟨s2Step145EntryGvAfter,s2Step145FrontPair,(growRow 768 s2Step145EntryFFresh ++ (growRow 769 s2Step145EntryGFresh ++ (growRow 770 s2Step145EntryFvFresh ++ (growRow 771 s2Step145EntryGvFresh ++ [])))),s2Step145FrontSigmaArena,[836],s2Step145HeadGBefore,[845],
  s2Step145HeadFvAfter,s2Step145FrontHead,(growRow 769 s2Step145HeadGFresh ++ (growRow 768 s2Step145HeadFFresh ++ (growRow 771 s2Step145HeadGvFresh ++ (growRow 770 s2Step145HeadFvFresh ++ [])))),s2Step145F4Plan,s2Step145CounterDuring,s2Step145CounterWork,s2Step145ExitGvAfter,s2Step145FrontOut,(shrinkRow 769 s2Step145ExitGExtra ++ (shrinkRow 768 s2Step145ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step145ExitGvExtra ++ []))))⟩

private def s2Step145CompletePlan : HmrEarlyStepPlan := ⟨s2Step145FrontPlan,s2Step145EarlyControlArena,s2Step145EarlyControlPlan,s2Step145CompleteMoves⟩

private theorem s2Step145Complete_apart : List.Disjoint (s2Step145CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [836, 845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step145CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[836, 845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step145Complete_owned : (s2Step145CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step145EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step145EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step145CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,708),(709,778),(779,783),(784,789),(791,797),(798,815),(816,841),(842,849),(850,867),(868,877),(878,879),(880,882),(883,885),(886,888),(889,890)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step145CompleteRelocationMove0Borrowed : Arena := ⟨s2Step145ExitGvAfter.live∪{196},Finset.union_subset s2Step145ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step145CompleteRelocationMove1Borrowed : Arena := ⟨s2Step145CompleteRelocationMove0After.live∪{708},Finset.union_subset s2Step145CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step145CompleteRelocation_move0_owned : 797∈s2Step145ExitGvAfter.live := by norm_num [s2Step145ExitGvAfter,arenaWires]

private theorem s2Step145CompleteRelocation_move0_reserve : s2Step145ExitGvAfter.reserve {196}=some s2Step145CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step145ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step145CompleteRelocation_move0_retire : s2Step145CompleteRelocationMove0Borrowed.retireSet {797}=s2Step145CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step145CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step145CompleteRelocationMove0Borrowed,s2Step145ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step145CompleteRelocation_move1_owned : 780∈s2Step145CompleteRelocationMove0After.live := by norm_num [s2Step145CompleteRelocationMove0After,arenaWires]

private theorem s2Step145CompleteRelocation_move1_reserve : s2Step145CompleteRelocationMove0After.reserve {708}=some s2Step145CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step145CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step145CompleteRelocation_move1_retire : s2Step145CompleteRelocationMove1Borrowed.retireSet {780}=s2Step145EarlyControlArena := by
  unfold Arena.retireSet s2Step145EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step145CompleteRelocationMove1Borrowed,s2Step145CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step145CompleteRelocation_checked : s2Step145ExitGvAfter.checkRepack [(797,196),(780,708)]=some s2Step145EarlyControlArena := by
  have tail2 : s2Step145EarlyControlArena.checkRepack []=some s2Step145EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step145CompleteRelocationMove0After s2Step145CompleteRelocationMove1Borrowed s2Step145EarlyControlArena s2Step145EarlyControlArena 780 708 []
    s2Step145CompleteRelocation_move1_owned s2Step145CompleteRelocation_move1_reserve s2Step145CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step145ExitGvAfter s2Step145CompleteRelocationMove0Borrowed s2Step145CompleteRelocationMove0After s2Step145EarlyControlArena 797 196 [(780,708)]
    s2Step145CompleteRelocation_move0_owned s2Step145CompleteRelocation_move0_reserve s2Step145CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step145Complete_repack : s2Step145ExitGvAfter.checkRepack s2Step145CompleteMoves=some s2Step145EarlyControlArena := by
  simpa only [s2Step145CompleteMoves] using s2Step145CompleteRelocation_checked

private theorem s2Step145EarlyControl_branchOwned : ([845] : List Wire).toFinset⊆s2Step145EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step145EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EarlyControl_branch : compileHmrBranchRetirement s2Step145EarlyControlSigmaArena 845=some s2Step145EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step145EarlyControl_branchOwned
  · ext q
    simp [s2Step145EarlyControlOutputArena,s2Step145EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step145EarlyControl_classEqualityBorrow : s2Step145EarlyControlPositiveArena.checkBorrow (([836, 778] : List Wire).length-1) s2Step145EarlyControlLog.classWork=some s2Step145EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step145EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step145EarlyControlEqualityArena,s2Step145EarlyControlPositiveArena,s2Step145EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step145EarlyControl_classEqualityOwned : ([836, 778] : List Wire).toFinset⊆s2Step145EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step145EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EarlyControl_classEquality : compileHmrEqualityLog s2Step145EarlyControlPositiveArena [836, 778] 0 s2Step145EarlyControlLog.classWork=some (s2Step145EarlyControlEqualityArena,s2Step145EarlyControlLog.classWork,s2Step145EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step145EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step145EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step145EarlyControl_classOwned : ([777, 841, 836] : List Wire).toFinset⊆s2Step145EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step145EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EarlyControl_positiveBorrow : s2Step145EarlyControlZeroArena.checkBorrow (1) s2Step145EarlyControlLog.positiveWork=some s2Step145EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step145EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step145EarlyControlPositiveArena,s2Step145EarlyControlZeroArena,s2Step145EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step145EarlyControl_class : compileHmrSourceClassLog s2Step145EarlyControlZeroArena false 777 s2Step145EarlyControlZeroPlan.top 0 836 s2Step145EarlyControlLog.positiveWork s2Step145EarlyControlLog.classWork=some s2Step145EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step145EarlyControlClassPlan s2Step145EarlyControlZeroArena false 777 s2Step145EarlyControlZeroPlan.top 0 836
  constructor
  · decide +kernel
  · exact s2Step145EarlyControl_classOwned
  · exact s2Step145EarlyControl_positiveBorrow
  · exact s2Step145EarlyControl_classEquality

private theorem s2Step145EarlyControl_entryRecordOwned : ([845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step145EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step145EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EarlyControl_entrySigmaOwned : ([836, 254] : List Wire).toFinset⊆s2Step145EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step145EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EarlyControl_fitBorrow : s2Step145EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step145EarlyControlLog.recordFresh=some s2Step145EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step145EarlyControlFlagArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step145EarlyControlFittedArena,s2Step145EarlyControlFlagArena,s2Step145EarlyControlLog,arenaWires]

private theorem s2Step145EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step145EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step145EarlyControlFlagArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EarlyControl_fit : compileHmrRecordGrowLog s2Step145EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step145EarlyControlLog.recordFresh=some s2Step145EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step145EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step145EarlyControl_fitBorrow

private theorem s2Step145EarlyControl_flagsBorrow : s2Step145EarlyControlEqualityArena.checkBorrow (6) s2Step145EarlyControlLog.flagWork=some s2Step145EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step145EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step145EarlyControlFlagArena,s2Step145EarlyControlEqualityArena,s2Step145EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step145EarlyControl_flagsOwned : ([849, 253, 252, 251] : List Wire).toFinset⊆s2Step145EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step145EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EarlyControl_flags : compileHmrFlagsLog s2Step145EarlyControlClassPlan.equalityArena s2Step145EarlyControlClassPlan.equality.top 253 252 251 s2Step145EarlyControlLog.flagWork=some s2Step145EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step145EarlyControl_flagsOwned⟩
  · exact s2Step145EarlyControl_flagsBorrow

private theorem s2Step145EarlyControl_historyBorrow : s2Step145EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step145EarlyControlLog.recordFresh=some s2Step145EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step145EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step145EarlyControlHistoryArena,s2Step145EarlyControlArena,s2Step145EarlyControlLog,arenaWires]

private theorem s2Step145EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step145EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step145EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EarlyControl_history : compileHmrRecordGrowLog s2Step145EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step145EarlyControlLog.recordFresh=some s2Step145EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step145EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step145EarlyControl_historyBorrow

private theorem s2Step145EarlyControl_sigmaOwned : ([254, 836] : List Wire).toFinset⊆s2Step145EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step145EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EarlyControl_sigmaReleaseOwned : ([836] : List Wire).toFinset⊆s2Step145EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step145EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EarlyControl_sigmaRelease : s2Step145EarlyControlHistoryArena.release {836} (fun _ => false)=some s2Step145EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step145EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step145EarlyControlSigmaArena,s2Step145EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step145EarlyControl_sigma : compileHmrSigmaDropLog s2Step145EarlyControlHistoryArena false 0 0 254 836 []=some s2Step145EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step145EarlyControl_sigmaOwned⟩
  · exact s2Step145EarlyControl_sigmaRelease

private theorem s2Step145EarlyControl_zeroBorrow : s2Step145EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step145EarlyControlLog.zeroWork=some s2Step145EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step145EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step145EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step145EarlyControlZeroArena,s2Step145EarlyControlArena,s2Step145EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step145EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step145EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step145EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EarlyControl_zero : compileHmrEqualityLog s2Step145EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step145EarlyControlLog.zeroWork=some (s2Step145EarlyControlZeroArena,s2Step145EarlyControlLog.zeroWork,s2Step145EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step145EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step145EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step145EarlyControl_logged : s2Step145EarlyControlPlan.Logged s2Step145EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 836 254 253 252 251 845 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step145EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step145EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step145EarlyControl_zero
  · exact s2Step145EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step145EarlyControl_flags
  · exact s2Step145EarlyControl_fit
  · exact s2Step145EarlyControl_history
  · exact s2Step145EarlyControl_sigma
  · exact s2Step145EarlyControl_branch

private theorem s2Step145EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step145EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 836 254 253 252 251 845 42 s2Step145EarlyControlLog=some s2Step145EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step145EarlyControlPlan s2Step145EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 836 254 253 252 251 845 42 s2Step145EarlyControl_logged

private def s2Step145EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708],768⟩

private def s2Step145EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩

private def s2Step145EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],769⟩

private def s2Step145EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788],771⟩

private def s2Step145FrontBank : WindowBank := ⟨s2Step145EntryFRow,s2Step145EntryGRow,s2Step145EntryFvRow,s2Step145EntryGvRow⟩

private def s2Step145Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 789, 768]

private def s2Step145Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 841, 769]

private def s2Step145Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 770]

private def s2Step145Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 783, 771]

private theorem s2Step145Counter_apart : Disjoint s2Step145HeadFvAfter.live s2Step145CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step145HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145Counter_borrowed : s2Step145HeadFvAfter.checkBorrow 4 s2Step145CounterWork=some s2Step145CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step145HeadFvAfter s2Step145CounterDuring s2Step145CounterWork.toFinset s2Step145Counter_bounded s2Step145Counter_apart rfl

private theorem s2Step145Counter_owned : (836::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step145HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step145HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145Counter_checked : compileHmrCounterStepLog s2Step145HeadFvAfter true 836 [772, 773, 774, 775, 776, 777] s2Step145CounterWork=some s2Step145CounterDuring := by
  have owned : ∀q∈836::[772, 773, 774, 775, 776, 777],q∈s2Step145HeadFvAfter.live := fun q hq => s2Step145Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step145Counter_borrowed

private def s2Step145EntryFAfter : Arena := s2Step145EntryFBefore

private theorem s2Step145EntryBank_incomingDistinct : ([s2Step145EntryFRow,s2Step145EntryGRow,s2Step145EntryFvRow,s2Step145EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145EntryF_Incoming : rowsOwned s2Step145EntryFBefore [s2Step145EntryFRow,s2Step145EntryGRow,s2Step145EntryFvRow,s2Step145EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step145EntryFRow,s2Step145EntryGRow,s2Step145EntryFvRow,s2Step145EntryGvRow] 0 s2Step145EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step145EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145EntryBank_outgoingOwned : rowsOwned s2Step145EntryGvAfter [s2Step145EntryFOut,s2Step145EntryGOut,s2Step145EntryFvOut,s2Step145EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step145EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145EntryF_Outgoing : rowsOwned s2Step145EntryGvAfter [s2Step145EntryFOut,s2Step145EntryGOut,s2Step145EntryFvOut,s2Step145EntryGvOut] :=
  hmrRows_owned_drop s2Step145EntryGvAfter [s2Step145EntryFOut,s2Step145EntryGOut,s2Step145EntryFvOut,s2Step145EntryGvOut] 0 s2Step145EntryBank_outgoingOwned

private theorem s2Step145EntryF_distinct : (s2Step145EntryFRow.sign::s2Step145EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145EntryF_owned : (s2Step145EntryFRow.sign::s2Step145EntryFRow.payload).toFinset⊆s2Step145EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step145EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EntryF_reserved : s2Step145EntryFBefore.reserve s2Step145EntryFFresh.toFinset=some s2Step145EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step145EntryFFresh,arenaWires]
  · norm_num [s2Step145EntryFBefore,s2Step145EntryFFresh,arenaWires]
  · simp only [s2Step145EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step145EntryF_checked : planRowResizeLog s2Step145EntryFBefore s2Step145EntryFRow 197 s2Step145EntryFFresh=
    some (s2Step145EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708],768⟩,growRow 768 s2Step145EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step145EntryFBefore s2Step145EntryFAfter s2Step145EntryFRow 197 s2Step145EntryFFresh
    s2Step145EntryF_distinct s2Step145EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step145EntryF_reserved
  have rowEq : WindowRow.mk (s2Step145EntryFRow.payload++s2Step145EntryFFresh) s2Step145EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step145EntryFvAfter : Arena := s2Step145EntryFBefore

private def s2Step145EntryFvBefore : Arena := s2Step145EntryFBefore

private theorem s2Step145EntryFv_Incoming : rowsOwned s2Step145EntryFvBefore [s2Step145EntryFvRow,s2Step145EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step145EntryFRow,s2Step145EntryGRow,s2Step145EntryFvRow,s2Step145EntryGvRow] 2 s2Step145EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step145EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145EntryFv_Outgoing : rowsOwned s2Step145EntryGvAfter [s2Step145EntryFvOut,s2Step145EntryGvOut] :=
  hmrRows_owned_drop s2Step145EntryGvAfter [s2Step145EntryFOut,s2Step145EntryGOut,s2Step145EntryFvOut,s2Step145EntryGvOut] 2 s2Step145EntryBank_outgoingOwned

private theorem s2Step145EntryFv_distinct : (s2Step145EntryFvRow.sign::s2Step145EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145EntryFv_owned : (s2Step145EntryFvRow.sign::s2Step145EntryFvRow.payload).toFinset⊆s2Step145EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step145EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EntryFv_reserved : s2Step145EntryFvBefore.reserve s2Step145EntryFvFresh.toFinset=some s2Step145EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step145EntryFvFresh,arenaWires]
  · norm_num [s2Step145EntryFvBefore,s2Step145EntryFBefore,s2Step145EntryFvFresh,arenaWires]
  · simp only [s2Step145EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step145EntryFv_checked : planRowResizeLog s2Step145EntryFvBefore s2Step145EntryFvRow 86 s2Step145EntryFvFresh=
    some (s2Step145EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩,growRow 770 s2Step145EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step145EntryFvBefore s2Step145EntryFvAfter s2Step145EntryFvRow 86 s2Step145EntryFvFresh
    s2Step145EntryFv_distinct s2Step145EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step145EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step145EntryFvRow.payload++s2Step145EntryFvFresh) s2Step145EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step145EntryGAfter : Arena := s2Step145EntryFBefore

private def s2Step145EntryGBefore : Arena := s2Step145EntryFBefore

private theorem s2Step145EntryG_Incoming : rowsOwned s2Step145EntryGBefore [s2Step145EntryGRow,s2Step145EntryFvRow,s2Step145EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step145EntryFRow,s2Step145EntryGRow,s2Step145EntryFvRow,s2Step145EntryGvRow] 1 s2Step145EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step145EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145EntryG_Outgoing : rowsOwned s2Step145EntryGvAfter [s2Step145EntryGOut,s2Step145EntryFvOut,s2Step145EntryGvOut] :=
  hmrRows_owned_drop s2Step145EntryGvAfter [s2Step145EntryFOut,s2Step145EntryGOut,s2Step145EntryFvOut,s2Step145EntryGvOut] 1 s2Step145EntryBank_outgoingOwned

private theorem s2Step145EntryG_distinct : (s2Step145EntryGRow.sign::s2Step145EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145EntryG_owned : (s2Step145EntryGRow.sign::s2Step145EntryGRow.payload).toFinset⊆s2Step145EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step145EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EntryG_reserved : s2Step145EntryGBefore.reserve s2Step145EntryGFresh.toFinset=some s2Step145EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step145EntryGFresh,arenaWires]
  · norm_num [s2Step145EntryGBefore,s2Step145EntryFBefore,s2Step145EntryGFresh,arenaWires]
  · simp only [s2Step145EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step145EntryG_checked : planRowResizeLog s2Step145EntryGBefore s2Step145EntryGRow 197 s2Step145EntryGFresh=
    some (s2Step145EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],769⟩,growRow 769 s2Step145EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step145EntryGBefore s2Step145EntryGAfter s2Step145EntryGRow 197 s2Step145EntryGFresh
    s2Step145EntryG_distinct s2Step145EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step145EntryG_reserved
  have rowEq : WindowRow.mk (s2Step145EntryGRow.payload++s2Step145EntryGFresh) s2Step145EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step145EntryGvBefore : Arena := s2Step145EntryFBefore

private theorem s2Step145EntryGv_Incoming : rowsOwned s2Step145EntryGvBefore [s2Step145EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step145EntryFRow,s2Step145EntryGRow,s2Step145EntryFvRow,s2Step145EntryGvRow] 3 s2Step145EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step145EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145EntryGv_Outgoing : rowsOwned s2Step145EntryGvAfter [s2Step145EntryGvOut] :=
  hmrRows_owned_drop s2Step145EntryGvAfter [s2Step145EntryFOut,s2Step145EntryGOut,s2Step145EntryFvOut,s2Step145EntryGvOut] 3 s2Step145EntryBank_outgoingOwned

private theorem s2Step145EntryGv_distinct : (s2Step145EntryGvRow.sign::s2Step145EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145EntryGv_owned : (s2Step145EntryGvRow.sign::s2Step145EntryGvRow.payload).toFinset⊆s2Step145EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step145EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145EntryGv_reserved : s2Step145EntryGvBefore.reserve s2Step145EntryGvFresh.toFinset=some s2Step145EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step145EntryGvFresh,arenaWires]
  · norm_num [s2Step145EntryGvBefore,s2Step145EntryFBefore,s2Step145EntryGvFresh,arenaWires]
  · simp only [s2Step145EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step145EntryGv_checked : planRowResizeLog s2Step145EntryGvBefore s2Step145EntryGvRow 86 s2Step145EntryGvFresh=
    some (s2Step145EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788],771⟩,growRow 771 s2Step145EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step145EntryGvBefore s2Step145EntryGvAfter s2Step145EntryGvRow 86 s2Step145EntryGvFresh
    s2Step145EntryGv_distinct s2Step145EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step145EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step145EntryGvRow.payload++s2Step145EntryGvFresh) s2Step145EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step145EntryBank_rows : planWindowRowsLog s2Step145EntryFBefore [(s2Step145EntryFRow,197),(s2Step145EntryGRow,197),(s2Step145EntryFvRow,86),(s2Step145EntryGvRow,86)] [s2Step145EntryFFresh,s2Step145EntryGFresh,s2Step145EntryFvFresh,s2Step145EntryGvFresh]=
    some (s2Step145EntryGvAfter,[s2Step145EntryFOut,s2Step145EntryGOut,s2Step145EntryFvOut,s2Step145EntryGvOut],(growRow 768 s2Step145EntryFFresh ++ (growRow 769 s2Step145EntryGFresh ++ (growRow 770 s2Step145EntryFvFresh ++ (growRow 771 s2Step145EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step145EntryGvAfter [] []=some (s2Step145EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step145EntryGvBefore s2Step145EntryGvAfter s2Step145EntryGvAfter
    s2Step145EntryGvRow s2Step145EntryGvOut 86 s2Step145EntryGvFresh [] [] []
    (growRow 771 s2Step145EntryGvFresh) ([]) s2Step145EntryGv_Incoming s2Step145EntryGv_checked h4 s2Step145EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step145EntryFvBefore s2Step145EntryFvAfter s2Step145EntryGvAfter
    s2Step145EntryFvRow s2Step145EntryFvOut 86 s2Step145EntryFvFresh [(s2Step145EntryGvRow,86)] [s2Step145EntryGvFresh] [s2Step145EntryGvOut]
    (growRow 770 s2Step145EntryFvFresh) ((growRow 771 s2Step145EntryGvFresh ++ [])) s2Step145EntryFv_Incoming s2Step145EntryFv_checked h3 s2Step145EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step145EntryGBefore s2Step145EntryGAfter s2Step145EntryGvAfter
    s2Step145EntryGRow s2Step145EntryGOut 197 s2Step145EntryGFresh [(s2Step145EntryFvRow,86),(s2Step145EntryGvRow,86)] [s2Step145EntryFvFresh,s2Step145EntryGvFresh] [s2Step145EntryFvOut,s2Step145EntryGvOut]
    (growRow 769 s2Step145EntryGFresh) ((growRow 770 s2Step145EntryFvFresh ++ (growRow 771 s2Step145EntryGvFresh ++ []))) s2Step145EntryG_Incoming s2Step145EntryG_checked h2 s2Step145EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step145EntryFBefore s2Step145EntryFAfter s2Step145EntryGvAfter
    s2Step145EntryFRow s2Step145EntryFOut 197 s2Step145EntryFFresh [(s2Step145EntryGRow,197),(s2Step145EntryFvRow,86),(s2Step145EntryGvRow,86)] [s2Step145EntryGFresh,s2Step145EntryFvFresh,s2Step145EntryGvFresh] [s2Step145EntryGOut,s2Step145EntryFvOut,s2Step145EntryGvOut]
    (growRow 768 s2Step145EntryFFresh) ((growRow 769 s2Step145EntryGFresh ++ (growRow 770 s2Step145EntryFvFresh ++ (growRow 771 s2Step145EntryGvFresh ++ [])))) s2Step145EntryF_Incoming s2Step145EntryF_checked h1 s2Step145EntryF_Outgoing
  exact h0

private theorem s2Step145EntryBank_checked : compileHmrBankResizeLog .entry s2Step145EntryFBefore ⟨s2Step145EntryFRow,s2Step145EntryGRow,s2Step145EntryFvRow,s2Step145EntryGvRow⟩ ⟨197,197,86,86⟩ [s2Step145EntryFFresh,s2Step145EntryGFresh,s2Step145EntryFvFresh,s2Step145EntryGvFresh]=
    some (s2Step145EntryGvAfter,⟨s2Step145EntryFOut,s2Step145EntryGOut,s2Step145EntryFvOut,s2Step145EntryGvOut⟩,(growRow 768 s2Step145EntryFFresh ++ (growRow 769 s2Step145EntryGFresh ++ (growRow 770 s2Step145EntryFvFresh ++ (growRow 771 s2Step145EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step145EntryBank_rows]
  rfl

private def s2Step145ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<196) ∨ (197≤q ∧ q<708) ∨ (709≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<196) ∨ (197≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145ExitFBefore : Arena := s2Step145ExitGAfter

private def s2Step145ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 789],768⟩

private def s2Step145ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816],770⟩

private def s2Step145ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 841],769⟩

private def s2Step145ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 783],771⟩

private theorem s2Step145ExitBank_incomingDistinct : ([s2Step145ExitGRow,s2Step145ExitFRow,s2Step145ExitFvRow,s2Step145ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145ExitF_Incoming : rowsOwned s2Step145ExitFBefore [s2Step145ExitFRow,s2Step145ExitFvRow,s2Step145ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step145ExitGRow,s2Step145ExitFRow,s2Step145ExitFvRow,s2Step145ExitGvRow] 1 s2Step145ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step145ExitFBefore (fun q => (0≤q ∧ q<196) ∨ (197≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145ExitBank_outgoingOwned : rowsOwned s2Step145ExitGvAfter [s2Step145ExitGOut,s2Step145ExitFOut,s2Step145ExitFvOut,s2Step145ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step145ExitGvAfter (fun q => (0≤q ∧ q<196) ∨ (197≤q ∧ q<708) ∨ (709≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145ExitF_Outgoing : rowsOwned s2Step145ExitGvAfter [s2Step145ExitFOut,s2Step145ExitFvOut,s2Step145ExitGvOut] :=
  hmrRows_owned_drop s2Step145ExitGvAfter [s2Step145ExitGOut,s2Step145ExitFOut,s2Step145ExitFvOut,s2Step145ExitGvOut] 1 s2Step145ExitBank_outgoingOwned

private theorem s2Step145ExitF_distinct : (s2Step145ExitFRow.sign::s2Step145ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145ExitF_owned : (s2Step145ExitFRow.sign::s2Step145ExitFRow.payload).toFinset⊆s2Step145ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step145ExitFBefore (fun q => (0≤q ∧ q<196) ∨ (197≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145ExitF_retired : s2Step145ExitFBefore.retireSet s2Step145ExitFExtra.toFinset=s2Step145ExitFAfter := by
  unfold Arena.retireSet s2Step145ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step145ExitFBefore,s2Step145ExitGAfter,s2Step145ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step145ExitF_checked : planRowResizeLog s2Step145ExitFBefore s2Step145ExitFRow 196 []=
    some (s2Step145ExitFAfter,s2Step145ExitFOut,shrinkRow 768 s2Step145ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step145ExitFBefore s2Step145ExitFRow 196 s2Step145ExitF_distinct s2Step145ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step145ExitFRow.payload.take 196) s2Step145ExitFRow.sign=s2Step145ExitFOut := by decide +kernel
  have hi : s2Step145ExitFRow.payload.drop 196=s2Step145ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step145ExitF_retired] at result
  exact result

private def s2Step145ExitFvAfter : Arena := s2Step145ExitFAfter

private def s2Step145ExitFvBefore : Arena := s2Step145ExitFAfter

private theorem s2Step145ExitFv_Incoming : rowsOwned s2Step145ExitFvBefore [s2Step145ExitFvRow,s2Step145ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step145ExitGRow,s2Step145ExitFRow,s2Step145ExitFvRow,s2Step145ExitGvRow] 2 s2Step145ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step145ExitFvBefore (fun q => (0≤q ∧ q<196) ∨ (197≤q ∧ q<708) ∨ (709≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145ExitFv_Outgoing : rowsOwned s2Step145ExitGvAfter [s2Step145ExitFvOut,s2Step145ExitGvOut] :=
  hmrRows_owned_drop s2Step145ExitGvAfter [s2Step145ExitGOut,s2Step145ExitFOut,s2Step145ExitFvOut,s2Step145ExitGvOut] 2 s2Step145ExitBank_outgoingOwned

private theorem s2Step145ExitFv_distinct : (s2Step145ExitFvRow.sign::s2Step145ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145ExitFv_owned : (s2Step145ExitFvRow.sign::s2Step145ExitFvRow.payload).toFinset⊆s2Step145ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step145ExitFvBefore (fun q => (0≤q ∧ q<196) ∨ (197≤q ∧ q<708) ∨ (709≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145ExitFv_reserved : s2Step145ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step145ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step145ExitFv_checked : planRowResizeLog s2Step145ExitFvBefore s2Step145ExitFvRow 87 []=
    some (s2Step145ExitFvAfter,s2Step145ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step145ExitFvBefore s2Step145ExitFvAfter s2Step145ExitFvRow 87 []
    s2Step145ExitFv_distinct s2Step145ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step145ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step145ExitFvRow.payload++[]) s2Step145ExitFvRow.sign=s2Step145ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step145ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step145ExitG_Incoming : rowsOwned s2Step145ExitGBefore [s2Step145ExitGRow,s2Step145ExitFRow,s2Step145ExitFvRow,s2Step145ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step145ExitGRow,s2Step145ExitFRow,s2Step145ExitFvRow,s2Step145ExitGvRow] 0 s2Step145ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step145ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145ExitG_Outgoing : rowsOwned s2Step145ExitGvAfter [s2Step145ExitGOut,s2Step145ExitFOut,s2Step145ExitFvOut,s2Step145ExitGvOut] :=
  hmrRows_owned_drop s2Step145ExitGvAfter [s2Step145ExitGOut,s2Step145ExitFOut,s2Step145ExitFvOut,s2Step145ExitGvOut] 0 s2Step145ExitBank_outgoingOwned

private theorem s2Step145ExitG_distinct : (s2Step145ExitGRow.sign::s2Step145ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145ExitG_owned : (s2Step145ExitGRow.sign::s2Step145ExitGRow.payload).toFinset⊆s2Step145ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step145ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145ExitG_retired : s2Step145ExitGBefore.retireSet s2Step145ExitGExtra.toFinset=s2Step145ExitGAfter := by
  unfold Arena.retireSet s2Step145ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step145ExitGBefore,s2Step145ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step145ExitG_checked : planRowResizeLog s2Step145ExitGBefore s2Step145ExitGRow 196 []=
    some (s2Step145ExitGAfter,s2Step145ExitGOut,shrinkRow 769 s2Step145ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step145ExitGBefore s2Step145ExitGRow 196 s2Step145ExitG_distinct s2Step145ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step145ExitGRow.payload.take 196) s2Step145ExitGRow.sign=s2Step145ExitGOut := by decide +kernel
  have hi : s2Step145ExitGRow.payload.drop 196=s2Step145ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step145ExitG_retired] at result
  exact result

private def s2Step145ExitGvBefore : Arena := s2Step145ExitFAfter

private theorem s2Step145ExitGv_Incoming : rowsOwned s2Step145ExitGvBefore [s2Step145ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step145ExitGRow,s2Step145ExitFRow,s2Step145ExitFvRow,s2Step145ExitGvRow] 3 s2Step145ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step145ExitGvBefore (fun q => (0≤q ∧ q<196) ∨ (197≤q ∧ q<708) ∨ (709≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145ExitGv_Outgoing : rowsOwned s2Step145ExitGvAfter [s2Step145ExitGvOut] :=
  hmrRows_owned_drop s2Step145ExitGvAfter [s2Step145ExitGOut,s2Step145ExitFOut,s2Step145ExitFvOut,s2Step145ExitGvOut] 3 s2Step145ExitBank_outgoingOwned

private theorem s2Step145ExitGv_distinct : (s2Step145ExitGvRow.sign::s2Step145ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145ExitGv_owned : (s2Step145ExitGvRow.sign::s2Step145ExitGvRow.payload).toFinset⊆s2Step145ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step145ExitGvBefore (fun q => (0≤q ∧ q<196) ∨ (197≤q ∧ q<708) ∨ (709≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145ExitGv_retired : s2Step145ExitGvBefore.retireSet s2Step145ExitGvExtra.toFinset=s2Step145ExitGvAfter := by
  unfold Arena.retireSet s2Step145ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step145ExitGvBefore,s2Step145ExitFAfter,s2Step145ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step145ExitGv_checked : planRowResizeLog s2Step145ExitGvBefore s2Step145ExitGvRow 86 []=
    some (s2Step145ExitGvAfter,s2Step145ExitGvOut,shrinkRow 771 s2Step145ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step145ExitGvBefore s2Step145ExitGvRow 86 s2Step145ExitGv_distinct s2Step145ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step145ExitGvRow.payload.take 86) s2Step145ExitGvRow.sign=s2Step145ExitGvOut := by decide +kernel
  have hi : s2Step145ExitGvRow.payload.drop 86=s2Step145ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step145ExitGv_retired] at result
  exact result

private theorem s2Step145ExitBank_rows : planWindowRowsLog s2Step145ExitGBefore [(s2Step145ExitGRow,196),(s2Step145ExitFRow,196),(s2Step145ExitFvRow,87),(s2Step145ExitGvRow,86)] [[],[],[],[]]=
    some (s2Step145ExitGvAfter,[s2Step145ExitGOut,s2Step145ExitFOut,s2Step145ExitFvOut,s2Step145ExitGvOut],(shrinkRow 769 s2Step145ExitGExtra ++ (shrinkRow 768 s2Step145ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step145ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step145ExitGvAfter [] []=some (s2Step145ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step145ExitGvBefore s2Step145ExitGvAfter s2Step145ExitGvAfter
    s2Step145ExitGvRow s2Step145ExitGvOut 86 [] [] [] []
    (shrinkRow 771 s2Step145ExitGvExtra) ([]) s2Step145ExitGv_Incoming s2Step145ExitGv_checked h4 s2Step145ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step145ExitFvBefore s2Step145ExitFvAfter s2Step145ExitGvAfter
    s2Step145ExitFvRow s2Step145ExitFvOut 87 [] [(s2Step145ExitGvRow,86)] [[]] [s2Step145ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step145ExitGvExtra ++ [])) s2Step145ExitFv_Incoming s2Step145ExitFv_checked h3 s2Step145ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step145ExitFBefore s2Step145ExitFAfter s2Step145ExitGvAfter
    s2Step145ExitFRow s2Step145ExitFOut 196 [] [(s2Step145ExitFvRow,87),(s2Step145ExitGvRow,86)] [[],[]] [s2Step145ExitFvOut,s2Step145ExitGvOut]
    (shrinkRow 768 s2Step145ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step145ExitGvExtra ++ []))) s2Step145ExitF_Incoming s2Step145ExitF_checked h2 s2Step145ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step145ExitGBefore s2Step145ExitGAfter s2Step145ExitGvAfter
    s2Step145ExitGRow s2Step145ExitGOut 196 [] [(s2Step145ExitFRow,196),(s2Step145ExitFvRow,87),(s2Step145ExitGvRow,86)] [[],[],[]] [s2Step145ExitFOut,s2Step145ExitFvOut,s2Step145ExitGvOut]
    (shrinkRow 769 s2Step145ExitGExtra) ((shrinkRow 768 s2Step145ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step145ExitGvExtra ++ [])))) s2Step145ExitG_Incoming s2Step145ExitG_checked h1 s2Step145ExitG_Outgoing
  exact h0

private theorem s2Step145ExitBank_checked : compileHmrBankResizeLog .exit s2Step145ExitGBefore ⟨s2Step145ExitFRow,s2Step145ExitGRow,s2Step145ExitFvRow,s2Step145ExitGvRow⟩ ⟨196,196,87,86⟩ [[],[],[],[]]=
    some (s2Step145ExitGvAfter,⟨s2Step145ExitFOut,s2Step145ExitGOut,s2Step145ExitFvOut,s2Step145ExitGvOut⟩,(shrinkRow 769 s2Step145ExitGExtra ++ (shrinkRow 768 s2Step145ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step145ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step145ExitBank_rows]
  rfl

private theorem s2Step145Add0_apart : Disjoint s2Step145Add0Arena.live s2Step145Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step145Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145Add0_card : s2Step145Add0Arena.live.card=882 := by
  decide +kernel

private theorem s2Step145Add0_borrowed : s2Step145Add0Arena.checkBorrow (hmrHybridCount s2Step145Add0Arena s2Step145Add0B.length) s2Step145Add0Work=some s2Step145Add0During := by
  have len : s2Step145Add0Work.length=hmrHybridCount s2Step145Add0Arena s2Step145Add0B.length := by
    rw [hmrHybridCount,s2Step145Add0_card]
    decide +kernel
  have nd : s2Step145Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step145Add0Arena s2Step145Add0During s2Step145Add0Work.toFinset s2Step145Add0_bounded s2Step145Add0_apart rfl

private theorem s2Step145Add0_distinct : (778::845::849::(s2Step145Add0A++s2Step145Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145Add0_owned : (778::845::849::(s2Step145Add0A++s2Step145Add0B)).toFinset⊆s2Step145Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step145Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145Add0_checked : compileHmrHybridCinLog s2Step145Add0Arena 845 778 849 s2Step145Add0A s2Step145Add0B s2Step145Add0Work=some s2Step145Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step145Add0Arena s2Step145Add0During 845 778 849 s2Step145Add0A s2Step145Add0B s2Step145Add0Work
    (by decide +kernel) (by decide +kernel) s2Step145Add0_distinct
    (fun q hq => s2Step145Add0_owned (List.mem_toFinset.mpr hq)) s2Step145Add0_borrowed

private theorem s2Step145Add1_apart : Disjoint s2Step145Add1Arena.live s2Step145Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step145Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145Add1_card : s2Step145Add1Arena.live.card=882 := by
  decide +kernel

private theorem s2Step145Add1_borrowed : s2Step145Add1Arena.checkBorrow (hmrHybridCount s2Step145Add1Arena s2Step145Add1B.length) s2Step145Add1Work=some s2Step145Add1During := by
  have len : s2Step145Add1Work.length=hmrHybridCount s2Step145Add1Arena s2Step145Add1B.length := by
    rw [hmrHybridCount,s2Step145Add1_card]
    decide +kernel
  have nd : s2Step145Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step145Add1Arena s2Step145Add1During s2Step145Add1Work.toFinset s2Step145Add1_bounded s2Step145Add1_apart rfl

private theorem s2Step145Add1_distinct : (778::845::849::(s2Step145Add1A++s2Step145Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145Add1_owned : (778::845::849::(s2Step145Add1A++s2Step145Add1B)).toFinset⊆s2Step145Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step145Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145Add1_checked : compileHmrHybridCinLog s2Step145Add1Arena 845 778 849 s2Step145Add1A s2Step145Add1B s2Step145Add1Work=some s2Step145Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step145Add1Arena s2Step145Add1During 845 778 849 s2Step145Add1A s2Step145Add1B s2Step145Add1Work
    (by decide +kernel) (by decide +kernel) s2Step145Add1_distinct
    (fun q hq => s2Step145Add1_owned (List.mem_toFinset.mpr hq)) s2Step145Add1_borrowed

private theorem s2Step145F4_apart : Disjoint (s2Step145Add0A++s2Step145Add0B).toFinset (s2Step145Add1A++s2Step145Add1B).toFinset := by
  have nd : ((s2Step145Add0A++s2Step145Add0B)++(s2Step145Add1A++s2Step145Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step145F4_carry : s2Step145F4FlagArena.checkBorrow 1 [849]=some s2Step145Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step145F4FlagArena,s2Step145HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step145F4FlagArena,s2Step145HeadFvAfter,s2Step145Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step145F4_distinct : (836::845::778::849::((s2Step145Add0A++s2Step145Add1A)++(s2Step145Add0B++s2Step145Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145F4_flag : s2Step145HeadFvAfter.checkBorrow 1 [778]=some s2Step145F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step145HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step145F4_owned : (836::845::((s2Step145Add0A++s2Step145Add1A)++(s2Step145Add0B++s2Step145Add1B))).toFinset⊆s2Step145HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step145HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145F4_checked : compileHmrHybridF4Log s2Step145HeadFvAfter 836 845 s2Step145Add0A s2Step145Add0B s2Step145Add1A s2Step145Add1B [778] [849] s2Step145Add0Work s2Step145Add1Work=some s2Step145F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step145HeadFvAfter s2Step145F4FlagArena s2Step145Add0Arena s2Step145Add0During s2Step145Add1During 836 845
    s2Step145Add0A s2Step145Add0B s2Step145Add1A s2Step145Add1B [778] [849] s2Step145Add0Work s2Step145Add1Work
    (fun q hq => s2Step145F4_owned (List.mem_toFinset.mpr hq)) s2Step145F4_flag s2Step145F4_carry
    s2Step145F4_distinct s2Step145F4_apart s2Step145Add0_checked s2Step145Add1_checked

private theorem s2Step145Front_branch : s2Step145FrontSigmaArena.checkBorrow 1 [845]=some s2Step145HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step145FrontSigmaArena,s2Step145EntryGvAfter,s2Step145EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step145FrontSigmaArena,s2Step145EntryGvAfter,s2Step145EntryFBefore,s2Step145HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step145Front_entry : HmrFrontEntryValid s2Step145EntryFBefore s2Step145FrontBank 197 86 ⟨196,196,87,86⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step145FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step145EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step145EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step145FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step145Front_sigma : s2Step145EntryGvAfter.checkBorrow 1 [836]=some s2Step145FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step145EntryGvAfter,s2Step145EntryFBefore,arenaWires]
  · rfl

private def s2Step145HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145HeadFBefore : Arena := s2Step145HeadGAfter

private def s2Step145HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708],768⟩

private def s2Step145HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩

private def s2Step145HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],769⟩

private def s2Step145HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788],771⟩

private theorem s2Step145HeadBank_incomingDistinct : ([s2Step145HeadGRow,s2Step145HeadFRow,s2Step145HeadGvRow,s2Step145HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145HeadF_Incoming : rowsOwned s2Step145HeadFBefore [s2Step145HeadFRow,s2Step145HeadGvRow,s2Step145HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step145HeadGRow,s2Step145HeadFRow,s2Step145HeadGvRow,s2Step145HeadFvRow] 1 s2Step145HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step145HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145HeadBank_outgoingOwned : rowsOwned s2Step145HeadFvAfter [s2Step145HeadGOut,s2Step145HeadFOut,s2Step145HeadGvOut,s2Step145HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step145HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145HeadF_Outgoing : rowsOwned s2Step145HeadFvAfter [s2Step145HeadFOut,s2Step145HeadGvOut,s2Step145HeadFvOut] :=
  hmrRows_owned_drop s2Step145HeadFvAfter [s2Step145HeadGOut,s2Step145HeadFOut,s2Step145HeadGvOut,s2Step145HeadFvOut] 1 s2Step145HeadBank_outgoingOwned

private theorem s2Step145HeadF_distinct : (s2Step145HeadFRow.sign::s2Step145HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145HeadF_owned : (s2Step145HeadFRow.sign::s2Step145HeadFRow.payload).toFinset⊆s2Step145HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step145HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145HeadF_reserved : s2Step145HeadFBefore.reserve s2Step145HeadFFresh.toFinset=some s2Step145HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step145HeadFFresh,arenaWires]
  · norm_num [s2Step145HeadFBefore,s2Step145HeadGAfter,s2Step145HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step145HeadFAfter,s2Step145HeadFBefore,s2Step145HeadGAfter,s2Step145HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step145HeadF_checked : planRowResizeLog s2Step145HeadFBefore s2Step145HeadFRow 198 s2Step145HeadFFresh=
    some (s2Step145HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 789],768⟩,growRow 768 s2Step145HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step145HeadFBefore s2Step145HeadFAfter s2Step145HeadFRow 198 s2Step145HeadFFresh
    s2Step145HeadF_distinct s2Step145HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step145HeadF_reserved
  have rowEq : WindowRow.mk (s2Step145HeadFRow.payload++s2Step145HeadFFresh) s2Step145HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 789],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step145HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step145HeadFvBefore : Arena := s2Step145HeadGvAfter

private theorem s2Step145HeadFv_Incoming : rowsOwned s2Step145HeadFvBefore [s2Step145HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step145HeadGRow,s2Step145HeadFRow,s2Step145HeadGvRow,s2Step145HeadFvRow] 3 s2Step145HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step145HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145HeadFv_Outgoing : rowsOwned s2Step145HeadFvAfter [s2Step145HeadFvOut] :=
  hmrRows_owned_drop s2Step145HeadFvAfter [s2Step145HeadGOut,s2Step145HeadFOut,s2Step145HeadGvOut,s2Step145HeadFvOut] 3 s2Step145HeadBank_outgoingOwned

private theorem s2Step145HeadFv_distinct : (s2Step145HeadFvRow.sign::s2Step145HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145HeadFv_owned : (s2Step145HeadFvRow.sign::s2Step145HeadFvRow.payload).toFinset⊆s2Step145HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step145HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145HeadFv_reserved : s2Step145HeadFvBefore.reserve s2Step145HeadFvFresh.toFinset=some s2Step145HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step145HeadFvFresh,arenaWires]
  · norm_num [s2Step145HeadFvBefore,s2Step145HeadGvAfter,s2Step145HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step145HeadFvAfter,s2Step145HeadFvBefore,s2Step145HeadGvAfter,s2Step145HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step145HeadFv_checked : planRowResizeLog s2Step145HeadFvBefore s2Step145HeadFvRow 87 s2Step145HeadFvFresh=
    some (s2Step145HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816],770⟩,growRow 770 s2Step145HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step145HeadFvBefore s2Step145HeadFvAfter s2Step145HeadFvRow 87 s2Step145HeadFvFresh
    s2Step145HeadFv_distinct s2Step145HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step145HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step145HeadFvRow.payload++s2Step145HeadFvFresh) s2Step145HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step145HeadG_Incoming : rowsOwned s2Step145HeadGBefore [s2Step145HeadGRow,s2Step145HeadFRow,s2Step145HeadGvRow,s2Step145HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step145HeadGRow,s2Step145HeadFRow,s2Step145HeadGvRow,s2Step145HeadFvRow] 0 s2Step145HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step145HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145HeadG_Outgoing : rowsOwned s2Step145HeadFvAfter [s2Step145HeadGOut,s2Step145HeadFOut,s2Step145HeadGvOut,s2Step145HeadFvOut] :=
  hmrRows_owned_drop s2Step145HeadFvAfter [s2Step145HeadGOut,s2Step145HeadFOut,s2Step145HeadGvOut,s2Step145HeadFvOut] 0 s2Step145HeadBank_outgoingOwned

private theorem s2Step145HeadG_distinct : (s2Step145HeadGRow.sign::s2Step145HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145HeadG_owned : (s2Step145HeadGRow.sign::s2Step145HeadGRow.payload).toFinset⊆s2Step145HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step145HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145HeadG_reserved : s2Step145HeadGBefore.reserve s2Step145HeadGFresh.toFinset=some s2Step145HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step145HeadGFresh,arenaWires]
  · norm_num [s2Step145HeadGBefore,s2Step145HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step145HeadGAfter,s2Step145HeadGBefore,s2Step145HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step145HeadG_checked : planRowResizeLog s2Step145HeadGBefore s2Step145HeadGRow 198 s2Step145HeadGFresh=
    some (s2Step145HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 841],769⟩,growRow 769 s2Step145HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step145HeadGBefore s2Step145HeadGAfter s2Step145HeadGRow 198 s2Step145HeadGFresh
    s2Step145HeadG_distinct s2Step145HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step145HeadG_reserved
  have rowEq : WindowRow.mk (s2Step145HeadGRow.payload++s2Step145HeadGFresh) s2Step145HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 841],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step145HeadGvBefore : Arena := s2Step145HeadFAfter

private theorem s2Step145HeadGv_Incoming : rowsOwned s2Step145HeadGvBefore [s2Step145HeadGvRow,s2Step145HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step145HeadGRow,s2Step145HeadFRow,s2Step145HeadGvRow,s2Step145HeadFvRow] 2 s2Step145HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step145HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step145HeadGv_Outgoing : rowsOwned s2Step145HeadFvAfter [s2Step145HeadGvOut,s2Step145HeadFvOut] :=
  hmrRows_owned_drop s2Step145HeadFvAfter [s2Step145HeadGOut,s2Step145HeadFOut,s2Step145HeadGvOut,s2Step145HeadFvOut] 2 s2Step145HeadBank_outgoingOwned

private theorem s2Step145HeadGv_distinct : (s2Step145HeadGvRow.sign::s2Step145HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step145HeadGv_owned : (s2Step145HeadGvRow.sign::s2Step145HeadGvRow.payload).toFinset⊆s2Step145HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step145HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step145HeadGv_reserved : s2Step145HeadGvBefore.reserve s2Step145HeadGvFresh.toFinset=some s2Step145HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step145HeadGvFresh,arenaWires]
  · norm_num [s2Step145HeadGvBefore,s2Step145HeadFAfter,s2Step145HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step145HeadGvAfter,s2Step145HeadGvBefore,s2Step145HeadFAfter,s2Step145HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step145HeadGv_checked : planRowResizeLog s2Step145HeadGvBefore s2Step145HeadGvRow 87 s2Step145HeadGvFresh=
    some (s2Step145HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 783],771⟩,growRow 771 s2Step145HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step145HeadGvBefore s2Step145HeadGvAfter s2Step145HeadGvRow 87 s2Step145HeadGvFresh
    s2Step145HeadGv_distinct s2Step145HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step145HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step145HeadGvRow.payload++s2Step145HeadGvFresh) s2Step145HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 783],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step145HeadBank_rows : planWindowRowsLog s2Step145HeadGBefore [(s2Step145HeadGRow,198),(s2Step145HeadFRow,198),(s2Step145HeadGvRow,87),(s2Step145HeadFvRow,87)] [s2Step145HeadGFresh,s2Step145HeadFFresh,s2Step145HeadGvFresh,s2Step145HeadFvFresh]=
    some (s2Step145HeadFvAfter,[s2Step145HeadGOut,s2Step145HeadFOut,s2Step145HeadGvOut,s2Step145HeadFvOut],(growRow 769 s2Step145HeadGFresh ++ (growRow 768 s2Step145HeadFFresh ++ (growRow 771 s2Step145HeadGvFresh ++ (growRow 770 s2Step145HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step145HeadFvAfter [] []=some (s2Step145HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step145HeadFvBefore s2Step145HeadFvAfter s2Step145HeadFvAfter
    s2Step145HeadFvRow s2Step145HeadFvOut 87 s2Step145HeadFvFresh [] [] []
    (growRow 770 s2Step145HeadFvFresh) ([]) s2Step145HeadFv_Incoming s2Step145HeadFv_checked h4 s2Step145HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step145HeadGvBefore s2Step145HeadGvAfter s2Step145HeadFvAfter
    s2Step145HeadGvRow s2Step145HeadGvOut 87 s2Step145HeadGvFresh [(s2Step145HeadFvRow,87)] [s2Step145HeadFvFresh] [s2Step145HeadFvOut]
    (growRow 771 s2Step145HeadGvFresh) ((growRow 770 s2Step145HeadFvFresh ++ [])) s2Step145HeadGv_Incoming s2Step145HeadGv_checked h3 s2Step145HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step145HeadFBefore s2Step145HeadFAfter s2Step145HeadFvAfter
    s2Step145HeadFRow s2Step145HeadFOut 198 s2Step145HeadFFresh [(s2Step145HeadGvRow,87),(s2Step145HeadFvRow,87)] [s2Step145HeadGvFresh,s2Step145HeadFvFresh] [s2Step145HeadGvOut,s2Step145HeadFvOut]
    (growRow 768 s2Step145HeadFFresh) ((growRow 771 s2Step145HeadGvFresh ++ (growRow 770 s2Step145HeadFvFresh ++ []))) s2Step145HeadF_Incoming s2Step145HeadF_checked h2 s2Step145HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step145HeadGBefore s2Step145HeadGAfter s2Step145HeadFvAfter
    s2Step145HeadGRow s2Step145HeadGOut 198 s2Step145HeadGFresh [(s2Step145HeadFRow,198),(s2Step145HeadGvRow,87),(s2Step145HeadFvRow,87)] [s2Step145HeadFFresh,s2Step145HeadGvFresh,s2Step145HeadFvFresh] [s2Step145HeadFOut,s2Step145HeadGvOut,s2Step145HeadFvOut]
    (growRow 769 s2Step145HeadGFresh) ((growRow 768 s2Step145HeadFFresh ++ (growRow 771 s2Step145HeadGvFresh ++ (growRow 770 s2Step145HeadFvFresh ++ [])))) s2Step145HeadG_Incoming s2Step145HeadG_checked h1 s2Step145HeadG_Outgoing
  exact h0

private theorem s2Step145HeadBank_checked : compileHmrBankResizeLog .headroom s2Step145HeadGBefore ⟨s2Step145HeadFRow,s2Step145HeadGRow,s2Step145HeadFvRow,s2Step145HeadGvRow⟩ ⟨198,198,87,87⟩ [s2Step145HeadGFresh,s2Step145HeadFFresh,s2Step145HeadGvFresh,s2Step145HeadFvFresh]=
    some (s2Step145HeadFvAfter,⟨s2Step145HeadFOut,s2Step145HeadGOut,s2Step145HeadFvOut,s2Step145HeadGvOut⟩,(growRow 769 s2Step145HeadGFresh ++ (growRow 768 s2Step145HeadFFresh ++ (growRow 771 s2Step145HeadGvFresh ++ (growRow 770 s2Step145HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step145HeadBank_rows]
  rfl

private theorem s2Step145Front_checked : compileHmrSourceFrontLog s2Step145EntryFBefore s2Step145FrontBank 197 86 ⟨196,196,87,86⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step145FrontLog=some s2Step145FrontPlan := by
  have pairEq : s2Step145FrontPair=⟨s2Step145HeadFRow,s2Step145HeadGRow,s2Step145HeadFvRow,s2Step145HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step145FrontHead=⟨s2Step145ExitFRow,s2Step145ExitGRow,s2Step145ExitFvRow,s2Step145ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step145Add0A=s2Step145FrontHead.f.wires := by decide +kernel
  have gEq : s2Step145Add0B=s2Step145FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step145Add1A=s2Step145FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step145Add1B=s2Step145FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step145EntryFBefore s2Step145FrontBank 197 86 ⟨196,196,87,86⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step145FrontLog s2Step145FrontPlan
  · exact s2Step145Front_entry
  · exact s2Step145EntryBank_checked
  · exact s2Step145Front_sigma
  · rfl
  · exact s2Step145Front_branch
  · rfl
  · simpa only [s2Step145FrontPlan,pairEq] using s2Step145HeadBank_checked
  · simpa only [s2Step145FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step145F4_checked
  · exact s2Step145Counter_checked
  · rfl
  · simpa only [s2Step145FrontPlan,headEq] using s2Step145ExitBank_checked

private theorem s2Step145Complete_explicit_checked : compileHmrEarlyStepLog s2Step145EntryFBefore s2Step145FrontBank 197 86 ⟨196,196,87,86⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step145CompleteLog=some s2Step145CompletePlan := by
  let Q := s2Step145EarlyControlPlan
  have hq := s2Step145EarlyControl_plan_checked
  have fv1 : s2Step145CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step145CompleteOut.fv.payload[2]?.getD s2Step145CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step145CompleteOut.fv.payload[3]?.getD s2Step145CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step145CompleteOut.fv.payload[4]?.getD s2Step145CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step145EntryFBefore s2Step145EarlyControlArena s2Step145FrontBank 197 86 ⟨196,196,87,86⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step145CompleteLog s2Step145FrontPlan Q
    s2Step145Front_checked s2Step145Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step145Complete_owned s2Step145Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step145EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 836 s2Step145CompleteOut.fv.second (s2Step145CompleteOut.fv.payload[2]?.getD s2Step145CompleteOut.fv.sign) (s2Step145CompleteOut.fv.payload[3]?.getD s2Step145CompleteOut.fv.sign) (s2Step145CompleteOut.fv.payload[4]?.getD s2Step145CompleteOut.fv.sign) 845 42 s2Step145EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep145Arena : Arena := s2Step145EntryFBefore
def s2PrivateStep145Bank : WindowBank := s2Step145FrontBank
def s2PrivateStep145Spec : HmrSourceWalkStepLog := ⟨197,86,⟨196,196,87,86⟩,42,.early s2Step145CompleteLog⟩
def s2PrivateStep145Plan : HmrSourceStepPlan := .early s2Step145CompletePlan
theorem s2PrivateStep145_source : s2PrivateStep145Spec=s2ObservedLogs144[1] := rfl
theorem s2PrivateStep145_checked : compileHmrSourceStepLog s2PrivateStep145Arena s2PrivateStep145Bank
    s2PrivateStep145Spec.fgWidth s2PrivateStep145Spec.vWidth s2PrivateStep145Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 145 s2PrivateStep145Spec.need none s2PrivateStep145Spec.log=some s2PrivateStep145Plan := by
  change compileHmrSourceStepLog s2Step145EntryFBefore s2Step145FrontBank 197 86 ⟨196,196,87,86⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 145 42 none (.early s2Step145CompleteLog)=some (.early s2Step145CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 145<498)]
  rw [s2Step145Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
