import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep145
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

private def s2Step147CompleteMoves : List (Wire × Wire) := [(796,707)]

private def s2Step147EarlyControlLog : HmrEarlyControlLog := ⟨[796, 844, 778, 849, 797],[780],[783],[790, 815, 867, 877, 879, 882],[]⟩

private def s2Step147FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [780], [], [836, 844]],[[783], [797], [778], [849]],[[], [], [], []]⟩,[845],[789],[790],[815],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877]⟩

private def s2Step147CompleteLog : HmrEarlyStepLog := ⟨s2Step147FrontLog,s2Step147CompleteMoves,s2Step147EarlyControlLog⟩

private def s2Step147ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706],768⟩

private def s2Step147ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩

private def s2Step147ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194],769⟩

private def s2Step147ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836],771⟩

private def s2Step147FrontOut : WindowBank := ⟨s2Step147ExitFOut,s2Step147ExitGOut,s2Step147ExitFvOut,s2Step147ExitGvOut⟩

private def s2Step147CompleteOut : WindowBank := s2Step147FrontOut.repacked s2Step147CompleteMoves

private def s2Step147EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step147EarlyControlPositiveArena,[780],s2Step147EarlyControlEqualityArena,[783],⟨⟨845,false⟩,[⟨⟨780,false⟩,783⟩]⟩⟩

private def s2Step147EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,796⟩,⟨⟨774,false⟩,844⟩,⟨⟨775,false⟩,778⟩,⟨⟨776,false⟩,849⟩,⟨⟨777,false⟩,797⟩]⟩

private def s2Step147EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step147EarlyControlZeroArena,s2Step147EarlyControlZeroPlan,s2Step147EarlyControlClassPlan,s2Step147EarlyControlFlagArena,s2Step147EarlyControlFittedArena,s2Step147EarlyControlHistoryArena,s2Step147EarlyControlSigmaArena,s2Step147EarlyControlOutputArena,s2Step147EarlyControlLog⟩

private def s2Step147CounterWork : List Wire := [790, 815, 867, 877]

private theorem s2Step147Counter_bounded : s2Step147CounterWork.toFinset⊆arenaWires := by norm_num [s2Step147CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step147HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147CounterDuring : Arena := ⟨s2Step147HeadFvAfter.live∪s2Step147CounterWork.toFinset,Finset.union_subset s2Step147HeadFvAfter.bounded s2Step147Counter_bounded⟩

private def s2Step147EntryFFresh : List Wire := []

private def s2Step147EntryFvFresh : List Wire := []

private def s2Step147EntryGFresh : List Wire := [780]

private def s2Step147EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147EntryGvFresh : List Wire := [836, 844]

private def s2Step147ExitFExtra : List Wire := [707, 797]

private def s2Step147ExitFvExtra : List Wire := [849]

private def s2Step147ExitGExtra : List Wire := [780, 783]

private def s2Step147ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<707) ∨ (708≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147ExitGvExtra : List Wire := [844, 778]

private def s2Step147Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step147Add0_bounded : s2Step147Add0Work.toFinset⊆arenaWires := by
  have h : s2Step147Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step147Add0During : Arena := ⟨s2Step147Add0Arena.live∪s2Step147Add0Work.toFinset,Finset.union_subset s2Step147Add0Arena.bounded s2Step147Add0_bounded⟩

private def s2Step147Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step147Add1_bounded : s2Step147Add1Work.toFinset⊆arenaWires := by
  have h : s2Step147Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step147Add1During : Arena := ⟨s2Step147Add1Arena.live∪s2Step147Add1Work.toFinset,Finset.union_subset s2Step147Add1Arena.bounded s2Step147Add1_bounded⟩

private def s2Step147F4FlagArena : Arena := ⟨s2Step147HeadFvAfter.live∪{790},Finset.union_subset s2Step147HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step147F4Plan : HmrHybridF4Plan := ⟨s2Step147F4FlagArena,[790],s2Step147Add0Arena,[815],s2Step147Add0During,s2Step147Add0Work,s2Step147Add1During,s2Step147Add1Work⟩

private def s2Step147HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 797],768⟩

private def s2Step147HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 849],770⟩

private def s2Step147HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 780, 783],769⟩

private def s2Step147HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 844, 778],771⟩

private def s2Step147FrontHead : WindowBank := ⟨s2Step147HeadFOut,s2Step147HeadGOut,s2Step147HeadFvOut,s2Step147HeadGvOut⟩

private def s2Step147EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707],768⟩

private def s2Step147EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩

private def s2Step147EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 780],769⟩

private def s2Step147EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 844],771⟩

private def s2Step147FrontPair : WindowBank := ⟨s2Step147EntryFOut,s2Step147EntryGOut,s2Step147EntryFvOut,s2Step147EntryGvOut⟩

private def s2Step147FrontSigmaArena : Arena := ⟨s2Step147EntryGvAfter.live∪{845},Finset.union_subset s2Step147EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step147HeadFFresh : List Wire := [797]

private def s2Step147HeadFvFresh : List Wire := [849]

private def s2Step147HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147HeadGFresh : List Wire := [783]

private def s2Step147HeadGvFresh : List Wire := [778]

private def s2Step147FrontPlan : HmrSourceFront := ⟨s2Step147EntryGvAfter,s2Step147FrontPair,(growRow 768 s2Step147EntryFFresh ++ (growRow 769 s2Step147EntryGFresh ++ (growRow 770 s2Step147EntryFvFresh ++ (growRow 771 s2Step147EntryGvFresh ++ [])))),s2Step147FrontSigmaArena,[845],s2Step147HeadGBefore,[789],
  s2Step147HeadFvAfter,s2Step147FrontHead,(growRow 769 s2Step147HeadGFresh ++ (growRow 768 s2Step147HeadFFresh ++ (growRow 771 s2Step147HeadGvFresh ++ (growRow 770 s2Step147HeadFvFresh ++ [])))),s2Step147F4Plan,s2Step147CounterDuring,s2Step147CounterWork,s2Step147ExitGvAfter,s2Step147FrontOut,(shrinkRow 769 s2Step147ExitGExtra ++ (shrinkRow 768 s2Step147ExitFExtra ++ (shrinkRow 770 s2Step147ExitFvExtra ++ (shrinkRow 771 s2Step147ExitGvExtra ++ []))))⟩

private def s2Step147CompletePlan : HmrEarlyStepPlan := ⟨s2Step147FrontPlan,s2Step147EarlyControlArena,s2Step147EarlyControlPlan,s2Step147CompleteMoves⟩

private theorem s2Step147Complete_apart : List.Disjoint (s2Step147CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [845, 789, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step147CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[845, 789, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step147Complete_owned : (s2Step147CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step147EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step147EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step147CompleteMoveArena : Arena := ⟨s2Step147ExitGvAfter.live∪{707},Finset.union_subset s2Step147ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step147Complete_repack : s2Step147ExitGvAfter.checkRepack s2Step147CompleteMoves=some s2Step147EarlyControlArena := by
  have owned : 796∈s2Step147ExitGvAfter.live := by norm_num [s2Step147ExitGvAfter,arenaWires]
  have reserve : s2Step147ExitGvAfter.reserve {707}=some s2Step147CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step147ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step147CompleteMoveArena.retireSet {796}=s2Step147EarlyControlArena := by
    unfold Arena.retireSet s2Step147EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step147CompleteMoveArena,s2Step147ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step147CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step147CompleteMoveArena.retireSet {796}).checkRepack []=some s2Step147EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step147EarlyControl_branchOwned : ([789] : List Wire).toFinset⊆s2Step147EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step147EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EarlyControl_branch : compileHmrBranchRetirement s2Step147EarlyControlSigmaArena 789=some s2Step147EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step147EarlyControl_branchOwned
  · ext q
    simp [s2Step147EarlyControlOutputArena,s2Step147EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step147EarlyControl_classEqualityBorrow : s2Step147EarlyControlPositiveArena.checkBorrow (([845, 780] : List Wire).length-1) s2Step147EarlyControlLog.classWork=some s2Step147EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step147EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step147EarlyControlEqualityArena,s2Step147EarlyControlPositiveArena,s2Step147EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step147EarlyControl_classEqualityOwned : ([845, 780] : List Wire).toFinset⊆s2Step147EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step147EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EarlyControl_classEquality : compileHmrEqualityLog s2Step147EarlyControlPositiveArena [845, 780] 0 s2Step147EarlyControlLog.classWork=some (s2Step147EarlyControlEqualityArena,s2Step147EarlyControlLog.classWork,s2Step147EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step147EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step147EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step147EarlyControl_classOwned : ([777, 797, 845] : List Wire).toFinset⊆s2Step147EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step147EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EarlyControl_positiveBorrow : s2Step147EarlyControlZeroArena.checkBorrow (1) s2Step147EarlyControlLog.positiveWork=some s2Step147EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step147EarlyControlZeroArena (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step147EarlyControlPositiveArena,s2Step147EarlyControlZeroArena,s2Step147EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step147EarlyControl_class : compileHmrSourceClassLog s2Step147EarlyControlZeroArena false 777 s2Step147EarlyControlZeroPlan.top 0 845 s2Step147EarlyControlLog.positiveWork s2Step147EarlyControlLog.classWork=some s2Step147EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step147EarlyControlClassPlan s2Step147EarlyControlZeroArena false 777 s2Step147EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s2Step147EarlyControl_classOwned
  · exact s2Step147EarlyControl_positiveBorrow
  · exact s2Step147EarlyControl_classEquality

private theorem s2Step147EarlyControl_entryRecordOwned : ([789, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step147EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step147EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s2Step147EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step147EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EarlyControl_fitBorrow : s2Step147EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step147EarlyControlLog.recordFresh=some s2Step147EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step147EarlyControlFlagArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step147EarlyControlFittedArena,s2Step147EarlyControlFlagArena,s2Step147EarlyControlLog,arenaWires]

private theorem s2Step147EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step147EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step147EarlyControlFlagArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EarlyControl_fit : compileHmrRecordGrowLog s2Step147EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step147EarlyControlLog.recordFresh=some s2Step147EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step147EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step147EarlyControl_fitBorrow

private theorem s2Step147EarlyControl_flagsBorrow : s2Step147EarlyControlEqualityArena.checkBorrow (6) s2Step147EarlyControlLog.flagWork=some s2Step147EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step147EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step147EarlyControlFlagArena,s2Step147EarlyControlEqualityArena,s2Step147EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step147EarlyControl_flagsOwned : ([783, 253, 252, 251] : List Wire).toFinset⊆s2Step147EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step147EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EarlyControl_flags : compileHmrFlagsLog s2Step147EarlyControlClassPlan.equalityArena s2Step147EarlyControlClassPlan.equality.top 253 252 251 s2Step147EarlyControlLog.flagWork=some s2Step147EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step147EarlyControl_flagsOwned⟩
  · exact s2Step147EarlyControl_flagsBorrow

private theorem s2Step147EarlyControl_historyBorrow : s2Step147EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step147EarlyControlLog.recordFresh=some s2Step147EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step147EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step147EarlyControlHistoryArena,s2Step147EarlyControlArena,s2Step147EarlyControlLog,arenaWires]

private theorem s2Step147EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step147EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step147EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EarlyControl_history : compileHmrRecordGrowLog s2Step147EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step147EarlyControlLog.recordFresh=some s2Step147EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step147EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step147EarlyControl_historyBorrow

private theorem s2Step147EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s2Step147EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step147EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s2Step147EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step147EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EarlyControl_sigmaRelease : s2Step147EarlyControlHistoryArena.release {845} (fun _ => false)=some s2Step147EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step147EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step147EarlyControlSigmaArena,s2Step147EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step147EarlyControl_sigma : compileHmrSigmaDropLog s2Step147EarlyControlHistoryArena false 0 0 254 845 []=some s2Step147EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step147EarlyControl_sigmaOwned⟩
  · exact s2Step147EarlyControl_sigmaRelease

private theorem s2Step147EarlyControl_zeroBorrow : s2Step147EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step147EarlyControlLog.zeroWork=some s2Step147EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step147EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step147EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step147EarlyControlZeroArena,s2Step147EarlyControlArena,s2Step147EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step147EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step147EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step147EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EarlyControl_zero : compileHmrEqualityLog s2Step147EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step147EarlyControlLog.zeroWork=some (s2Step147EarlyControlZeroArena,s2Step147EarlyControlLog.zeroWork,s2Step147EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step147EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step147EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step147EarlyControl_logged : s2Step147EarlyControlPlan.Logged s2Step147EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 254 253 252 251 789 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step147EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step147EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step147EarlyControl_zero
  · exact s2Step147EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step147EarlyControl_flags
  · exact s2Step147EarlyControl_fit
  · exact s2Step147EarlyControl_history
  · exact s2Step147EarlyControl_sigma
  · exact s2Step147EarlyControl_branch

private theorem s2Step147EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step147EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 254 253 252 251 789 42 s2Step147EarlyControlLog=some s2Step147EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step147EarlyControlPlan s2Step147EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 254 253 252 251 789 42 s2Step147EarlyControl_logged

private def s2Step147EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707],768⟩

private def s2Step147EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩

private def s2Step147EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194],769⟩

private def s2Step147EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788],771⟩

private def s2Step147FrontBank : WindowBank := ⟨s2Step147EntryFRow,s2Step147EntryGRow,s2Step147EntryFvRow,s2Step147EntryGvRow⟩

private def s2Step147Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 797, 768]

private def s2Step147Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 780, 783, 769]

private def s2Step147Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 849, 770]

private def s2Step147Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 844, 778, 771]

private theorem s2Step147Counter_apart : Disjoint s2Step147HeadFvAfter.live s2Step147CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step147HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147Counter_borrowed : s2Step147HeadFvAfter.checkBorrow 4 s2Step147CounterWork=some s2Step147CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step147HeadFvAfter s2Step147CounterDuring s2Step147CounterWork.toFinset s2Step147Counter_bounded s2Step147Counter_apart rfl

private theorem s2Step147Counter_owned : (845::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step147HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step147HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147Counter_checked : compileHmrCounterStepLog s2Step147HeadFvAfter true 845 [772, 773, 774, 775, 776, 777] s2Step147CounterWork=some s2Step147CounterDuring := by
  have owned : ∀q∈845::[772, 773, 774, 775, 776, 777],q∈s2Step147HeadFvAfter.live := fun q hq => s2Step147Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step147Counter_borrowed

private def s2Step147EntryFAfter : Arena := s2Step147EntryFBefore

private theorem s2Step147EntryBank_incomingDistinct : ([s2Step147EntryFRow,s2Step147EntryGRow,s2Step147EntryFvRow,s2Step147EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147EntryF_Incoming : rowsOwned s2Step147EntryFBefore [s2Step147EntryFRow,s2Step147EntryGRow,s2Step147EntryFvRow,s2Step147EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step147EntryFRow,s2Step147EntryGRow,s2Step147EntryFvRow,s2Step147EntryGvRow] 0 s2Step147EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step147EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147EntryBank_outgoingOwned : rowsOwned s2Step147EntryGvAfter [s2Step147EntryFOut,s2Step147EntryGOut,s2Step147EntryFvOut,s2Step147EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step147EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147EntryF_Outgoing : rowsOwned s2Step147EntryGvAfter [s2Step147EntryFOut,s2Step147EntryGOut,s2Step147EntryFvOut,s2Step147EntryGvOut] :=
  hmrRows_owned_drop s2Step147EntryGvAfter [s2Step147EntryFOut,s2Step147EntryGOut,s2Step147EntryFvOut,s2Step147EntryGvOut] 0 s2Step147EntryBank_outgoingOwned

private theorem s2Step147EntryF_distinct : (s2Step147EntryFRow.sign::s2Step147EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147EntryF_owned : (s2Step147EntryFRow.sign::s2Step147EntryFRow.payload).toFinset⊆s2Step147EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step147EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EntryF_reserved : s2Step147EntryFBefore.reserve s2Step147EntryFFresh.toFinset=some s2Step147EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step147EntryFFresh,arenaWires]
  · norm_num [s2Step147EntryFBefore,s2Step147EntryFFresh,arenaWires]
  · simp only [s2Step147EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step147EntryF_checked : planRowResizeLog s2Step147EntryFBefore s2Step147EntryFRow 196 s2Step147EntryFFresh=
    some (s2Step147EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707],768⟩,growRow 768 s2Step147EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step147EntryFBefore s2Step147EntryFAfter s2Step147EntryFRow 196 s2Step147EntryFFresh
    s2Step147EntryF_distinct s2Step147EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step147EntryF_reserved
  have rowEq : WindowRow.mk (s2Step147EntryFRow.payload++s2Step147EntryFFresh) s2Step147EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step147EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147EntryFvAfter : Arena := s2Step147EntryGAfter

private def s2Step147EntryFvBefore : Arena := s2Step147EntryGAfter

private theorem s2Step147EntryFv_Incoming : rowsOwned s2Step147EntryFvBefore [s2Step147EntryFvRow,s2Step147EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step147EntryFRow,s2Step147EntryGRow,s2Step147EntryFvRow,s2Step147EntryGvRow] 2 s2Step147EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step147EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147EntryFv_Outgoing : rowsOwned s2Step147EntryGvAfter [s2Step147EntryFvOut,s2Step147EntryGvOut] :=
  hmrRows_owned_drop s2Step147EntryGvAfter [s2Step147EntryFOut,s2Step147EntryGOut,s2Step147EntryFvOut,s2Step147EntryGvOut] 2 s2Step147EntryBank_outgoingOwned

private theorem s2Step147EntryFv_distinct : (s2Step147EntryFvRow.sign::s2Step147EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147EntryFv_owned : (s2Step147EntryFvRow.sign::s2Step147EntryFvRow.payload).toFinset⊆s2Step147EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step147EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EntryFv_reserved : s2Step147EntryFvBefore.reserve s2Step147EntryFvFresh.toFinset=some s2Step147EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step147EntryFvFresh,arenaWires]
  · norm_num [s2Step147EntryFvBefore,s2Step147EntryGAfter,s2Step147EntryFvFresh,arenaWires]
  · simp only [s2Step147EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step147EntryFv_checked : planRowResizeLog s2Step147EntryFvBefore s2Step147EntryFvRow 88 s2Step147EntryFvFresh=
    some (s2Step147EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩,growRow 770 s2Step147EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step147EntryFvBefore s2Step147EntryFvAfter s2Step147EntryFvRow 88 s2Step147EntryFvFresh
    s2Step147EntryFv_distinct s2Step147EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step147EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step147EntryFvRow.payload++s2Step147EntryFvFresh) s2Step147EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step147EntryGBefore : Arena := s2Step147EntryFBefore

private theorem s2Step147EntryG_Incoming : rowsOwned s2Step147EntryGBefore [s2Step147EntryGRow,s2Step147EntryFvRow,s2Step147EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step147EntryFRow,s2Step147EntryGRow,s2Step147EntryFvRow,s2Step147EntryGvRow] 1 s2Step147EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step147EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147EntryG_Outgoing : rowsOwned s2Step147EntryGvAfter [s2Step147EntryGOut,s2Step147EntryFvOut,s2Step147EntryGvOut] :=
  hmrRows_owned_drop s2Step147EntryGvAfter [s2Step147EntryFOut,s2Step147EntryGOut,s2Step147EntryFvOut,s2Step147EntryGvOut] 1 s2Step147EntryBank_outgoingOwned

private theorem s2Step147EntryG_distinct : (s2Step147EntryGRow.sign::s2Step147EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147EntryG_owned : (s2Step147EntryGRow.sign::s2Step147EntryGRow.payload).toFinset⊆s2Step147EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step147EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EntryG_reserved : s2Step147EntryGBefore.reserve s2Step147EntryGFresh.toFinset=some s2Step147EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step147EntryGFresh,arenaWires]
  · norm_num [s2Step147EntryGBefore,s2Step147EntryFBefore,s2Step147EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step147EntryGAfter,s2Step147EntryGBefore,s2Step147EntryFBefore,s2Step147EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step147EntryG_checked : planRowResizeLog s2Step147EntryGBefore s2Step147EntryGRow 196 s2Step147EntryGFresh=
    some (s2Step147EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 780],769⟩,growRow 769 s2Step147EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step147EntryGBefore s2Step147EntryGAfter s2Step147EntryGRow 196 s2Step147EntryGFresh
    s2Step147EntryG_distinct s2Step147EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step147EntryG_reserved
  have rowEq : WindowRow.mk (s2Step147EntryGRow.payload++s2Step147EntryGFresh) s2Step147EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 780],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step147EntryGvBefore : Arena := s2Step147EntryGAfter

private theorem s2Step147EntryGv_Incoming : rowsOwned s2Step147EntryGvBefore [s2Step147EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step147EntryFRow,s2Step147EntryGRow,s2Step147EntryFvRow,s2Step147EntryGvRow] 3 s2Step147EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step147EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147EntryGv_Outgoing : rowsOwned s2Step147EntryGvAfter [s2Step147EntryGvOut] :=
  hmrRows_owned_drop s2Step147EntryGvAfter [s2Step147EntryFOut,s2Step147EntryGOut,s2Step147EntryFvOut,s2Step147EntryGvOut] 3 s2Step147EntryBank_outgoingOwned

private theorem s2Step147EntryGv_distinct : (s2Step147EntryGvRow.sign::s2Step147EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147EntryGv_owned : (s2Step147EntryGvRow.sign::s2Step147EntryGvRow.payload).toFinset⊆s2Step147EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step147EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147EntryGv_reserved : s2Step147EntryGvBefore.reserve s2Step147EntryGvFresh.toFinset=some s2Step147EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step147EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step147EntryGvBefore,s2Step147EntryGAfter,s2Step147EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step147EntryGvAfter,s2Step147EntryGvBefore,s2Step147EntryGAfter,s2Step147EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step147EntryGv_checked : planRowResizeLog s2Step147EntryGvBefore s2Step147EntryGvRow 88 s2Step147EntryGvFresh=
    some (s2Step147EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 844],771⟩,growRow 771 s2Step147EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step147EntryGvBefore s2Step147EntryGvAfter s2Step147EntryGvRow 88 s2Step147EntryGvFresh
    s2Step147EntryGv_distinct s2Step147EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step147EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step147EntryGvRow.payload++s2Step147EntryGvFresh) s2Step147EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 844],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step147EntryBank_rows : planWindowRowsLog s2Step147EntryFBefore [(s2Step147EntryFRow,196),(s2Step147EntryGRow,196),(s2Step147EntryFvRow,88),(s2Step147EntryGvRow,88)] [s2Step147EntryFFresh,s2Step147EntryGFresh,s2Step147EntryFvFresh,s2Step147EntryGvFresh]=
    some (s2Step147EntryGvAfter,[s2Step147EntryFOut,s2Step147EntryGOut,s2Step147EntryFvOut,s2Step147EntryGvOut],(growRow 768 s2Step147EntryFFresh ++ (growRow 769 s2Step147EntryGFresh ++ (growRow 770 s2Step147EntryFvFresh ++ (growRow 771 s2Step147EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step147EntryGvAfter [] []=some (s2Step147EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step147EntryGvBefore s2Step147EntryGvAfter s2Step147EntryGvAfter
    s2Step147EntryGvRow s2Step147EntryGvOut 88 s2Step147EntryGvFresh [] [] []
    (growRow 771 s2Step147EntryGvFresh) ([]) s2Step147EntryGv_Incoming s2Step147EntryGv_checked h4 s2Step147EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step147EntryFvBefore s2Step147EntryFvAfter s2Step147EntryGvAfter
    s2Step147EntryFvRow s2Step147EntryFvOut 88 s2Step147EntryFvFresh [(s2Step147EntryGvRow,88)] [s2Step147EntryGvFresh] [s2Step147EntryGvOut]
    (growRow 770 s2Step147EntryFvFresh) ((growRow 771 s2Step147EntryGvFresh ++ [])) s2Step147EntryFv_Incoming s2Step147EntryFv_checked h3 s2Step147EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step147EntryGBefore s2Step147EntryGAfter s2Step147EntryGvAfter
    s2Step147EntryGRow s2Step147EntryGOut 196 s2Step147EntryGFresh [(s2Step147EntryFvRow,88),(s2Step147EntryGvRow,88)] [s2Step147EntryFvFresh,s2Step147EntryGvFresh] [s2Step147EntryFvOut,s2Step147EntryGvOut]
    (growRow 769 s2Step147EntryGFresh) ((growRow 770 s2Step147EntryFvFresh ++ (growRow 771 s2Step147EntryGvFresh ++ []))) s2Step147EntryG_Incoming s2Step147EntryG_checked h2 s2Step147EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step147EntryFBefore s2Step147EntryFAfter s2Step147EntryGvAfter
    s2Step147EntryFRow s2Step147EntryFOut 196 s2Step147EntryFFresh [(s2Step147EntryGRow,196),(s2Step147EntryFvRow,88),(s2Step147EntryGvRow,88)] [s2Step147EntryGFresh,s2Step147EntryFvFresh,s2Step147EntryGvFresh] [s2Step147EntryGOut,s2Step147EntryFvOut,s2Step147EntryGvOut]
    (growRow 768 s2Step147EntryFFresh) ((growRow 769 s2Step147EntryGFresh ++ (growRow 770 s2Step147EntryFvFresh ++ (growRow 771 s2Step147EntryGvFresh ++ [])))) s2Step147EntryF_Incoming s2Step147EntryF_checked h1 s2Step147EntryF_Outgoing
  exact h0

private theorem s2Step147EntryBank_checked : compileHmrBankResizeLog .entry s2Step147EntryFBefore ⟨s2Step147EntryFRow,s2Step147EntryGRow,s2Step147EntryFvRow,s2Step147EntryGvRow⟩ ⟨196,196,88,88⟩ [s2Step147EntryFFresh,s2Step147EntryGFresh,s2Step147EntryFvFresh,s2Step147EntryGvFresh]=
    some (s2Step147EntryGvAfter,⟨s2Step147EntryFOut,s2Step147EntryGOut,s2Step147EntryFvOut,s2Step147EntryGvOut⟩,(growRow 768 s2Step147EntryFFresh ++ (growRow 769 s2Step147EntryGFresh ++ (growRow 770 s2Step147EntryFvFresh ++ (growRow 771 s2Step147EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step147EntryBank_rows]
  rfl

private def s2Step147ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<707) ∨ (708≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147ExitFBefore : Arena := s2Step147ExitGAfter

private def s2Step147ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 797],768⟩

private def s2Step147ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 849],770⟩

private def s2Step147ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 780, 783],769⟩

private def s2Step147ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 844, 778],771⟩

private theorem s2Step147ExitBank_incomingDistinct : ([s2Step147ExitGRow,s2Step147ExitFRow,s2Step147ExitFvRow,s2Step147ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147ExitF_Incoming : rowsOwned s2Step147ExitFBefore [s2Step147ExitFRow,s2Step147ExitFvRow,s2Step147ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step147ExitGRow,s2Step147ExitFRow,s2Step147ExitFvRow,s2Step147ExitGvRow] 1 s2Step147ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step147ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147ExitBank_outgoingOwned : rowsOwned s2Step147ExitGvAfter [s2Step147ExitGOut,s2Step147ExitFOut,s2Step147ExitFvOut,s2Step147ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step147ExitGvAfter (fun q => (0≤q ∧ q<707) ∨ (708≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (845≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147ExitF_Outgoing : rowsOwned s2Step147ExitGvAfter [s2Step147ExitFOut,s2Step147ExitFvOut,s2Step147ExitGvOut] :=
  hmrRows_owned_drop s2Step147ExitGvAfter [s2Step147ExitGOut,s2Step147ExitFOut,s2Step147ExitFvOut,s2Step147ExitGvOut] 1 s2Step147ExitBank_outgoingOwned

private theorem s2Step147ExitF_distinct : (s2Step147ExitFRow.sign::s2Step147ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147ExitF_owned : (s2Step147ExitFRow.sign::s2Step147ExitFRow.payload).toFinset⊆s2Step147ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step147ExitFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147ExitF_retired : s2Step147ExitFBefore.retireSet s2Step147ExitFExtra.toFinset=s2Step147ExitFAfter := by
  unfold Arena.retireSet s2Step147ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step147ExitFBefore,s2Step147ExitGAfter,s2Step147ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step147ExitF_checked : planRowResizeLog s2Step147ExitFBefore s2Step147ExitFRow 195 []=
    some (s2Step147ExitFAfter,s2Step147ExitFOut,shrinkRow 768 s2Step147ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step147ExitFBefore s2Step147ExitFRow 195 s2Step147ExitF_distinct s2Step147ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step147ExitFRow.payload.take 195) s2Step147ExitFRow.sign=s2Step147ExitFOut := by decide +kernel
  have hi : s2Step147ExitFRow.payload.drop 195=s2Step147ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step147ExitF_retired] at result
  exact result

private def s2Step147ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<707) ∨ (708≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147ExitFvBefore : Arena := s2Step147ExitFAfter

private theorem s2Step147ExitFv_Incoming : rowsOwned s2Step147ExitFvBefore [s2Step147ExitFvRow,s2Step147ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step147ExitGRow,s2Step147ExitFRow,s2Step147ExitFvRow,s2Step147ExitGvRow] 2 s2Step147ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step147ExitFvBefore (fun q => (0≤q ∧ q<707) ∨ (708≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147ExitFv_Outgoing : rowsOwned s2Step147ExitGvAfter [s2Step147ExitFvOut,s2Step147ExitGvOut] :=
  hmrRows_owned_drop s2Step147ExitGvAfter [s2Step147ExitGOut,s2Step147ExitFOut,s2Step147ExitFvOut,s2Step147ExitGvOut] 2 s2Step147ExitBank_outgoingOwned

private theorem s2Step147ExitFv_distinct : (s2Step147ExitFvRow.sign::s2Step147ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147ExitFv_owned : (s2Step147ExitFvRow.sign::s2Step147ExitFvRow.payload).toFinset⊆s2Step147ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step147ExitFvBefore (fun q => (0≤q ∧ q<707) ∨ (708≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147ExitFv_retired : s2Step147ExitFvBefore.retireSet s2Step147ExitFvExtra.toFinset=s2Step147ExitFvAfter := by
  unfold Arena.retireSet s2Step147ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step147ExitFvBefore,s2Step147ExitFAfter,s2Step147ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step147ExitFv_checked : planRowResizeLog s2Step147ExitFvBefore s2Step147ExitFvRow 88 []=
    some (s2Step147ExitFvAfter,s2Step147ExitFvOut,shrinkRow 770 s2Step147ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step147ExitFvBefore s2Step147ExitFvRow 88 s2Step147ExitFv_distinct s2Step147ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step147ExitFvRow.payload.take 88) s2Step147ExitFvRow.sign=s2Step147ExitFvOut := by decide +kernel
  have hi : s2Step147ExitFvRow.payload.drop 88=s2Step147ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step147ExitFv_retired] at result
  exact result

private def s2Step147ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step147ExitG_Incoming : rowsOwned s2Step147ExitGBefore [s2Step147ExitGRow,s2Step147ExitFRow,s2Step147ExitFvRow,s2Step147ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step147ExitGRow,s2Step147ExitFRow,s2Step147ExitFvRow,s2Step147ExitGvRow] 0 s2Step147ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step147ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147ExitG_Outgoing : rowsOwned s2Step147ExitGvAfter [s2Step147ExitGOut,s2Step147ExitFOut,s2Step147ExitFvOut,s2Step147ExitGvOut] :=
  hmrRows_owned_drop s2Step147ExitGvAfter [s2Step147ExitGOut,s2Step147ExitFOut,s2Step147ExitFvOut,s2Step147ExitGvOut] 0 s2Step147ExitBank_outgoingOwned

private theorem s2Step147ExitG_distinct : (s2Step147ExitGRow.sign::s2Step147ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147ExitG_owned : (s2Step147ExitGRow.sign::s2Step147ExitGRow.payload).toFinset⊆s2Step147ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step147ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147ExitG_retired : s2Step147ExitGBefore.retireSet s2Step147ExitGExtra.toFinset=s2Step147ExitGAfter := by
  unfold Arena.retireSet s2Step147ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step147ExitGBefore,s2Step147ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step147ExitG_checked : planRowResizeLog s2Step147ExitGBefore s2Step147ExitGRow 195 []=
    some (s2Step147ExitGAfter,s2Step147ExitGOut,shrinkRow 769 s2Step147ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step147ExitGBefore s2Step147ExitGRow 195 s2Step147ExitG_distinct s2Step147ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step147ExitGRow.payload.take 195) s2Step147ExitGRow.sign=s2Step147ExitGOut := by decide +kernel
  have hi : s2Step147ExitGRow.payload.drop 195=s2Step147ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step147ExitG_retired] at result
  exact result

private def s2Step147ExitGvBefore : Arena := s2Step147ExitFvAfter

private theorem s2Step147ExitGv_Incoming : rowsOwned s2Step147ExitGvBefore [s2Step147ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step147ExitGRow,s2Step147ExitFRow,s2Step147ExitFvRow,s2Step147ExitGvRow] 3 s2Step147ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step147ExitGvBefore (fun q => (0≤q ∧ q<707) ∨ (708≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147ExitGv_Outgoing : rowsOwned s2Step147ExitGvAfter [s2Step147ExitGvOut] :=
  hmrRows_owned_drop s2Step147ExitGvAfter [s2Step147ExitGOut,s2Step147ExitFOut,s2Step147ExitFvOut,s2Step147ExitGvOut] 3 s2Step147ExitBank_outgoingOwned

private theorem s2Step147ExitGv_distinct : (s2Step147ExitGvRow.sign::s2Step147ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147ExitGv_owned : (s2Step147ExitGvRow.sign::s2Step147ExitGvRow.payload).toFinset⊆s2Step147ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step147ExitGvBefore (fun q => (0≤q ∧ q<707) ∨ (708≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147ExitGv_retired : s2Step147ExitGvBefore.retireSet s2Step147ExitGvExtra.toFinset=s2Step147ExitGvAfter := by
  unfold Arena.retireSet s2Step147ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step147ExitGvBefore,s2Step147ExitFvAfter,s2Step147ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step147ExitGv_checked : planRowResizeLog s2Step147ExitGvBefore s2Step147ExitGvRow 87 []=
    some (s2Step147ExitGvAfter,s2Step147ExitGvOut,shrinkRow 771 s2Step147ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step147ExitGvBefore s2Step147ExitGvRow 87 s2Step147ExitGv_distinct s2Step147ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step147ExitGvRow.payload.take 87) s2Step147ExitGvRow.sign=s2Step147ExitGvOut := by decide +kernel
  have hi : s2Step147ExitGvRow.payload.drop 87=s2Step147ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step147ExitGv_retired] at result
  exact result

private theorem s2Step147ExitBank_rows : planWindowRowsLog s2Step147ExitGBefore [(s2Step147ExitGRow,195),(s2Step147ExitFRow,195),(s2Step147ExitFvRow,88),(s2Step147ExitGvRow,87)] [[],[],[],[]]=
    some (s2Step147ExitGvAfter,[s2Step147ExitGOut,s2Step147ExitFOut,s2Step147ExitFvOut,s2Step147ExitGvOut],(shrinkRow 769 s2Step147ExitGExtra ++ (shrinkRow 768 s2Step147ExitFExtra ++ (shrinkRow 770 s2Step147ExitFvExtra ++ (shrinkRow 771 s2Step147ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step147ExitGvAfter [] []=some (s2Step147ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step147ExitGvBefore s2Step147ExitGvAfter s2Step147ExitGvAfter
    s2Step147ExitGvRow s2Step147ExitGvOut 87 [] [] [] []
    (shrinkRow 771 s2Step147ExitGvExtra) ([]) s2Step147ExitGv_Incoming s2Step147ExitGv_checked h4 s2Step147ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step147ExitFvBefore s2Step147ExitFvAfter s2Step147ExitGvAfter
    s2Step147ExitFvRow s2Step147ExitFvOut 88 [] [(s2Step147ExitGvRow,87)] [[]] [s2Step147ExitGvOut]
    (shrinkRow 770 s2Step147ExitFvExtra) ((shrinkRow 771 s2Step147ExitGvExtra ++ [])) s2Step147ExitFv_Incoming s2Step147ExitFv_checked h3 s2Step147ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step147ExitFBefore s2Step147ExitFAfter s2Step147ExitGvAfter
    s2Step147ExitFRow s2Step147ExitFOut 195 [] [(s2Step147ExitFvRow,88),(s2Step147ExitGvRow,87)] [[],[]] [s2Step147ExitFvOut,s2Step147ExitGvOut]
    (shrinkRow 768 s2Step147ExitFExtra) ((shrinkRow 770 s2Step147ExitFvExtra ++ (shrinkRow 771 s2Step147ExitGvExtra ++ []))) s2Step147ExitF_Incoming s2Step147ExitF_checked h2 s2Step147ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step147ExitGBefore s2Step147ExitGAfter s2Step147ExitGvAfter
    s2Step147ExitGRow s2Step147ExitGOut 195 [] [(s2Step147ExitFRow,195),(s2Step147ExitFvRow,88),(s2Step147ExitGvRow,87)] [[],[],[]] [s2Step147ExitFOut,s2Step147ExitFvOut,s2Step147ExitGvOut]
    (shrinkRow 769 s2Step147ExitGExtra) ((shrinkRow 768 s2Step147ExitFExtra ++ (shrinkRow 770 s2Step147ExitFvExtra ++ (shrinkRow 771 s2Step147ExitGvExtra ++ [])))) s2Step147ExitG_Incoming s2Step147ExitG_checked h1 s2Step147ExitG_Outgoing
  exact h0

private theorem s2Step147ExitBank_checked : compileHmrBankResizeLog .exit s2Step147ExitGBefore ⟨s2Step147ExitFRow,s2Step147ExitGRow,s2Step147ExitFvRow,s2Step147ExitGvRow⟩ ⟨195,195,88,87⟩ [[],[],[],[]]=
    some (s2Step147ExitGvAfter,⟨s2Step147ExitFOut,s2Step147ExitGOut,s2Step147ExitFvOut,s2Step147ExitGvOut⟩,(shrinkRow 769 s2Step147ExitGExtra ++ (shrinkRow 768 s2Step147ExitFExtra ++ (shrinkRow 770 s2Step147ExitFvExtra ++ (shrinkRow 771 s2Step147ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step147ExitBank_rows]
  rfl

private theorem s2Step147Add0_apart : Disjoint s2Step147Add0Arena.live s2Step147Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step147Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147Add0_card : s2Step147Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step147Add0_borrowed : s2Step147Add0Arena.checkBorrow (hmrHybridCount s2Step147Add0Arena s2Step147Add0B.length) s2Step147Add0Work=some s2Step147Add0During := by
  have len : s2Step147Add0Work.length=hmrHybridCount s2Step147Add0Arena s2Step147Add0B.length := by
    rw [hmrHybridCount,s2Step147Add0_card]
    decide +kernel
  have nd : s2Step147Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step147Add0Arena s2Step147Add0During s2Step147Add0Work.toFinset s2Step147Add0_bounded s2Step147Add0_apart rfl

private theorem s2Step147Add0_distinct : (790::789::815::(s2Step147Add0A++s2Step147Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147Add0_owned : (790::789::815::(s2Step147Add0A++s2Step147Add0B)).toFinset⊆s2Step147Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step147Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147Add0_checked : compileHmrHybridCinLog s2Step147Add0Arena 789 790 815 s2Step147Add0A s2Step147Add0B s2Step147Add0Work=some s2Step147Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step147Add0Arena s2Step147Add0During 789 790 815 s2Step147Add0A s2Step147Add0B s2Step147Add0Work
    (by decide +kernel) (by decide +kernel) s2Step147Add0_distinct
    (fun q hq => s2Step147Add0_owned (List.mem_toFinset.mpr hq)) s2Step147Add0_borrowed

private theorem s2Step147Add1_apart : Disjoint s2Step147Add1Arena.live s2Step147Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step147Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147Add1_card : s2Step147Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step147Add1_borrowed : s2Step147Add1Arena.checkBorrow (hmrHybridCount s2Step147Add1Arena s2Step147Add1B.length) s2Step147Add1Work=some s2Step147Add1During := by
  have len : s2Step147Add1Work.length=hmrHybridCount s2Step147Add1Arena s2Step147Add1B.length := by
    rw [hmrHybridCount,s2Step147Add1_card]
    decide +kernel
  have nd : s2Step147Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step147Add1Arena s2Step147Add1During s2Step147Add1Work.toFinset s2Step147Add1_bounded s2Step147Add1_apart rfl

private theorem s2Step147Add1_distinct : (790::789::815::(s2Step147Add1A++s2Step147Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147Add1_owned : (790::789::815::(s2Step147Add1A++s2Step147Add1B)).toFinset⊆s2Step147Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step147Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147Add1_checked : compileHmrHybridCinLog s2Step147Add1Arena 789 790 815 s2Step147Add1A s2Step147Add1B s2Step147Add1Work=some s2Step147Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step147Add1Arena s2Step147Add1During 789 790 815 s2Step147Add1A s2Step147Add1B s2Step147Add1Work
    (by decide +kernel) (by decide +kernel) s2Step147Add1_distinct
    (fun q hq => s2Step147Add1_owned (List.mem_toFinset.mpr hq)) s2Step147Add1_borrowed

private theorem s2Step147F4_apart : Disjoint (s2Step147Add0A++s2Step147Add0B).toFinset (s2Step147Add1A++s2Step147Add1B).toFinset := by
  have nd : ((s2Step147Add0A++s2Step147Add0B)++(s2Step147Add1A++s2Step147Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step147F4_carry : s2Step147F4FlagArena.checkBorrow 1 [815]=some s2Step147Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step147F4FlagArena,s2Step147HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step147F4FlagArena,s2Step147HeadFvAfter,s2Step147Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step147F4_distinct : (845::789::790::815::((s2Step147Add0A++s2Step147Add1A)++(s2Step147Add0B++s2Step147Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147F4_flag : s2Step147HeadFvAfter.checkBorrow 1 [790]=some s2Step147F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step147HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step147F4_owned : (845::789::((s2Step147Add0A++s2Step147Add1A)++(s2Step147Add0B++s2Step147Add1B))).toFinset⊆s2Step147HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step147HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147F4_checked : compileHmrHybridF4Log s2Step147HeadFvAfter 845 789 s2Step147Add0A s2Step147Add0B s2Step147Add1A s2Step147Add1B [790] [815] s2Step147Add0Work s2Step147Add1Work=some s2Step147F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step147HeadFvAfter s2Step147F4FlagArena s2Step147Add0Arena s2Step147Add0During s2Step147Add1During 845 789
    s2Step147Add0A s2Step147Add0B s2Step147Add1A s2Step147Add1B [790] [815] s2Step147Add0Work s2Step147Add1Work
    (fun q hq => s2Step147F4_owned (List.mem_toFinset.mpr hq)) s2Step147F4_flag s2Step147F4_carry
    s2Step147F4_distinct s2Step147F4_apart s2Step147Add0_checked s2Step147Add1_checked

private theorem s2Step147Front_branch : s2Step147FrontSigmaArena.checkBorrow 1 [789]=some s2Step147HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step147FrontSigmaArena,s2Step147EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step147FrontSigmaArena,s2Step147EntryGvAfter,s2Step147HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step147Front_entry : HmrFrontEntryValid s2Step147EntryFBefore s2Step147FrontBank 196 88 ⟨195,195,88,87⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step147FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step147EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step147EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step147FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step147Front_sigma : s2Step147EntryGvAfter.checkBorrow 1 [845]=some s2Step147FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step147EntryGvAfter,arenaWires]
  · rfl

private def s2Step147HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147HeadFBefore : Arena := s2Step147HeadGAfter

private def s2Step147HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707],768⟩

private def s2Step147HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩

private def s2Step147HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 780],769⟩

private def s2Step147HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 844],771⟩

private theorem s2Step147HeadBank_incomingDistinct : ([s2Step147HeadGRow,s2Step147HeadFRow,s2Step147HeadGvRow,s2Step147HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147HeadF_Incoming : rowsOwned s2Step147HeadFBefore [s2Step147HeadFRow,s2Step147HeadGvRow,s2Step147HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step147HeadGRow,s2Step147HeadFRow,s2Step147HeadGvRow,s2Step147HeadFvRow] 1 s2Step147HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step147HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147HeadBank_outgoingOwned : rowsOwned s2Step147HeadFvAfter [s2Step147HeadGOut,s2Step147HeadFOut,s2Step147HeadGvOut,s2Step147HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step147HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147HeadF_Outgoing : rowsOwned s2Step147HeadFvAfter [s2Step147HeadFOut,s2Step147HeadGvOut,s2Step147HeadFvOut] :=
  hmrRows_owned_drop s2Step147HeadFvAfter [s2Step147HeadGOut,s2Step147HeadFOut,s2Step147HeadGvOut,s2Step147HeadFvOut] 1 s2Step147HeadBank_outgoingOwned

private theorem s2Step147HeadF_distinct : (s2Step147HeadFRow.sign::s2Step147HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147HeadF_owned : (s2Step147HeadFRow.sign::s2Step147HeadFRow.payload).toFinset⊆s2Step147HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step147HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147HeadF_reserved : s2Step147HeadFBefore.reserve s2Step147HeadFFresh.toFinset=some s2Step147HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step147HeadFFresh,arenaWires]
  · norm_num [s2Step147HeadFBefore,s2Step147HeadGAfter,s2Step147HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step147HeadFAfter,s2Step147HeadFBefore,s2Step147HeadGAfter,s2Step147HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step147HeadF_checked : planRowResizeLog s2Step147HeadFBefore s2Step147HeadFRow 197 s2Step147HeadFFresh=
    some (s2Step147HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 797],768⟩,growRow 768 s2Step147HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step147HeadFBefore s2Step147HeadFAfter s2Step147HeadFRow 197 s2Step147HeadFFresh
    s2Step147HeadF_distinct s2Step147HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step147HeadF_reserved
  have rowEq : WindowRow.mk (s2Step147HeadFRow.payload++s2Step147HeadFFresh) s2Step147HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 797],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step147HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step147HeadFvBefore : Arena := s2Step147HeadGvAfter

private theorem s2Step147HeadFv_Incoming : rowsOwned s2Step147HeadFvBefore [s2Step147HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step147HeadGRow,s2Step147HeadFRow,s2Step147HeadGvRow,s2Step147HeadFvRow] 3 s2Step147HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step147HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147HeadFv_Outgoing : rowsOwned s2Step147HeadFvAfter [s2Step147HeadFvOut] :=
  hmrRows_owned_drop s2Step147HeadFvAfter [s2Step147HeadGOut,s2Step147HeadFOut,s2Step147HeadGvOut,s2Step147HeadFvOut] 3 s2Step147HeadBank_outgoingOwned

private theorem s2Step147HeadFv_distinct : (s2Step147HeadFvRow.sign::s2Step147HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147HeadFv_owned : (s2Step147HeadFvRow.sign::s2Step147HeadFvRow.payload).toFinset⊆s2Step147HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step147HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147HeadFv_reserved : s2Step147HeadFvBefore.reserve s2Step147HeadFvFresh.toFinset=some s2Step147HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step147HeadFvFresh,arenaWires]
  · norm_num [s2Step147HeadFvBefore,s2Step147HeadGvAfter,s2Step147HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step147HeadFvAfter,s2Step147HeadFvBefore,s2Step147HeadGvAfter,s2Step147HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step147HeadFv_checked : planRowResizeLog s2Step147HeadFvBefore s2Step147HeadFvRow 89 s2Step147HeadFvFresh=
    some (s2Step147HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 849],770⟩,growRow 770 s2Step147HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step147HeadFvBefore s2Step147HeadFvAfter s2Step147HeadFvRow 89 s2Step147HeadFvFresh
    s2Step147HeadFv_distinct s2Step147HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step147HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step147HeadFvRow.payload++s2Step147HeadFvFresh) s2Step147HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 849],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step147HeadG_Incoming : rowsOwned s2Step147HeadGBefore [s2Step147HeadGRow,s2Step147HeadFRow,s2Step147HeadGvRow,s2Step147HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step147HeadGRow,s2Step147HeadFRow,s2Step147HeadGvRow,s2Step147HeadFvRow] 0 s2Step147HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step147HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147HeadG_Outgoing : rowsOwned s2Step147HeadFvAfter [s2Step147HeadGOut,s2Step147HeadFOut,s2Step147HeadGvOut,s2Step147HeadFvOut] :=
  hmrRows_owned_drop s2Step147HeadFvAfter [s2Step147HeadGOut,s2Step147HeadFOut,s2Step147HeadGvOut,s2Step147HeadFvOut] 0 s2Step147HeadBank_outgoingOwned

private theorem s2Step147HeadG_distinct : (s2Step147HeadGRow.sign::s2Step147HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147HeadG_owned : (s2Step147HeadGRow.sign::s2Step147HeadGRow.payload).toFinset⊆s2Step147HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step147HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147HeadG_reserved : s2Step147HeadGBefore.reserve s2Step147HeadGFresh.toFinset=some s2Step147HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step147HeadGFresh,arenaWires]
  · norm_num [s2Step147HeadGBefore,s2Step147HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step147HeadGAfter,s2Step147HeadGBefore,s2Step147HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step147HeadG_checked : planRowResizeLog s2Step147HeadGBefore s2Step147HeadGRow 197 s2Step147HeadGFresh=
    some (s2Step147HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 780, 783],769⟩,growRow 769 s2Step147HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step147HeadGBefore s2Step147HeadGAfter s2Step147HeadGRow 197 s2Step147HeadGFresh
    s2Step147HeadG_distinct s2Step147HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step147HeadG_reserved
  have rowEq : WindowRow.mk (s2Step147HeadGRow.payload++s2Step147HeadGFresh) s2Step147HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 780, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step147HeadGvBefore : Arena := s2Step147HeadFAfter

private theorem s2Step147HeadGv_Incoming : rowsOwned s2Step147HeadGvBefore [s2Step147HeadGvRow,s2Step147HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step147HeadGRow,s2Step147HeadFRow,s2Step147HeadGvRow,s2Step147HeadFvRow] 2 s2Step147HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step147HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step147HeadGv_Outgoing : rowsOwned s2Step147HeadFvAfter [s2Step147HeadGvOut,s2Step147HeadFvOut] :=
  hmrRows_owned_drop s2Step147HeadFvAfter [s2Step147HeadGOut,s2Step147HeadFOut,s2Step147HeadGvOut,s2Step147HeadFvOut] 2 s2Step147HeadBank_outgoingOwned

private theorem s2Step147HeadGv_distinct : (s2Step147HeadGvRow.sign::s2Step147HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step147HeadGv_owned : (s2Step147HeadGvRow.sign::s2Step147HeadGvRow.payload).toFinset⊆s2Step147HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step147HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step147HeadGv_reserved : s2Step147HeadGvBefore.reserve s2Step147HeadGvFresh.toFinset=some s2Step147HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step147HeadGvFresh,arenaWires]
  · norm_num [s2Step147HeadGvBefore,s2Step147HeadFAfter,s2Step147HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step147HeadGvAfter,s2Step147HeadGvBefore,s2Step147HeadFAfter,s2Step147HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step147HeadGv_checked : planRowResizeLog s2Step147HeadGvBefore s2Step147HeadGvRow 89 s2Step147HeadGvFresh=
    some (s2Step147HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 844, 778],771⟩,growRow 771 s2Step147HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step147HeadGvBefore s2Step147HeadGvAfter s2Step147HeadGvRow 89 s2Step147HeadGvFresh
    s2Step147HeadGv_distinct s2Step147HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step147HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step147HeadGvRow.payload++s2Step147HeadGvFresh) s2Step147HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 844, 778],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step147HeadBank_rows : planWindowRowsLog s2Step147HeadGBefore [(s2Step147HeadGRow,197),(s2Step147HeadFRow,197),(s2Step147HeadGvRow,89),(s2Step147HeadFvRow,89)] [s2Step147HeadGFresh,s2Step147HeadFFresh,s2Step147HeadGvFresh,s2Step147HeadFvFresh]=
    some (s2Step147HeadFvAfter,[s2Step147HeadGOut,s2Step147HeadFOut,s2Step147HeadGvOut,s2Step147HeadFvOut],(growRow 769 s2Step147HeadGFresh ++ (growRow 768 s2Step147HeadFFresh ++ (growRow 771 s2Step147HeadGvFresh ++ (growRow 770 s2Step147HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step147HeadFvAfter [] []=some (s2Step147HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step147HeadFvBefore s2Step147HeadFvAfter s2Step147HeadFvAfter
    s2Step147HeadFvRow s2Step147HeadFvOut 89 s2Step147HeadFvFresh [] [] []
    (growRow 770 s2Step147HeadFvFresh) ([]) s2Step147HeadFv_Incoming s2Step147HeadFv_checked h4 s2Step147HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step147HeadGvBefore s2Step147HeadGvAfter s2Step147HeadFvAfter
    s2Step147HeadGvRow s2Step147HeadGvOut 89 s2Step147HeadGvFresh [(s2Step147HeadFvRow,89)] [s2Step147HeadFvFresh] [s2Step147HeadFvOut]
    (growRow 771 s2Step147HeadGvFresh) ((growRow 770 s2Step147HeadFvFresh ++ [])) s2Step147HeadGv_Incoming s2Step147HeadGv_checked h3 s2Step147HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step147HeadFBefore s2Step147HeadFAfter s2Step147HeadFvAfter
    s2Step147HeadFRow s2Step147HeadFOut 197 s2Step147HeadFFresh [(s2Step147HeadGvRow,89),(s2Step147HeadFvRow,89)] [s2Step147HeadGvFresh,s2Step147HeadFvFresh] [s2Step147HeadGvOut,s2Step147HeadFvOut]
    (growRow 768 s2Step147HeadFFresh) ((growRow 771 s2Step147HeadGvFresh ++ (growRow 770 s2Step147HeadFvFresh ++ []))) s2Step147HeadF_Incoming s2Step147HeadF_checked h2 s2Step147HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step147HeadGBefore s2Step147HeadGAfter s2Step147HeadFvAfter
    s2Step147HeadGRow s2Step147HeadGOut 197 s2Step147HeadGFresh [(s2Step147HeadFRow,197),(s2Step147HeadGvRow,89),(s2Step147HeadFvRow,89)] [s2Step147HeadFFresh,s2Step147HeadGvFresh,s2Step147HeadFvFresh] [s2Step147HeadFOut,s2Step147HeadGvOut,s2Step147HeadFvOut]
    (growRow 769 s2Step147HeadGFresh) ((growRow 768 s2Step147HeadFFresh ++ (growRow 771 s2Step147HeadGvFresh ++ (growRow 770 s2Step147HeadFvFresh ++ [])))) s2Step147HeadG_Incoming s2Step147HeadG_checked h1 s2Step147HeadG_Outgoing
  exact h0

private theorem s2Step147HeadBank_checked : compileHmrBankResizeLog .headroom s2Step147HeadGBefore ⟨s2Step147HeadFRow,s2Step147HeadGRow,s2Step147HeadFvRow,s2Step147HeadGvRow⟩ ⟨197,197,89,89⟩ [s2Step147HeadGFresh,s2Step147HeadFFresh,s2Step147HeadGvFresh,s2Step147HeadFvFresh]=
    some (s2Step147HeadFvAfter,⟨s2Step147HeadFOut,s2Step147HeadGOut,s2Step147HeadFvOut,s2Step147HeadGvOut⟩,(growRow 769 s2Step147HeadGFresh ++ (growRow 768 s2Step147HeadFFresh ++ (growRow 771 s2Step147HeadGvFresh ++ (growRow 770 s2Step147HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step147HeadBank_rows]
  rfl

private theorem s2Step147Front_checked : compileHmrSourceFrontLog s2Step147EntryFBefore s2Step147FrontBank 196 88 ⟨195,195,88,87⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step147FrontLog=some s2Step147FrontPlan := by
  have pairEq : s2Step147FrontPair=⟨s2Step147HeadFRow,s2Step147HeadGRow,s2Step147HeadFvRow,s2Step147HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step147FrontHead=⟨s2Step147ExitFRow,s2Step147ExitGRow,s2Step147ExitFvRow,s2Step147ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step147Add0A=s2Step147FrontHead.f.wires := by decide +kernel
  have gEq : s2Step147Add0B=s2Step147FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step147Add1A=s2Step147FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step147Add1B=s2Step147FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step147EntryFBefore s2Step147FrontBank 196 88 ⟨195,195,88,87⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step147FrontLog s2Step147FrontPlan
  · exact s2Step147Front_entry
  · exact s2Step147EntryBank_checked
  · exact s2Step147Front_sigma
  · rfl
  · exact s2Step147Front_branch
  · rfl
  · simpa only [s2Step147FrontPlan,pairEq] using s2Step147HeadBank_checked
  · simpa only [s2Step147FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step147F4_checked
  · exact s2Step147Counter_checked
  · rfl
  · simpa only [s2Step147FrontPlan,headEq] using s2Step147ExitBank_checked

private theorem s2Step147Complete_explicit_checked : compileHmrEarlyStepLog s2Step147EntryFBefore s2Step147FrontBank 196 88 ⟨195,195,88,87⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step147CompleteLog=some s2Step147CompletePlan := by
  let Q := s2Step147EarlyControlPlan
  have hq := s2Step147EarlyControl_plan_checked
  have fv1 : s2Step147CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step147CompleteOut.fv.payload[2]?.getD s2Step147CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step147CompleteOut.fv.payload[3]?.getD s2Step147CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step147CompleteOut.fv.payload[4]?.getD s2Step147CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step147EntryFBefore s2Step147EarlyControlArena s2Step147FrontBank 196 88 ⟨195,195,88,87⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step147CompleteLog s2Step147FrontPlan Q
    s2Step147Front_checked s2Step147Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step147Complete_owned s2Step147Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step147EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 s2Step147CompleteOut.fv.second (s2Step147CompleteOut.fv.payload[2]?.getD s2Step147CompleteOut.fv.sign) (s2Step147CompleteOut.fv.payload[3]?.getD s2Step147CompleteOut.fv.sign) (s2Step147CompleteOut.fv.payload[4]?.getD s2Step147CompleteOut.fv.sign) 789 42 s2Step147EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep147Arena : Arena := s2Step147EntryFBefore
def s2PrivateStep147Bank : WindowBank := s2Step147FrontBank
def s2PrivateStep147Spec : HmrSourceWalkStepLog := ⟨196,88,⟨195,195,88,87⟩,42,.early s2Step147CompleteLog⟩
def s2PrivateStep147Plan : HmrSourceStepPlan := .early s2Step147CompletePlan
theorem s2PrivateStep147_source : s2PrivateStep147Spec=s2ObservedLogs144[3] := rfl
theorem s2PrivateStep147_checked : compileHmrSourceStepLog s2PrivateStep147Arena s2PrivateStep147Bank
    s2PrivateStep147Spec.fgWidth s2PrivateStep147Spec.vWidth s2PrivateStep147Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 147 s2PrivateStep147Spec.need none s2PrivateStep147Spec.log=some s2PrivateStep147Plan := by
  change compileHmrSourceStepLog s2Step147EntryFBefore s2Step147FrontBank 196 88 ⟨195,195,88,87⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 147 42 none (.early s2Step147CompleteLog)=some (.early s2Step147CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 147<498)]
  rw [s2Step147Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
