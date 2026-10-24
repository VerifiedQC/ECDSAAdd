import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep147
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

private def s2Step149CompleteMoves : List (Wire × Wire) := []

private def s2Step149EarlyControlLog : HmrEarlyControlLog := ⟨[778, 797, 796, 849, 780],[783],[790],[815, 867, 877, 879, 882, 885],[]⟩

private def s2Step149FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [796], [], []],[[849], [797], [778], [844]],[[], [], [], []]⟩,[845],[779],[780],[783],[790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[780, 783, 790, 815]⟩

private def s2Step149CompleteLog : HmrEarlyStepLog := ⟨s2Step149FrontLog,s2Step149CompleteMoves,s2Step149EarlyControlLog⟩

private def s2Step149ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706],768⟩

private def s2Step149ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844],770⟩

private def s2Step149ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193],769⟩

private def s2Step149ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789],771⟩

private def s2Step149FrontOut : WindowBank := ⟨s2Step149ExitFOut,s2Step149ExitGOut,s2Step149ExitFvOut,s2Step149ExitGvOut⟩

private def s2Step149CompleteOut : WindowBank := s2Step149FrontOut.repacked s2Step149CompleteMoves

private def s2Step149EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step149EarlyControlPositiveArena,[783],s2Step149EarlyControlEqualityArena,[790],⟨⟨845,false⟩,[⟨⟨783,false⟩,790⟩]⟩⟩

private def s2Step149EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,778⟩,⟨⟨774,false⟩,797⟩,⟨⟨775,false⟩,796⟩,⟨⟨776,false⟩,849⟩,⟨⟨777,false⟩,780⟩]⟩

private def s2Step149EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step149EarlyControlZeroArena,s2Step149EarlyControlZeroPlan,s2Step149EarlyControlClassPlan,s2Step149EarlyControlFlagArena,s2Step149EarlyControlFittedArena,s2Step149EarlyControlHistoryArena,s2Step149EarlyControlSigmaArena,s2Step149EarlyControlOutputArena,s2Step149EarlyControlLog⟩

private def s2Step149CounterWork : List Wire := [780, 783, 790, 815]

private theorem s2Step149Counter_bounded : s2Step149CounterWork.toFinset⊆arenaWires := by norm_num [s2Step149CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step149HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149CounterDuring : Arena := ⟨s2Step149HeadFvAfter.live∪s2Step149CounterWork.toFinset,Finset.union_subset s2Step149HeadFvAfter.bounded s2Step149Counter_bounded⟩

private def s2Step149EntryFFresh : List Wire := []

private def s2Step149EntryFvFresh : List Wire := []

private def s2Step149EntryGFresh : List Wire := [796]

private def s2Step149EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149EntryGvAfter : Arena := s2Step149EntryGAfter

private def s2Step149EntryGvFresh : List Wire := []

private def s2Step149ExitFExtra : List Wire := [797]

private def s2Step149ExitGExtra : List Wire := [796, 849]

private def s2Step149ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149ExitGvExtra : List Wire := [778]

private def s2Step149Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step149Add0_bounded : s2Step149Add0Work.toFinset⊆arenaWires := by
  have h : s2Step149Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step149Add0During : Arena := ⟨s2Step149Add0Arena.live∪s2Step149Add0Work.toFinset,Finset.union_subset s2Step149Add0Arena.bounded s2Step149Add0_bounded⟩

private def s2Step149Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step149Add1_bounded : s2Step149Add1Work.toFinset⊆arenaWires := by
  have h : s2Step149Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step149Add1During : Arena := ⟨s2Step149Add1Arena.live∪s2Step149Add1Work.toFinset,Finset.union_subset s2Step149Add1Arena.bounded s2Step149Add1_bounded⟩

private def s2Step149F4FlagArena : Arena := ⟨s2Step149HeadFvAfter.live∪{780},Finset.union_subset s2Step149HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step149F4Plan : HmrHybridF4Plan := ⟨s2Step149F4FlagArena,[780],s2Step149Add0Arena,[783],s2Step149Add0During,s2Step149Add0Work,s2Step149Add1During,s2Step149Add1Work⟩

private def s2Step149HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 797],768⟩

private def s2Step149HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844],770⟩

private def s2Step149HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 796, 849],769⟩

private def s2Step149HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 778],771⟩

private def s2Step149FrontHead : WindowBank := ⟨s2Step149HeadFOut,s2Step149HeadGOut,s2Step149HeadFvOut,s2Step149HeadGvOut⟩

private def s2Step149EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706],768⟩

private def s2Step149EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩

private def s2Step149EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 796],769⟩

private def s2Step149EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789],771⟩

private def s2Step149FrontPair : WindowBank := ⟨s2Step149EntryFOut,s2Step149EntryGOut,s2Step149EntryFvOut,s2Step149EntryGvOut⟩

private def s2Step149FrontSigmaArena : Arena := ⟨s2Step149EntryGvAfter.live∪{845},Finset.union_subset s2Step149EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step149HeadFFresh : List Wire := [797]

private def s2Step149HeadFvFresh : List Wire := [844]

private def s2Step149HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149HeadGFresh : List Wire := [849]

private def s2Step149HeadGvFresh : List Wire := [778]

private def s2Step149FrontPlan : HmrSourceFront := ⟨s2Step149EntryGvAfter,s2Step149FrontPair,(growRow 768 s2Step149EntryFFresh ++ (growRow 769 s2Step149EntryGFresh ++ (growRow 770 s2Step149EntryFvFresh ++ (growRow 771 s2Step149EntryGvFresh ++ [])))),s2Step149FrontSigmaArena,[845],s2Step149HeadGBefore,[779],
  s2Step149HeadFvAfter,s2Step149FrontHead,(growRow 769 s2Step149HeadGFresh ++ (growRow 768 s2Step149HeadFFresh ++ (growRow 771 s2Step149HeadGvFresh ++ (growRow 770 s2Step149HeadFvFresh ++ [])))),s2Step149F4Plan,s2Step149CounterDuring,s2Step149CounterWork,s2Step149ExitGvAfter,s2Step149FrontOut,(shrinkRow 769 s2Step149ExitGExtra ++ (shrinkRow 768 s2Step149ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step149ExitGvExtra ++ []))))⟩

private def s2Step149CompletePlan : HmrEarlyStepPlan := ⟨s2Step149FrontPlan,s2Step149EarlyControlArena,s2Step149EarlyControlPlan,s2Step149CompleteMoves⟩

private theorem s2Step149Complete_apart : List.Disjoint (s2Step149CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [845, 779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step149CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[845, 779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step149Complete_owned : (s2Step149CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step149EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step149EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149Complete_repack : s2Step149ExitGvAfter.checkRepack s2Step149CompleteMoves=some s2Step149EarlyControlArena := by rfl

private theorem s2Step149EarlyControl_branchOwned : ([779] : List Wire).toFinset⊆s2Step149EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step149EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EarlyControl_branch : compileHmrBranchRetirement s2Step149EarlyControlSigmaArena 779=some s2Step149EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step149EarlyControl_branchOwned
  · ext q
    simp [s2Step149EarlyControlOutputArena,s2Step149EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step149EarlyControl_classEqualityBorrow : s2Step149EarlyControlPositiveArena.checkBorrow (([845, 783] : List Wire).length-1) s2Step149EarlyControlLog.classWork=some s2Step149EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step149EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step149EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step149EarlyControlEqualityArena,s2Step149EarlyControlPositiveArena,s2Step149EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step149EarlyControl_classEqualityOwned : ([845, 783] : List Wire).toFinset⊆s2Step149EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step149EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EarlyControl_classEquality : compileHmrEqualityLog s2Step149EarlyControlPositiveArena [845, 783] 0 s2Step149EarlyControlLog.classWork=some (s2Step149EarlyControlEqualityArena,s2Step149EarlyControlLog.classWork,s2Step149EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step149EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step149EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step149EarlyControl_classOwned : ([777, 780, 845] : List Wire).toFinset⊆s2Step149EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step149EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EarlyControl_positiveBorrow : s2Step149EarlyControlZeroArena.checkBorrow (1) s2Step149EarlyControlLog.positiveWork=some s2Step149EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step149EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step149EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step149EarlyControlPositiveArena,s2Step149EarlyControlZeroArena,s2Step149EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step149EarlyControl_class : compileHmrSourceClassLog s2Step149EarlyControlZeroArena false 777 s2Step149EarlyControlZeroPlan.top 0 845 s2Step149EarlyControlLog.positiveWork s2Step149EarlyControlLog.classWork=some s2Step149EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step149EarlyControlClassPlan s2Step149EarlyControlZeroArena false 777 s2Step149EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s2Step149EarlyControl_classOwned
  · exact s2Step149EarlyControl_positiveBorrow
  · exact s2Step149EarlyControl_classEquality

private theorem s2Step149EarlyControl_entryRecordOwned : ([779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step149EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step149EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s2Step149EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step149EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EarlyControl_fitBorrow : s2Step149EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step149EarlyControlLog.recordFresh=some s2Step149EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step149EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step149EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step149EarlyControlFittedArena,s2Step149EarlyControlFlagArena,s2Step149EarlyControlLog,arenaWires]

private theorem s2Step149EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step149EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step149EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EarlyControl_fit : compileHmrRecordGrowLog s2Step149EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step149EarlyControlLog.recordFresh=some s2Step149EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step149EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step149EarlyControl_fitBorrow

private theorem s2Step149EarlyControl_flagsBorrow : s2Step149EarlyControlEqualityArena.checkBorrow (6) s2Step149EarlyControlLog.flagWork=some s2Step149EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step149EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step149EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step149EarlyControlFlagArena,s2Step149EarlyControlEqualityArena,s2Step149EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step149EarlyControl_flagsOwned : ([790, 253, 252, 251] : List Wire).toFinset⊆s2Step149EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step149EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EarlyControl_flags : compileHmrFlagsLog s2Step149EarlyControlClassPlan.equalityArena s2Step149EarlyControlClassPlan.equality.top 253 252 251 s2Step149EarlyControlLog.flagWork=some s2Step149EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step149EarlyControl_flagsOwned⟩
  · exact s2Step149EarlyControl_flagsBorrow

private theorem s2Step149EarlyControl_historyBorrow : s2Step149EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step149EarlyControlLog.recordFresh=some s2Step149EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step149EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step149EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step149EarlyControlHistoryArena,s2Step149EarlyControlArena,s2Step149EarlyControlLog,arenaWires]

private theorem s2Step149EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step149EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step149EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EarlyControl_history : compileHmrRecordGrowLog s2Step149EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step149EarlyControlLog.recordFresh=some s2Step149EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step149EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step149EarlyControl_historyBorrow

private theorem s2Step149EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s2Step149EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step149EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s2Step149EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step149EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EarlyControl_sigmaRelease : s2Step149EarlyControlHistoryArena.release {845} (fun _ => false)=some s2Step149EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step149EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step149EarlyControlSigmaArena,s2Step149EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step149EarlyControl_sigma : compileHmrSigmaDropLog s2Step149EarlyControlHistoryArena false 0 0 254 845 []=some s2Step149EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step149EarlyControl_sigmaOwned⟩
  · exact s2Step149EarlyControl_sigmaRelease

private theorem s2Step149EarlyControl_zeroBorrow : s2Step149EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step149EarlyControlLog.zeroWork=some s2Step149EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step149EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step149EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step149EarlyControlZeroArena,s2Step149EarlyControlArena,s2Step149EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step149EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step149EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step149EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EarlyControl_zero : compileHmrEqualityLog s2Step149EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step149EarlyControlLog.zeroWork=some (s2Step149EarlyControlZeroArena,s2Step149EarlyControlLog.zeroWork,s2Step149EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step149EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step149EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step149EarlyControl_logged : s2Step149EarlyControlPlan.Logged s2Step149EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 254 253 252 251 779 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step149EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step149EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step149EarlyControl_zero
  · exact s2Step149EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step149EarlyControl_flags
  · exact s2Step149EarlyControl_fit
  · exact s2Step149EarlyControl_history
  · exact s2Step149EarlyControl_sigma
  · exact s2Step149EarlyControl_branch

private theorem s2Step149EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step149EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 254 253 252 251 779 42 s2Step149EarlyControlLog=some s2Step149EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step149EarlyControlPlan s2Step149EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 254 253 252 251 779 42 s2Step149EarlyControl_logged

private def s2Step149EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706],768⟩

private def s2Step149EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩

private def s2Step149EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193],769⟩

private def s2Step149EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789],771⟩

private def s2Step149FrontBank : WindowBank := ⟨s2Step149EntryFRow,s2Step149EntryGRow,s2Step149EntryFvRow,s2Step149EntryGvRow⟩

private def s2Step149Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 797, 768]

private def s2Step149Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 796, 849, 769]

private def s2Step149Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 770]

private def s2Step149Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 778, 771]

private theorem s2Step149Counter_apart : Disjoint s2Step149HeadFvAfter.live s2Step149CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step149HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149Counter_borrowed : s2Step149HeadFvAfter.checkBorrow 4 s2Step149CounterWork=some s2Step149CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step149HeadFvAfter s2Step149CounterDuring s2Step149CounterWork.toFinset s2Step149Counter_bounded s2Step149Counter_apart rfl

private theorem s2Step149Counter_owned : (845::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step149HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step149HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149Counter_checked : compileHmrCounterStepLog s2Step149HeadFvAfter true 845 [772, 773, 774, 775, 776, 777] s2Step149CounterWork=some s2Step149CounterDuring := by
  have owned : ∀q∈845::[772, 773, 774, 775, 776, 777],q∈s2Step149HeadFvAfter.live := fun q hq => s2Step149Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step149Counter_borrowed

private def s2Step149EntryFAfter : Arena := s2Step149EntryFBefore

private theorem s2Step149EntryBank_incomingDistinct : ([s2Step149EntryFRow,s2Step149EntryGRow,s2Step149EntryFvRow,s2Step149EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149EntryF_Incoming : rowsOwned s2Step149EntryFBefore [s2Step149EntryFRow,s2Step149EntryGRow,s2Step149EntryFvRow,s2Step149EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step149EntryFRow,s2Step149EntryGRow,s2Step149EntryFvRow,s2Step149EntryGvRow] 0 s2Step149EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step149EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149EntryBank_outgoingOwned : rowsOwned s2Step149EntryGvAfter [s2Step149EntryFOut,s2Step149EntryGOut,s2Step149EntryFvOut,s2Step149EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step149EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149EntryF_Outgoing : rowsOwned s2Step149EntryGvAfter [s2Step149EntryFOut,s2Step149EntryGOut,s2Step149EntryFvOut,s2Step149EntryGvOut] :=
  hmrRows_owned_drop s2Step149EntryGvAfter [s2Step149EntryFOut,s2Step149EntryGOut,s2Step149EntryFvOut,s2Step149EntryGvOut] 0 s2Step149EntryBank_outgoingOwned

private theorem s2Step149EntryF_distinct : (s2Step149EntryFRow.sign::s2Step149EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149EntryF_owned : (s2Step149EntryFRow.sign::s2Step149EntryFRow.payload).toFinset⊆s2Step149EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step149EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EntryF_reserved : s2Step149EntryFBefore.reserve s2Step149EntryFFresh.toFinset=some s2Step149EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step149EntryFFresh,arenaWires]
  · norm_num [s2Step149EntryFBefore,s2Step149EntryFFresh,arenaWires]
  · simp only [s2Step149EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step149EntryF_checked : planRowResizeLog s2Step149EntryFBefore s2Step149EntryFRow 195 s2Step149EntryFFresh=
    some (s2Step149EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706],768⟩,growRow 768 s2Step149EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step149EntryFBefore s2Step149EntryFAfter s2Step149EntryFRow 195 s2Step149EntryFFresh
    s2Step149EntryF_distinct s2Step149EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step149EntryF_reserved
  have rowEq : WindowRow.mk (s2Step149EntryFRow.payload++s2Step149EntryFFresh) s2Step149EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step149EntryFvAfter : Arena := s2Step149EntryGAfter

private def s2Step149EntryFvBefore : Arena := s2Step149EntryGAfter

private theorem s2Step149EntryFv_Incoming : rowsOwned s2Step149EntryFvBefore [s2Step149EntryFvRow,s2Step149EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step149EntryFRow,s2Step149EntryGRow,s2Step149EntryFvRow,s2Step149EntryGvRow] 2 s2Step149EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step149EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149EntryFv_Outgoing : rowsOwned s2Step149EntryGvAfter [s2Step149EntryFvOut,s2Step149EntryGvOut] :=
  hmrRows_owned_drop s2Step149EntryGvAfter [s2Step149EntryFOut,s2Step149EntryGOut,s2Step149EntryFvOut,s2Step149EntryGvOut] 2 s2Step149EntryBank_outgoingOwned

private theorem s2Step149EntryFv_distinct : (s2Step149EntryFvRow.sign::s2Step149EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149EntryFv_owned : (s2Step149EntryFvRow.sign::s2Step149EntryFvRow.payload).toFinset⊆s2Step149EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step149EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EntryFv_reserved : s2Step149EntryFvBefore.reserve s2Step149EntryFvFresh.toFinset=some s2Step149EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step149EntryFvFresh,arenaWires]
  · norm_num [s2Step149EntryFvBefore,s2Step149EntryGAfter,s2Step149EntryFvFresh,arenaWires]
  · simp only [s2Step149EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step149EntryFv_checked : planRowResizeLog s2Step149EntryFvBefore s2Step149EntryFvRow 88 s2Step149EntryFvFresh=
    some (s2Step149EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩,growRow 770 s2Step149EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step149EntryFvBefore s2Step149EntryFvAfter s2Step149EntryFvRow 88 s2Step149EntryFvFresh
    s2Step149EntryFv_distinct s2Step149EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step149EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step149EntryFvRow.payload++s2Step149EntryFvFresh) s2Step149EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step149EntryGBefore : Arena := s2Step149EntryFBefore

private theorem s2Step149EntryG_Incoming : rowsOwned s2Step149EntryGBefore [s2Step149EntryGRow,s2Step149EntryFvRow,s2Step149EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step149EntryFRow,s2Step149EntryGRow,s2Step149EntryFvRow,s2Step149EntryGvRow] 1 s2Step149EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step149EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149EntryG_Outgoing : rowsOwned s2Step149EntryGvAfter [s2Step149EntryGOut,s2Step149EntryFvOut,s2Step149EntryGvOut] :=
  hmrRows_owned_drop s2Step149EntryGvAfter [s2Step149EntryFOut,s2Step149EntryGOut,s2Step149EntryFvOut,s2Step149EntryGvOut] 1 s2Step149EntryBank_outgoingOwned

private theorem s2Step149EntryG_distinct : (s2Step149EntryGRow.sign::s2Step149EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149EntryG_owned : (s2Step149EntryGRow.sign::s2Step149EntryGRow.payload).toFinset⊆s2Step149EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step149EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EntryG_reserved : s2Step149EntryGBefore.reserve s2Step149EntryGFresh.toFinset=some s2Step149EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step149EntryGFresh,arenaWires]
  · norm_num [s2Step149EntryGBefore,s2Step149EntryFBefore,s2Step149EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step149EntryGAfter,s2Step149EntryGBefore,s2Step149EntryFBefore,s2Step149EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step149EntryG_checked : planRowResizeLog s2Step149EntryGBefore s2Step149EntryGRow 195 s2Step149EntryGFresh=
    some (s2Step149EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 796],769⟩,growRow 769 s2Step149EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step149EntryGBefore s2Step149EntryGAfter s2Step149EntryGRow 195 s2Step149EntryGFresh
    s2Step149EntryG_distinct s2Step149EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step149EntryG_reserved
  have rowEq : WindowRow.mk (s2Step149EntryGRow.payload++s2Step149EntryGFresh) s2Step149EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 796],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step149EntryGvBefore : Arena := s2Step149EntryGAfter

private theorem s2Step149EntryGv_Incoming : rowsOwned s2Step149EntryGvBefore [s2Step149EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step149EntryFRow,s2Step149EntryGRow,s2Step149EntryFvRow,s2Step149EntryGvRow] 3 s2Step149EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step149EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149EntryGv_Outgoing : rowsOwned s2Step149EntryGvAfter [s2Step149EntryGvOut] :=
  hmrRows_owned_drop s2Step149EntryGvAfter [s2Step149EntryFOut,s2Step149EntryGOut,s2Step149EntryFvOut,s2Step149EntryGvOut] 3 s2Step149EntryBank_outgoingOwned

private theorem s2Step149EntryGv_distinct : (s2Step149EntryGvRow.sign::s2Step149EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149EntryGv_owned : (s2Step149EntryGvRow.sign::s2Step149EntryGvRow.payload).toFinset⊆s2Step149EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step149EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149EntryGv_reserved : s2Step149EntryGvBefore.reserve s2Step149EntryGvFresh.toFinset=some s2Step149EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step149EntryGvFresh,arenaWires]
  · norm_num [s2Step149EntryGvBefore,s2Step149EntryGAfter,s2Step149EntryGvFresh,arenaWires]
  · simp only [s2Step149EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step149EntryGv_checked : planRowResizeLog s2Step149EntryGvBefore s2Step149EntryGvRow 88 s2Step149EntryGvFresh=
    some (s2Step149EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789],771⟩,growRow 771 s2Step149EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step149EntryGvBefore s2Step149EntryGvAfter s2Step149EntryGvRow 88 s2Step149EntryGvFresh
    s2Step149EntryGv_distinct s2Step149EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step149EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step149EntryGvRow.payload++s2Step149EntryGvFresh) s2Step149EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step149EntryBank_rows : planWindowRowsLog s2Step149EntryFBefore [(s2Step149EntryFRow,195),(s2Step149EntryGRow,195),(s2Step149EntryFvRow,88),(s2Step149EntryGvRow,88)] [s2Step149EntryFFresh,s2Step149EntryGFresh,s2Step149EntryFvFresh,s2Step149EntryGvFresh]=
    some (s2Step149EntryGvAfter,[s2Step149EntryFOut,s2Step149EntryGOut,s2Step149EntryFvOut,s2Step149EntryGvOut],(growRow 768 s2Step149EntryFFresh ++ (growRow 769 s2Step149EntryGFresh ++ (growRow 770 s2Step149EntryFvFresh ++ (growRow 771 s2Step149EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step149EntryGvAfter [] []=some (s2Step149EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step149EntryGvBefore s2Step149EntryGvAfter s2Step149EntryGvAfter
    s2Step149EntryGvRow s2Step149EntryGvOut 88 s2Step149EntryGvFresh [] [] []
    (growRow 771 s2Step149EntryGvFresh) ([]) s2Step149EntryGv_Incoming s2Step149EntryGv_checked h4 s2Step149EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step149EntryFvBefore s2Step149EntryFvAfter s2Step149EntryGvAfter
    s2Step149EntryFvRow s2Step149EntryFvOut 88 s2Step149EntryFvFresh [(s2Step149EntryGvRow,88)] [s2Step149EntryGvFresh] [s2Step149EntryGvOut]
    (growRow 770 s2Step149EntryFvFresh) ((growRow 771 s2Step149EntryGvFresh ++ [])) s2Step149EntryFv_Incoming s2Step149EntryFv_checked h3 s2Step149EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step149EntryGBefore s2Step149EntryGAfter s2Step149EntryGvAfter
    s2Step149EntryGRow s2Step149EntryGOut 195 s2Step149EntryGFresh [(s2Step149EntryFvRow,88),(s2Step149EntryGvRow,88)] [s2Step149EntryFvFresh,s2Step149EntryGvFresh] [s2Step149EntryFvOut,s2Step149EntryGvOut]
    (growRow 769 s2Step149EntryGFresh) ((growRow 770 s2Step149EntryFvFresh ++ (growRow 771 s2Step149EntryGvFresh ++ []))) s2Step149EntryG_Incoming s2Step149EntryG_checked h2 s2Step149EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step149EntryFBefore s2Step149EntryFAfter s2Step149EntryGvAfter
    s2Step149EntryFRow s2Step149EntryFOut 195 s2Step149EntryFFresh [(s2Step149EntryGRow,195),(s2Step149EntryFvRow,88),(s2Step149EntryGvRow,88)] [s2Step149EntryGFresh,s2Step149EntryFvFresh,s2Step149EntryGvFresh] [s2Step149EntryGOut,s2Step149EntryFvOut,s2Step149EntryGvOut]
    (growRow 768 s2Step149EntryFFresh) ((growRow 769 s2Step149EntryGFresh ++ (growRow 770 s2Step149EntryFvFresh ++ (growRow 771 s2Step149EntryGvFresh ++ [])))) s2Step149EntryF_Incoming s2Step149EntryF_checked h1 s2Step149EntryF_Outgoing
  exact h0

private theorem s2Step149EntryBank_checked : compileHmrBankResizeLog .entry s2Step149EntryFBefore ⟨s2Step149EntryFRow,s2Step149EntryGRow,s2Step149EntryFvRow,s2Step149EntryGvRow⟩ ⟨195,195,88,88⟩ [s2Step149EntryFFresh,s2Step149EntryGFresh,s2Step149EntryFvFresh,s2Step149EntryGvFresh]=
    some (s2Step149EntryGvAfter,⟨s2Step149EntryFOut,s2Step149EntryGOut,s2Step149EntryFvOut,s2Step149EntryGvOut⟩,(growRow 768 s2Step149EntryFFresh ++ (growRow 769 s2Step149EntryGFresh ++ (growRow 770 s2Step149EntryFvFresh ++ (growRow 771 s2Step149EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step149EntryBank_rows]
  rfl

private def s2Step149ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149ExitFBefore : Arena := s2Step149ExitGAfter

private def s2Step149ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 797],768⟩

private def s2Step149ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844],770⟩

private def s2Step149ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 796, 849],769⟩

private def s2Step149ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 778],771⟩

private theorem s2Step149ExitBank_incomingDistinct : ([s2Step149ExitGRow,s2Step149ExitFRow,s2Step149ExitFvRow,s2Step149ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149ExitF_Incoming : rowsOwned s2Step149ExitFBefore [s2Step149ExitFRow,s2Step149ExitFvRow,s2Step149ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step149ExitGRow,s2Step149ExitFRow,s2Step149ExitFvRow,s2Step149ExitGvRow] 1 s2Step149ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step149ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149ExitBank_outgoingOwned : rowsOwned s2Step149ExitGvAfter [s2Step149ExitGOut,s2Step149ExitFOut,s2Step149ExitFvOut,s2Step149ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step149ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149ExitF_Outgoing : rowsOwned s2Step149ExitGvAfter [s2Step149ExitFOut,s2Step149ExitFvOut,s2Step149ExitGvOut] :=
  hmrRows_owned_drop s2Step149ExitGvAfter [s2Step149ExitGOut,s2Step149ExitFOut,s2Step149ExitFvOut,s2Step149ExitGvOut] 1 s2Step149ExitBank_outgoingOwned

private theorem s2Step149ExitF_distinct : (s2Step149ExitFRow.sign::s2Step149ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149ExitF_owned : (s2Step149ExitFRow.sign::s2Step149ExitFRow.payload).toFinset⊆s2Step149ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step149ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149ExitF_retired : s2Step149ExitFBefore.retireSet s2Step149ExitFExtra.toFinset=s2Step149ExitFAfter := by
  unfold Arena.retireSet s2Step149ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step149ExitFBefore,s2Step149ExitGAfter,s2Step149ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step149ExitF_checked : planRowResizeLog s2Step149ExitFBefore s2Step149ExitFRow 195 []=
    some (s2Step149ExitFAfter,s2Step149ExitFOut,shrinkRow 768 s2Step149ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step149ExitFBefore s2Step149ExitFRow 195 s2Step149ExitF_distinct s2Step149ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step149ExitFRow.payload.take 195) s2Step149ExitFRow.sign=s2Step149ExitFOut := by decide +kernel
  have hi : s2Step149ExitFRow.payload.drop 195=s2Step149ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step149ExitF_retired] at result
  exact result

private def s2Step149ExitFvAfter : Arena := s2Step149ExitFAfter

private def s2Step149ExitFvBefore : Arena := s2Step149ExitFAfter

private theorem s2Step149ExitFv_Incoming : rowsOwned s2Step149ExitFvBefore [s2Step149ExitFvRow,s2Step149ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step149ExitGRow,s2Step149ExitFRow,s2Step149ExitFvRow,s2Step149ExitGvRow] 2 s2Step149ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step149ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149ExitFv_Outgoing : rowsOwned s2Step149ExitGvAfter [s2Step149ExitFvOut,s2Step149ExitGvOut] :=
  hmrRows_owned_drop s2Step149ExitGvAfter [s2Step149ExitGOut,s2Step149ExitFOut,s2Step149ExitFvOut,s2Step149ExitGvOut] 2 s2Step149ExitBank_outgoingOwned

private theorem s2Step149ExitFv_distinct : (s2Step149ExitFvRow.sign::s2Step149ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149ExitFv_owned : (s2Step149ExitFvRow.sign::s2Step149ExitFvRow.payload).toFinset⊆s2Step149ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step149ExitFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149ExitFv_reserved : s2Step149ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step149ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step149ExitFv_checked : planRowResizeLog s2Step149ExitFvBefore s2Step149ExitFvRow 89 []=
    some (s2Step149ExitFvAfter,s2Step149ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step149ExitFvBefore s2Step149ExitFvAfter s2Step149ExitFvRow 89 []
    s2Step149ExitFv_distinct s2Step149ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step149ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step149ExitFvRow.payload++[]) s2Step149ExitFvRow.sign=s2Step149ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step149ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step149ExitG_Incoming : rowsOwned s2Step149ExitGBefore [s2Step149ExitGRow,s2Step149ExitFRow,s2Step149ExitFvRow,s2Step149ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step149ExitGRow,s2Step149ExitFRow,s2Step149ExitFvRow,s2Step149ExitGvRow] 0 s2Step149ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step149ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149ExitG_Outgoing : rowsOwned s2Step149ExitGvAfter [s2Step149ExitGOut,s2Step149ExitFOut,s2Step149ExitFvOut,s2Step149ExitGvOut] :=
  hmrRows_owned_drop s2Step149ExitGvAfter [s2Step149ExitGOut,s2Step149ExitFOut,s2Step149ExitFvOut,s2Step149ExitGvOut] 0 s2Step149ExitBank_outgoingOwned

private theorem s2Step149ExitG_distinct : (s2Step149ExitGRow.sign::s2Step149ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149ExitG_owned : (s2Step149ExitGRow.sign::s2Step149ExitGRow.payload).toFinset⊆s2Step149ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step149ExitGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149ExitG_retired : s2Step149ExitGBefore.retireSet s2Step149ExitGExtra.toFinset=s2Step149ExitGAfter := by
  unfold Arena.retireSet s2Step149ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step149ExitGBefore,s2Step149ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step149ExitG_checked : planRowResizeLog s2Step149ExitGBefore s2Step149ExitGRow 194 []=
    some (s2Step149ExitGAfter,s2Step149ExitGOut,shrinkRow 769 s2Step149ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step149ExitGBefore s2Step149ExitGRow 194 s2Step149ExitG_distinct s2Step149ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step149ExitGRow.payload.take 194) s2Step149ExitGRow.sign=s2Step149ExitGOut := by decide +kernel
  have hi : s2Step149ExitGRow.payload.drop 194=s2Step149ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step149ExitG_retired] at result
  exact result

private def s2Step149ExitGvBefore : Arena := s2Step149ExitFAfter

private theorem s2Step149ExitGv_Incoming : rowsOwned s2Step149ExitGvBefore [s2Step149ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step149ExitGRow,s2Step149ExitFRow,s2Step149ExitFvRow,s2Step149ExitGvRow] 3 s2Step149ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step149ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149ExitGv_Outgoing : rowsOwned s2Step149ExitGvAfter [s2Step149ExitGvOut] :=
  hmrRows_owned_drop s2Step149ExitGvAfter [s2Step149ExitGOut,s2Step149ExitFOut,s2Step149ExitFvOut,s2Step149ExitGvOut] 3 s2Step149ExitBank_outgoingOwned

private theorem s2Step149ExitGv_distinct : (s2Step149ExitGvRow.sign::s2Step149ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149ExitGv_owned : (s2Step149ExitGvRow.sign::s2Step149ExitGvRow.payload).toFinset⊆s2Step149ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step149ExitGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149ExitGv_retired : s2Step149ExitGvBefore.retireSet s2Step149ExitGvExtra.toFinset=s2Step149ExitGvAfter := by
  unfold Arena.retireSet s2Step149ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step149ExitGvBefore,s2Step149ExitFAfter,s2Step149ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step149ExitGv_checked : planRowResizeLog s2Step149ExitGvBefore s2Step149ExitGvRow 88 []=
    some (s2Step149ExitGvAfter,s2Step149ExitGvOut,shrinkRow 771 s2Step149ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step149ExitGvBefore s2Step149ExitGvRow 88 s2Step149ExitGv_distinct s2Step149ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step149ExitGvRow.payload.take 88) s2Step149ExitGvRow.sign=s2Step149ExitGvOut := by decide +kernel
  have hi : s2Step149ExitGvRow.payload.drop 88=s2Step149ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step149ExitGv_retired] at result
  exact result

private theorem s2Step149ExitBank_rows : planWindowRowsLog s2Step149ExitGBefore [(s2Step149ExitGRow,194),(s2Step149ExitFRow,195),(s2Step149ExitFvRow,89),(s2Step149ExitGvRow,88)] [[],[],[],[]]=
    some (s2Step149ExitGvAfter,[s2Step149ExitGOut,s2Step149ExitFOut,s2Step149ExitFvOut,s2Step149ExitGvOut],(shrinkRow 769 s2Step149ExitGExtra ++ (shrinkRow 768 s2Step149ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step149ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step149ExitGvAfter [] []=some (s2Step149ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step149ExitGvBefore s2Step149ExitGvAfter s2Step149ExitGvAfter
    s2Step149ExitGvRow s2Step149ExitGvOut 88 [] [] [] []
    (shrinkRow 771 s2Step149ExitGvExtra) ([]) s2Step149ExitGv_Incoming s2Step149ExitGv_checked h4 s2Step149ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step149ExitFvBefore s2Step149ExitFvAfter s2Step149ExitGvAfter
    s2Step149ExitFvRow s2Step149ExitFvOut 89 [] [(s2Step149ExitGvRow,88)] [[]] [s2Step149ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step149ExitGvExtra ++ [])) s2Step149ExitFv_Incoming s2Step149ExitFv_checked h3 s2Step149ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step149ExitFBefore s2Step149ExitFAfter s2Step149ExitGvAfter
    s2Step149ExitFRow s2Step149ExitFOut 195 [] [(s2Step149ExitFvRow,89),(s2Step149ExitGvRow,88)] [[],[]] [s2Step149ExitFvOut,s2Step149ExitGvOut]
    (shrinkRow 768 s2Step149ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step149ExitGvExtra ++ []))) s2Step149ExitF_Incoming s2Step149ExitF_checked h2 s2Step149ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step149ExitGBefore s2Step149ExitGAfter s2Step149ExitGvAfter
    s2Step149ExitGRow s2Step149ExitGOut 194 [] [(s2Step149ExitFRow,195),(s2Step149ExitFvRow,89),(s2Step149ExitGvRow,88)] [[],[],[]] [s2Step149ExitFOut,s2Step149ExitFvOut,s2Step149ExitGvOut]
    (shrinkRow 769 s2Step149ExitGExtra) ((shrinkRow 768 s2Step149ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step149ExitGvExtra ++ [])))) s2Step149ExitG_Incoming s2Step149ExitG_checked h1 s2Step149ExitG_Outgoing
  exact h0

private theorem s2Step149ExitBank_checked : compileHmrBankResizeLog .exit s2Step149ExitGBefore ⟨s2Step149ExitFRow,s2Step149ExitGRow,s2Step149ExitFvRow,s2Step149ExitGvRow⟩ ⟨195,194,89,88⟩ [[],[],[],[]]=
    some (s2Step149ExitGvAfter,⟨s2Step149ExitFOut,s2Step149ExitGOut,s2Step149ExitFvOut,s2Step149ExitGvOut⟩,(shrinkRow 769 s2Step149ExitGExtra ++ (shrinkRow 768 s2Step149ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step149ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step149ExitBank_rows]
  rfl

private theorem s2Step149Add0_apart : Disjoint s2Step149Add0Arena.live s2Step149Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step149Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149Add0_card : s2Step149Add0Arena.live.card=882 := by
  decide +kernel

private theorem s2Step149Add0_borrowed : s2Step149Add0Arena.checkBorrow (hmrHybridCount s2Step149Add0Arena s2Step149Add0B.length) s2Step149Add0Work=some s2Step149Add0During := by
  have len : s2Step149Add0Work.length=hmrHybridCount s2Step149Add0Arena s2Step149Add0B.length := by
    rw [hmrHybridCount,s2Step149Add0_card]
    decide +kernel
  have nd : s2Step149Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step149Add0Arena s2Step149Add0During s2Step149Add0Work.toFinset s2Step149Add0_bounded s2Step149Add0_apart rfl

private theorem s2Step149Add0_distinct : (780::779::783::(s2Step149Add0A++s2Step149Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149Add0_owned : (780::779::783::(s2Step149Add0A++s2Step149Add0B)).toFinset⊆s2Step149Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step149Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149Add0_checked : compileHmrHybridCinLog s2Step149Add0Arena 779 780 783 s2Step149Add0A s2Step149Add0B s2Step149Add0Work=some s2Step149Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step149Add0Arena s2Step149Add0During 779 780 783 s2Step149Add0A s2Step149Add0B s2Step149Add0Work
    (by decide +kernel) (by decide +kernel) s2Step149Add0_distinct
    (fun q hq => s2Step149Add0_owned (List.mem_toFinset.mpr hq)) s2Step149Add0_borrowed

private theorem s2Step149Add1_apart : Disjoint s2Step149Add1Arena.live s2Step149Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step149Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149Add1_card : s2Step149Add1Arena.live.card=882 := by
  decide +kernel

private theorem s2Step149Add1_borrowed : s2Step149Add1Arena.checkBorrow (hmrHybridCount s2Step149Add1Arena s2Step149Add1B.length) s2Step149Add1Work=some s2Step149Add1During := by
  have len : s2Step149Add1Work.length=hmrHybridCount s2Step149Add1Arena s2Step149Add1B.length := by
    rw [hmrHybridCount,s2Step149Add1_card]
    decide +kernel
  have nd : s2Step149Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step149Add1Arena s2Step149Add1During s2Step149Add1Work.toFinset s2Step149Add1_bounded s2Step149Add1_apart rfl

private theorem s2Step149Add1_distinct : (780::779::783::(s2Step149Add1A++s2Step149Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149Add1_owned : (780::779::783::(s2Step149Add1A++s2Step149Add1B)).toFinset⊆s2Step149Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step149Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149Add1_checked : compileHmrHybridCinLog s2Step149Add1Arena 779 780 783 s2Step149Add1A s2Step149Add1B s2Step149Add1Work=some s2Step149Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step149Add1Arena s2Step149Add1During 779 780 783 s2Step149Add1A s2Step149Add1B s2Step149Add1Work
    (by decide +kernel) (by decide +kernel) s2Step149Add1_distinct
    (fun q hq => s2Step149Add1_owned (List.mem_toFinset.mpr hq)) s2Step149Add1_borrowed

private theorem s2Step149F4_apart : Disjoint (s2Step149Add0A++s2Step149Add0B).toFinset (s2Step149Add1A++s2Step149Add1B).toFinset := by
  have nd : ((s2Step149Add0A++s2Step149Add0B)++(s2Step149Add1A++s2Step149Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step149F4_carry : s2Step149F4FlagArena.checkBorrow 1 [783]=some s2Step149Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step149F4FlagArena,s2Step149HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step149F4FlagArena,s2Step149HeadFvAfter,s2Step149Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step149F4_distinct : (845::779::780::783::((s2Step149Add0A++s2Step149Add1A)++(s2Step149Add0B++s2Step149Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149F4_flag : s2Step149HeadFvAfter.checkBorrow 1 [780]=some s2Step149F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step149HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step149F4_owned : (845::779::((s2Step149Add0A++s2Step149Add1A)++(s2Step149Add0B++s2Step149Add1B))).toFinset⊆s2Step149HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step149HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149F4_checked : compileHmrHybridF4Log s2Step149HeadFvAfter 845 779 s2Step149Add0A s2Step149Add0B s2Step149Add1A s2Step149Add1B [780] [783] s2Step149Add0Work s2Step149Add1Work=some s2Step149F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step149HeadFvAfter s2Step149F4FlagArena s2Step149Add0Arena s2Step149Add0During s2Step149Add1During 845 779
    s2Step149Add0A s2Step149Add0B s2Step149Add1A s2Step149Add1B [780] [783] s2Step149Add0Work s2Step149Add1Work
    (fun q hq => s2Step149F4_owned (List.mem_toFinset.mpr hq)) s2Step149F4_flag s2Step149F4_carry
    s2Step149F4_distinct s2Step149F4_apart s2Step149Add0_checked s2Step149Add1_checked

private theorem s2Step149Front_branch : s2Step149FrontSigmaArena.checkBorrow 1 [779]=some s2Step149HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step149FrontSigmaArena,s2Step149EntryGvAfter,s2Step149EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step149FrontSigmaArena,s2Step149EntryGvAfter,s2Step149EntryGAfter,s2Step149HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step149Front_entry : HmrFrontEntryValid s2Step149EntryFBefore s2Step149FrontBank 195 88 ⟨195,194,89,88⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step149FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step149EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step149EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step149FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step149Front_sigma : s2Step149EntryGvAfter.checkBorrow 1 [845]=some s2Step149FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step149EntryGvAfter,s2Step149EntryGAfter,arenaWires]
  · rfl

private def s2Step149HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149HeadFBefore : Arena := s2Step149HeadGAfter

private def s2Step149HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706],768⟩

private def s2Step149HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩

private def s2Step149HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 796],769⟩

private def s2Step149HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789],771⟩

private theorem s2Step149HeadBank_incomingDistinct : ([s2Step149HeadGRow,s2Step149HeadFRow,s2Step149HeadGvRow,s2Step149HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149HeadF_Incoming : rowsOwned s2Step149HeadFBefore [s2Step149HeadFRow,s2Step149HeadGvRow,s2Step149HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step149HeadGRow,s2Step149HeadFRow,s2Step149HeadGvRow,s2Step149HeadFvRow] 1 s2Step149HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step149HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149HeadBank_outgoingOwned : rowsOwned s2Step149HeadFvAfter [s2Step149HeadGOut,s2Step149HeadFOut,s2Step149HeadGvOut,s2Step149HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step149HeadFvAfter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149HeadF_Outgoing : rowsOwned s2Step149HeadFvAfter [s2Step149HeadFOut,s2Step149HeadGvOut,s2Step149HeadFvOut] :=
  hmrRows_owned_drop s2Step149HeadFvAfter [s2Step149HeadGOut,s2Step149HeadFOut,s2Step149HeadGvOut,s2Step149HeadFvOut] 1 s2Step149HeadBank_outgoingOwned

private theorem s2Step149HeadF_distinct : (s2Step149HeadFRow.sign::s2Step149HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149HeadF_owned : (s2Step149HeadFRow.sign::s2Step149HeadFRow.payload).toFinset⊆s2Step149HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step149HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149HeadF_reserved : s2Step149HeadFBefore.reserve s2Step149HeadFFresh.toFinset=some s2Step149HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step149HeadFFresh,arenaWires]
  · norm_num [s2Step149HeadFBefore,s2Step149HeadGAfter,s2Step149HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step149HeadFAfter,s2Step149HeadFBefore,s2Step149HeadGAfter,s2Step149HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step149HeadF_checked : planRowResizeLog s2Step149HeadFBefore s2Step149HeadFRow 196 s2Step149HeadFFresh=
    some (s2Step149HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 797],768⟩,growRow 768 s2Step149HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step149HeadFBefore s2Step149HeadFAfter s2Step149HeadFRow 196 s2Step149HeadFFresh
    s2Step149HeadF_distinct s2Step149HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step149HeadF_reserved
  have rowEq : WindowRow.mk (s2Step149HeadFRow.payload++s2Step149HeadFFresh) s2Step149HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 797],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step149HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step149HeadFvBefore : Arena := s2Step149HeadGvAfter

private theorem s2Step149HeadFv_Incoming : rowsOwned s2Step149HeadFvBefore [s2Step149HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step149HeadGRow,s2Step149HeadFRow,s2Step149HeadGvRow,s2Step149HeadFvRow] 3 s2Step149HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step149HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149HeadFv_Outgoing : rowsOwned s2Step149HeadFvAfter [s2Step149HeadFvOut] :=
  hmrRows_owned_drop s2Step149HeadFvAfter [s2Step149HeadGOut,s2Step149HeadFOut,s2Step149HeadGvOut,s2Step149HeadFvOut] 3 s2Step149HeadBank_outgoingOwned

private theorem s2Step149HeadFv_distinct : (s2Step149HeadFvRow.sign::s2Step149HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149HeadFv_owned : (s2Step149HeadFvRow.sign::s2Step149HeadFvRow.payload).toFinset⊆s2Step149HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step149HeadFvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149HeadFv_reserved : s2Step149HeadFvBefore.reserve s2Step149HeadFvFresh.toFinset=some s2Step149HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step149HeadFvFresh,arenaWires]
  · norm_num [s2Step149HeadFvBefore,s2Step149HeadGvAfter,s2Step149HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step149HeadFvAfter,s2Step149HeadFvBefore,s2Step149HeadGvAfter,s2Step149HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step149HeadFv_checked : planRowResizeLog s2Step149HeadFvBefore s2Step149HeadFvRow 89 s2Step149HeadFvFresh=
    some (s2Step149HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844],770⟩,growRow 770 s2Step149HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step149HeadFvBefore s2Step149HeadFvAfter s2Step149HeadFvRow 89 s2Step149HeadFvFresh
    s2Step149HeadFv_distinct s2Step149HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step149HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step149HeadFvRow.payload++s2Step149HeadFvFresh) s2Step149HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step149HeadG_Incoming : rowsOwned s2Step149HeadGBefore [s2Step149HeadGRow,s2Step149HeadFRow,s2Step149HeadGvRow,s2Step149HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step149HeadGRow,s2Step149HeadFRow,s2Step149HeadGvRow,s2Step149HeadFvRow] 0 s2Step149HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step149HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149HeadG_Outgoing : rowsOwned s2Step149HeadFvAfter [s2Step149HeadGOut,s2Step149HeadFOut,s2Step149HeadGvOut,s2Step149HeadFvOut] :=
  hmrRows_owned_drop s2Step149HeadFvAfter [s2Step149HeadGOut,s2Step149HeadFOut,s2Step149HeadGvOut,s2Step149HeadFvOut] 0 s2Step149HeadBank_outgoingOwned

private theorem s2Step149HeadG_distinct : (s2Step149HeadGRow.sign::s2Step149HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149HeadG_owned : (s2Step149HeadGRow.sign::s2Step149HeadGRow.payload).toFinset⊆s2Step149HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step149HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149HeadG_reserved : s2Step149HeadGBefore.reserve s2Step149HeadGFresh.toFinset=some s2Step149HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step149HeadGFresh,arenaWires]
  · norm_num [s2Step149HeadGBefore,s2Step149HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step149HeadGAfter,s2Step149HeadGBefore,s2Step149HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step149HeadG_checked : planRowResizeLog s2Step149HeadGBefore s2Step149HeadGRow 196 s2Step149HeadGFresh=
    some (s2Step149HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 796, 849],769⟩,growRow 769 s2Step149HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step149HeadGBefore s2Step149HeadGAfter s2Step149HeadGRow 196 s2Step149HeadGFresh
    s2Step149HeadG_distinct s2Step149HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step149HeadG_reserved
  have rowEq : WindowRow.mk (s2Step149HeadGRow.payload++s2Step149HeadGFresh) s2Step149HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 796, 849],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step149HeadGvBefore : Arena := s2Step149HeadFAfter

private theorem s2Step149HeadGv_Incoming : rowsOwned s2Step149HeadGvBefore [s2Step149HeadGvRow,s2Step149HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step149HeadGRow,s2Step149HeadFRow,s2Step149HeadGvRow,s2Step149HeadFvRow] 2 s2Step149HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step149HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step149HeadGv_Outgoing : rowsOwned s2Step149HeadFvAfter [s2Step149HeadGvOut,s2Step149HeadFvOut] :=
  hmrRows_owned_drop s2Step149HeadFvAfter [s2Step149HeadGOut,s2Step149HeadFOut,s2Step149HeadGvOut,s2Step149HeadFvOut] 2 s2Step149HeadBank_outgoingOwned

private theorem s2Step149HeadGv_distinct : (s2Step149HeadGvRow.sign::s2Step149HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step149HeadGv_owned : (s2Step149HeadGvRow.sign::s2Step149HeadGvRow.payload).toFinset⊆s2Step149HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step149HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step149HeadGv_reserved : s2Step149HeadGvBefore.reserve s2Step149HeadGvFresh.toFinset=some s2Step149HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step149HeadGvFresh,arenaWires]
  · norm_num [s2Step149HeadGvBefore,s2Step149HeadFAfter,s2Step149HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step149HeadGvAfter,s2Step149HeadGvBefore,s2Step149HeadFAfter,s2Step149HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step149HeadGv_checked : planRowResizeLog s2Step149HeadGvBefore s2Step149HeadGvRow 89 s2Step149HeadGvFresh=
    some (s2Step149HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 778],771⟩,growRow 771 s2Step149HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step149HeadGvBefore s2Step149HeadGvAfter s2Step149HeadGvRow 89 s2Step149HeadGvFresh
    s2Step149HeadGv_distinct s2Step149HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step149HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step149HeadGvRow.payload++s2Step149HeadGvFresh) s2Step149HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 778],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step149HeadBank_rows : planWindowRowsLog s2Step149HeadGBefore [(s2Step149HeadGRow,196),(s2Step149HeadFRow,196),(s2Step149HeadGvRow,89),(s2Step149HeadFvRow,89)] [s2Step149HeadGFresh,s2Step149HeadFFresh,s2Step149HeadGvFresh,s2Step149HeadFvFresh]=
    some (s2Step149HeadFvAfter,[s2Step149HeadGOut,s2Step149HeadFOut,s2Step149HeadGvOut,s2Step149HeadFvOut],(growRow 769 s2Step149HeadGFresh ++ (growRow 768 s2Step149HeadFFresh ++ (growRow 771 s2Step149HeadGvFresh ++ (growRow 770 s2Step149HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step149HeadFvAfter [] []=some (s2Step149HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step149HeadFvBefore s2Step149HeadFvAfter s2Step149HeadFvAfter
    s2Step149HeadFvRow s2Step149HeadFvOut 89 s2Step149HeadFvFresh [] [] []
    (growRow 770 s2Step149HeadFvFresh) ([]) s2Step149HeadFv_Incoming s2Step149HeadFv_checked h4 s2Step149HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step149HeadGvBefore s2Step149HeadGvAfter s2Step149HeadFvAfter
    s2Step149HeadGvRow s2Step149HeadGvOut 89 s2Step149HeadGvFresh [(s2Step149HeadFvRow,89)] [s2Step149HeadFvFresh] [s2Step149HeadFvOut]
    (growRow 771 s2Step149HeadGvFresh) ((growRow 770 s2Step149HeadFvFresh ++ [])) s2Step149HeadGv_Incoming s2Step149HeadGv_checked h3 s2Step149HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step149HeadFBefore s2Step149HeadFAfter s2Step149HeadFvAfter
    s2Step149HeadFRow s2Step149HeadFOut 196 s2Step149HeadFFresh [(s2Step149HeadGvRow,89),(s2Step149HeadFvRow,89)] [s2Step149HeadGvFresh,s2Step149HeadFvFresh] [s2Step149HeadGvOut,s2Step149HeadFvOut]
    (growRow 768 s2Step149HeadFFresh) ((growRow 771 s2Step149HeadGvFresh ++ (growRow 770 s2Step149HeadFvFresh ++ []))) s2Step149HeadF_Incoming s2Step149HeadF_checked h2 s2Step149HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step149HeadGBefore s2Step149HeadGAfter s2Step149HeadFvAfter
    s2Step149HeadGRow s2Step149HeadGOut 196 s2Step149HeadGFresh [(s2Step149HeadFRow,196),(s2Step149HeadGvRow,89),(s2Step149HeadFvRow,89)] [s2Step149HeadFFresh,s2Step149HeadGvFresh,s2Step149HeadFvFresh] [s2Step149HeadFOut,s2Step149HeadGvOut,s2Step149HeadFvOut]
    (growRow 769 s2Step149HeadGFresh) ((growRow 768 s2Step149HeadFFresh ++ (growRow 771 s2Step149HeadGvFresh ++ (growRow 770 s2Step149HeadFvFresh ++ [])))) s2Step149HeadG_Incoming s2Step149HeadG_checked h1 s2Step149HeadG_Outgoing
  exact h0

private theorem s2Step149HeadBank_checked : compileHmrBankResizeLog .headroom s2Step149HeadGBefore ⟨s2Step149HeadFRow,s2Step149HeadGRow,s2Step149HeadFvRow,s2Step149HeadGvRow⟩ ⟨196,196,89,89⟩ [s2Step149HeadGFresh,s2Step149HeadFFresh,s2Step149HeadGvFresh,s2Step149HeadFvFresh]=
    some (s2Step149HeadFvAfter,⟨s2Step149HeadFOut,s2Step149HeadGOut,s2Step149HeadFvOut,s2Step149HeadGvOut⟩,(growRow 769 s2Step149HeadGFresh ++ (growRow 768 s2Step149HeadFFresh ++ (growRow 771 s2Step149HeadGvFresh ++ (growRow 770 s2Step149HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step149HeadBank_rows]
  rfl

private theorem s2Step149Front_checked : compileHmrSourceFrontLog s2Step149EntryFBefore s2Step149FrontBank 195 88 ⟨195,194,89,88⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step149FrontLog=some s2Step149FrontPlan := by
  have pairEq : s2Step149FrontPair=⟨s2Step149HeadFRow,s2Step149HeadGRow,s2Step149HeadFvRow,s2Step149HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step149FrontHead=⟨s2Step149ExitFRow,s2Step149ExitGRow,s2Step149ExitFvRow,s2Step149ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step149Add0A=s2Step149FrontHead.f.wires := by decide +kernel
  have gEq : s2Step149Add0B=s2Step149FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step149Add1A=s2Step149FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step149Add1B=s2Step149FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step149EntryFBefore s2Step149FrontBank 195 88 ⟨195,194,89,88⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step149FrontLog s2Step149FrontPlan
  · exact s2Step149Front_entry
  · exact s2Step149EntryBank_checked
  · exact s2Step149Front_sigma
  · rfl
  · exact s2Step149Front_branch
  · rfl
  · simpa only [s2Step149FrontPlan,pairEq] using s2Step149HeadBank_checked
  · simpa only [s2Step149FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step149F4_checked
  · exact s2Step149Counter_checked
  · rfl
  · simpa only [s2Step149FrontPlan,headEq] using s2Step149ExitBank_checked

private theorem s2Step149Complete_explicit_checked : compileHmrEarlyStepLog s2Step149EntryFBefore s2Step149FrontBank 195 88 ⟨195,194,89,88⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step149CompleteLog=some s2Step149CompletePlan := by
  let Q := s2Step149EarlyControlPlan
  have hq := s2Step149EarlyControl_plan_checked
  have fv1 : s2Step149CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step149CompleteOut.fv.payload[2]?.getD s2Step149CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step149CompleteOut.fv.payload[3]?.getD s2Step149CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step149CompleteOut.fv.payload[4]?.getD s2Step149CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step149EntryFBefore s2Step149EarlyControlArena s2Step149FrontBank 195 88 ⟨195,194,89,88⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step149CompleteLog s2Step149FrontPlan Q
    s2Step149Front_checked s2Step149Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step149Complete_owned s2Step149Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step149EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 s2Step149CompleteOut.fv.second (s2Step149CompleteOut.fv.payload[2]?.getD s2Step149CompleteOut.fv.sign) (s2Step149CompleteOut.fv.payload[3]?.getD s2Step149CompleteOut.fv.sign) (s2Step149CompleteOut.fv.payload[4]?.getD s2Step149CompleteOut.fv.sign) 779 42 s2Step149EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep149Arena : Arena := s2Step149EntryFBefore
def s2PrivateStep149Bank : WindowBank := s2Step149FrontBank
def s2PrivateStep149Spec : HmrSourceWalkStepLog := ⟨195,88,⟨195,194,89,88⟩,42,.early s2Step149CompleteLog⟩
def s2PrivateStep149Plan : HmrSourceStepPlan := .early s2Step149CompletePlan
theorem s2PrivateStep149_source : s2PrivateStep149Spec=s2ObservedLogs144[5] := rfl
theorem s2PrivateStep149_checked : compileHmrSourceStepLog s2PrivateStep149Arena s2PrivateStep149Bank
    s2PrivateStep149Spec.fgWidth s2PrivateStep149Spec.vWidth s2PrivateStep149Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 149 s2PrivateStep149Spec.need none s2PrivateStep149Spec.log=some s2PrivateStep149Plan := by
  change compileHmrSourceStepLog s2Step149EntryFBefore s2Step149FrontBank 195 88 ⟨195,194,89,88⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 149 42 none (.early s2Step149CompleteLog)=some (.early s2Step149CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 149<498)]
  rw [s2Step149Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
