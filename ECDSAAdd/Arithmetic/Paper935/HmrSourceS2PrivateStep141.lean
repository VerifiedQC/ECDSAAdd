import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep139
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

private def s2Step141CompleteMoves : List (Wire × Wire) := [(845,198)]

private def s2Step141EarlyControlLog : HmrEarlyControlLog := ⟨[845, 849, 842, 841, 783],[790],[815],[867, 877, 879, 882, 885, 888],[889]⟩

private def s2Step141FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[842], [849], [781], [837]],[[], [], [], []]⟩,[788],[778],[841],[783],[790, 815, 867, 877, 879, 882, 885, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 885, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[841, 783, 790, 815]⟩

private def s2Step141CompleteLog : HmrEarlyStepLog := ⟨s2Step141FrontLog,s2Step141CompleteMoves,s2Step141EarlyControlLog⟩

private def s2Step141ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710],768⟩

private def s2Step141ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩

private def s2Step141ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],769⟩

private def s2Step141ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩

private def s2Step141FrontOut : WindowBank := ⟨s2Step141ExitFOut,s2Step141ExitGOut,s2Step141ExitFvOut,s2Step141ExitGvOut⟩

private def s2Step141CompleteOut : WindowBank := s2Step141FrontOut.repacked s2Step141CompleteMoves

private def s2Step141EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step141EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step141EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step141EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step141EarlyControlPositiveArena,[790],s2Step141EarlyControlEqualityArena,[815],⟨⟨788,false⟩,[⟨⟨790,false⟩,815⟩]⟩⟩

private def s2Step141EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step141EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<889)),Finset.filter_subset _ _⟩

private def s2Step141EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step141EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step141EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step141EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step141EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,845⟩,⟨⟨774,false⟩,849⟩,⟨⟨775,false⟩,842⟩,⟨⟨776,false⟩,841⟩,⟨⟨777,false⟩,783⟩]⟩

private def s2Step141EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step141EarlyControlZeroArena,s2Step141EarlyControlZeroPlan,s2Step141EarlyControlClassPlan,s2Step141EarlyControlFlagArena,s2Step141EarlyControlFittedArena,s2Step141EarlyControlHistoryArena,s2Step141EarlyControlSigmaArena,s2Step141EarlyControlOutputArena,s2Step141EarlyControlLog⟩

private def s2Step141CounterWork : List Wire := [841, 783, 790, 815]

private theorem s2Step141Counter_bounded : s2Step141CounterWork.toFinset⊆arenaWires := by norm_num [s2Step141CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step141HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step141CounterDuring : Arena := ⟨s2Step141HeadFvAfter.live∪s2Step141CounterWork.toFinset,Finset.union_subset s2Step141HeadFvAfter.bounded s2Step141Counter_bounded⟩

private def s2Step141EntryFFresh : List Wire := []

private def s2Step141EntryFvFresh : List Wire := []

private def s2Step141EntryGFresh : List Wire := []

private def s2Step141EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step141EntryGvAfter : Arena := s2Step141EntryFBefore

private def s2Step141EntryGvFresh : List Wire := []

private def s2Step141ExitFExtra : List Wire := [849]

private def s2Step141ExitGExtra : List Wire := [198, 842]

private def s2Step141ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<198) ∨ (199≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step141ExitGvAfter : Arena := s2Step141ExitFAfter

private def s2Step141Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step141Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 885, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step141Add0_bounded : s2Step141Add0Work.toFinset⊆arenaWires := by
  have h : s2Step141Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step141Add0During : Arena := ⟨s2Step141Add0Arena.live∪s2Step141Add0Work.toFinset,Finset.union_subset s2Step141Add0Arena.bounded s2Step141Add0_bounded⟩

private def s2Step141Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step141Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 885, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step141Add1_bounded : s2Step141Add1Work.toFinset⊆arenaWires := by
  have h : s2Step141Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step141Add1During : Arena := ⟨s2Step141Add1Arena.live∪s2Step141Add1Work.toFinset,Finset.union_subset s2Step141Add1Arena.bounded s2Step141Add1_bounded⟩

private def s2Step141F4FlagArena : Arena := ⟨s2Step141HeadFvAfter.live∪{841},Finset.union_subset s2Step141HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step141F4Plan : HmrHybridF4Plan := ⟨s2Step141F4FlagArena,[841],s2Step141Add0Arena,[783],s2Step141Add0During,s2Step141Add0Work,s2Step141Add1During,s2Step141Add1Work⟩

private def s2Step141HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 849],768⟩

private def s2Step141HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩

private def s2Step141HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 842],769⟩

private def s2Step141HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩

private def s2Step141FrontHead : WindowBank := ⟨s2Step141HeadFOut,s2Step141HeadGOut,s2Step141HeadFvOut,s2Step141HeadGvOut⟩

private def s2Step141EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710],768⟩

private def s2Step141EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩

private def s2Step141EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],769⟩

private def s2Step141EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩

private def s2Step141FrontPair : WindowBank := ⟨s2Step141EntryFOut,s2Step141EntryGOut,s2Step141EntryFvOut,s2Step141EntryGvOut⟩

private def s2Step141FrontSigmaArena : Arena := ⟨s2Step141EntryGvAfter.live∪{788},Finset.union_subset s2Step141EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step141HeadFFresh : List Wire := [849]

private def s2Step141HeadFvFresh : List Wire := [837]

private def s2Step141HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step141HeadGFresh : List Wire := [842]

private def s2Step141HeadGvFresh : List Wire := [781]

private def s2Step141FrontPlan : HmrSourceFront := ⟨s2Step141EntryGvAfter,s2Step141FrontPair,(growRow 768 s2Step141EntryFFresh ++ (growRow 769 s2Step141EntryGFresh ++ (growRow 770 s2Step141EntryFvFresh ++ (growRow 771 s2Step141EntryGvFresh ++ [])))),s2Step141FrontSigmaArena,[788],s2Step141HeadGBefore,[778],
  s2Step141HeadFvAfter,s2Step141FrontHead,(growRow 769 s2Step141HeadGFresh ++ (growRow 768 s2Step141HeadFFresh ++ (growRow 771 s2Step141HeadGvFresh ++ (growRow 770 s2Step141HeadFvFresh ++ [])))),s2Step141F4Plan,s2Step141CounterDuring,s2Step141CounterWork,s2Step141ExitGvAfter,s2Step141FrontOut,(shrinkRow 769 s2Step141ExitGExtra ++ (shrinkRow 768 s2Step141ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step141CompletePlan : HmrEarlyStepPlan := ⟨s2Step141FrontPlan,s2Step141EarlyControlArena,s2Step141EarlyControlPlan,s2Step141CompleteMoves⟩

private theorem s2Step141Complete_apart : List.Disjoint (s2Step141CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [788, 778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] := by
  have nd : ((s2Step141CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[788, 778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step141Complete_owned : (s2Step141CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step141EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step141EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private def s2Step141CompleteMoveArena : Arena := ⟨s2Step141ExitGvAfter.live∪{198},Finset.union_subset s2Step141ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step141Complete_repack : s2Step141ExitGvAfter.checkRepack s2Step141CompleteMoves=some s2Step141EarlyControlArena := by
  have owned : 845∈s2Step141ExitGvAfter.live := by norm_num [s2Step141ExitGvAfter,s2Step141ExitFAfter,arenaWires]
  have reserve : s2Step141ExitGvAfter.reserve {198}=some s2Step141CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step141ExitGvAfter,s2Step141ExitFAfter,arenaWires]
    · rfl
  have retired : s2Step141CompleteMoveArena.retireSet {845}=s2Step141EarlyControlArena := by
    unfold Arena.retireSet s2Step141EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step141CompleteMoveArena,s2Step141ExitGvAfter,s2Step141ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step141CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step141CompleteMoveArena.retireSet {845}).checkRepack []=some s2Step141EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step141EarlyControl_branchOwned : ([778] : List Wire).toFinset⊆s2Step141EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step141EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step141EarlyControl_branch : compileHmrBranchRetirement s2Step141EarlyControlSigmaArena 778=some s2Step141EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step141EarlyControl_branchOwned
  · ext q
    simp [s2Step141EarlyControlOutputArena,s2Step141EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step141EarlyControl_classEqualityBorrow : s2Step141EarlyControlPositiveArena.checkBorrow (([788, 790] : List Wire).length-1) s2Step141EarlyControlLog.classWork=some s2Step141EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step141EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step141EarlyControlPositiveArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s2Step141EarlyControlEqualityArena,s2Step141EarlyControlPositiveArena,s2Step141EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step141EarlyControl_classEqualityOwned : ([788, 790] : List Wire).toFinset⊆s2Step141EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step141EarlyControlPositiveArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141EarlyControl_classEquality : compileHmrEqualityLog s2Step141EarlyControlPositiveArena [788, 790] 0 s2Step141EarlyControlLog.classWork=some (s2Step141EarlyControlEqualityArena,s2Step141EarlyControlLog.classWork,s2Step141EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step141EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step141EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step141EarlyControl_classOwned : ([777, 783, 788] : List Wire).toFinset⊆s2Step141EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step141EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141EarlyControl_positiveBorrow : s2Step141EarlyControlZeroArena.checkBorrow (1) s2Step141EarlyControlLog.positiveWork=some s2Step141EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step141EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step141EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s2Step141EarlyControlPositiveArena,s2Step141EarlyControlZeroArena,s2Step141EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step141EarlyControl_class : compileHmrSourceClassLog s2Step141EarlyControlZeroArena false 777 s2Step141EarlyControlZeroPlan.top 0 788 s2Step141EarlyControlLog.positiveWork s2Step141EarlyControlLog.classWork=some s2Step141EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step141EarlyControlClassPlan s2Step141EarlyControlZeroArena false 777 s2Step141EarlyControlZeroPlan.top 0 788
  constructor
  · decide +kernel
  · exact s2Step141EarlyControl_classOwned
  · exact s2Step141EarlyControl_positiveBorrow
  · exact s2Step141EarlyControl_classEquality

private theorem s2Step141EarlyControl_entryRecordOwned : ([778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] : List Wire).toFinset⊆s2Step141EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step141EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141EarlyControl_entrySigmaOwned : ([788, 254] : List Wire).toFinset⊆s2Step141EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step141EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141EarlyControl_fitBorrow : s2Step141EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] : List Wire).length)) s2Step141EarlyControlLog.recordFresh=some s2Step141EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step141EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step141EarlyControlFlagArena (fun q => (0≤q ∧ q<889)) rfl
      decide +kernel
    · ext q
      simp [s2Step141EarlyControlFittedArena,s2Step141EarlyControlFlagArena,s2Step141EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step141EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] : List Wire).toFinset⊆s2Step141EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step141EarlyControlFlagArena (fun q => (0≤q ∧ q<889)) rfl
  decide +kernel

private theorem s2Step141EarlyControl_fit : compileHmrRecordGrowLog s2Step141EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] 42 s2Step141EarlyControlLog.recordFresh=some s2Step141EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step141EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step141EarlyControl_fitBorrow

private theorem s2Step141EarlyControl_flagsBorrow : s2Step141EarlyControlEqualityArena.checkBorrow (6) s2Step141EarlyControlLog.flagWork=some s2Step141EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step141EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step141EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s2Step141EarlyControlFlagArena,s2Step141EarlyControlEqualityArena,s2Step141EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step141EarlyControl_flagsOwned : ([815, 253, 252, 251] : List Wire).toFinset⊆s2Step141EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step141EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141EarlyControl_flags : compileHmrFlagsLog s2Step141EarlyControlClassPlan.equalityArena s2Step141EarlyControlClassPlan.equality.top 253 252 251 s2Step141EarlyControlLog.flagWork=some s2Step141EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step141EarlyControl_flagsOwned⟩
  · exact s2Step141EarlyControl_flagsBorrow

private theorem s2Step141EarlyControl_historyBorrow : s2Step141EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] : List Wire).length)) s2Step141EarlyControlLog.recordFresh=some s2Step141EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step141EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step141EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s2Step141EarlyControlHistoryArena,s2Step141EarlyControlArena,s2Step141EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step141EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] : List Wire).toFinset⊆s2Step141EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step141EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141EarlyControl_history : compileHmrRecordGrowLog s2Step141EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] 42 s2Step141EarlyControlLog.recordFresh=some s2Step141EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step141EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step141EarlyControl_historyBorrow

private theorem s2Step141EarlyControl_sigmaOwned : ([254, 788] : List Wire).toFinset⊆s2Step141EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step141EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step141EarlyControl_sigmaReleaseOwned : ([788] : List Wire).toFinset⊆s2Step141EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step141EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step141EarlyControl_sigmaRelease : s2Step141EarlyControlHistoryArena.release {788} (fun _ => false)=some s2Step141EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step141EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step141EarlyControlSigmaArena,s2Step141EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step141EarlyControl_sigma : compileHmrSigmaDropLog s2Step141EarlyControlHistoryArena false 0 0 254 788 []=some s2Step141EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step141EarlyControl_sigmaOwned⟩
  · exact s2Step141EarlyControl_sigmaRelease

private theorem s2Step141EarlyControl_zeroBorrow : s2Step141EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step141EarlyControlLog.zeroWork=some s2Step141EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step141EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step141EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
      decide +kernel
    · ext q
      simp [s2Step141EarlyControlZeroArena,s2Step141EarlyControlArena,s2Step141EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step141EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step141EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step141EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141EarlyControl_zero : compileHmrEqualityLog s2Step141EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step141EarlyControlLog.zeroWork=some (s2Step141EarlyControlZeroArena,s2Step141EarlyControlLog.zeroWork,s2Step141EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step141EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step141EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step141EarlyControl_logged : s2Step141EarlyControlPlan.Logged s2Step141EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] 777 788 254 253 252 251 778 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step141EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step141EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step141EarlyControl_zero
  · exact s2Step141EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step141EarlyControl_flags
  · exact s2Step141EarlyControl_fit
  · exact s2Step141EarlyControl_history
  · exact s2Step141EarlyControl_sigma
  · exact s2Step141EarlyControl_branch

private theorem s2Step141EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step141EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] 777 788 254 253 252 251 778 42 s2Step141EarlyControlLog=some s2Step141EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step141EarlyControlPlan s2Step141EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] 777 788 254 253 252 251 778 42 s2Step141EarlyControl_logged

private def s2Step141EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710],768⟩

private def s2Step141EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩

private def s2Step141EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],769⟩

private def s2Step141EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩

private def s2Step141FrontBank : WindowBank := ⟨s2Step141EntryFRow,s2Step141EntryGRow,s2Step141EntryFvRow,s2Step141EntryGvRow⟩

private def s2Step141Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 849, 768]

private def s2Step141Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 842, 769]

private def s2Step141Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 770]

private def s2Step141Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 771]

private theorem s2Step141Counter_apart : Disjoint s2Step141HeadFvAfter.live s2Step141CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step141HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141Counter_borrowed : s2Step141HeadFvAfter.checkBorrow 4 s2Step141CounterWork=some s2Step141CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step141HeadFvAfter s2Step141CounterDuring s2Step141CounterWork.toFinset s2Step141Counter_bounded s2Step141Counter_apart rfl

private theorem s2Step141Counter_owned : (788::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step141HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step141HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141Counter_checked : compileHmrCounterStepLog s2Step141HeadFvAfter true 788 [772, 773, 774, 775, 776, 777] s2Step141CounterWork=some s2Step141CounterDuring := by
  have owned : ∀q∈788::[772, 773, 774, 775, 776, 777],q∈s2Step141HeadFvAfter.live := fun q hq => s2Step141Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step141Counter_borrowed

private def s2Step141EntryFAfter : Arena := s2Step141EntryFBefore

private theorem s2Step141EntryBank_incomingDistinct : ([s2Step141EntryFRow,s2Step141EntryGRow,s2Step141EntryFvRow,s2Step141EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141EntryF_Incoming : rowsOwned s2Step141EntryFBefore [s2Step141EntryFRow,s2Step141EntryGRow,s2Step141EntryFvRow,s2Step141EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step141EntryFRow,s2Step141EntryGRow,s2Step141EntryFvRow,s2Step141EntryGvRow] 0 s2Step141EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step141EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141EntryBank_outgoingOwned : rowsOwned s2Step141EntryGvAfter [s2Step141EntryFOut,s2Step141EntryGOut,s2Step141EntryFvOut,s2Step141EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step141EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141EntryF_Outgoing : rowsOwned s2Step141EntryGvAfter [s2Step141EntryFOut,s2Step141EntryGOut,s2Step141EntryFvOut,s2Step141EntryGvOut] :=
  hmrRows_owned_drop s2Step141EntryGvAfter [s2Step141EntryFOut,s2Step141EntryGOut,s2Step141EntryFvOut,s2Step141EntryGvOut] 0 s2Step141EntryBank_outgoingOwned

private theorem s2Step141EntryF_distinct : (s2Step141EntryFRow.sign::s2Step141EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141EntryF_owned : (s2Step141EntryFRow.sign::s2Step141EntryFRow.payload).toFinset⊆s2Step141EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step141EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141EntryF_reserved : s2Step141EntryFBefore.reserve s2Step141EntryFFresh.toFinset=some s2Step141EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step141EntryFFresh,arenaWires]
  · norm_num [s2Step141EntryFBefore,s2Step141EntryFFresh,arenaWires]
  · simp only [s2Step141EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step141EntryF_checked : planRowResizeLog s2Step141EntryFBefore s2Step141EntryFRow 199 s2Step141EntryFFresh=
    some (s2Step141EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710],768⟩,growRow 768 s2Step141EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step141EntryFBefore s2Step141EntryFAfter s2Step141EntryFRow 199 s2Step141EntryFFresh
    s2Step141EntryF_distinct s2Step141EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step141EntryF_reserved
  have rowEq : WindowRow.mk (s2Step141EntryFRow.payload++s2Step141EntryFFresh) s2Step141EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step141EntryFvAfter : Arena := s2Step141EntryFBefore

private def s2Step141EntryFvBefore : Arena := s2Step141EntryFBefore

private theorem s2Step141EntryFv_Incoming : rowsOwned s2Step141EntryFvBefore [s2Step141EntryFvRow,s2Step141EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step141EntryFRow,s2Step141EntryGRow,s2Step141EntryFvRow,s2Step141EntryGvRow] 2 s2Step141EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step141EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141EntryFv_Outgoing : rowsOwned s2Step141EntryGvAfter [s2Step141EntryFvOut,s2Step141EntryGvOut] :=
  hmrRows_owned_drop s2Step141EntryGvAfter [s2Step141EntryFOut,s2Step141EntryGOut,s2Step141EntryFvOut,s2Step141EntryGvOut] 2 s2Step141EntryBank_outgoingOwned

private theorem s2Step141EntryFv_distinct : (s2Step141EntryFvRow.sign::s2Step141EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141EntryFv_owned : (s2Step141EntryFvRow.sign::s2Step141EntryFvRow.payload).toFinset⊆s2Step141EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step141EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141EntryFv_reserved : s2Step141EntryFvBefore.reserve s2Step141EntryFvFresh.toFinset=some s2Step141EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step141EntryFvFresh,arenaWires]
  · norm_num [s2Step141EntryFvBefore,s2Step141EntryFBefore,s2Step141EntryFvFresh,arenaWires]
  · simp only [s2Step141EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step141EntryFv_checked : planRowResizeLog s2Step141EntryFvBefore s2Step141EntryFvRow 84 s2Step141EntryFvFresh=
    some (s2Step141EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩,growRow 770 s2Step141EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step141EntryFvBefore s2Step141EntryFvAfter s2Step141EntryFvRow 84 s2Step141EntryFvFresh
    s2Step141EntryFv_distinct s2Step141EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step141EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step141EntryFvRow.payload++s2Step141EntryFvFresh) s2Step141EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step141EntryGAfter : Arena := s2Step141EntryFBefore

private def s2Step141EntryGBefore : Arena := s2Step141EntryFBefore

private theorem s2Step141EntryG_Incoming : rowsOwned s2Step141EntryGBefore [s2Step141EntryGRow,s2Step141EntryFvRow,s2Step141EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step141EntryFRow,s2Step141EntryGRow,s2Step141EntryFvRow,s2Step141EntryGvRow] 1 s2Step141EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step141EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141EntryG_Outgoing : rowsOwned s2Step141EntryGvAfter [s2Step141EntryGOut,s2Step141EntryFvOut,s2Step141EntryGvOut] :=
  hmrRows_owned_drop s2Step141EntryGvAfter [s2Step141EntryFOut,s2Step141EntryGOut,s2Step141EntryFvOut,s2Step141EntryGvOut] 1 s2Step141EntryBank_outgoingOwned

private theorem s2Step141EntryG_distinct : (s2Step141EntryGRow.sign::s2Step141EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141EntryG_owned : (s2Step141EntryGRow.sign::s2Step141EntryGRow.payload).toFinset⊆s2Step141EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step141EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141EntryG_reserved : s2Step141EntryGBefore.reserve s2Step141EntryGFresh.toFinset=some s2Step141EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step141EntryGFresh,arenaWires]
  · norm_num [s2Step141EntryGBefore,s2Step141EntryFBefore,s2Step141EntryGFresh,arenaWires]
  · simp only [s2Step141EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step141EntryG_checked : planRowResizeLog s2Step141EntryGBefore s2Step141EntryGRow 199 s2Step141EntryGFresh=
    some (s2Step141EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],769⟩,growRow 769 s2Step141EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step141EntryGBefore s2Step141EntryGAfter s2Step141EntryGRow 199 s2Step141EntryGFresh
    s2Step141EntryG_distinct s2Step141EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step141EntryG_reserved
  have rowEq : WindowRow.mk (s2Step141EntryGRow.payload++s2Step141EntryGFresh) s2Step141EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step141EntryGvBefore : Arena := s2Step141EntryFBefore

private theorem s2Step141EntryGv_Incoming : rowsOwned s2Step141EntryGvBefore [s2Step141EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step141EntryFRow,s2Step141EntryGRow,s2Step141EntryFvRow,s2Step141EntryGvRow] 3 s2Step141EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step141EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141EntryGv_Outgoing : rowsOwned s2Step141EntryGvAfter [s2Step141EntryGvOut] :=
  hmrRows_owned_drop s2Step141EntryGvAfter [s2Step141EntryFOut,s2Step141EntryGOut,s2Step141EntryFvOut,s2Step141EntryGvOut] 3 s2Step141EntryBank_outgoingOwned

private theorem s2Step141EntryGv_distinct : (s2Step141EntryGvRow.sign::s2Step141EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141EntryGv_owned : (s2Step141EntryGvRow.sign::s2Step141EntryGvRow.payload).toFinset⊆s2Step141EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step141EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141EntryGv_reserved : s2Step141EntryGvBefore.reserve s2Step141EntryGvFresh.toFinset=some s2Step141EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step141EntryGvFresh,arenaWires]
  · norm_num [s2Step141EntryGvBefore,s2Step141EntryFBefore,s2Step141EntryGvFresh,arenaWires]
  · simp only [s2Step141EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step141EntryGv_checked : planRowResizeLog s2Step141EntryGvBefore s2Step141EntryGvRow 84 s2Step141EntryGvFresh=
    some (s2Step141EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩,growRow 771 s2Step141EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step141EntryGvBefore s2Step141EntryGvAfter s2Step141EntryGvRow 84 s2Step141EntryGvFresh
    s2Step141EntryGv_distinct s2Step141EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step141EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step141EntryGvRow.payload++s2Step141EntryGvFresh) s2Step141EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step141EntryBank_rows : planWindowRowsLog s2Step141EntryFBefore [(s2Step141EntryFRow,199),(s2Step141EntryGRow,199),(s2Step141EntryFvRow,84),(s2Step141EntryGvRow,84)] [s2Step141EntryFFresh,s2Step141EntryGFresh,s2Step141EntryFvFresh,s2Step141EntryGvFresh]=
    some (s2Step141EntryGvAfter,[s2Step141EntryFOut,s2Step141EntryGOut,s2Step141EntryFvOut,s2Step141EntryGvOut],(growRow 768 s2Step141EntryFFresh ++ (growRow 769 s2Step141EntryGFresh ++ (growRow 770 s2Step141EntryFvFresh ++ (growRow 771 s2Step141EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step141EntryGvAfter [] []=some (s2Step141EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step141EntryGvBefore s2Step141EntryGvAfter s2Step141EntryGvAfter
    s2Step141EntryGvRow s2Step141EntryGvOut 84 s2Step141EntryGvFresh [] [] []
    (growRow 771 s2Step141EntryGvFresh) ([]) s2Step141EntryGv_Incoming s2Step141EntryGv_checked h4 s2Step141EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step141EntryFvBefore s2Step141EntryFvAfter s2Step141EntryGvAfter
    s2Step141EntryFvRow s2Step141EntryFvOut 84 s2Step141EntryFvFresh [(s2Step141EntryGvRow,84)] [s2Step141EntryGvFresh] [s2Step141EntryGvOut]
    (growRow 770 s2Step141EntryFvFresh) ((growRow 771 s2Step141EntryGvFresh ++ [])) s2Step141EntryFv_Incoming s2Step141EntryFv_checked h3 s2Step141EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step141EntryGBefore s2Step141EntryGAfter s2Step141EntryGvAfter
    s2Step141EntryGRow s2Step141EntryGOut 199 s2Step141EntryGFresh [(s2Step141EntryFvRow,84),(s2Step141EntryGvRow,84)] [s2Step141EntryFvFresh,s2Step141EntryGvFresh] [s2Step141EntryFvOut,s2Step141EntryGvOut]
    (growRow 769 s2Step141EntryGFresh) ((growRow 770 s2Step141EntryFvFresh ++ (growRow 771 s2Step141EntryGvFresh ++ []))) s2Step141EntryG_Incoming s2Step141EntryG_checked h2 s2Step141EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step141EntryFBefore s2Step141EntryFAfter s2Step141EntryGvAfter
    s2Step141EntryFRow s2Step141EntryFOut 199 s2Step141EntryFFresh [(s2Step141EntryGRow,199),(s2Step141EntryFvRow,84),(s2Step141EntryGvRow,84)] [s2Step141EntryGFresh,s2Step141EntryFvFresh,s2Step141EntryGvFresh] [s2Step141EntryGOut,s2Step141EntryFvOut,s2Step141EntryGvOut]
    (growRow 768 s2Step141EntryFFresh) ((growRow 769 s2Step141EntryGFresh ++ (growRow 770 s2Step141EntryFvFresh ++ (growRow 771 s2Step141EntryGvFresh ++ [])))) s2Step141EntryF_Incoming s2Step141EntryF_checked h1 s2Step141EntryF_Outgoing
  exact h0

private theorem s2Step141EntryBank_checked : compileHmrBankResizeLog .entry s2Step141EntryFBefore ⟨s2Step141EntryFRow,s2Step141EntryGRow,s2Step141EntryFvRow,s2Step141EntryGvRow⟩ ⟨199,199,84,84⟩ [s2Step141EntryFFresh,s2Step141EntryGFresh,s2Step141EntryFvFresh,s2Step141EntryGvFresh]=
    some (s2Step141EntryGvAfter,⟨s2Step141EntryFOut,s2Step141EntryGOut,s2Step141EntryFvOut,s2Step141EntryGvOut⟩,(growRow 768 s2Step141EntryFFresh ++ (growRow 769 s2Step141EntryGFresh ++ (growRow 770 s2Step141EntryFvFresh ++ (growRow 771 s2Step141EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step141EntryBank_rows]
  rfl

private def s2Step141ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<198) ∨ (199≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step141ExitFBefore : Arena := s2Step141ExitGAfter

private def s2Step141ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 849],768⟩

private def s2Step141ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩

private def s2Step141ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 842],769⟩

private def s2Step141ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩

private theorem s2Step141ExitBank_incomingDistinct : ([s2Step141ExitGRow,s2Step141ExitFRow,s2Step141ExitFvRow,s2Step141ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141ExitF_Incoming : rowsOwned s2Step141ExitFBefore [s2Step141ExitFRow,s2Step141ExitFvRow,s2Step141ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step141ExitGRow,s2Step141ExitFRow,s2Step141ExitFvRow,s2Step141ExitGvRow] 1 s2Step141ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step141ExitFBefore (fun q => (0≤q ∧ q<198) ∨ (199≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141ExitBank_outgoingOwned : rowsOwned s2Step141ExitGvAfter [s2Step141ExitGOut,s2Step141ExitFOut,s2Step141ExitFvOut,s2Step141ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step141ExitGvAfter (fun q => (0≤q ∧ q<198) ∨ (199≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141ExitF_Outgoing : rowsOwned s2Step141ExitGvAfter [s2Step141ExitFOut,s2Step141ExitFvOut,s2Step141ExitGvOut] :=
  hmrRows_owned_drop s2Step141ExitGvAfter [s2Step141ExitGOut,s2Step141ExitFOut,s2Step141ExitFvOut,s2Step141ExitGvOut] 1 s2Step141ExitBank_outgoingOwned

private theorem s2Step141ExitF_distinct : (s2Step141ExitFRow.sign::s2Step141ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141ExitF_owned : (s2Step141ExitFRow.sign::s2Step141ExitFRow.payload).toFinset⊆s2Step141ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step141ExitFBefore (fun q => (0≤q ∧ q<198) ∨ (199≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141ExitF_retired : s2Step141ExitFBefore.retireSet s2Step141ExitFExtra.toFinset=s2Step141ExitFAfter := by
  unfold Arena.retireSet s2Step141ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step141ExitFBefore,s2Step141ExitGAfter,s2Step141ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step141ExitF_checked : planRowResizeLog s2Step141ExitFBefore s2Step141ExitFRow 199 []=
    some (s2Step141ExitFAfter,s2Step141ExitFOut,shrinkRow 768 s2Step141ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step141ExitFBefore s2Step141ExitFRow 199 s2Step141ExitF_distinct s2Step141ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step141ExitFRow.payload.take 199) s2Step141ExitFRow.sign=s2Step141ExitFOut := by decide +kernel
  have hi : s2Step141ExitFRow.payload.drop 199=s2Step141ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step141ExitF_retired] at result
  exact result

private def s2Step141ExitFvAfter : Arena := s2Step141ExitFAfter

private def s2Step141ExitFvBefore : Arena := s2Step141ExitFAfter

private theorem s2Step141ExitFv_Incoming : rowsOwned s2Step141ExitFvBefore [s2Step141ExitFvRow,s2Step141ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step141ExitGRow,s2Step141ExitFRow,s2Step141ExitFvRow,s2Step141ExitGvRow] 2 s2Step141ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step141ExitFvBefore (fun q => (0≤q ∧ q<198) ∨ (199≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141ExitFv_Outgoing : rowsOwned s2Step141ExitGvAfter [s2Step141ExitFvOut,s2Step141ExitGvOut] :=
  hmrRows_owned_drop s2Step141ExitGvAfter [s2Step141ExitGOut,s2Step141ExitFOut,s2Step141ExitFvOut,s2Step141ExitGvOut] 2 s2Step141ExitBank_outgoingOwned

private theorem s2Step141ExitFv_distinct : (s2Step141ExitFvRow.sign::s2Step141ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141ExitFv_owned : (s2Step141ExitFvRow.sign::s2Step141ExitFvRow.payload).toFinset⊆s2Step141ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step141ExitFvBefore (fun q => (0≤q ∧ q<198) ∨ (199≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141ExitFv_reserved : s2Step141ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step141ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step141ExitFv_checked : planRowResizeLog s2Step141ExitFvBefore s2Step141ExitFvRow 85 []=
    some (s2Step141ExitFvAfter,s2Step141ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step141ExitFvBefore s2Step141ExitFvAfter s2Step141ExitFvRow 85 []
    s2Step141ExitFv_distinct s2Step141ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step141ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step141ExitFvRow.payload++[]) s2Step141ExitFvRow.sign=s2Step141ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step141ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private theorem s2Step141ExitG_Incoming : rowsOwned s2Step141ExitGBefore [s2Step141ExitGRow,s2Step141ExitFRow,s2Step141ExitFvRow,s2Step141ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step141ExitGRow,s2Step141ExitFRow,s2Step141ExitFvRow,s2Step141ExitGvRow] 0 s2Step141ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step141ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141ExitG_Outgoing : rowsOwned s2Step141ExitGvAfter [s2Step141ExitGOut,s2Step141ExitFOut,s2Step141ExitFvOut,s2Step141ExitGvOut] :=
  hmrRows_owned_drop s2Step141ExitGvAfter [s2Step141ExitGOut,s2Step141ExitFOut,s2Step141ExitFvOut,s2Step141ExitGvOut] 0 s2Step141ExitBank_outgoingOwned

private theorem s2Step141ExitG_distinct : (s2Step141ExitGRow.sign::s2Step141ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141ExitG_owned : (s2Step141ExitGRow.sign::s2Step141ExitGRow.payload).toFinset⊆s2Step141ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step141ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141ExitG_retired : s2Step141ExitGBefore.retireSet s2Step141ExitGExtra.toFinset=s2Step141ExitGAfter := by
  unfold Arena.retireSet s2Step141ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step141ExitGBefore,s2Step141ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step141ExitG_checked : planRowResizeLog s2Step141ExitGBefore s2Step141ExitGRow 198 []=
    some (s2Step141ExitGAfter,s2Step141ExitGOut,shrinkRow 769 s2Step141ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step141ExitGBefore s2Step141ExitGRow 198 s2Step141ExitG_distinct s2Step141ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step141ExitGRow.payload.take 198) s2Step141ExitGRow.sign=s2Step141ExitGOut := by decide +kernel
  have hi : s2Step141ExitGRow.payload.drop 198=s2Step141ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step141ExitG_retired] at result
  exact result

private def s2Step141ExitGvBefore : Arena := s2Step141ExitFAfter

private theorem s2Step141ExitGv_Incoming : rowsOwned s2Step141ExitGvBefore [s2Step141ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step141ExitGRow,s2Step141ExitFRow,s2Step141ExitFvRow,s2Step141ExitGvRow] 3 s2Step141ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step141ExitGvBefore (fun q => (0≤q ∧ q<198) ∨ (199≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141ExitGv_Outgoing : rowsOwned s2Step141ExitGvAfter [s2Step141ExitGvOut] :=
  hmrRows_owned_drop s2Step141ExitGvAfter [s2Step141ExitGOut,s2Step141ExitFOut,s2Step141ExitFvOut,s2Step141ExitGvOut] 3 s2Step141ExitBank_outgoingOwned

private theorem s2Step141ExitGv_distinct : (s2Step141ExitGvRow.sign::s2Step141ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141ExitGv_owned : (s2Step141ExitGvRow.sign::s2Step141ExitGvRow.payload).toFinset⊆s2Step141ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step141ExitGvBefore (fun q => (0≤q ∧ q<198) ∨ (199≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141ExitGv_reserved : s2Step141ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step141ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step141ExitGv_checked : planRowResizeLog s2Step141ExitGvBefore s2Step141ExitGvRow 85 []=
    some (s2Step141ExitGvAfter,s2Step141ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step141ExitGvBefore s2Step141ExitGvAfter s2Step141ExitGvRow 85 []
    s2Step141ExitGv_distinct s2Step141ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step141ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step141ExitGvRow.payload++[]) s2Step141ExitGvRow.sign=s2Step141ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step141ExitBank_rows : planWindowRowsLog s2Step141ExitGBefore [(s2Step141ExitGRow,198),(s2Step141ExitFRow,199),(s2Step141ExitFvRow,85),(s2Step141ExitGvRow,85)] [[],[],[],[]]=
    some (s2Step141ExitGvAfter,[s2Step141ExitGOut,s2Step141ExitFOut,s2Step141ExitFvOut,s2Step141ExitGvOut],(shrinkRow 769 s2Step141ExitGExtra ++ (shrinkRow 768 s2Step141ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step141ExitGvAfter [] []=some (s2Step141ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step141ExitGvBefore s2Step141ExitGvAfter s2Step141ExitGvAfter
    s2Step141ExitGvRow s2Step141ExitGvOut 85 [] [] [] []
    (growRow 771 []) ([]) s2Step141ExitGv_Incoming s2Step141ExitGv_checked h4 s2Step141ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step141ExitFvBefore s2Step141ExitFvAfter s2Step141ExitGvAfter
    s2Step141ExitFvRow s2Step141ExitFvOut 85 [] [(s2Step141ExitGvRow,85)] [[]] [s2Step141ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step141ExitFv_Incoming s2Step141ExitFv_checked h3 s2Step141ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step141ExitFBefore s2Step141ExitFAfter s2Step141ExitGvAfter
    s2Step141ExitFRow s2Step141ExitFOut 199 [] [(s2Step141ExitFvRow,85),(s2Step141ExitGvRow,85)] [[],[]] [s2Step141ExitFvOut,s2Step141ExitGvOut]
    (shrinkRow 768 s2Step141ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step141ExitF_Incoming s2Step141ExitF_checked h2 s2Step141ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step141ExitGBefore s2Step141ExitGAfter s2Step141ExitGvAfter
    s2Step141ExitGRow s2Step141ExitGOut 198 [] [(s2Step141ExitFRow,199),(s2Step141ExitFvRow,85),(s2Step141ExitGvRow,85)] [[],[],[]] [s2Step141ExitFOut,s2Step141ExitFvOut,s2Step141ExitGvOut]
    (shrinkRow 769 s2Step141ExitGExtra) ((shrinkRow 768 s2Step141ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step141ExitG_Incoming s2Step141ExitG_checked h1 s2Step141ExitG_Outgoing
  exact h0

private theorem s2Step141ExitBank_checked : compileHmrBankResizeLog .exit s2Step141ExitGBefore ⟨s2Step141ExitFRow,s2Step141ExitGRow,s2Step141ExitFvRow,s2Step141ExitGvRow⟩ ⟨199,198,85,85⟩ [[],[],[],[]]=
    some (s2Step141ExitGvAfter,⟨s2Step141ExitFOut,s2Step141ExitGOut,s2Step141ExitFvOut,s2Step141ExitGvOut⟩,(shrinkRow 769 s2Step141ExitGExtra ++ (shrinkRow 768 s2Step141ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step141ExitBank_rows]
  rfl

private theorem s2Step141Add0_apart : Disjoint s2Step141Add0Arena.live s2Step141Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step141Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141Add0_card : s2Step141Add0Arena.live.card=881 := by
  decide +kernel

private theorem s2Step141Add0_borrowed : s2Step141Add0Arena.checkBorrow (hmrHybridCount s2Step141Add0Arena s2Step141Add0B.length) s2Step141Add0Work=some s2Step141Add0During := by
  have len : s2Step141Add0Work.length=hmrHybridCount s2Step141Add0Arena s2Step141Add0B.length := by
    rw [hmrHybridCount,s2Step141Add0_card]
    decide +kernel
  have nd : s2Step141Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step141Add0Arena s2Step141Add0During s2Step141Add0Work.toFinset s2Step141Add0_bounded s2Step141Add0_apart rfl

private theorem s2Step141Add0_distinct : (841::778::783::(s2Step141Add0A++s2Step141Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141Add0_owned : (841::778::783::(s2Step141Add0A++s2Step141Add0B)).toFinset⊆s2Step141Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step141Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141Add0_checked : compileHmrHybridCinLog s2Step141Add0Arena 778 841 783 s2Step141Add0A s2Step141Add0B s2Step141Add0Work=some s2Step141Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step141Add0Arena s2Step141Add0During 778 841 783 s2Step141Add0A s2Step141Add0B s2Step141Add0Work
    (by decide +kernel) (by decide +kernel) s2Step141Add0_distinct
    (fun q hq => s2Step141Add0_owned (List.mem_toFinset.mpr hq)) s2Step141Add0_borrowed

private theorem s2Step141Add1_apart : Disjoint s2Step141Add1Arena.live s2Step141Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step141Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141Add1_card : s2Step141Add1Arena.live.card=881 := by
  decide +kernel

private theorem s2Step141Add1_borrowed : s2Step141Add1Arena.checkBorrow (hmrHybridCount s2Step141Add1Arena s2Step141Add1B.length) s2Step141Add1Work=some s2Step141Add1During := by
  have len : s2Step141Add1Work.length=hmrHybridCount s2Step141Add1Arena s2Step141Add1B.length := by
    rw [hmrHybridCount,s2Step141Add1_card]
    decide +kernel
  have nd : s2Step141Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step141Add1Arena s2Step141Add1During s2Step141Add1Work.toFinset s2Step141Add1_bounded s2Step141Add1_apart rfl

private theorem s2Step141Add1_distinct : (841::778::783::(s2Step141Add1A++s2Step141Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141Add1_owned : (841::778::783::(s2Step141Add1A++s2Step141Add1B)).toFinset⊆s2Step141Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step141Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141Add1_checked : compileHmrHybridCinLog s2Step141Add1Arena 778 841 783 s2Step141Add1A s2Step141Add1B s2Step141Add1Work=some s2Step141Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step141Add1Arena s2Step141Add1During 778 841 783 s2Step141Add1A s2Step141Add1B s2Step141Add1Work
    (by decide +kernel) (by decide +kernel) s2Step141Add1_distinct
    (fun q hq => s2Step141Add1_owned (List.mem_toFinset.mpr hq)) s2Step141Add1_borrowed

private theorem s2Step141F4_apart : Disjoint (s2Step141Add0A++s2Step141Add0B).toFinset (s2Step141Add1A++s2Step141Add1B).toFinset := by
  have nd : ((s2Step141Add0A++s2Step141Add0B)++(s2Step141Add1A++s2Step141Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step141F4_carry : s2Step141F4FlagArena.checkBorrow 1 [783]=some s2Step141Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step141F4FlagArena,s2Step141HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step141F4FlagArena,s2Step141HeadFvAfter,s2Step141Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step141F4_distinct : (788::778::841::783::((s2Step141Add0A++s2Step141Add1A)++(s2Step141Add0B++s2Step141Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141F4_flag : s2Step141HeadFvAfter.checkBorrow 1 [841]=some s2Step141F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step141HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step141F4_owned : (788::778::((s2Step141Add0A++s2Step141Add1A)++(s2Step141Add0B++s2Step141Add1B))).toFinset⊆s2Step141HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step141HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141F4_checked : compileHmrHybridF4Log s2Step141HeadFvAfter 788 778 s2Step141Add0A s2Step141Add0B s2Step141Add1A s2Step141Add1B [841] [783] s2Step141Add0Work s2Step141Add1Work=some s2Step141F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step141HeadFvAfter s2Step141F4FlagArena s2Step141Add0Arena s2Step141Add0During s2Step141Add1During 788 778
    s2Step141Add0A s2Step141Add0B s2Step141Add1A s2Step141Add1B [841] [783] s2Step141Add0Work s2Step141Add1Work
    (fun q hq => s2Step141F4_owned (List.mem_toFinset.mpr hq)) s2Step141F4_flag s2Step141F4_carry
    s2Step141F4_distinct s2Step141F4_apart s2Step141Add0_checked s2Step141Add1_checked

private theorem s2Step141Front_branch : s2Step141FrontSigmaArena.checkBorrow 1 [778]=some s2Step141HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step141FrontSigmaArena,s2Step141EntryGvAfter,s2Step141EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step141FrontSigmaArena,s2Step141EntryGvAfter,s2Step141EntryFBefore,s2Step141HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step141Front_entry : HmrFrontEntryValid s2Step141EntryFBefore s2Step141FrontBank 199 84 ⟨199,198,85,85⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step141FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step141EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step141EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step141FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step141Front_sigma : s2Step141EntryGvAfter.checkBorrow 1 [788]=some s2Step141FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step141EntryGvAfter,s2Step141EntryFBefore,arenaWires]
  · rfl

private def s2Step141HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step141HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step141HeadFBefore : Arena := s2Step141HeadGAfter

private def s2Step141HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710],768⟩

private def s2Step141HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826],770⟩

private def s2Step141HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198],769⟩

private def s2Step141HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814],771⟩

private theorem s2Step141HeadBank_incomingDistinct : ([s2Step141HeadGRow,s2Step141HeadFRow,s2Step141HeadGvRow,s2Step141HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141HeadF_Incoming : rowsOwned s2Step141HeadFBefore [s2Step141HeadFRow,s2Step141HeadGvRow,s2Step141HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step141HeadGRow,s2Step141HeadFRow,s2Step141HeadGvRow,s2Step141HeadFvRow] 1 s2Step141HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step141HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141HeadBank_outgoingOwned : rowsOwned s2Step141HeadFvAfter [s2Step141HeadGOut,s2Step141HeadFOut,s2Step141HeadGvOut,s2Step141HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step141HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141HeadF_Outgoing : rowsOwned s2Step141HeadFvAfter [s2Step141HeadFOut,s2Step141HeadGvOut,s2Step141HeadFvOut] :=
  hmrRows_owned_drop s2Step141HeadFvAfter [s2Step141HeadGOut,s2Step141HeadFOut,s2Step141HeadGvOut,s2Step141HeadFvOut] 1 s2Step141HeadBank_outgoingOwned

private theorem s2Step141HeadF_distinct : (s2Step141HeadFRow.sign::s2Step141HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141HeadF_owned : (s2Step141HeadFRow.sign::s2Step141HeadFRow.payload).toFinset⊆s2Step141HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step141HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141HeadF_reserved : s2Step141HeadFBefore.reserve s2Step141HeadFFresh.toFinset=some s2Step141HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step141HeadFFresh,arenaWires]
  · norm_num [s2Step141HeadFBefore,s2Step141HeadGAfter,s2Step141HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step141HeadFAfter,s2Step141HeadFBefore,s2Step141HeadGAfter,s2Step141HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step141HeadF_checked : planRowResizeLog s2Step141HeadFBefore s2Step141HeadFRow 200 s2Step141HeadFFresh=
    some (s2Step141HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 849],768⟩,growRow 768 s2Step141HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step141HeadFBefore s2Step141HeadFAfter s2Step141HeadFRow 200 s2Step141HeadFFresh
    s2Step141HeadF_distinct s2Step141HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step141HeadF_reserved
  have rowEq : WindowRow.mk (s2Step141HeadFRow.payload++s2Step141HeadFFresh) s2Step141HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 849],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step141HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)),Finset.filter_subset _ _⟩

private def s2Step141HeadFvBefore : Arena := s2Step141HeadGvAfter

private theorem s2Step141HeadFv_Incoming : rowsOwned s2Step141HeadFvBefore [s2Step141HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step141HeadGRow,s2Step141HeadFRow,s2Step141HeadGvRow,s2Step141HeadFvRow] 3 s2Step141HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step141HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141HeadFv_Outgoing : rowsOwned s2Step141HeadFvAfter [s2Step141HeadFvOut] :=
  hmrRows_owned_drop s2Step141HeadFvAfter [s2Step141HeadGOut,s2Step141HeadFOut,s2Step141HeadGvOut,s2Step141HeadFvOut] 3 s2Step141HeadBank_outgoingOwned

private theorem s2Step141HeadFv_distinct : (s2Step141HeadFvRow.sign::s2Step141HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141HeadFv_owned : (s2Step141HeadFvRow.sign::s2Step141HeadFvRow.payload).toFinset⊆s2Step141HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step141HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141HeadFv_reserved : s2Step141HeadFvBefore.reserve s2Step141HeadFvFresh.toFinset=some s2Step141HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step141HeadFvFresh,arenaWires]
  · norm_num [s2Step141HeadFvBefore,s2Step141HeadGvAfter,s2Step141HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step141HeadFvAfter,s2Step141HeadFvBefore,s2Step141HeadGvAfter,s2Step141HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step141HeadFv_checked : planRowResizeLog s2Step141HeadFvBefore s2Step141HeadFvRow 85 s2Step141HeadFvFresh=
    some (s2Step141HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩,growRow 770 s2Step141HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step141HeadFvBefore s2Step141HeadFvAfter s2Step141HeadFvRow 85 s2Step141HeadFvFresh
    s2Step141HeadFv_distinct s2Step141HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step141HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step141HeadFvRow.payload++s2Step141HeadFvFresh) s2Step141HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step141HeadG_Incoming : rowsOwned s2Step141HeadGBefore [s2Step141HeadGRow,s2Step141HeadFRow,s2Step141HeadGvRow,s2Step141HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step141HeadGRow,s2Step141HeadFRow,s2Step141HeadGvRow,s2Step141HeadFvRow] 0 s2Step141HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step141HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141HeadG_Outgoing : rowsOwned s2Step141HeadFvAfter [s2Step141HeadGOut,s2Step141HeadFOut,s2Step141HeadGvOut,s2Step141HeadFvOut] :=
  hmrRows_owned_drop s2Step141HeadFvAfter [s2Step141HeadGOut,s2Step141HeadFOut,s2Step141HeadGvOut,s2Step141HeadFvOut] 0 s2Step141HeadBank_outgoingOwned

private theorem s2Step141HeadG_distinct : (s2Step141HeadGRow.sign::s2Step141HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141HeadG_owned : (s2Step141HeadGRow.sign::s2Step141HeadGRow.payload).toFinset⊆s2Step141HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step141HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141HeadG_reserved : s2Step141HeadGBefore.reserve s2Step141HeadGFresh.toFinset=some s2Step141HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step141HeadGFresh,arenaWires]
  · norm_num [s2Step141HeadGBefore,s2Step141HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step141HeadGAfter,s2Step141HeadGBefore,s2Step141HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step141HeadG_checked : planRowResizeLog s2Step141HeadGBefore s2Step141HeadGRow 200 s2Step141HeadGFresh=
    some (s2Step141HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 842],769⟩,growRow 769 s2Step141HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step141HeadGBefore s2Step141HeadGAfter s2Step141HeadGRow 200 s2Step141HeadGFresh
    s2Step141HeadG_distinct s2Step141HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step141HeadG_reserved
  have rowEq : WindowRow.mk (s2Step141HeadGRow.payload++s2Step141HeadGFresh) s2Step141HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 842],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step141HeadGvBefore : Arena := s2Step141HeadFAfter

private theorem s2Step141HeadGv_Incoming : rowsOwned s2Step141HeadGvBefore [s2Step141HeadGvRow,s2Step141HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step141HeadGRow,s2Step141HeadFRow,s2Step141HeadGvRow,s2Step141HeadFvRow] 2 s2Step141HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step141HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
    decide +kernel

private theorem s2Step141HeadGv_Outgoing : rowsOwned s2Step141HeadFvAfter [s2Step141HeadGvOut,s2Step141HeadFvOut] :=
  hmrRows_owned_drop s2Step141HeadFvAfter [s2Step141HeadGOut,s2Step141HeadFOut,s2Step141HeadGvOut,s2Step141HeadFvOut] 2 s2Step141HeadBank_outgoingOwned

private theorem s2Step141HeadGv_distinct : (s2Step141HeadGvRow.sign::s2Step141HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step141HeadGv_owned : (s2Step141HeadGvRow.sign::s2Step141HeadGvRow.payload).toFinset⊆s2Step141HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step141HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888)) rfl
  decide +kernel

private theorem s2Step141HeadGv_reserved : s2Step141HeadGvBefore.reserve s2Step141HeadGvFresh.toFinset=some s2Step141HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step141HeadGvFresh,arenaWires]
  · norm_num [s2Step141HeadGvBefore,s2Step141HeadFAfter,s2Step141HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step141HeadGvAfter,s2Step141HeadGvBefore,s2Step141HeadFAfter,s2Step141HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step141HeadGv_checked : planRowResizeLog s2Step141HeadGvBefore s2Step141HeadGvRow 85 s2Step141HeadGvFresh=
    some (s2Step141HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩,growRow 771 s2Step141HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step141HeadGvBefore s2Step141HeadGvAfter s2Step141HeadGvRow 85 s2Step141HeadGvFresh
    s2Step141HeadGv_distinct s2Step141HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step141HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step141HeadGvRow.payload++s2Step141HeadGvFresh) s2Step141HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step141HeadBank_rows : planWindowRowsLog s2Step141HeadGBefore [(s2Step141HeadGRow,200),(s2Step141HeadFRow,200),(s2Step141HeadGvRow,85),(s2Step141HeadFvRow,85)] [s2Step141HeadGFresh,s2Step141HeadFFresh,s2Step141HeadGvFresh,s2Step141HeadFvFresh]=
    some (s2Step141HeadFvAfter,[s2Step141HeadGOut,s2Step141HeadFOut,s2Step141HeadGvOut,s2Step141HeadFvOut],(growRow 769 s2Step141HeadGFresh ++ (growRow 768 s2Step141HeadFFresh ++ (growRow 771 s2Step141HeadGvFresh ++ (growRow 770 s2Step141HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step141HeadFvAfter [] []=some (s2Step141HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step141HeadFvBefore s2Step141HeadFvAfter s2Step141HeadFvAfter
    s2Step141HeadFvRow s2Step141HeadFvOut 85 s2Step141HeadFvFresh [] [] []
    (growRow 770 s2Step141HeadFvFresh) ([]) s2Step141HeadFv_Incoming s2Step141HeadFv_checked h4 s2Step141HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step141HeadGvBefore s2Step141HeadGvAfter s2Step141HeadFvAfter
    s2Step141HeadGvRow s2Step141HeadGvOut 85 s2Step141HeadGvFresh [(s2Step141HeadFvRow,85)] [s2Step141HeadFvFresh] [s2Step141HeadFvOut]
    (growRow 771 s2Step141HeadGvFresh) ((growRow 770 s2Step141HeadFvFresh ++ [])) s2Step141HeadGv_Incoming s2Step141HeadGv_checked h3 s2Step141HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step141HeadFBefore s2Step141HeadFAfter s2Step141HeadFvAfter
    s2Step141HeadFRow s2Step141HeadFOut 200 s2Step141HeadFFresh [(s2Step141HeadGvRow,85),(s2Step141HeadFvRow,85)] [s2Step141HeadGvFresh,s2Step141HeadFvFresh] [s2Step141HeadGvOut,s2Step141HeadFvOut]
    (growRow 768 s2Step141HeadFFresh) ((growRow 771 s2Step141HeadGvFresh ++ (growRow 770 s2Step141HeadFvFresh ++ []))) s2Step141HeadF_Incoming s2Step141HeadF_checked h2 s2Step141HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step141HeadGBefore s2Step141HeadGAfter s2Step141HeadFvAfter
    s2Step141HeadGRow s2Step141HeadGOut 200 s2Step141HeadGFresh [(s2Step141HeadFRow,200),(s2Step141HeadGvRow,85),(s2Step141HeadFvRow,85)] [s2Step141HeadFFresh,s2Step141HeadGvFresh,s2Step141HeadFvFresh] [s2Step141HeadFOut,s2Step141HeadGvOut,s2Step141HeadFvOut]
    (growRow 769 s2Step141HeadGFresh) ((growRow 768 s2Step141HeadFFresh ++ (growRow 771 s2Step141HeadGvFresh ++ (growRow 770 s2Step141HeadFvFresh ++ [])))) s2Step141HeadG_Incoming s2Step141HeadG_checked h1 s2Step141HeadG_Outgoing
  exact h0

private theorem s2Step141HeadBank_checked : compileHmrBankResizeLog .headroom s2Step141HeadGBefore ⟨s2Step141HeadFRow,s2Step141HeadGRow,s2Step141HeadFvRow,s2Step141HeadGvRow⟩ ⟨200,200,85,85⟩ [s2Step141HeadGFresh,s2Step141HeadFFresh,s2Step141HeadGvFresh,s2Step141HeadFvFresh]=
    some (s2Step141HeadFvAfter,⟨s2Step141HeadFOut,s2Step141HeadGOut,s2Step141HeadFvOut,s2Step141HeadGvOut⟩,(growRow 769 s2Step141HeadGFresh ++ (growRow 768 s2Step141HeadFFresh ++ (growRow 771 s2Step141HeadGvFresh ++ (growRow 770 s2Step141HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step141HeadBank_rows]
  rfl

private theorem s2Step141Front_checked : compileHmrSourceFrontLog s2Step141EntryFBefore s2Step141FrontBank 199 84 ⟨199,198,85,85⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step141FrontLog=some s2Step141FrontPlan := by
  have pairEq : s2Step141FrontPair=⟨s2Step141HeadFRow,s2Step141HeadGRow,s2Step141HeadFvRow,s2Step141HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step141FrontHead=⟨s2Step141ExitFRow,s2Step141ExitGRow,s2Step141ExitFvRow,s2Step141ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step141Add0A=s2Step141FrontHead.f.wires := by decide +kernel
  have gEq : s2Step141Add0B=s2Step141FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step141Add1A=s2Step141FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step141Add1B=s2Step141FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step141EntryFBefore s2Step141FrontBank 199 84 ⟨199,198,85,85⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step141FrontLog s2Step141FrontPlan
  · exact s2Step141Front_entry
  · exact s2Step141EntryBank_checked
  · exact s2Step141Front_sigma
  · rfl
  · exact s2Step141Front_branch
  · rfl
  · simpa only [s2Step141FrontPlan,pairEq] using s2Step141HeadBank_checked
  · simpa only [s2Step141FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step141F4_checked
  · exact s2Step141Counter_checked
  · rfl
  · simpa only [s2Step141FrontPlan,headEq] using s2Step141ExitBank_checked

private theorem s2Step141Complete_explicit_checked : compileHmrEarlyStepLog s2Step141EntryFBefore s2Step141FrontBank 199 84 ⟨199,198,85,85⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] 42 s2Step141CompleteLog=some s2Step141CompletePlan := by
  let Q := s2Step141EarlyControlPlan
  have hq := s2Step141EarlyControl_plan_checked
  have fv1 : s2Step141CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step141CompleteOut.fv.payload[2]?.getD s2Step141CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step141CompleteOut.fv.payload[3]?.getD s2Step141CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step141CompleteOut.fv.payload[4]?.getD s2Step141CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step141EntryFBefore s2Step141EarlyControlArena s2Step141FrontBank 199 84 ⟨199,198,85,85⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] 42 s2Step141CompleteLog s2Step141FrontPlan Q
    s2Step141Front_checked s2Step141Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step141Complete_owned s2Step141Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step141EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] 777 788 s2Step141CompleteOut.fv.second (s2Step141CompleteOut.fv.payload[2]?.getD s2Step141CompleteOut.fv.sign) (s2Step141CompleteOut.fv.payload[3]?.getD s2Step141CompleteOut.fv.sign) (s2Step141CompleteOut.fv.payload[4]?.getD s2Step141CompleteOut.fv.sign) 778 42 s2Step141EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep141Arena : Arena := s2Step141EntryFBefore
def s2PrivateStep141Bank : WindowBank := s2Step141FrontBank
def s2PrivateStep141Spec : HmrSourceWalkStepLog := ⟨199,84,⟨199,198,85,85⟩,42,.early s2Step141CompleteLog⟩
def s2PrivateStep141Plan : HmrSourceStepPlan := .early s2Step141CompletePlan
theorem s2PrivateStep141_source : s2PrivateStep141Spec=s2ObservedLogs128[13] := rfl
theorem s2PrivateStep141_checked : compileHmrSourceStepLog s2PrivateStep141Arena s2PrivateStep141Bank
    s2PrivateStep141Spec.fgWidth s2PrivateStep141Spec.vWidth s2PrivateStep141Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886]
    6 498 141 s2PrivateStep141Spec.need none s2PrivateStep141Spec.log=some s2PrivateStep141Plan := by
  change compileHmrSourceStepLog s2Step141EntryFBefore s2Step141FrontBank 199 84 ⟨199,198,85,85⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886] 6 498 141 42 none (.early s2Step141CompleteLog)=some (.early s2Step141CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 141<498)]
  rw [s2Step141Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
