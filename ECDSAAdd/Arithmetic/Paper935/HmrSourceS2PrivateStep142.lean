import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep140
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

private def s2Step142CompleteMoves : List (Wire × Wire) := [(789,710)]

private def s2Step142EarlyControlLog : HmrEarlyControlLog := ⟨[789, 841, 783, 842, 778],[849],[790],[815, 867, 877, 879, 882, 885],[]⟩

private def s2Step142FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [778], [], []],[[849], [842], [841], [783]],[[], [], [], []]⟩,[788],[845],[790],[815],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877]⟩

private def s2Step142CompleteLog : HmrEarlyStepLog := ⟨s2Step142FrontLog,s2Step142CompleteMoves,s2Step142EarlyControlLog⟩

private def s2Step142ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709],768⟩

private def s2Step142ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩

private def s2Step142ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],769⟩

private def s2Step142ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩

private def s2Step142FrontOut : WindowBank := ⟨s2Step142ExitFOut,s2Step142ExitGOut,s2Step142ExitFvOut,s2Step142ExitGvOut⟩

private def s2Step142CompleteOut : WindowBank := s2Step142FrontOut.repacked s2Step142CompleteMoves

private def s2Step142EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step142EarlyControlPositiveArena,[849],s2Step142EarlyControlEqualityArena,[790],⟨⟨788,false⟩,[⟨⟨849,false⟩,790⟩]⟩⟩

private def s2Step142EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,789⟩,⟨⟨774,false⟩,841⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,842⟩,⟨⟨777,false⟩,778⟩]⟩

private def s2Step142EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step142EarlyControlZeroArena,s2Step142EarlyControlZeroPlan,s2Step142EarlyControlClassPlan,s2Step142EarlyControlFlagArena,s2Step142EarlyControlFittedArena,s2Step142EarlyControlHistoryArena,s2Step142EarlyControlSigmaArena,s2Step142EarlyControlOutputArena,s2Step142EarlyControlLog⟩

private def s2Step142CounterWork : List Wire := [790, 815, 867, 877]

private theorem s2Step142Counter_bounded : s2Step142CounterWork.toFinset⊆arenaWires := by norm_num [s2Step142CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step142HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142CounterDuring : Arena := ⟨s2Step142HeadFvAfter.live∪s2Step142CounterWork.toFinset,Finset.union_subset s2Step142HeadFvAfter.bounded s2Step142Counter_bounded⟩

private def s2Step142EntryFFresh : List Wire := []

private def s2Step142EntryFvFresh : List Wire := []

private def s2Step142EntryGFresh : List Wire := [778]

private def s2Step142EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142EntryGvAfter : Arena := s2Step142EntryGAfter

private def s2Step142EntryGvFresh : List Wire := []

private def s2Step142ExitFExtra : List Wire := [710, 842]

private def s2Step142ExitFvExtra : List Wire := [783]

private def s2Step142ExitGExtra : List Wire := [778, 849]

private def s2Step142ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<710) ∨ (711≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142ExitGvExtra : List Wire := [841]

private def s2Step142Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step142Add0_bounded : s2Step142Add0Work.toFinset⊆arenaWires := by
  have h : s2Step142Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step142Add0During : Arena := ⟨s2Step142Add0Arena.live∪s2Step142Add0Work.toFinset,Finset.union_subset s2Step142Add0Arena.bounded s2Step142Add0_bounded⟩

private def s2Step142Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step142Add1_bounded : s2Step142Add1Work.toFinset⊆arenaWires := by
  have h : s2Step142Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step142Add1During : Arena := ⟨s2Step142Add1Arena.live∪s2Step142Add1Work.toFinset,Finset.union_subset s2Step142Add1Arena.bounded s2Step142Add1_bounded⟩

private def s2Step142F4FlagArena : Arena := ⟨s2Step142HeadFvAfter.live∪{790},Finset.union_subset s2Step142HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step142F4Plan : HmrHybridF4Plan := ⟨s2Step142F4FlagArena,[790],s2Step142Add0Arena,[815],s2Step142Add0During,s2Step142Add0Work,s2Step142Add1During,s2Step142Add1Work⟩

private def s2Step142HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 842],768⟩

private def s2Step142HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 783],770⟩

private def s2Step142HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 778, 849],769⟩

private def s2Step142HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 841],771⟩

private def s2Step142FrontHead : WindowBank := ⟨s2Step142HeadFOut,s2Step142HeadGOut,s2Step142HeadFvOut,s2Step142HeadGvOut⟩

private def s2Step142EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710],768⟩

private def s2Step142EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩

private def s2Step142EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 778],769⟩

private def s2Step142EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩

private def s2Step142FrontPair : WindowBank := ⟨s2Step142EntryFOut,s2Step142EntryGOut,s2Step142EntryFvOut,s2Step142EntryGvOut⟩

private def s2Step142FrontSigmaArena : Arena := ⟨s2Step142EntryGvAfter.live∪{788},Finset.union_subset s2Step142EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step142HeadFFresh : List Wire := [842]

private def s2Step142HeadFvFresh : List Wire := [783]

private def s2Step142HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142HeadGFresh : List Wire := [849]

private def s2Step142HeadGvFresh : List Wire := [841]

private def s2Step142FrontPlan : HmrSourceFront := ⟨s2Step142EntryGvAfter,s2Step142FrontPair,(growRow 768 s2Step142EntryFFresh ++ (growRow 769 s2Step142EntryGFresh ++ (growRow 770 s2Step142EntryFvFresh ++ (growRow 771 s2Step142EntryGvFresh ++ [])))),s2Step142FrontSigmaArena,[788],s2Step142HeadGBefore,[845],
  s2Step142HeadFvAfter,s2Step142FrontHead,(growRow 769 s2Step142HeadGFresh ++ (growRow 768 s2Step142HeadFFresh ++ (growRow 771 s2Step142HeadGvFresh ++ (growRow 770 s2Step142HeadFvFresh ++ [])))),s2Step142F4Plan,s2Step142CounterDuring,s2Step142CounterWork,s2Step142ExitGvAfter,s2Step142FrontOut,(shrinkRow 769 s2Step142ExitGExtra ++ (shrinkRow 768 s2Step142ExitFExtra ++ (shrinkRow 770 s2Step142ExitFvExtra ++ (shrinkRow 771 s2Step142ExitGvExtra ++ []))))⟩

private def s2Step142CompletePlan : HmrEarlyStepPlan := ⟨s2Step142FrontPlan,s2Step142EarlyControlArena,s2Step142EarlyControlPlan,s2Step142CompleteMoves⟩

private theorem s2Step142Complete_apart : List.Disjoint (s2Step142CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [788, 845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step142CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[788, 845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step142Complete_owned : (s2Step142CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step142EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step142EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step142CompleteMoveArena : Arena := ⟨s2Step142ExitGvAfter.live∪{710},Finset.union_subset s2Step142ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step142Complete_repack : s2Step142ExitGvAfter.checkRepack s2Step142CompleteMoves=some s2Step142EarlyControlArena := by
  have owned : 789∈s2Step142ExitGvAfter.live := by norm_num [s2Step142ExitGvAfter,arenaWires]
  have reserve : s2Step142ExitGvAfter.reserve {710}=some s2Step142CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step142ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step142CompleteMoveArena.retireSet {789}=s2Step142EarlyControlArena := by
    unfold Arena.retireSet s2Step142EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step142CompleteMoveArena,s2Step142ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step142CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step142CompleteMoveArena.retireSet {789}).checkRepack []=some s2Step142EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step142EarlyControl_branchOwned : ([845] : List Wire).toFinset⊆s2Step142EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step142EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EarlyControl_branch : compileHmrBranchRetirement s2Step142EarlyControlSigmaArena 845=some s2Step142EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step142EarlyControl_branchOwned
  · ext q
    simp [s2Step142EarlyControlOutputArena,s2Step142EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step142EarlyControl_classEqualityBorrow : s2Step142EarlyControlPositiveArena.checkBorrow (([788, 849] : List Wire).length-1) s2Step142EarlyControlLog.classWork=some s2Step142EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step142EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step142EarlyControlEqualityArena,s2Step142EarlyControlPositiveArena,s2Step142EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step142EarlyControl_classEqualityOwned : ([788, 849] : List Wire).toFinset⊆s2Step142EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step142EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EarlyControl_classEquality : compileHmrEqualityLog s2Step142EarlyControlPositiveArena [788, 849] 0 s2Step142EarlyControlLog.classWork=some (s2Step142EarlyControlEqualityArena,s2Step142EarlyControlLog.classWork,s2Step142EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step142EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step142EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step142EarlyControl_classOwned : ([777, 778, 788] : List Wire).toFinset⊆s2Step142EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step142EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EarlyControl_positiveBorrow : s2Step142EarlyControlZeroArena.checkBorrow (1) s2Step142EarlyControlLog.positiveWork=some s2Step142EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step142EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step142EarlyControlPositiveArena,s2Step142EarlyControlZeroArena,s2Step142EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step142EarlyControl_class : compileHmrSourceClassLog s2Step142EarlyControlZeroArena false 777 s2Step142EarlyControlZeroPlan.top 0 788 s2Step142EarlyControlLog.positiveWork s2Step142EarlyControlLog.classWork=some s2Step142EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step142EarlyControlClassPlan s2Step142EarlyControlZeroArena false 777 s2Step142EarlyControlZeroPlan.top 0 788
  constructor
  · decide +kernel
  · exact s2Step142EarlyControl_classOwned
  · exact s2Step142EarlyControl_positiveBorrow
  · exact s2Step142EarlyControl_classEquality

private theorem s2Step142EarlyControl_entryRecordOwned : ([845, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step142EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step142EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EarlyControl_entrySigmaOwned : ([788, 254] : List Wire).toFinset⊆s2Step142EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step142EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EarlyControl_fitBorrow : s2Step142EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step142EarlyControlLog.recordFresh=some s2Step142EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step142EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step142EarlyControlFittedArena,s2Step142EarlyControlFlagArena,s2Step142EarlyControlLog,arenaWires]

private theorem s2Step142EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step142EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step142EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EarlyControl_fit : compileHmrRecordGrowLog s2Step142EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step142EarlyControlLog.recordFresh=some s2Step142EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step142EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step142EarlyControl_fitBorrow

private theorem s2Step142EarlyControl_flagsBorrow : s2Step142EarlyControlEqualityArena.checkBorrow (6) s2Step142EarlyControlLog.flagWork=some s2Step142EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step142EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step142EarlyControlFlagArena,s2Step142EarlyControlEqualityArena,s2Step142EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step142EarlyControl_flagsOwned : ([790, 253, 252, 251] : List Wire).toFinset⊆s2Step142EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step142EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EarlyControl_flags : compileHmrFlagsLog s2Step142EarlyControlClassPlan.equalityArena s2Step142EarlyControlClassPlan.equality.top 253 252 251 s2Step142EarlyControlLog.flagWork=some s2Step142EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step142EarlyControl_flagsOwned⟩
  · exact s2Step142EarlyControl_flagsBorrow

private theorem s2Step142EarlyControl_historyBorrow : s2Step142EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step142EarlyControlLog.recordFresh=some s2Step142EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step142EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step142EarlyControlHistoryArena,s2Step142EarlyControlArena,s2Step142EarlyControlLog,arenaWires]

private theorem s2Step142EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step142EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step142EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EarlyControl_history : compileHmrRecordGrowLog s2Step142EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step142EarlyControlLog.recordFresh=some s2Step142EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step142EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step142EarlyControl_historyBorrow

private theorem s2Step142EarlyControl_sigmaOwned : ([254, 788] : List Wire).toFinset⊆s2Step142EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step142EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EarlyControl_sigmaReleaseOwned : ([788] : List Wire).toFinset⊆s2Step142EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step142EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EarlyControl_sigmaRelease : s2Step142EarlyControlHistoryArena.release {788} (fun _ => false)=some s2Step142EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step142EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step142EarlyControlSigmaArena,s2Step142EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step142EarlyControl_sigma : compileHmrSigmaDropLog s2Step142EarlyControlHistoryArena false 0 0 254 788 []=some s2Step142EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step142EarlyControl_sigmaOwned⟩
  · exact s2Step142EarlyControl_sigmaRelease

private theorem s2Step142EarlyControl_zeroBorrow : s2Step142EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step142EarlyControlLog.zeroWork=some s2Step142EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step142EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step142EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step142EarlyControlZeroArena,s2Step142EarlyControlArena,s2Step142EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step142EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step142EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step142EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EarlyControl_zero : compileHmrEqualityLog s2Step142EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step142EarlyControlLog.zeroWork=some (s2Step142EarlyControlZeroArena,s2Step142EarlyControlLog.zeroWork,s2Step142EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step142EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step142EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step142EarlyControl_logged : s2Step142EarlyControlPlan.Logged s2Step142EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 788 254 253 252 251 845 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step142EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step142EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step142EarlyControl_zero
  · exact s2Step142EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step142EarlyControl_flags
  · exact s2Step142EarlyControl_fit
  · exact s2Step142EarlyControl_history
  · exact s2Step142EarlyControl_sigma
  · exact s2Step142EarlyControl_branch

private theorem s2Step142EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step142EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 788 254 253 252 251 845 42 s2Step142EarlyControlLog=some s2Step142EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step142EarlyControlPlan s2Step142EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 788 254 253 252 251 845 42 s2Step142EarlyControl_logged

private def s2Step142EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710],768⟩

private def s2Step142EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩

private def s2Step142EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],769⟩

private def s2Step142EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩

private def s2Step142FrontBank : WindowBank := ⟨s2Step142EntryFRow,s2Step142EntryGRow,s2Step142EntryFvRow,s2Step142EntryGvRow⟩

private def s2Step142Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 842, 768]

private def s2Step142Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 778, 849, 769]

private def s2Step142Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 783, 770]

private def s2Step142Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 841, 771]

private theorem s2Step142Counter_apart : Disjoint s2Step142HeadFvAfter.live s2Step142CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step142HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142Counter_borrowed : s2Step142HeadFvAfter.checkBorrow 4 s2Step142CounterWork=some s2Step142CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step142HeadFvAfter s2Step142CounterDuring s2Step142CounterWork.toFinset s2Step142Counter_bounded s2Step142Counter_apart rfl

private theorem s2Step142Counter_owned : (788::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step142HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step142HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142Counter_checked : compileHmrCounterStepLog s2Step142HeadFvAfter true 788 [772, 773, 774, 775, 776, 777] s2Step142CounterWork=some s2Step142CounterDuring := by
  have owned : ∀q∈788::[772, 773, 774, 775, 776, 777],q∈s2Step142HeadFvAfter.live := fun q hq => s2Step142Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step142Counter_borrowed

private def s2Step142EntryFAfter : Arena := s2Step142EntryFBefore

private theorem s2Step142EntryBank_incomingDistinct : ([s2Step142EntryFRow,s2Step142EntryGRow,s2Step142EntryFvRow,s2Step142EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142EntryF_Incoming : rowsOwned s2Step142EntryFBefore [s2Step142EntryFRow,s2Step142EntryGRow,s2Step142EntryFvRow,s2Step142EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step142EntryFRow,s2Step142EntryGRow,s2Step142EntryFvRow,s2Step142EntryGvRow] 0 s2Step142EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step142EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142EntryBank_outgoingOwned : rowsOwned s2Step142EntryGvAfter [s2Step142EntryFOut,s2Step142EntryGOut,s2Step142EntryFvOut,s2Step142EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step142EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142EntryF_Outgoing : rowsOwned s2Step142EntryGvAfter [s2Step142EntryFOut,s2Step142EntryGOut,s2Step142EntryFvOut,s2Step142EntryGvOut] :=
  hmrRows_owned_drop s2Step142EntryGvAfter [s2Step142EntryFOut,s2Step142EntryGOut,s2Step142EntryFvOut,s2Step142EntryGvOut] 0 s2Step142EntryBank_outgoingOwned

private theorem s2Step142EntryF_distinct : (s2Step142EntryFRow.sign::s2Step142EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142EntryF_owned : (s2Step142EntryFRow.sign::s2Step142EntryFRow.payload).toFinset⊆s2Step142EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step142EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EntryF_reserved : s2Step142EntryFBefore.reserve s2Step142EntryFFresh.toFinset=some s2Step142EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step142EntryFFresh,arenaWires]
  · norm_num [s2Step142EntryFBefore,s2Step142EntryFFresh,arenaWires]
  · simp only [s2Step142EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step142EntryF_checked : planRowResizeLog s2Step142EntryFBefore s2Step142EntryFRow 199 s2Step142EntryFFresh=
    some (s2Step142EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710],768⟩,growRow 768 s2Step142EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step142EntryFBefore s2Step142EntryFAfter s2Step142EntryFRow 199 s2Step142EntryFFresh
    s2Step142EntryF_distinct s2Step142EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step142EntryF_reserved
  have rowEq : WindowRow.mk (s2Step142EntryFRow.payload++s2Step142EntryFFresh) s2Step142EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step142EntryFvAfter : Arena := s2Step142EntryGAfter

private def s2Step142EntryFvBefore : Arena := s2Step142EntryGAfter

private theorem s2Step142EntryFv_Incoming : rowsOwned s2Step142EntryFvBefore [s2Step142EntryFvRow,s2Step142EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step142EntryFRow,s2Step142EntryGRow,s2Step142EntryFvRow,s2Step142EntryGvRow] 2 s2Step142EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step142EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142EntryFv_Outgoing : rowsOwned s2Step142EntryGvAfter [s2Step142EntryFvOut,s2Step142EntryGvOut] :=
  hmrRows_owned_drop s2Step142EntryGvAfter [s2Step142EntryFOut,s2Step142EntryGOut,s2Step142EntryFvOut,s2Step142EntryGvOut] 2 s2Step142EntryBank_outgoingOwned

private theorem s2Step142EntryFv_distinct : (s2Step142EntryFvRow.sign::s2Step142EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142EntryFv_owned : (s2Step142EntryFvRow.sign::s2Step142EntryFvRow.payload).toFinset⊆s2Step142EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step142EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EntryFv_reserved : s2Step142EntryFvBefore.reserve s2Step142EntryFvFresh.toFinset=some s2Step142EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step142EntryFvFresh,arenaWires]
  · norm_num [s2Step142EntryFvBefore,s2Step142EntryGAfter,s2Step142EntryFvFresh,arenaWires]
  · simp only [s2Step142EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step142EntryFv_checked : planRowResizeLog s2Step142EntryFvBefore s2Step142EntryFvRow 85 s2Step142EntryFvFresh=
    some (s2Step142EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩,growRow 770 s2Step142EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step142EntryFvBefore s2Step142EntryFvAfter s2Step142EntryFvRow 85 s2Step142EntryFvFresh
    s2Step142EntryFv_distinct s2Step142EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step142EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step142EntryFvRow.payload++s2Step142EntryFvFresh) s2Step142EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step142EntryGBefore : Arena := s2Step142EntryFBefore

private theorem s2Step142EntryG_Incoming : rowsOwned s2Step142EntryGBefore [s2Step142EntryGRow,s2Step142EntryFvRow,s2Step142EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step142EntryFRow,s2Step142EntryGRow,s2Step142EntryFvRow,s2Step142EntryGvRow] 1 s2Step142EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step142EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142EntryG_Outgoing : rowsOwned s2Step142EntryGvAfter [s2Step142EntryGOut,s2Step142EntryFvOut,s2Step142EntryGvOut] :=
  hmrRows_owned_drop s2Step142EntryGvAfter [s2Step142EntryFOut,s2Step142EntryGOut,s2Step142EntryFvOut,s2Step142EntryGvOut] 1 s2Step142EntryBank_outgoingOwned

private theorem s2Step142EntryG_distinct : (s2Step142EntryGRow.sign::s2Step142EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142EntryG_owned : (s2Step142EntryGRow.sign::s2Step142EntryGRow.payload).toFinset⊆s2Step142EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step142EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EntryG_reserved : s2Step142EntryGBefore.reserve s2Step142EntryGFresh.toFinset=some s2Step142EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step142EntryGFresh,arenaWires]
  · norm_num [s2Step142EntryGBefore,s2Step142EntryFBefore,s2Step142EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step142EntryGAfter,s2Step142EntryGBefore,s2Step142EntryFBefore,s2Step142EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step142EntryG_checked : planRowResizeLog s2Step142EntryGBefore s2Step142EntryGRow 199 s2Step142EntryGFresh=
    some (s2Step142EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 778],769⟩,growRow 769 s2Step142EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step142EntryGBefore s2Step142EntryGAfter s2Step142EntryGRow 199 s2Step142EntryGFresh
    s2Step142EntryG_distinct s2Step142EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step142EntryG_reserved
  have rowEq : WindowRow.mk (s2Step142EntryGRow.payload++s2Step142EntryGFresh) s2Step142EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 778],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step142EntryGvBefore : Arena := s2Step142EntryGAfter

private theorem s2Step142EntryGv_Incoming : rowsOwned s2Step142EntryGvBefore [s2Step142EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step142EntryFRow,s2Step142EntryGRow,s2Step142EntryFvRow,s2Step142EntryGvRow] 3 s2Step142EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step142EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142EntryGv_Outgoing : rowsOwned s2Step142EntryGvAfter [s2Step142EntryGvOut] :=
  hmrRows_owned_drop s2Step142EntryGvAfter [s2Step142EntryFOut,s2Step142EntryGOut,s2Step142EntryFvOut,s2Step142EntryGvOut] 3 s2Step142EntryBank_outgoingOwned

private theorem s2Step142EntryGv_distinct : (s2Step142EntryGvRow.sign::s2Step142EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142EntryGv_owned : (s2Step142EntryGvRow.sign::s2Step142EntryGvRow.payload).toFinset⊆s2Step142EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step142EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142EntryGv_reserved : s2Step142EntryGvBefore.reserve s2Step142EntryGvFresh.toFinset=some s2Step142EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step142EntryGvFresh,arenaWires]
  · norm_num [s2Step142EntryGvBefore,s2Step142EntryGAfter,s2Step142EntryGvFresh,arenaWires]
  · simp only [s2Step142EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step142EntryGv_checked : planRowResizeLog s2Step142EntryGvBefore s2Step142EntryGvRow 85 s2Step142EntryGvFresh=
    some (s2Step142EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩,growRow 771 s2Step142EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step142EntryGvBefore s2Step142EntryGvAfter s2Step142EntryGvRow 85 s2Step142EntryGvFresh
    s2Step142EntryGv_distinct s2Step142EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step142EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step142EntryGvRow.payload++s2Step142EntryGvFresh) s2Step142EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step142EntryBank_rows : planWindowRowsLog s2Step142EntryFBefore [(s2Step142EntryFRow,199),(s2Step142EntryGRow,199),(s2Step142EntryFvRow,85),(s2Step142EntryGvRow,85)] [s2Step142EntryFFresh,s2Step142EntryGFresh,s2Step142EntryFvFresh,s2Step142EntryGvFresh]=
    some (s2Step142EntryGvAfter,[s2Step142EntryFOut,s2Step142EntryGOut,s2Step142EntryFvOut,s2Step142EntryGvOut],(growRow 768 s2Step142EntryFFresh ++ (growRow 769 s2Step142EntryGFresh ++ (growRow 770 s2Step142EntryFvFresh ++ (growRow 771 s2Step142EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step142EntryGvAfter [] []=some (s2Step142EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step142EntryGvBefore s2Step142EntryGvAfter s2Step142EntryGvAfter
    s2Step142EntryGvRow s2Step142EntryGvOut 85 s2Step142EntryGvFresh [] [] []
    (growRow 771 s2Step142EntryGvFresh) ([]) s2Step142EntryGv_Incoming s2Step142EntryGv_checked h4 s2Step142EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step142EntryFvBefore s2Step142EntryFvAfter s2Step142EntryGvAfter
    s2Step142EntryFvRow s2Step142EntryFvOut 85 s2Step142EntryFvFresh [(s2Step142EntryGvRow,85)] [s2Step142EntryGvFresh] [s2Step142EntryGvOut]
    (growRow 770 s2Step142EntryFvFresh) ((growRow 771 s2Step142EntryGvFresh ++ [])) s2Step142EntryFv_Incoming s2Step142EntryFv_checked h3 s2Step142EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step142EntryGBefore s2Step142EntryGAfter s2Step142EntryGvAfter
    s2Step142EntryGRow s2Step142EntryGOut 199 s2Step142EntryGFresh [(s2Step142EntryFvRow,85),(s2Step142EntryGvRow,85)] [s2Step142EntryFvFresh,s2Step142EntryGvFresh] [s2Step142EntryFvOut,s2Step142EntryGvOut]
    (growRow 769 s2Step142EntryGFresh) ((growRow 770 s2Step142EntryFvFresh ++ (growRow 771 s2Step142EntryGvFresh ++ []))) s2Step142EntryG_Incoming s2Step142EntryG_checked h2 s2Step142EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step142EntryFBefore s2Step142EntryFAfter s2Step142EntryGvAfter
    s2Step142EntryFRow s2Step142EntryFOut 199 s2Step142EntryFFresh [(s2Step142EntryGRow,199),(s2Step142EntryFvRow,85),(s2Step142EntryGvRow,85)] [s2Step142EntryGFresh,s2Step142EntryFvFresh,s2Step142EntryGvFresh] [s2Step142EntryGOut,s2Step142EntryFvOut,s2Step142EntryGvOut]
    (growRow 768 s2Step142EntryFFresh) ((growRow 769 s2Step142EntryGFresh ++ (growRow 770 s2Step142EntryFvFresh ++ (growRow 771 s2Step142EntryGvFresh ++ [])))) s2Step142EntryF_Incoming s2Step142EntryF_checked h1 s2Step142EntryF_Outgoing
  exact h0

private theorem s2Step142EntryBank_checked : compileHmrBankResizeLog .entry s2Step142EntryFBefore ⟨s2Step142EntryFRow,s2Step142EntryGRow,s2Step142EntryFvRow,s2Step142EntryGvRow⟩ ⟨199,199,85,85⟩ [s2Step142EntryFFresh,s2Step142EntryGFresh,s2Step142EntryFvFresh,s2Step142EntryGvFresh]=
    some (s2Step142EntryGvAfter,⟨s2Step142EntryFOut,s2Step142EntryGOut,s2Step142EntryFvOut,s2Step142EntryGvOut⟩,(growRow 768 s2Step142EntryFFresh ++ (growRow 769 s2Step142EntryGFresh ++ (growRow 770 s2Step142EntryFvFresh ++ (growRow 771 s2Step142EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step142EntryBank_rows]
  rfl

private def s2Step142ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<710) ∨ (711≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142ExitFBefore : Arena := s2Step142ExitGAfter

private def s2Step142ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 842],768⟩

private def s2Step142ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 783],770⟩

private def s2Step142ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 778, 849],769⟩

private def s2Step142ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 841],771⟩

private theorem s2Step142ExitBank_incomingDistinct : ([s2Step142ExitGRow,s2Step142ExitFRow,s2Step142ExitFvRow,s2Step142ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142ExitF_Incoming : rowsOwned s2Step142ExitFBefore [s2Step142ExitFRow,s2Step142ExitFvRow,s2Step142ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step142ExitGRow,s2Step142ExitFRow,s2Step142ExitFvRow,s2Step142ExitGvRow] 1 s2Step142ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step142ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142ExitBank_outgoingOwned : rowsOwned s2Step142ExitGvAfter [s2Step142ExitGOut,s2Step142ExitFOut,s2Step142ExitFvOut,s2Step142ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step142ExitGvAfter (fun q => (0≤q ∧ q<710) ∨ (711≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142ExitF_Outgoing : rowsOwned s2Step142ExitGvAfter [s2Step142ExitFOut,s2Step142ExitFvOut,s2Step142ExitGvOut] :=
  hmrRows_owned_drop s2Step142ExitGvAfter [s2Step142ExitGOut,s2Step142ExitFOut,s2Step142ExitFvOut,s2Step142ExitGvOut] 1 s2Step142ExitBank_outgoingOwned

private theorem s2Step142ExitF_distinct : (s2Step142ExitFRow.sign::s2Step142ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142ExitF_owned : (s2Step142ExitFRow.sign::s2Step142ExitFRow.payload).toFinset⊆s2Step142ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step142ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142ExitF_retired : s2Step142ExitFBefore.retireSet s2Step142ExitFExtra.toFinset=s2Step142ExitFAfter := by
  unfold Arena.retireSet s2Step142ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step142ExitFBefore,s2Step142ExitGAfter,s2Step142ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step142ExitF_checked : planRowResizeLog s2Step142ExitFBefore s2Step142ExitFRow 198 []=
    some (s2Step142ExitFAfter,s2Step142ExitFOut,shrinkRow 768 s2Step142ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step142ExitFBefore s2Step142ExitFRow 198 s2Step142ExitF_distinct s2Step142ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step142ExitFRow.payload.take 198) s2Step142ExitFRow.sign=s2Step142ExitFOut := by decide +kernel
  have hi : s2Step142ExitFRow.payload.drop 198=s2Step142ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step142ExitF_retired] at result
  exact result

private def s2Step142ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<710) ∨ (711≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142ExitFvBefore : Arena := s2Step142ExitFAfter

private theorem s2Step142ExitFv_Incoming : rowsOwned s2Step142ExitFvBefore [s2Step142ExitFvRow,s2Step142ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step142ExitGRow,s2Step142ExitFRow,s2Step142ExitFvRow,s2Step142ExitGvRow] 2 s2Step142ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step142ExitFvBefore (fun q => (0≤q ∧ q<710) ∨ (711≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142ExitFv_Outgoing : rowsOwned s2Step142ExitGvAfter [s2Step142ExitFvOut,s2Step142ExitGvOut] :=
  hmrRows_owned_drop s2Step142ExitGvAfter [s2Step142ExitGOut,s2Step142ExitFOut,s2Step142ExitFvOut,s2Step142ExitGvOut] 2 s2Step142ExitBank_outgoingOwned

private theorem s2Step142ExitFv_distinct : (s2Step142ExitFvRow.sign::s2Step142ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142ExitFv_owned : (s2Step142ExitFvRow.sign::s2Step142ExitFvRow.payload).toFinset⊆s2Step142ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step142ExitFvBefore (fun q => (0≤q ∧ q<710) ∨ (711≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142ExitFv_retired : s2Step142ExitFvBefore.retireSet s2Step142ExitFvExtra.toFinset=s2Step142ExitFvAfter := by
  unfold Arena.retireSet s2Step142ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step142ExitFvBefore,s2Step142ExitFAfter,s2Step142ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step142ExitFv_checked : planRowResizeLog s2Step142ExitFvBefore s2Step142ExitFvRow 85 []=
    some (s2Step142ExitFvAfter,s2Step142ExitFvOut,shrinkRow 770 s2Step142ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step142ExitFvBefore s2Step142ExitFvRow 85 s2Step142ExitFv_distinct s2Step142ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step142ExitFvRow.payload.take 85) s2Step142ExitFvRow.sign=s2Step142ExitFvOut := by decide +kernel
  have hi : s2Step142ExitFvRow.payload.drop 85=s2Step142ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step142ExitFv_retired] at result
  exact result

private def s2Step142ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step142ExitG_Incoming : rowsOwned s2Step142ExitGBefore [s2Step142ExitGRow,s2Step142ExitFRow,s2Step142ExitFvRow,s2Step142ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step142ExitGRow,s2Step142ExitFRow,s2Step142ExitFvRow,s2Step142ExitGvRow] 0 s2Step142ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step142ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142ExitG_Outgoing : rowsOwned s2Step142ExitGvAfter [s2Step142ExitGOut,s2Step142ExitFOut,s2Step142ExitFvOut,s2Step142ExitGvOut] :=
  hmrRows_owned_drop s2Step142ExitGvAfter [s2Step142ExitGOut,s2Step142ExitFOut,s2Step142ExitFvOut,s2Step142ExitGvOut] 0 s2Step142ExitBank_outgoingOwned

private theorem s2Step142ExitG_distinct : (s2Step142ExitGRow.sign::s2Step142ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142ExitG_owned : (s2Step142ExitGRow.sign::s2Step142ExitGRow.payload).toFinset⊆s2Step142ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step142ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142ExitG_retired : s2Step142ExitGBefore.retireSet s2Step142ExitGExtra.toFinset=s2Step142ExitGAfter := by
  unfold Arena.retireSet s2Step142ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step142ExitGBefore,s2Step142ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step142ExitG_checked : planRowResizeLog s2Step142ExitGBefore s2Step142ExitGRow 198 []=
    some (s2Step142ExitGAfter,s2Step142ExitGOut,shrinkRow 769 s2Step142ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step142ExitGBefore s2Step142ExitGRow 198 s2Step142ExitG_distinct s2Step142ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step142ExitGRow.payload.take 198) s2Step142ExitGRow.sign=s2Step142ExitGOut := by decide +kernel
  have hi : s2Step142ExitGRow.payload.drop 198=s2Step142ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step142ExitG_retired] at result
  exact result

private def s2Step142ExitGvBefore : Arena := s2Step142ExitFvAfter

private theorem s2Step142ExitGv_Incoming : rowsOwned s2Step142ExitGvBefore [s2Step142ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step142ExitGRow,s2Step142ExitFRow,s2Step142ExitFvRow,s2Step142ExitGvRow] 3 s2Step142ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step142ExitGvBefore (fun q => (0≤q ∧ q<710) ∨ (711≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142ExitGv_Outgoing : rowsOwned s2Step142ExitGvAfter [s2Step142ExitGvOut] :=
  hmrRows_owned_drop s2Step142ExitGvAfter [s2Step142ExitGOut,s2Step142ExitFOut,s2Step142ExitFvOut,s2Step142ExitGvOut] 3 s2Step142ExitBank_outgoingOwned

private theorem s2Step142ExitGv_distinct : (s2Step142ExitGvRow.sign::s2Step142ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142ExitGv_owned : (s2Step142ExitGvRow.sign::s2Step142ExitGvRow.payload).toFinset⊆s2Step142ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step142ExitGvBefore (fun q => (0≤q ∧ q<710) ∨ (711≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142ExitGv_retired : s2Step142ExitGvBefore.retireSet s2Step142ExitGvExtra.toFinset=s2Step142ExitGvAfter := by
  unfold Arena.retireSet s2Step142ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step142ExitGvBefore,s2Step142ExitFvAfter,s2Step142ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step142ExitGv_checked : planRowResizeLog s2Step142ExitGvBefore s2Step142ExitGvRow 85 []=
    some (s2Step142ExitGvAfter,s2Step142ExitGvOut,shrinkRow 771 s2Step142ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step142ExitGvBefore s2Step142ExitGvRow 85 s2Step142ExitGv_distinct s2Step142ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step142ExitGvRow.payload.take 85) s2Step142ExitGvRow.sign=s2Step142ExitGvOut := by decide +kernel
  have hi : s2Step142ExitGvRow.payload.drop 85=s2Step142ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step142ExitGv_retired] at result
  exact result

private theorem s2Step142ExitBank_rows : planWindowRowsLog s2Step142ExitGBefore [(s2Step142ExitGRow,198),(s2Step142ExitFRow,198),(s2Step142ExitFvRow,85),(s2Step142ExitGvRow,85)] [[],[],[],[]]=
    some (s2Step142ExitGvAfter,[s2Step142ExitGOut,s2Step142ExitFOut,s2Step142ExitFvOut,s2Step142ExitGvOut],(shrinkRow 769 s2Step142ExitGExtra ++ (shrinkRow 768 s2Step142ExitFExtra ++ (shrinkRow 770 s2Step142ExitFvExtra ++ (shrinkRow 771 s2Step142ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step142ExitGvAfter [] []=some (s2Step142ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step142ExitGvBefore s2Step142ExitGvAfter s2Step142ExitGvAfter
    s2Step142ExitGvRow s2Step142ExitGvOut 85 [] [] [] []
    (shrinkRow 771 s2Step142ExitGvExtra) ([]) s2Step142ExitGv_Incoming s2Step142ExitGv_checked h4 s2Step142ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step142ExitFvBefore s2Step142ExitFvAfter s2Step142ExitGvAfter
    s2Step142ExitFvRow s2Step142ExitFvOut 85 [] [(s2Step142ExitGvRow,85)] [[]] [s2Step142ExitGvOut]
    (shrinkRow 770 s2Step142ExitFvExtra) ((shrinkRow 771 s2Step142ExitGvExtra ++ [])) s2Step142ExitFv_Incoming s2Step142ExitFv_checked h3 s2Step142ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step142ExitFBefore s2Step142ExitFAfter s2Step142ExitGvAfter
    s2Step142ExitFRow s2Step142ExitFOut 198 [] [(s2Step142ExitFvRow,85),(s2Step142ExitGvRow,85)] [[],[]] [s2Step142ExitFvOut,s2Step142ExitGvOut]
    (shrinkRow 768 s2Step142ExitFExtra) ((shrinkRow 770 s2Step142ExitFvExtra ++ (shrinkRow 771 s2Step142ExitGvExtra ++ []))) s2Step142ExitF_Incoming s2Step142ExitF_checked h2 s2Step142ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step142ExitGBefore s2Step142ExitGAfter s2Step142ExitGvAfter
    s2Step142ExitGRow s2Step142ExitGOut 198 [] [(s2Step142ExitFRow,198),(s2Step142ExitFvRow,85),(s2Step142ExitGvRow,85)] [[],[],[]] [s2Step142ExitFOut,s2Step142ExitFvOut,s2Step142ExitGvOut]
    (shrinkRow 769 s2Step142ExitGExtra) ((shrinkRow 768 s2Step142ExitFExtra ++ (shrinkRow 770 s2Step142ExitFvExtra ++ (shrinkRow 771 s2Step142ExitGvExtra ++ [])))) s2Step142ExitG_Incoming s2Step142ExitG_checked h1 s2Step142ExitG_Outgoing
  exact h0

private theorem s2Step142ExitBank_checked : compileHmrBankResizeLog .exit s2Step142ExitGBefore ⟨s2Step142ExitFRow,s2Step142ExitGRow,s2Step142ExitFvRow,s2Step142ExitGvRow⟩ ⟨198,198,85,85⟩ [[],[],[],[]]=
    some (s2Step142ExitGvAfter,⟨s2Step142ExitFOut,s2Step142ExitGOut,s2Step142ExitFvOut,s2Step142ExitGvOut⟩,(shrinkRow 769 s2Step142ExitGExtra ++ (shrinkRow 768 s2Step142ExitFExtra ++ (shrinkRow 770 s2Step142ExitFvExtra ++ (shrinkRow 771 s2Step142ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step142ExitBank_rows]
  rfl

private theorem s2Step142Add0_apart : Disjoint s2Step142Add0Arena.live s2Step142Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step142Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142Add0_card : s2Step142Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step142Add0_borrowed : s2Step142Add0Arena.checkBorrow (hmrHybridCount s2Step142Add0Arena s2Step142Add0B.length) s2Step142Add0Work=some s2Step142Add0During := by
  have len : s2Step142Add0Work.length=hmrHybridCount s2Step142Add0Arena s2Step142Add0B.length := by
    rw [hmrHybridCount,s2Step142Add0_card]
    decide +kernel
  have nd : s2Step142Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step142Add0Arena s2Step142Add0During s2Step142Add0Work.toFinset s2Step142Add0_bounded s2Step142Add0_apart rfl

private theorem s2Step142Add0_distinct : (790::845::815::(s2Step142Add0A++s2Step142Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142Add0_owned : (790::845::815::(s2Step142Add0A++s2Step142Add0B)).toFinset⊆s2Step142Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step142Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142Add0_checked : compileHmrHybridCinLog s2Step142Add0Arena 845 790 815 s2Step142Add0A s2Step142Add0B s2Step142Add0Work=some s2Step142Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step142Add0Arena s2Step142Add0During 845 790 815 s2Step142Add0A s2Step142Add0B s2Step142Add0Work
    (by decide +kernel) (by decide +kernel) s2Step142Add0_distinct
    (fun q hq => s2Step142Add0_owned (List.mem_toFinset.mpr hq)) s2Step142Add0_borrowed

private theorem s2Step142Add1_apart : Disjoint s2Step142Add1Arena.live s2Step142Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step142Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142Add1_card : s2Step142Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step142Add1_borrowed : s2Step142Add1Arena.checkBorrow (hmrHybridCount s2Step142Add1Arena s2Step142Add1B.length) s2Step142Add1Work=some s2Step142Add1During := by
  have len : s2Step142Add1Work.length=hmrHybridCount s2Step142Add1Arena s2Step142Add1B.length := by
    rw [hmrHybridCount,s2Step142Add1_card]
    decide +kernel
  have nd : s2Step142Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step142Add1Arena s2Step142Add1During s2Step142Add1Work.toFinset s2Step142Add1_bounded s2Step142Add1_apart rfl

private theorem s2Step142Add1_distinct : (790::845::815::(s2Step142Add1A++s2Step142Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142Add1_owned : (790::845::815::(s2Step142Add1A++s2Step142Add1B)).toFinset⊆s2Step142Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step142Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142Add1_checked : compileHmrHybridCinLog s2Step142Add1Arena 845 790 815 s2Step142Add1A s2Step142Add1B s2Step142Add1Work=some s2Step142Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step142Add1Arena s2Step142Add1During 845 790 815 s2Step142Add1A s2Step142Add1B s2Step142Add1Work
    (by decide +kernel) (by decide +kernel) s2Step142Add1_distinct
    (fun q hq => s2Step142Add1_owned (List.mem_toFinset.mpr hq)) s2Step142Add1_borrowed

private theorem s2Step142F4_apart : Disjoint (s2Step142Add0A++s2Step142Add0B).toFinset (s2Step142Add1A++s2Step142Add1B).toFinset := by
  have nd : ((s2Step142Add0A++s2Step142Add0B)++(s2Step142Add1A++s2Step142Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step142F4_carry : s2Step142F4FlagArena.checkBorrow 1 [815]=some s2Step142Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step142F4FlagArena,s2Step142HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step142F4FlagArena,s2Step142HeadFvAfter,s2Step142Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step142F4_distinct : (788::845::790::815::((s2Step142Add0A++s2Step142Add1A)++(s2Step142Add0B++s2Step142Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142F4_flag : s2Step142HeadFvAfter.checkBorrow 1 [790]=some s2Step142F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step142HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step142F4_owned : (788::845::((s2Step142Add0A++s2Step142Add1A)++(s2Step142Add0B++s2Step142Add1B))).toFinset⊆s2Step142HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step142HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142F4_checked : compileHmrHybridF4Log s2Step142HeadFvAfter 788 845 s2Step142Add0A s2Step142Add0B s2Step142Add1A s2Step142Add1B [790] [815] s2Step142Add0Work s2Step142Add1Work=some s2Step142F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step142HeadFvAfter s2Step142F4FlagArena s2Step142Add0Arena s2Step142Add0During s2Step142Add1During 788 845
    s2Step142Add0A s2Step142Add0B s2Step142Add1A s2Step142Add1B [790] [815] s2Step142Add0Work s2Step142Add1Work
    (fun q hq => s2Step142F4_owned (List.mem_toFinset.mpr hq)) s2Step142F4_flag s2Step142F4_carry
    s2Step142F4_distinct s2Step142F4_apart s2Step142Add0_checked s2Step142Add1_checked

private theorem s2Step142Front_branch : s2Step142FrontSigmaArena.checkBorrow 1 [845]=some s2Step142HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step142FrontSigmaArena,s2Step142EntryGvAfter,s2Step142EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step142FrontSigmaArena,s2Step142EntryGvAfter,s2Step142EntryGAfter,s2Step142HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step142Front_entry : HmrFrontEntryValid s2Step142EntryFBefore s2Step142FrontBank 199 85 ⟨198,198,85,85⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step142FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step142EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step142EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (789≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step142FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step142Front_sigma : s2Step142EntryGvAfter.checkBorrow 1 [788]=some s2Step142FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step142EntryGvAfter,s2Step142EntryGAfter,arenaWires]
  · rfl

private def s2Step142HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142HeadFBefore : Arena := s2Step142HeadGAfter

private def s2Step142HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710],768⟩

private def s2Step142HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩

private def s2Step142HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 778],769⟩

private def s2Step142HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩

private theorem s2Step142HeadBank_incomingDistinct : ([s2Step142HeadGRow,s2Step142HeadFRow,s2Step142HeadGvRow,s2Step142HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142HeadF_Incoming : rowsOwned s2Step142HeadFBefore [s2Step142HeadFRow,s2Step142HeadGvRow,s2Step142HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step142HeadGRow,s2Step142HeadFRow,s2Step142HeadGvRow,s2Step142HeadFvRow] 1 s2Step142HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step142HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142HeadBank_outgoingOwned : rowsOwned s2Step142HeadFvAfter [s2Step142HeadGOut,s2Step142HeadFOut,s2Step142HeadGvOut,s2Step142HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step142HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142HeadF_Outgoing : rowsOwned s2Step142HeadFvAfter [s2Step142HeadFOut,s2Step142HeadGvOut,s2Step142HeadFvOut] :=
  hmrRows_owned_drop s2Step142HeadFvAfter [s2Step142HeadGOut,s2Step142HeadFOut,s2Step142HeadGvOut,s2Step142HeadFvOut] 1 s2Step142HeadBank_outgoingOwned

private theorem s2Step142HeadF_distinct : (s2Step142HeadFRow.sign::s2Step142HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142HeadF_owned : (s2Step142HeadFRow.sign::s2Step142HeadFRow.payload).toFinset⊆s2Step142HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step142HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142HeadF_reserved : s2Step142HeadFBefore.reserve s2Step142HeadFFresh.toFinset=some s2Step142HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step142HeadFFresh,arenaWires]
  · norm_num [s2Step142HeadFBefore,s2Step142HeadGAfter,s2Step142HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step142HeadFAfter,s2Step142HeadFBefore,s2Step142HeadGAfter,s2Step142HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step142HeadF_checked : planRowResizeLog s2Step142HeadFBefore s2Step142HeadFRow 200 s2Step142HeadFFresh=
    some (s2Step142HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 842],768⟩,growRow 768 s2Step142HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step142HeadFBefore s2Step142HeadFAfter s2Step142HeadFRow 200 s2Step142HeadFFresh
    s2Step142HeadF_distinct s2Step142HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step142HeadF_reserved
  have rowEq : WindowRow.mk (s2Step142HeadFRow.payload++s2Step142HeadFFresh) s2Step142HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 842],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step142HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step142HeadFvBefore : Arena := s2Step142HeadGvAfter

private theorem s2Step142HeadFv_Incoming : rowsOwned s2Step142HeadFvBefore [s2Step142HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step142HeadGRow,s2Step142HeadFRow,s2Step142HeadGvRow,s2Step142HeadFvRow] 3 s2Step142HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step142HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142HeadFv_Outgoing : rowsOwned s2Step142HeadFvAfter [s2Step142HeadFvOut] :=
  hmrRows_owned_drop s2Step142HeadFvAfter [s2Step142HeadGOut,s2Step142HeadFOut,s2Step142HeadGvOut,s2Step142HeadFvOut] 3 s2Step142HeadBank_outgoingOwned

private theorem s2Step142HeadFv_distinct : (s2Step142HeadFvRow.sign::s2Step142HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142HeadFv_owned : (s2Step142HeadFvRow.sign::s2Step142HeadFvRow.payload).toFinset⊆s2Step142HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step142HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142HeadFv_reserved : s2Step142HeadFvBefore.reserve s2Step142HeadFvFresh.toFinset=some s2Step142HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step142HeadFvFresh,arenaWires]
  · norm_num [s2Step142HeadFvBefore,s2Step142HeadGvAfter,s2Step142HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step142HeadFvAfter,s2Step142HeadFvBefore,s2Step142HeadGvAfter,s2Step142HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step142HeadFv_checked : planRowResizeLog s2Step142HeadFvBefore s2Step142HeadFvRow 86 s2Step142HeadFvFresh=
    some (s2Step142HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 783],770⟩,growRow 770 s2Step142HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step142HeadFvBefore s2Step142HeadFvAfter s2Step142HeadFvRow 86 s2Step142HeadFvFresh
    s2Step142HeadFv_distinct s2Step142HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step142HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step142HeadFvRow.payload++s2Step142HeadFvFresh) s2Step142HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step142HeadG_Incoming : rowsOwned s2Step142HeadGBefore [s2Step142HeadGRow,s2Step142HeadFRow,s2Step142HeadGvRow,s2Step142HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step142HeadGRow,s2Step142HeadFRow,s2Step142HeadGvRow,s2Step142HeadFvRow] 0 s2Step142HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step142HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142HeadG_Outgoing : rowsOwned s2Step142HeadFvAfter [s2Step142HeadGOut,s2Step142HeadFOut,s2Step142HeadGvOut,s2Step142HeadFvOut] :=
  hmrRows_owned_drop s2Step142HeadFvAfter [s2Step142HeadGOut,s2Step142HeadFOut,s2Step142HeadGvOut,s2Step142HeadFvOut] 0 s2Step142HeadBank_outgoingOwned

private theorem s2Step142HeadG_distinct : (s2Step142HeadGRow.sign::s2Step142HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142HeadG_owned : (s2Step142HeadGRow.sign::s2Step142HeadGRow.payload).toFinset⊆s2Step142HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step142HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142HeadG_reserved : s2Step142HeadGBefore.reserve s2Step142HeadGFresh.toFinset=some s2Step142HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step142HeadGFresh,arenaWires]
  · norm_num [s2Step142HeadGBefore,s2Step142HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step142HeadGAfter,s2Step142HeadGBefore,s2Step142HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step142HeadG_checked : planRowResizeLog s2Step142HeadGBefore s2Step142HeadGRow 200 s2Step142HeadGFresh=
    some (s2Step142HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 778, 849],769⟩,growRow 769 s2Step142HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step142HeadGBefore s2Step142HeadGAfter s2Step142HeadGRow 200 s2Step142HeadGFresh
    s2Step142HeadG_distinct s2Step142HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step142HeadG_reserved
  have rowEq : WindowRow.mk (s2Step142HeadGRow.payload++s2Step142HeadGFresh) s2Step142HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 778, 849],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step142HeadGvBefore : Arena := s2Step142HeadFAfter

private theorem s2Step142HeadGv_Incoming : rowsOwned s2Step142HeadGvBefore [s2Step142HeadGvRow,s2Step142HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step142HeadGRow,s2Step142HeadFRow,s2Step142HeadGvRow,s2Step142HeadFvRow] 2 s2Step142HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step142HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step142HeadGv_Outgoing : rowsOwned s2Step142HeadFvAfter [s2Step142HeadGvOut,s2Step142HeadFvOut] :=
  hmrRows_owned_drop s2Step142HeadFvAfter [s2Step142HeadGOut,s2Step142HeadFOut,s2Step142HeadGvOut,s2Step142HeadFvOut] 2 s2Step142HeadBank_outgoingOwned

private theorem s2Step142HeadGv_distinct : (s2Step142HeadGvRow.sign::s2Step142HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step142HeadGv_owned : (s2Step142HeadGvRow.sign::s2Step142HeadGvRow.payload).toFinset⊆s2Step142HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step142HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step142HeadGv_reserved : s2Step142HeadGvBefore.reserve s2Step142HeadGvFresh.toFinset=some s2Step142HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step142HeadGvFresh,arenaWires]
  · norm_num [s2Step142HeadGvBefore,s2Step142HeadFAfter,s2Step142HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step142HeadGvAfter,s2Step142HeadGvBefore,s2Step142HeadFAfter,s2Step142HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step142HeadGv_checked : planRowResizeLog s2Step142HeadGvBefore s2Step142HeadGvRow 86 s2Step142HeadGvFresh=
    some (s2Step142HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 841],771⟩,growRow 771 s2Step142HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step142HeadGvBefore s2Step142HeadGvAfter s2Step142HeadGvRow 86 s2Step142HeadGvFresh
    s2Step142HeadGv_distinct s2Step142HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step142HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step142HeadGvRow.payload++s2Step142HeadGvFresh) s2Step142HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 841],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step142HeadBank_rows : planWindowRowsLog s2Step142HeadGBefore [(s2Step142HeadGRow,200),(s2Step142HeadFRow,200),(s2Step142HeadGvRow,86),(s2Step142HeadFvRow,86)] [s2Step142HeadGFresh,s2Step142HeadFFresh,s2Step142HeadGvFresh,s2Step142HeadFvFresh]=
    some (s2Step142HeadFvAfter,[s2Step142HeadGOut,s2Step142HeadFOut,s2Step142HeadGvOut,s2Step142HeadFvOut],(growRow 769 s2Step142HeadGFresh ++ (growRow 768 s2Step142HeadFFresh ++ (growRow 771 s2Step142HeadGvFresh ++ (growRow 770 s2Step142HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step142HeadFvAfter [] []=some (s2Step142HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step142HeadFvBefore s2Step142HeadFvAfter s2Step142HeadFvAfter
    s2Step142HeadFvRow s2Step142HeadFvOut 86 s2Step142HeadFvFresh [] [] []
    (growRow 770 s2Step142HeadFvFresh) ([]) s2Step142HeadFv_Incoming s2Step142HeadFv_checked h4 s2Step142HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step142HeadGvBefore s2Step142HeadGvAfter s2Step142HeadFvAfter
    s2Step142HeadGvRow s2Step142HeadGvOut 86 s2Step142HeadGvFresh [(s2Step142HeadFvRow,86)] [s2Step142HeadFvFresh] [s2Step142HeadFvOut]
    (growRow 771 s2Step142HeadGvFresh) ((growRow 770 s2Step142HeadFvFresh ++ [])) s2Step142HeadGv_Incoming s2Step142HeadGv_checked h3 s2Step142HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step142HeadFBefore s2Step142HeadFAfter s2Step142HeadFvAfter
    s2Step142HeadFRow s2Step142HeadFOut 200 s2Step142HeadFFresh [(s2Step142HeadGvRow,86),(s2Step142HeadFvRow,86)] [s2Step142HeadGvFresh,s2Step142HeadFvFresh] [s2Step142HeadGvOut,s2Step142HeadFvOut]
    (growRow 768 s2Step142HeadFFresh) ((growRow 771 s2Step142HeadGvFresh ++ (growRow 770 s2Step142HeadFvFresh ++ []))) s2Step142HeadF_Incoming s2Step142HeadF_checked h2 s2Step142HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step142HeadGBefore s2Step142HeadGAfter s2Step142HeadFvAfter
    s2Step142HeadGRow s2Step142HeadGOut 200 s2Step142HeadGFresh [(s2Step142HeadFRow,200),(s2Step142HeadGvRow,86),(s2Step142HeadFvRow,86)] [s2Step142HeadFFresh,s2Step142HeadGvFresh,s2Step142HeadFvFresh] [s2Step142HeadFOut,s2Step142HeadGvOut,s2Step142HeadFvOut]
    (growRow 769 s2Step142HeadGFresh) ((growRow 768 s2Step142HeadFFresh ++ (growRow 771 s2Step142HeadGvFresh ++ (growRow 770 s2Step142HeadFvFresh ++ [])))) s2Step142HeadG_Incoming s2Step142HeadG_checked h1 s2Step142HeadG_Outgoing
  exact h0

private theorem s2Step142HeadBank_checked : compileHmrBankResizeLog .headroom s2Step142HeadGBefore ⟨s2Step142HeadFRow,s2Step142HeadGRow,s2Step142HeadFvRow,s2Step142HeadGvRow⟩ ⟨200,200,86,86⟩ [s2Step142HeadGFresh,s2Step142HeadFFresh,s2Step142HeadGvFresh,s2Step142HeadFvFresh]=
    some (s2Step142HeadFvAfter,⟨s2Step142HeadFOut,s2Step142HeadGOut,s2Step142HeadFvOut,s2Step142HeadGvOut⟩,(growRow 769 s2Step142HeadGFresh ++ (growRow 768 s2Step142HeadFFresh ++ (growRow 771 s2Step142HeadGvFresh ++ (growRow 770 s2Step142HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step142HeadBank_rows]
  rfl

private theorem s2Step142Front_checked : compileHmrSourceFrontLog s2Step142EntryFBefore s2Step142FrontBank 199 85 ⟨198,198,85,85⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step142FrontLog=some s2Step142FrontPlan := by
  have pairEq : s2Step142FrontPair=⟨s2Step142HeadFRow,s2Step142HeadGRow,s2Step142HeadFvRow,s2Step142HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step142FrontHead=⟨s2Step142ExitFRow,s2Step142ExitGRow,s2Step142ExitFvRow,s2Step142ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step142Add0A=s2Step142FrontHead.f.wires := by decide +kernel
  have gEq : s2Step142Add0B=s2Step142FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step142Add1A=s2Step142FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step142Add1B=s2Step142FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step142EntryFBefore s2Step142FrontBank 199 85 ⟨198,198,85,85⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step142FrontLog s2Step142FrontPlan
  · exact s2Step142Front_entry
  · exact s2Step142EntryBank_checked
  · exact s2Step142Front_sigma
  · rfl
  · exact s2Step142Front_branch
  · rfl
  · simpa only [s2Step142FrontPlan,pairEq] using s2Step142HeadBank_checked
  · simpa only [s2Step142FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step142F4_checked
  · exact s2Step142Counter_checked
  · rfl
  · simpa only [s2Step142FrontPlan,headEq] using s2Step142ExitBank_checked

private theorem s2Step142Complete_explicit_checked : compileHmrEarlyStepLog s2Step142EntryFBefore s2Step142FrontBank 199 85 ⟨198,198,85,85⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step142CompleteLog=some s2Step142CompletePlan := by
  let Q := s2Step142EarlyControlPlan
  have hq := s2Step142EarlyControl_plan_checked
  have fv1 : s2Step142CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step142CompleteOut.fv.payload[2]?.getD s2Step142CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step142CompleteOut.fv.payload[3]?.getD s2Step142CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step142CompleteOut.fv.payload[4]?.getD s2Step142CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step142EntryFBefore s2Step142EarlyControlArena s2Step142FrontBank 199 85 ⟨198,198,85,85⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step142CompleteLog s2Step142FrontPlan Q
    s2Step142Front_checked s2Step142Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step142Complete_owned s2Step142Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step142EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 788 s2Step142CompleteOut.fv.second (s2Step142CompleteOut.fv.payload[2]?.getD s2Step142CompleteOut.fv.sign) (s2Step142CompleteOut.fv.payload[3]?.getD s2Step142CompleteOut.fv.sign) (s2Step142CompleteOut.fv.payload[4]?.getD s2Step142CompleteOut.fv.sign) 845 42 s2Step142EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep142Arena : Arena := s2Step142EntryFBefore
def s2PrivateStep142Bank : WindowBank := s2Step142FrontBank
def s2PrivateStep142Spec : HmrSourceWalkStepLog := ⟨199,85,⟨198,198,85,85⟩,42,.early s2Step142CompleteLog⟩
def s2PrivateStep142Plan : HmrSourceStepPlan := .early s2Step142CompletePlan
theorem s2PrivateStep142_source : s2PrivateStep142Spec=s2ObservedLogs128[14] := rfl
theorem s2PrivateStep142_checked : compileHmrSourceStepLog s2PrivateStep142Arena s2PrivateStep142Bank
    s2PrivateStep142Spec.fgWidth s2PrivateStep142Spec.vWidth s2PrivateStep142Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 142 s2PrivateStep142Spec.need none s2PrivateStep142Spec.log=some s2PrivateStep142Plan := by
  change compileHmrSourceStepLog s2Step142EntryFBefore s2Step142FrontBank 199 85 ⟨198,198,85,85⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 142 42 none (.early s2Step142CompleteLog)=some (.early s2Step142CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 142<498)]
  rw [s2Step142Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
