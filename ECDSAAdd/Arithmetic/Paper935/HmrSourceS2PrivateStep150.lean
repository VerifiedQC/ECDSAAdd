import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep148
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

private def s2Step150CompleteMoves : List (Wire × Wire) := [(839,193),(791,706)]

private def s2Step150EarlyControlLog : HmrEarlyControlLog := ⟨[791, 839, 780, 849, 779],[796],[790],[815, 867, 877, 879, 882, 885],[]⟩

private def s2Step150FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [779], [], [845]],[[796], [849], [780], [783]],[[], [], [], []]⟩,[778],[797],[790],[815],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877]⟩

private def s2Step150CompleteLog : HmrEarlyStepLog := ⟨s2Step150FrontLog,s2Step150CompleteMoves,s2Step150EarlyControlLog⟩

private def s2Step150ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705],768⟩

private def s2Step150ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783],770⟩

private def s2Step150ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192],769⟩

private def s2Step150ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845],771⟩

private def s2Step150FrontOut : WindowBank := ⟨s2Step150ExitFOut,s2Step150ExitGOut,s2Step150ExitFvOut,s2Step150ExitGvOut⟩

private def s2Step150CompleteOut : WindowBank := s2Step150FrontOut.repacked s2Step150CompleteMoves

private def s2Step150EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step150EarlyControlPositiveArena,[796],s2Step150EarlyControlEqualityArena,[790],⟨⟨778,false⟩,[⟨⟨796,false⟩,790⟩]⟩⟩

private def s2Step150EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,791⟩,⟨⟨774,false⟩,839⟩,⟨⟨775,false⟩,780⟩,⟨⟨776,false⟩,849⟩,⟨⟨777,false⟩,779⟩]⟩

private def s2Step150EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step150EarlyControlZeroArena,s2Step150EarlyControlZeroPlan,s2Step150EarlyControlClassPlan,s2Step150EarlyControlFlagArena,s2Step150EarlyControlFittedArena,s2Step150EarlyControlHistoryArena,s2Step150EarlyControlSigmaArena,s2Step150EarlyControlOutputArena,s2Step150EarlyControlLog⟩

private def s2Step150CounterWork : List Wire := [790, 815, 867, 877]

private theorem s2Step150Counter_bounded : s2Step150CounterWork.toFinset⊆arenaWires := by norm_num [s2Step150CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step150HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150CounterDuring : Arena := ⟨s2Step150HeadFvAfter.live∪s2Step150CounterWork.toFinset,Finset.union_subset s2Step150HeadFvAfter.bounded s2Step150Counter_bounded⟩

private def s2Step150EntryFFresh : List Wire := []

private def s2Step150EntryFvFresh : List Wire := []

private def s2Step150EntryGFresh : List Wire := [779]

private def s2Step150EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150EntryGvFresh : List Wire := [845]

private def s2Step150ExitFExtra : List Wire := [706, 849]

private def s2Step150ExitGExtra : List Wire := [193, 779, 796]

private def s2Step150ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<193) ∨ (194≤q ∧ q<706) ∨ (707≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150ExitGvExtra : List Wire := [780]

private def s2Step150Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150Add0Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step150Add0_bounded : s2Step150Add0Work.toFinset⊆arenaWires := by
  have h : s2Step150Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step150Add0During : Arena := ⟨s2Step150Add0Arena.live∪s2Step150Add0Work.toFinset,Finset.union_subset s2Step150Add0Arena.bounded s2Step150Add0_bounded⟩

private def s2Step150Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150Add1Work : List Wire := [867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step150Add1_bounded : s2Step150Add1Work.toFinset⊆arenaWires := by
  have h : s2Step150Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step150Add1During : Arena := ⟨s2Step150Add1Arena.live∪s2Step150Add1Work.toFinset,Finset.union_subset s2Step150Add1Arena.bounded s2Step150Add1_bounded⟩

private def s2Step150F4FlagArena : Arena := ⟨s2Step150HeadFvAfter.live∪{790},Finset.union_subset s2Step150HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step150F4Plan : HmrHybridF4Plan := ⟨s2Step150F4FlagArena,[790],s2Step150Add0Arena,[815],s2Step150Add0During,s2Step150Add0Work,s2Step150Add1During,s2Step150Add1Work⟩

private def s2Step150HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 849],768⟩

private def s2Step150HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783],770⟩

private def s2Step150HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 779, 796],769⟩

private def s2Step150HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 780],771⟩

private def s2Step150FrontHead : WindowBank := ⟨s2Step150HeadFOut,s2Step150HeadGOut,s2Step150HeadFvOut,s2Step150HeadGvOut⟩

private def s2Step150EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706],768⟩

private def s2Step150EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844],770⟩

private def s2Step150EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 779],769⟩

private def s2Step150EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845],771⟩

private def s2Step150FrontPair : WindowBank := ⟨s2Step150EntryFOut,s2Step150EntryGOut,s2Step150EntryFvOut,s2Step150EntryGvOut⟩

private def s2Step150FrontSigmaArena : Arena := ⟨s2Step150EntryGvAfter.live∪{778},Finset.union_subset s2Step150EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step150HeadFFresh : List Wire := [849]

private def s2Step150HeadFvFresh : List Wire := [783]

private def s2Step150HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150HeadGFresh : List Wire := [796]

private def s2Step150HeadGvFresh : List Wire := [780]

private def s2Step150FrontPlan : HmrSourceFront := ⟨s2Step150EntryGvAfter,s2Step150FrontPair,(growRow 768 s2Step150EntryFFresh ++ (growRow 769 s2Step150EntryGFresh ++ (growRow 770 s2Step150EntryFvFresh ++ (growRow 771 s2Step150EntryGvFresh ++ [])))),s2Step150FrontSigmaArena,[778],s2Step150HeadGBefore,[797],
  s2Step150HeadFvAfter,s2Step150FrontHead,(growRow 769 s2Step150HeadGFresh ++ (growRow 768 s2Step150HeadFFresh ++ (growRow 771 s2Step150HeadGvFresh ++ (growRow 770 s2Step150HeadFvFresh ++ [])))),s2Step150F4Plan,s2Step150CounterDuring,s2Step150CounterWork,s2Step150ExitGvAfter,s2Step150FrontOut,(shrinkRow 769 s2Step150ExitGExtra ++ (shrinkRow 768 s2Step150ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step150ExitGvExtra ++ []))))⟩

private def s2Step150CompletePlan : HmrEarlyStepPlan := ⟨s2Step150FrontPlan,s2Step150EarlyControlArena,s2Step150EarlyControlPlan,s2Step150CompleteMoves⟩

private theorem s2Step150Complete_apart : List.Disjoint (s2Step150CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [778, 797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step150CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[778, 797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step150Complete_owned : (s2Step150CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step150EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step150EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step150CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,706),(707,779),(781,790),(791,796),(797,815),(816,839),(840,849),(850,867),(868,877),(878,879),(880,882),(883,885),(886,888),(889,890)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step150CompleteRelocationMove0Borrowed : Arena := ⟨s2Step150ExitGvAfter.live∪{193},Finset.union_subset s2Step150ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step150CompleteRelocationMove1Borrowed : Arena := ⟨s2Step150CompleteRelocationMove0After.live∪{706},Finset.union_subset s2Step150CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step150CompleteRelocation_move0_owned : 839∈s2Step150ExitGvAfter.live := by norm_num [s2Step150ExitGvAfter,arenaWires]

private theorem s2Step150CompleteRelocation_move0_reserve : s2Step150ExitGvAfter.reserve {193}=some s2Step150CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step150ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step150CompleteRelocation_move0_retire : s2Step150CompleteRelocationMove0Borrowed.retireSet {839}=s2Step150CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step150CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step150CompleteRelocationMove0Borrowed,s2Step150ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step150CompleteRelocation_move1_owned : 791∈s2Step150CompleteRelocationMove0After.live := by norm_num [s2Step150CompleteRelocationMove0After,arenaWires]

private theorem s2Step150CompleteRelocation_move1_reserve : s2Step150CompleteRelocationMove0After.reserve {706}=some s2Step150CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step150CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step150CompleteRelocation_move1_retire : s2Step150CompleteRelocationMove1Borrowed.retireSet {791}=s2Step150EarlyControlArena := by
  unfold Arena.retireSet s2Step150EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step150CompleteRelocationMove1Borrowed,s2Step150CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step150CompleteRelocation_checked : s2Step150ExitGvAfter.checkRepack [(839,193),(791,706)]=some s2Step150EarlyControlArena := by
  have tail2 : s2Step150EarlyControlArena.checkRepack []=some s2Step150EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step150CompleteRelocationMove0After s2Step150CompleteRelocationMove1Borrowed s2Step150EarlyControlArena s2Step150EarlyControlArena 791 706 []
    s2Step150CompleteRelocation_move1_owned s2Step150CompleteRelocation_move1_reserve s2Step150CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step150ExitGvAfter s2Step150CompleteRelocationMove0Borrowed s2Step150CompleteRelocationMove0After s2Step150EarlyControlArena 839 193 [(791,706)]
    s2Step150CompleteRelocation_move0_owned s2Step150CompleteRelocation_move0_reserve s2Step150CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step150Complete_repack : s2Step150ExitGvAfter.checkRepack s2Step150CompleteMoves=some s2Step150EarlyControlArena := by
  simpa only [s2Step150CompleteMoves] using s2Step150CompleteRelocation_checked

private theorem s2Step150EarlyControl_branchOwned : ([797] : List Wire).toFinset⊆s2Step150EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step150EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EarlyControl_branch : compileHmrBranchRetirement s2Step150EarlyControlSigmaArena 797=some s2Step150EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step150EarlyControl_branchOwned
  · ext q
    simp [s2Step150EarlyControlOutputArena,s2Step150EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step150EarlyControl_classEqualityBorrow : s2Step150EarlyControlPositiveArena.checkBorrow (([778, 796] : List Wire).length-1) s2Step150EarlyControlLog.classWork=some s2Step150EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step150EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step150EarlyControlEqualityArena,s2Step150EarlyControlPositiveArena,s2Step150EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step150EarlyControl_classEqualityOwned : ([778, 796] : List Wire).toFinset⊆s2Step150EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step150EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EarlyControl_classEquality : compileHmrEqualityLog s2Step150EarlyControlPositiveArena [778, 796] 0 s2Step150EarlyControlLog.classWork=some (s2Step150EarlyControlEqualityArena,s2Step150EarlyControlLog.classWork,s2Step150EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step150EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step150EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step150EarlyControl_classOwned : ([777, 779, 778] : List Wire).toFinset⊆s2Step150EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step150EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EarlyControl_positiveBorrow : s2Step150EarlyControlZeroArena.checkBorrow (1) s2Step150EarlyControlLog.positiveWork=some s2Step150EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step150EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step150EarlyControlPositiveArena,s2Step150EarlyControlZeroArena,s2Step150EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step150EarlyControl_class : compileHmrSourceClassLog s2Step150EarlyControlZeroArena false 777 s2Step150EarlyControlZeroPlan.top 0 778 s2Step150EarlyControlLog.positiveWork s2Step150EarlyControlLog.classWork=some s2Step150EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step150EarlyControlClassPlan s2Step150EarlyControlZeroArena false 777 s2Step150EarlyControlZeroPlan.top 0 778
  constructor
  · decide +kernel
  · exact s2Step150EarlyControl_classOwned
  · exact s2Step150EarlyControl_positiveBorrow
  · exact s2Step150EarlyControl_classEquality

private theorem s2Step150EarlyControl_entryRecordOwned : ([797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step150EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step150EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EarlyControl_entrySigmaOwned : ([778, 254] : List Wire).toFinset⊆s2Step150EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step150EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EarlyControl_fitBorrow : s2Step150EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step150EarlyControlLog.recordFresh=some s2Step150EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step150EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step150EarlyControlFittedArena,s2Step150EarlyControlFlagArena,s2Step150EarlyControlLog,arenaWires]

private theorem s2Step150EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step150EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step150EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EarlyControl_fit : compileHmrRecordGrowLog s2Step150EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step150EarlyControlLog.recordFresh=some s2Step150EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step150EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step150EarlyControl_fitBorrow

private theorem s2Step150EarlyControl_flagsBorrow : s2Step150EarlyControlEqualityArena.checkBorrow (6) s2Step150EarlyControlLog.flagWork=some s2Step150EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step150EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step150EarlyControlFlagArena,s2Step150EarlyControlEqualityArena,s2Step150EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step150EarlyControl_flagsOwned : ([790, 253, 252, 251] : List Wire).toFinset⊆s2Step150EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step150EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EarlyControl_flags : compileHmrFlagsLog s2Step150EarlyControlClassPlan.equalityArena s2Step150EarlyControlClassPlan.equality.top 253 252 251 s2Step150EarlyControlLog.flagWork=some s2Step150EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step150EarlyControl_flagsOwned⟩
  · exact s2Step150EarlyControl_flagsBorrow

private theorem s2Step150EarlyControl_historyBorrow : s2Step150EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step150EarlyControlLog.recordFresh=some s2Step150EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step150EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step150EarlyControlHistoryArena,s2Step150EarlyControlArena,s2Step150EarlyControlLog,arenaWires]

private theorem s2Step150EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step150EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step150EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EarlyControl_history : compileHmrRecordGrowLog s2Step150EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step150EarlyControlLog.recordFresh=some s2Step150EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step150EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step150EarlyControl_historyBorrow

private theorem s2Step150EarlyControl_sigmaOwned : ([254, 778] : List Wire).toFinset⊆s2Step150EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step150EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EarlyControl_sigmaReleaseOwned : ([778] : List Wire).toFinset⊆s2Step150EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step150EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EarlyControl_sigmaRelease : s2Step150EarlyControlHistoryArena.release {778} (fun _ => false)=some s2Step150EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step150EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step150EarlyControlSigmaArena,s2Step150EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step150EarlyControl_sigma : compileHmrSigmaDropLog s2Step150EarlyControlHistoryArena false 0 0 254 778 []=some s2Step150EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step150EarlyControl_sigmaOwned⟩
  · exact s2Step150EarlyControl_sigmaRelease

private theorem s2Step150EarlyControl_zeroBorrow : s2Step150EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step150EarlyControlLog.zeroWork=some s2Step150EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step150EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step150EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step150EarlyControlZeroArena,s2Step150EarlyControlArena,s2Step150EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step150EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step150EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step150EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<839) ∨ (840≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EarlyControl_zero : compileHmrEqualityLog s2Step150EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step150EarlyControlLog.zeroWork=some (s2Step150EarlyControlZeroArena,s2Step150EarlyControlLog.zeroWork,s2Step150EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step150EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step150EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step150EarlyControl_logged : s2Step150EarlyControlPlan.Logged s2Step150EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 797 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step150EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step150EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step150EarlyControl_zero
  · exact s2Step150EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step150EarlyControl_flags
  · exact s2Step150EarlyControl_fit
  · exact s2Step150EarlyControl_history
  · exact s2Step150EarlyControl_sigma
  · exact s2Step150EarlyControl_branch

private theorem s2Step150EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step150EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 797 42 s2Step150EarlyControlLog=some s2Step150EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step150EarlyControlPlan s2Step150EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 254 253 252 251 797 42 s2Step150EarlyControl_logged

private def s2Step150EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706],768⟩

private def s2Step150EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844],770⟩

private def s2Step150EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193],769⟩

private def s2Step150EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789],771⟩

private def s2Step150FrontBank : WindowBank := ⟨s2Step150EntryFRow,s2Step150EntryGRow,s2Step150EntryFvRow,s2Step150EntryGvRow⟩

private def s2Step150Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 849, 768]

private def s2Step150Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 779, 796, 769]

private def s2Step150Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783, 770]

private def s2Step150Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 780, 771]

private theorem s2Step150Counter_apart : Disjoint s2Step150HeadFvAfter.live s2Step150CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step150HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150Counter_borrowed : s2Step150HeadFvAfter.checkBorrow 4 s2Step150CounterWork=some s2Step150CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step150HeadFvAfter s2Step150CounterDuring s2Step150CounterWork.toFinset s2Step150Counter_bounded s2Step150Counter_apart rfl

private theorem s2Step150Counter_owned : (778::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step150HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step150HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150Counter_checked : compileHmrCounterStepLog s2Step150HeadFvAfter true 778 [772, 773, 774, 775, 776, 777] s2Step150CounterWork=some s2Step150CounterDuring := by
  have owned : ∀q∈778::[772, 773, 774, 775, 776, 777],q∈s2Step150HeadFvAfter.live := fun q hq => s2Step150Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step150Counter_borrowed

private def s2Step150EntryFAfter : Arena := s2Step150EntryFBefore

private theorem s2Step150EntryBank_incomingDistinct : ([s2Step150EntryFRow,s2Step150EntryGRow,s2Step150EntryFvRow,s2Step150EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150EntryF_Incoming : rowsOwned s2Step150EntryFBefore [s2Step150EntryFRow,s2Step150EntryGRow,s2Step150EntryFvRow,s2Step150EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step150EntryFRow,s2Step150EntryGRow,s2Step150EntryFvRow,s2Step150EntryGvRow] 0 s2Step150EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step150EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150EntryBank_outgoingOwned : rowsOwned s2Step150EntryGvAfter [s2Step150EntryFOut,s2Step150EntryGOut,s2Step150EntryFvOut,s2Step150EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step150EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150EntryF_Outgoing : rowsOwned s2Step150EntryGvAfter [s2Step150EntryFOut,s2Step150EntryGOut,s2Step150EntryFvOut,s2Step150EntryGvOut] :=
  hmrRows_owned_drop s2Step150EntryGvAfter [s2Step150EntryFOut,s2Step150EntryGOut,s2Step150EntryFvOut,s2Step150EntryGvOut] 0 s2Step150EntryBank_outgoingOwned

private theorem s2Step150EntryF_distinct : (s2Step150EntryFRow.sign::s2Step150EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150EntryF_owned : (s2Step150EntryFRow.sign::s2Step150EntryFRow.payload).toFinset⊆s2Step150EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step150EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EntryF_reserved : s2Step150EntryFBefore.reserve s2Step150EntryFFresh.toFinset=some s2Step150EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step150EntryFFresh,arenaWires]
  · norm_num [s2Step150EntryFBefore,s2Step150EntryFFresh,arenaWires]
  · simp only [s2Step150EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step150EntryF_checked : planRowResizeLog s2Step150EntryFBefore s2Step150EntryFRow 195 s2Step150EntryFFresh=
    some (s2Step150EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706],768⟩,growRow 768 s2Step150EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step150EntryFBefore s2Step150EntryFAfter s2Step150EntryFRow 195 s2Step150EntryFFresh
    s2Step150EntryF_distinct s2Step150EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step150EntryF_reserved
  have rowEq : WindowRow.mk (s2Step150EntryFRow.payload++s2Step150EntryFFresh) s2Step150EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step150EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150EntryFvAfter : Arena := s2Step150EntryGAfter

private def s2Step150EntryFvBefore : Arena := s2Step150EntryGAfter

private theorem s2Step150EntryFv_Incoming : rowsOwned s2Step150EntryFvBefore [s2Step150EntryFvRow,s2Step150EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step150EntryFRow,s2Step150EntryGRow,s2Step150EntryFvRow,s2Step150EntryGvRow] 2 s2Step150EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step150EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150EntryFv_Outgoing : rowsOwned s2Step150EntryGvAfter [s2Step150EntryFvOut,s2Step150EntryGvOut] :=
  hmrRows_owned_drop s2Step150EntryGvAfter [s2Step150EntryFOut,s2Step150EntryGOut,s2Step150EntryFvOut,s2Step150EntryGvOut] 2 s2Step150EntryBank_outgoingOwned

private theorem s2Step150EntryFv_distinct : (s2Step150EntryFvRow.sign::s2Step150EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150EntryFv_owned : (s2Step150EntryFvRow.sign::s2Step150EntryFvRow.payload).toFinset⊆s2Step150EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step150EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EntryFv_reserved : s2Step150EntryFvBefore.reserve s2Step150EntryFvFresh.toFinset=some s2Step150EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step150EntryFvFresh,arenaWires]
  · norm_num [s2Step150EntryFvBefore,s2Step150EntryGAfter,s2Step150EntryFvFresh,arenaWires]
  · simp only [s2Step150EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step150EntryFv_checked : planRowResizeLog s2Step150EntryFvBefore s2Step150EntryFvRow 89 s2Step150EntryFvFresh=
    some (s2Step150EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844],770⟩,growRow 770 s2Step150EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step150EntryFvBefore s2Step150EntryFvAfter s2Step150EntryFvRow 89 s2Step150EntryFvFresh
    s2Step150EntryFv_distinct s2Step150EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step150EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step150EntryFvRow.payload++s2Step150EntryFvFresh) s2Step150EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step150EntryGBefore : Arena := s2Step150EntryFBefore

private theorem s2Step150EntryG_Incoming : rowsOwned s2Step150EntryGBefore [s2Step150EntryGRow,s2Step150EntryFvRow,s2Step150EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step150EntryFRow,s2Step150EntryGRow,s2Step150EntryFvRow,s2Step150EntryGvRow] 1 s2Step150EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step150EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150EntryG_Outgoing : rowsOwned s2Step150EntryGvAfter [s2Step150EntryGOut,s2Step150EntryFvOut,s2Step150EntryGvOut] :=
  hmrRows_owned_drop s2Step150EntryGvAfter [s2Step150EntryFOut,s2Step150EntryGOut,s2Step150EntryFvOut,s2Step150EntryGvOut] 1 s2Step150EntryBank_outgoingOwned

private theorem s2Step150EntryG_distinct : (s2Step150EntryGRow.sign::s2Step150EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150EntryG_owned : (s2Step150EntryGRow.sign::s2Step150EntryGRow.payload).toFinset⊆s2Step150EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step150EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EntryG_reserved : s2Step150EntryGBefore.reserve s2Step150EntryGFresh.toFinset=some s2Step150EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step150EntryGFresh,arenaWires]
  · norm_num [s2Step150EntryGBefore,s2Step150EntryFBefore,s2Step150EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step150EntryGAfter,s2Step150EntryGBefore,s2Step150EntryFBefore,s2Step150EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step150EntryG_checked : planRowResizeLog s2Step150EntryGBefore s2Step150EntryGRow 195 s2Step150EntryGFresh=
    some (s2Step150EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 779],769⟩,growRow 769 s2Step150EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step150EntryGBefore s2Step150EntryGAfter s2Step150EntryGRow 195 s2Step150EntryGFresh
    s2Step150EntryG_distinct s2Step150EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step150EntryG_reserved
  have rowEq : WindowRow.mk (s2Step150EntryGRow.payload++s2Step150EntryGFresh) s2Step150EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 779],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step150EntryGvBefore : Arena := s2Step150EntryGAfter

private theorem s2Step150EntryGv_Incoming : rowsOwned s2Step150EntryGvBefore [s2Step150EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step150EntryFRow,s2Step150EntryGRow,s2Step150EntryFvRow,s2Step150EntryGvRow] 3 s2Step150EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step150EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150EntryGv_Outgoing : rowsOwned s2Step150EntryGvAfter [s2Step150EntryGvOut] :=
  hmrRows_owned_drop s2Step150EntryGvAfter [s2Step150EntryFOut,s2Step150EntryGOut,s2Step150EntryFvOut,s2Step150EntryGvOut] 3 s2Step150EntryBank_outgoingOwned

private theorem s2Step150EntryGv_distinct : (s2Step150EntryGvRow.sign::s2Step150EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150EntryGv_owned : (s2Step150EntryGvRow.sign::s2Step150EntryGvRow.payload).toFinset⊆s2Step150EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step150EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150EntryGv_reserved : s2Step150EntryGvBefore.reserve s2Step150EntryGvFresh.toFinset=some s2Step150EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step150EntryGvFresh,arenaWires]
  · norm_num [s2Step150EntryGvBefore,s2Step150EntryGAfter,s2Step150EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step150EntryGvAfter,s2Step150EntryGvBefore,s2Step150EntryGAfter,s2Step150EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step150EntryGv_checked : planRowResizeLog s2Step150EntryGvBefore s2Step150EntryGvRow 89 s2Step150EntryGvFresh=
    some (s2Step150EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845],771⟩,growRow 771 s2Step150EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step150EntryGvBefore s2Step150EntryGvAfter s2Step150EntryGvRow 89 s2Step150EntryGvFresh
    s2Step150EntryGv_distinct s2Step150EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step150EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step150EntryGvRow.payload++s2Step150EntryGvFresh) s2Step150EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step150EntryBank_rows : planWindowRowsLog s2Step150EntryFBefore [(s2Step150EntryFRow,195),(s2Step150EntryGRow,195),(s2Step150EntryFvRow,89),(s2Step150EntryGvRow,89)] [s2Step150EntryFFresh,s2Step150EntryGFresh,s2Step150EntryFvFresh,s2Step150EntryGvFresh]=
    some (s2Step150EntryGvAfter,[s2Step150EntryFOut,s2Step150EntryGOut,s2Step150EntryFvOut,s2Step150EntryGvOut],(growRow 768 s2Step150EntryFFresh ++ (growRow 769 s2Step150EntryGFresh ++ (growRow 770 s2Step150EntryFvFresh ++ (growRow 771 s2Step150EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step150EntryGvAfter [] []=some (s2Step150EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step150EntryGvBefore s2Step150EntryGvAfter s2Step150EntryGvAfter
    s2Step150EntryGvRow s2Step150EntryGvOut 89 s2Step150EntryGvFresh [] [] []
    (growRow 771 s2Step150EntryGvFresh) ([]) s2Step150EntryGv_Incoming s2Step150EntryGv_checked h4 s2Step150EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step150EntryFvBefore s2Step150EntryFvAfter s2Step150EntryGvAfter
    s2Step150EntryFvRow s2Step150EntryFvOut 89 s2Step150EntryFvFresh [(s2Step150EntryGvRow,89)] [s2Step150EntryGvFresh] [s2Step150EntryGvOut]
    (growRow 770 s2Step150EntryFvFresh) ((growRow 771 s2Step150EntryGvFresh ++ [])) s2Step150EntryFv_Incoming s2Step150EntryFv_checked h3 s2Step150EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step150EntryGBefore s2Step150EntryGAfter s2Step150EntryGvAfter
    s2Step150EntryGRow s2Step150EntryGOut 195 s2Step150EntryGFresh [(s2Step150EntryFvRow,89),(s2Step150EntryGvRow,89)] [s2Step150EntryFvFresh,s2Step150EntryGvFresh] [s2Step150EntryFvOut,s2Step150EntryGvOut]
    (growRow 769 s2Step150EntryGFresh) ((growRow 770 s2Step150EntryFvFresh ++ (growRow 771 s2Step150EntryGvFresh ++ []))) s2Step150EntryG_Incoming s2Step150EntryG_checked h2 s2Step150EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step150EntryFBefore s2Step150EntryFAfter s2Step150EntryGvAfter
    s2Step150EntryFRow s2Step150EntryFOut 195 s2Step150EntryFFresh [(s2Step150EntryGRow,195),(s2Step150EntryFvRow,89),(s2Step150EntryGvRow,89)] [s2Step150EntryGFresh,s2Step150EntryFvFresh,s2Step150EntryGvFresh] [s2Step150EntryGOut,s2Step150EntryFvOut,s2Step150EntryGvOut]
    (growRow 768 s2Step150EntryFFresh) ((growRow 769 s2Step150EntryGFresh ++ (growRow 770 s2Step150EntryFvFresh ++ (growRow 771 s2Step150EntryGvFresh ++ [])))) s2Step150EntryF_Incoming s2Step150EntryF_checked h1 s2Step150EntryF_Outgoing
  exact h0

private theorem s2Step150EntryBank_checked : compileHmrBankResizeLog .entry s2Step150EntryFBefore ⟨s2Step150EntryFRow,s2Step150EntryGRow,s2Step150EntryFvRow,s2Step150EntryGvRow⟩ ⟨195,195,89,89⟩ [s2Step150EntryFFresh,s2Step150EntryGFresh,s2Step150EntryFvFresh,s2Step150EntryGvFresh]=
    some (s2Step150EntryGvAfter,⟨s2Step150EntryFOut,s2Step150EntryGOut,s2Step150EntryFvOut,s2Step150EntryGvOut⟩,(growRow 768 s2Step150EntryFFresh ++ (growRow 769 s2Step150EntryGFresh ++ (growRow 770 s2Step150EntryFvFresh ++ (growRow 771 s2Step150EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step150EntryBank_rows]
  rfl

private def s2Step150ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<193) ∨ (194≤q ∧ q<706) ∨ (707≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<193) ∨ (194≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150ExitFBefore : Arena := s2Step150ExitGAfter

private def s2Step150ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 849],768⟩

private def s2Step150ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783],770⟩

private def s2Step150ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 779, 796],769⟩

private def s2Step150ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 780],771⟩

private theorem s2Step150ExitBank_incomingDistinct : ([s2Step150ExitGRow,s2Step150ExitFRow,s2Step150ExitFvRow,s2Step150ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150ExitF_Incoming : rowsOwned s2Step150ExitFBefore [s2Step150ExitFRow,s2Step150ExitFvRow,s2Step150ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step150ExitGRow,s2Step150ExitFRow,s2Step150ExitFvRow,s2Step150ExitGvRow] 1 s2Step150ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step150ExitFBefore (fun q => (0≤q ∧ q<193) ∨ (194≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150ExitBank_outgoingOwned : rowsOwned s2Step150ExitGvAfter [s2Step150ExitGOut,s2Step150ExitFOut,s2Step150ExitFvOut,s2Step150ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step150ExitGvAfter (fun q => (0≤q ∧ q<193) ∨ (194≤q ∧ q<706) ∨ (707≤q ∧ q<779) ∨ (781≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150ExitF_Outgoing : rowsOwned s2Step150ExitGvAfter [s2Step150ExitFOut,s2Step150ExitFvOut,s2Step150ExitGvOut] :=
  hmrRows_owned_drop s2Step150ExitGvAfter [s2Step150ExitGOut,s2Step150ExitFOut,s2Step150ExitFvOut,s2Step150ExitGvOut] 1 s2Step150ExitBank_outgoingOwned

private theorem s2Step150ExitF_distinct : (s2Step150ExitFRow.sign::s2Step150ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150ExitF_owned : (s2Step150ExitFRow.sign::s2Step150ExitFRow.payload).toFinset⊆s2Step150ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step150ExitFBefore (fun q => (0≤q ∧ q<193) ∨ (194≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150ExitF_retired : s2Step150ExitFBefore.retireSet s2Step150ExitFExtra.toFinset=s2Step150ExitFAfter := by
  unfold Arena.retireSet s2Step150ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step150ExitFBefore,s2Step150ExitGAfter,s2Step150ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step150ExitF_checked : planRowResizeLog s2Step150ExitFBefore s2Step150ExitFRow 194 []=
    some (s2Step150ExitFAfter,s2Step150ExitFOut,shrinkRow 768 s2Step150ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step150ExitFBefore s2Step150ExitFRow 194 s2Step150ExitF_distinct s2Step150ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step150ExitFRow.payload.take 194) s2Step150ExitFRow.sign=s2Step150ExitFOut := by decide +kernel
  have hi : s2Step150ExitFRow.payload.drop 194=s2Step150ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step150ExitF_retired] at result
  exact result

private def s2Step150ExitFvAfter : Arena := s2Step150ExitFAfter

private def s2Step150ExitFvBefore : Arena := s2Step150ExitFAfter

private theorem s2Step150ExitFv_Incoming : rowsOwned s2Step150ExitFvBefore [s2Step150ExitFvRow,s2Step150ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step150ExitGRow,s2Step150ExitFRow,s2Step150ExitFvRow,s2Step150ExitGvRow] 2 s2Step150ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step150ExitFvBefore (fun q => (0≤q ∧ q<193) ∨ (194≤q ∧ q<706) ∨ (707≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150ExitFv_Outgoing : rowsOwned s2Step150ExitGvAfter [s2Step150ExitFvOut,s2Step150ExitGvOut] :=
  hmrRows_owned_drop s2Step150ExitGvAfter [s2Step150ExitGOut,s2Step150ExitFOut,s2Step150ExitFvOut,s2Step150ExitGvOut] 2 s2Step150ExitBank_outgoingOwned

private theorem s2Step150ExitFv_distinct : (s2Step150ExitFvRow.sign::s2Step150ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150ExitFv_owned : (s2Step150ExitFvRow.sign::s2Step150ExitFvRow.payload).toFinset⊆s2Step150ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step150ExitFvBefore (fun q => (0≤q ∧ q<193) ∨ (194≤q ∧ q<706) ∨ (707≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150ExitFv_reserved : s2Step150ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step150ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step150ExitFv_checked : planRowResizeLog s2Step150ExitFvBefore s2Step150ExitFvRow 90 []=
    some (s2Step150ExitFvAfter,s2Step150ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step150ExitFvBefore s2Step150ExitFvAfter s2Step150ExitFvRow 90 []
    s2Step150ExitFv_distinct s2Step150ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step150ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step150ExitFvRow.payload++[]) s2Step150ExitFvRow.sign=s2Step150ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step150ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step150ExitG_Incoming : rowsOwned s2Step150ExitGBefore [s2Step150ExitGRow,s2Step150ExitFRow,s2Step150ExitFvRow,s2Step150ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step150ExitGRow,s2Step150ExitFRow,s2Step150ExitFvRow,s2Step150ExitGvRow] 0 s2Step150ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step150ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150ExitG_Outgoing : rowsOwned s2Step150ExitGvAfter [s2Step150ExitGOut,s2Step150ExitFOut,s2Step150ExitFvOut,s2Step150ExitGvOut] :=
  hmrRows_owned_drop s2Step150ExitGvAfter [s2Step150ExitGOut,s2Step150ExitFOut,s2Step150ExitFvOut,s2Step150ExitGvOut] 0 s2Step150ExitBank_outgoingOwned

private theorem s2Step150ExitG_distinct : (s2Step150ExitGRow.sign::s2Step150ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150ExitG_owned : (s2Step150ExitGRow.sign::s2Step150ExitGRow.payload).toFinset⊆s2Step150ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step150ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150ExitG_retired : s2Step150ExitGBefore.retireSet s2Step150ExitGExtra.toFinset=s2Step150ExitGAfter := by
  unfold Arena.retireSet s2Step150ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step150ExitGBefore,s2Step150ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step150ExitG_checked : planRowResizeLog s2Step150ExitGBefore s2Step150ExitGRow 193 []=
    some (s2Step150ExitGAfter,s2Step150ExitGOut,shrinkRow 769 s2Step150ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step150ExitGBefore s2Step150ExitGRow 193 s2Step150ExitG_distinct s2Step150ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step150ExitGRow.payload.take 193) s2Step150ExitGRow.sign=s2Step150ExitGOut := by decide +kernel
  have hi : s2Step150ExitGRow.payload.drop 193=s2Step150ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step150ExitG_retired] at result
  exact result

private def s2Step150ExitGvBefore : Arena := s2Step150ExitFAfter

private theorem s2Step150ExitGv_Incoming : rowsOwned s2Step150ExitGvBefore [s2Step150ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step150ExitGRow,s2Step150ExitFRow,s2Step150ExitFvRow,s2Step150ExitGvRow] 3 s2Step150ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step150ExitGvBefore (fun q => (0≤q ∧ q<193) ∨ (194≤q ∧ q<706) ∨ (707≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150ExitGv_Outgoing : rowsOwned s2Step150ExitGvAfter [s2Step150ExitGvOut] :=
  hmrRows_owned_drop s2Step150ExitGvAfter [s2Step150ExitGOut,s2Step150ExitFOut,s2Step150ExitFvOut,s2Step150ExitGvOut] 3 s2Step150ExitBank_outgoingOwned

private theorem s2Step150ExitGv_distinct : (s2Step150ExitGvRow.sign::s2Step150ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150ExitGv_owned : (s2Step150ExitGvRow.sign::s2Step150ExitGvRow.payload).toFinset⊆s2Step150ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step150ExitGvBefore (fun q => (0≤q ∧ q<193) ∨ (194≤q ∧ q<706) ∨ (707≤q ∧ q<779) ∨ (780≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150ExitGv_retired : s2Step150ExitGvBefore.retireSet s2Step150ExitGvExtra.toFinset=s2Step150ExitGvAfter := by
  unfold Arena.retireSet s2Step150ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step150ExitGvBefore,s2Step150ExitFAfter,s2Step150ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step150ExitGv_checked : planRowResizeLog s2Step150ExitGvBefore s2Step150ExitGvRow 89 []=
    some (s2Step150ExitGvAfter,s2Step150ExitGvOut,shrinkRow 771 s2Step150ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step150ExitGvBefore s2Step150ExitGvRow 89 s2Step150ExitGv_distinct s2Step150ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step150ExitGvRow.payload.take 89) s2Step150ExitGvRow.sign=s2Step150ExitGvOut := by decide +kernel
  have hi : s2Step150ExitGvRow.payload.drop 89=s2Step150ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step150ExitGv_retired] at result
  exact result

private theorem s2Step150ExitBank_rows : planWindowRowsLog s2Step150ExitGBefore [(s2Step150ExitGRow,193),(s2Step150ExitFRow,194),(s2Step150ExitFvRow,90),(s2Step150ExitGvRow,89)] [[],[],[],[]]=
    some (s2Step150ExitGvAfter,[s2Step150ExitGOut,s2Step150ExitFOut,s2Step150ExitFvOut,s2Step150ExitGvOut],(shrinkRow 769 s2Step150ExitGExtra ++ (shrinkRow 768 s2Step150ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step150ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step150ExitGvAfter [] []=some (s2Step150ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step150ExitGvBefore s2Step150ExitGvAfter s2Step150ExitGvAfter
    s2Step150ExitGvRow s2Step150ExitGvOut 89 [] [] [] []
    (shrinkRow 771 s2Step150ExitGvExtra) ([]) s2Step150ExitGv_Incoming s2Step150ExitGv_checked h4 s2Step150ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step150ExitFvBefore s2Step150ExitFvAfter s2Step150ExitGvAfter
    s2Step150ExitFvRow s2Step150ExitFvOut 90 [] [(s2Step150ExitGvRow,89)] [[]] [s2Step150ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step150ExitGvExtra ++ [])) s2Step150ExitFv_Incoming s2Step150ExitFv_checked h3 s2Step150ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step150ExitFBefore s2Step150ExitFAfter s2Step150ExitGvAfter
    s2Step150ExitFRow s2Step150ExitFOut 194 [] [(s2Step150ExitFvRow,90),(s2Step150ExitGvRow,89)] [[],[]] [s2Step150ExitFvOut,s2Step150ExitGvOut]
    (shrinkRow 768 s2Step150ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step150ExitGvExtra ++ []))) s2Step150ExitF_Incoming s2Step150ExitF_checked h2 s2Step150ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step150ExitGBefore s2Step150ExitGAfter s2Step150ExitGvAfter
    s2Step150ExitGRow s2Step150ExitGOut 193 [] [(s2Step150ExitFRow,194),(s2Step150ExitFvRow,90),(s2Step150ExitGvRow,89)] [[],[],[]] [s2Step150ExitFOut,s2Step150ExitFvOut,s2Step150ExitGvOut]
    (shrinkRow 769 s2Step150ExitGExtra) ((shrinkRow 768 s2Step150ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step150ExitGvExtra ++ [])))) s2Step150ExitG_Incoming s2Step150ExitG_checked h1 s2Step150ExitG_Outgoing
  exact h0

private theorem s2Step150ExitBank_checked : compileHmrBankResizeLog .exit s2Step150ExitGBefore ⟨s2Step150ExitFRow,s2Step150ExitGRow,s2Step150ExitFvRow,s2Step150ExitGvRow⟩ ⟨194,193,90,89⟩ [[],[],[],[]]=
    some (s2Step150ExitGvAfter,⟨s2Step150ExitFOut,s2Step150ExitGOut,s2Step150ExitFvOut,s2Step150ExitGvOut⟩,(shrinkRow 769 s2Step150ExitGExtra ++ (shrinkRow 768 s2Step150ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step150ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step150ExitBank_rows]
  rfl

private theorem s2Step150Add0_apart : Disjoint s2Step150Add0Arena.live s2Step150Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step150Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150Add0_card : s2Step150Add0Arena.live.card=884 := by
  decide +kernel

private theorem s2Step150Add0_borrowed : s2Step150Add0Arena.checkBorrow (hmrHybridCount s2Step150Add0Arena s2Step150Add0B.length) s2Step150Add0Work=some s2Step150Add0During := by
  have len : s2Step150Add0Work.length=hmrHybridCount s2Step150Add0Arena s2Step150Add0B.length := by
    rw [hmrHybridCount,s2Step150Add0_card]
    decide +kernel
  have nd : s2Step150Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step150Add0Arena s2Step150Add0During s2Step150Add0Work.toFinset s2Step150Add0_bounded s2Step150Add0_apart rfl

private theorem s2Step150Add0_distinct : (790::797::815::(s2Step150Add0A++s2Step150Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150Add0_owned : (790::797::815::(s2Step150Add0A++s2Step150Add0B)).toFinset⊆s2Step150Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step150Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150Add0_checked : compileHmrHybridCinLog s2Step150Add0Arena 797 790 815 s2Step150Add0A s2Step150Add0B s2Step150Add0Work=some s2Step150Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step150Add0Arena s2Step150Add0During 797 790 815 s2Step150Add0A s2Step150Add0B s2Step150Add0Work
    (by decide +kernel) (by decide +kernel) s2Step150Add0_distinct
    (fun q hq => s2Step150Add0_owned (List.mem_toFinset.mpr hq)) s2Step150Add0_borrowed

private theorem s2Step150Add1_apart : Disjoint s2Step150Add1Arena.live s2Step150Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step150Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150Add1_card : s2Step150Add1Arena.live.card=884 := by
  decide +kernel

private theorem s2Step150Add1_borrowed : s2Step150Add1Arena.checkBorrow (hmrHybridCount s2Step150Add1Arena s2Step150Add1B.length) s2Step150Add1Work=some s2Step150Add1During := by
  have len : s2Step150Add1Work.length=hmrHybridCount s2Step150Add1Arena s2Step150Add1B.length := by
    rw [hmrHybridCount,s2Step150Add1_card]
    decide +kernel
  have nd : s2Step150Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step150Add1Arena s2Step150Add1During s2Step150Add1Work.toFinset s2Step150Add1_bounded s2Step150Add1_apart rfl

private theorem s2Step150Add1_distinct : (790::797::815::(s2Step150Add1A++s2Step150Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150Add1_owned : (790::797::815::(s2Step150Add1A++s2Step150Add1B)).toFinset⊆s2Step150Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step150Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150Add1_checked : compileHmrHybridCinLog s2Step150Add1Arena 797 790 815 s2Step150Add1A s2Step150Add1B s2Step150Add1Work=some s2Step150Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step150Add1Arena s2Step150Add1During 797 790 815 s2Step150Add1A s2Step150Add1B s2Step150Add1Work
    (by decide +kernel) (by decide +kernel) s2Step150Add1_distinct
    (fun q hq => s2Step150Add1_owned (List.mem_toFinset.mpr hq)) s2Step150Add1_borrowed

private theorem s2Step150F4_apart : Disjoint (s2Step150Add0A++s2Step150Add0B).toFinset (s2Step150Add1A++s2Step150Add1B).toFinset := by
  have nd : ((s2Step150Add0A++s2Step150Add0B)++(s2Step150Add1A++s2Step150Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step150F4_carry : s2Step150F4FlagArena.checkBorrow 1 [815]=some s2Step150Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step150F4FlagArena,s2Step150HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step150F4FlagArena,s2Step150HeadFvAfter,s2Step150Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step150F4_distinct : (778::797::790::815::((s2Step150Add0A++s2Step150Add1A)++(s2Step150Add0B++s2Step150Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150F4_flag : s2Step150HeadFvAfter.checkBorrow 1 [790]=some s2Step150F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step150HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step150F4_owned : (778::797::((s2Step150Add0A++s2Step150Add1A)++(s2Step150Add0B++s2Step150Add1B))).toFinset⊆s2Step150HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step150HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150F4_checked : compileHmrHybridF4Log s2Step150HeadFvAfter 778 797 s2Step150Add0A s2Step150Add0B s2Step150Add1A s2Step150Add1B [790] [815] s2Step150Add0Work s2Step150Add1Work=some s2Step150F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step150HeadFvAfter s2Step150F4FlagArena s2Step150Add0Arena s2Step150Add0During s2Step150Add1During 778 797
    s2Step150Add0A s2Step150Add0B s2Step150Add1A s2Step150Add1B [790] [815] s2Step150Add0Work s2Step150Add1Work
    (fun q hq => s2Step150F4_owned (List.mem_toFinset.mpr hq)) s2Step150F4_flag s2Step150F4_carry
    s2Step150F4_distinct s2Step150F4_apart s2Step150Add0_checked s2Step150Add1_checked

private theorem s2Step150Front_branch : s2Step150FrontSigmaArena.checkBorrow 1 [797]=some s2Step150HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step150FrontSigmaArena,s2Step150EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step150FrontSigmaArena,s2Step150EntryGvAfter,s2Step150HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step150Front_entry : HmrFrontEntryValid s2Step150EntryFBefore s2Step150FrontBank 195 89 ⟨194,193,90,89⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step150FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step150EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step150EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step150FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step150Front_sigma : s2Step150EntryGvAfter.checkBorrow 1 [778]=some s2Step150FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step150EntryGvAfter,arenaWires]
  · rfl

private def s2Step150HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150HeadFBefore : Arena := s2Step150HeadGAfter

private def s2Step150HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706],768⟩

private def s2Step150HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844],770⟩

private def s2Step150HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 779],769⟩

private def s2Step150HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845],771⟩

private theorem s2Step150HeadBank_incomingDistinct : ([s2Step150HeadGRow,s2Step150HeadFRow,s2Step150HeadGvRow,s2Step150HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150HeadF_Incoming : rowsOwned s2Step150HeadFBefore [s2Step150HeadFRow,s2Step150HeadGvRow,s2Step150HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step150HeadGRow,s2Step150HeadFRow,s2Step150HeadGvRow,s2Step150HeadFvRow] 1 s2Step150HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step150HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150HeadBank_outgoingOwned : rowsOwned s2Step150HeadFvAfter [s2Step150HeadGOut,s2Step150HeadFOut,s2Step150HeadGvOut,s2Step150HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step150HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150HeadF_Outgoing : rowsOwned s2Step150HeadFvAfter [s2Step150HeadFOut,s2Step150HeadGvOut,s2Step150HeadFvOut] :=
  hmrRows_owned_drop s2Step150HeadFvAfter [s2Step150HeadGOut,s2Step150HeadFOut,s2Step150HeadGvOut,s2Step150HeadFvOut] 1 s2Step150HeadBank_outgoingOwned

private theorem s2Step150HeadF_distinct : (s2Step150HeadFRow.sign::s2Step150HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150HeadF_owned : (s2Step150HeadFRow.sign::s2Step150HeadFRow.payload).toFinset⊆s2Step150HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step150HeadFBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150HeadF_reserved : s2Step150HeadFBefore.reserve s2Step150HeadFFresh.toFinset=some s2Step150HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step150HeadFFresh,arenaWires]
  · norm_num [s2Step150HeadFBefore,s2Step150HeadGAfter,s2Step150HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step150HeadFAfter,s2Step150HeadFBefore,s2Step150HeadGAfter,s2Step150HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step150HeadF_checked : planRowResizeLog s2Step150HeadFBefore s2Step150HeadFRow 196 s2Step150HeadFFresh=
    some (s2Step150HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 849],768⟩,growRow 768 s2Step150HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step150HeadFBefore s2Step150HeadFAfter s2Step150HeadFRow 196 s2Step150HeadFFresh
    s2Step150HeadF_distinct s2Step150HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step150HeadF_reserved
  have rowEq : WindowRow.mk (s2Step150HeadFRow.payload++s2Step150HeadFFresh) s2Step150HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 849],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step150HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step150HeadFvBefore : Arena := s2Step150HeadGvAfter

private theorem s2Step150HeadFv_Incoming : rowsOwned s2Step150HeadFvBefore [s2Step150HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step150HeadGRow,s2Step150HeadFRow,s2Step150HeadGvRow,s2Step150HeadFvRow] 3 s2Step150HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step150HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150HeadFv_Outgoing : rowsOwned s2Step150HeadFvAfter [s2Step150HeadFvOut] :=
  hmrRows_owned_drop s2Step150HeadFvAfter [s2Step150HeadGOut,s2Step150HeadFOut,s2Step150HeadGvOut,s2Step150HeadFvOut] 3 s2Step150HeadBank_outgoingOwned

private theorem s2Step150HeadFv_distinct : (s2Step150HeadFvRow.sign::s2Step150HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150HeadFv_owned : (s2Step150HeadFvRow.sign::s2Step150HeadFvRow.payload).toFinset⊆s2Step150HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step150HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150HeadFv_reserved : s2Step150HeadFvBefore.reserve s2Step150HeadFvFresh.toFinset=some s2Step150HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step150HeadFvFresh,arenaWires]
  · norm_num [s2Step150HeadFvBefore,s2Step150HeadGvAfter,s2Step150HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step150HeadFvAfter,s2Step150HeadFvBefore,s2Step150HeadGvAfter,s2Step150HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step150HeadFv_checked : planRowResizeLog s2Step150HeadFvBefore s2Step150HeadFvRow 90 s2Step150HeadFvFresh=
    some (s2Step150HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783],770⟩,growRow 770 s2Step150HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step150HeadFvBefore s2Step150HeadFvAfter s2Step150HeadFvRow 90 s2Step150HeadFvFresh
    s2Step150HeadFv_distinct s2Step150HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step150HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step150HeadFvRow.payload++s2Step150HeadFvFresh) s2Step150HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 844, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step150HeadG_Incoming : rowsOwned s2Step150HeadGBefore [s2Step150HeadGRow,s2Step150HeadFRow,s2Step150HeadGvRow,s2Step150HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step150HeadGRow,s2Step150HeadFRow,s2Step150HeadGvRow,s2Step150HeadFvRow] 0 s2Step150HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step150HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150HeadG_Outgoing : rowsOwned s2Step150HeadFvAfter [s2Step150HeadGOut,s2Step150HeadFOut,s2Step150HeadGvOut,s2Step150HeadFvOut] :=
  hmrRows_owned_drop s2Step150HeadFvAfter [s2Step150HeadGOut,s2Step150HeadFOut,s2Step150HeadGvOut,s2Step150HeadFvOut] 0 s2Step150HeadBank_outgoingOwned

private theorem s2Step150HeadG_distinct : (s2Step150HeadGRow.sign::s2Step150HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150HeadG_owned : (s2Step150HeadGRow.sign::s2Step150HeadGRow.payload).toFinset⊆s2Step150HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step150HeadGBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150HeadG_reserved : s2Step150HeadGBefore.reserve s2Step150HeadGFresh.toFinset=some s2Step150HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step150HeadGFresh,arenaWires]
  · norm_num [s2Step150HeadGBefore,s2Step150HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step150HeadGAfter,s2Step150HeadGBefore,s2Step150HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step150HeadG_checked : planRowResizeLog s2Step150HeadGBefore s2Step150HeadGRow 196 s2Step150HeadGFresh=
    some (s2Step150HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 779, 796],769⟩,growRow 769 s2Step150HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step150HeadGBefore s2Step150HeadGAfter s2Step150HeadGRow 196 s2Step150HeadGFresh
    s2Step150HeadG_distinct s2Step150HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step150HeadG_reserved
  have rowEq : WindowRow.mk (s2Step150HeadGRow.payload++s2Step150HeadGFresh) s2Step150HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 779, 796],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step150HeadGvBefore : Arena := s2Step150HeadFAfter

private theorem s2Step150HeadGv_Incoming : rowsOwned s2Step150HeadGvBefore [s2Step150HeadGvRow,s2Step150HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step150HeadGRow,s2Step150HeadFRow,s2Step150HeadGvRow,s2Step150HeadFvRow] 2 s2Step150HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step150HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step150HeadGv_Outgoing : rowsOwned s2Step150HeadFvAfter [s2Step150HeadGvOut,s2Step150HeadFvOut] :=
  hmrRows_owned_drop s2Step150HeadFvAfter [s2Step150HeadGOut,s2Step150HeadFOut,s2Step150HeadGvOut,s2Step150HeadFvOut] 2 s2Step150HeadBank_outgoingOwned

private theorem s2Step150HeadGv_distinct : (s2Step150HeadGvRow.sign::s2Step150HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step150HeadGv_owned : (s2Step150HeadGvRow.sign::s2Step150HeadGvRow.payload).toFinset⊆s2Step150HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step150HeadGvBefore (fun q => (0≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step150HeadGv_reserved : s2Step150HeadGvBefore.reserve s2Step150HeadGvFresh.toFinset=some s2Step150HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step150HeadGvFresh,arenaWires]
  · norm_num [s2Step150HeadGvBefore,s2Step150HeadFAfter,s2Step150HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step150HeadGvAfter,s2Step150HeadGvBefore,s2Step150HeadFAfter,s2Step150HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step150HeadGv_checked : planRowResizeLog s2Step150HeadGvBefore s2Step150HeadGvRow 90 s2Step150HeadGvFresh=
    some (s2Step150HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 780],771⟩,growRow 771 s2Step150HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step150HeadGvBefore s2Step150HeadGvAfter s2Step150HeadGvRow 90 s2Step150HeadGvFresh
    s2Step150HeadGv_distinct s2Step150HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step150HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step150HeadGvRow.payload++s2Step150HeadGvFresh) s2Step150HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 836, 789, 845, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step150HeadBank_rows : planWindowRowsLog s2Step150HeadGBefore [(s2Step150HeadGRow,196),(s2Step150HeadFRow,196),(s2Step150HeadGvRow,90),(s2Step150HeadFvRow,90)] [s2Step150HeadGFresh,s2Step150HeadFFresh,s2Step150HeadGvFresh,s2Step150HeadFvFresh]=
    some (s2Step150HeadFvAfter,[s2Step150HeadGOut,s2Step150HeadFOut,s2Step150HeadGvOut,s2Step150HeadFvOut],(growRow 769 s2Step150HeadGFresh ++ (growRow 768 s2Step150HeadFFresh ++ (growRow 771 s2Step150HeadGvFresh ++ (growRow 770 s2Step150HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step150HeadFvAfter [] []=some (s2Step150HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step150HeadFvBefore s2Step150HeadFvAfter s2Step150HeadFvAfter
    s2Step150HeadFvRow s2Step150HeadFvOut 90 s2Step150HeadFvFresh [] [] []
    (growRow 770 s2Step150HeadFvFresh) ([]) s2Step150HeadFv_Incoming s2Step150HeadFv_checked h4 s2Step150HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step150HeadGvBefore s2Step150HeadGvAfter s2Step150HeadFvAfter
    s2Step150HeadGvRow s2Step150HeadGvOut 90 s2Step150HeadGvFresh [(s2Step150HeadFvRow,90)] [s2Step150HeadFvFresh] [s2Step150HeadFvOut]
    (growRow 771 s2Step150HeadGvFresh) ((growRow 770 s2Step150HeadFvFresh ++ [])) s2Step150HeadGv_Incoming s2Step150HeadGv_checked h3 s2Step150HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step150HeadFBefore s2Step150HeadFAfter s2Step150HeadFvAfter
    s2Step150HeadFRow s2Step150HeadFOut 196 s2Step150HeadFFresh [(s2Step150HeadGvRow,90),(s2Step150HeadFvRow,90)] [s2Step150HeadGvFresh,s2Step150HeadFvFresh] [s2Step150HeadGvOut,s2Step150HeadFvOut]
    (growRow 768 s2Step150HeadFFresh) ((growRow 771 s2Step150HeadGvFresh ++ (growRow 770 s2Step150HeadFvFresh ++ []))) s2Step150HeadF_Incoming s2Step150HeadF_checked h2 s2Step150HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step150HeadGBefore s2Step150HeadGAfter s2Step150HeadFvAfter
    s2Step150HeadGRow s2Step150HeadGOut 196 s2Step150HeadGFresh [(s2Step150HeadFRow,196),(s2Step150HeadGvRow,90),(s2Step150HeadFvRow,90)] [s2Step150HeadFFresh,s2Step150HeadGvFresh,s2Step150HeadFvFresh] [s2Step150HeadFOut,s2Step150HeadGvOut,s2Step150HeadFvOut]
    (growRow 769 s2Step150HeadGFresh) ((growRow 768 s2Step150HeadFFresh ++ (growRow 771 s2Step150HeadGvFresh ++ (growRow 770 s2Step150HeadFvFresh ++ [])))) s2Step150HeadG_Incoming s2Step150HeadG_checked h1 s2Step150HeadG_Outgoing
  exact h0

private theorem s2Step150HeadBank_checked : compileHmrBankResizeLog .headroom s2Step150HeadGBefore ⟨s2Step150HeadFRow,s2Step150HeadGRow,s2Step150HeadFvRow,s2Step150HeadGvRow⟩ ⟨196,196,90,90⟩ [s2Step150HeadGFresh,s2Step150HeadFFresh,s2Step150HeadGvFresh,s2Step150HeadFvFresh]=
    some (s2Step150HeadFvAfter,⟨s2Step150HeadFOut,s2Step150HeadGOut,s2Step150HeadFvOut,s2Step150HeadGvOut⟩,(growRow 769 s2Step150HeadGFresh ++ (growRow 768 s2Step150HeadFFresh ++ (growRow 771 s2Step150HeadGvFresh ++ (growRow 770 s2Step150HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step150HeadBank_rows]
  rfl

private theorem s2Step150Front_checked : compileHmrSourceFrontLog s2Step150EntryFBefore s2Step150FrontBank 195 89 ⟨194,193,90,89⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step150FrontLog=some s2Step150FrontPlan := by
  have pairEq : s2Step150FrontPair=⟨s2Step150HeadFRow,s2Step150HeadGRow,s2Step150HeadFvRow,s2Step150HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step150FrontHead=⟨s2Step150ExitFRow,s2Step150ExitGRow,s2Step150ExitFvRow,s2Step150ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step150Add0A=s2Step150FrontHead.f.wires := by decide +kernel
  have gEq : s2Step150Add0B=s2Step150FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step150Add1A=s2Step150FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step150Add1B=s2Step150FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step150EntryFBefore s2Step150FrontBank 195 89 ⟨194,193,90,89⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step150FrontLog s2Step150FrontPlan
  · exact s2Step150Front_entry
  · exact s2Step150EntryBank_checked
  · exact s2Step150Front_sigma
  · rfl
  · exact s2Step150Front_branch
  · rfl
  · simpa only [s2Step150FrontPlan,pairEq] using s2Step150HeadBank_checked
  · simpa only [s2Step150FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step150F4_checked
  · exact s2Step150Counter_checked
  · rfl
  · simpa only [s2Step150FrontPlan,headEq] using s2Step150ExitBank_checked

private theorem s2Step150Complete_explicit_checked : compileHmrEarlyStepLog s2Step150EntryFBefore s2Step150FrontBank 195 89 ⟨194,193,90,89⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step150CompleteLog=some s2Step150CompletePlan := by
  let Q := s2Step150EarlyControlPlan
  have hq := s2Step150EarlyControl_plan_checked
  have fv1 : s2Step150CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step150CompleteOut.fv.payload[2]?.getD s2Step150CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step150CompleteOut.fv.payload[3]?.getD s2Step150CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step150CompleteOut.fv.payload[4]?.getD s2Step150CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step150EntryFBefore s2Step150EarlyControlArena s2Step150FrontBank 195 89 ⟨194,193,90,89⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step150CompleteLog s2Step150FrontPlan Q
    s2Step150Front_checked s2Step150Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step150Complete_owned s2Step150Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step150EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 778 s2Step150CompleteOut.fv.second (s2Step150CompleteOut.fv.payload[2]?.getD s2Step150CompleteOut.fv.sign) (s2Step150CompleteOut.fv.payload[3]?.getD s2Step150CompleteOut.fv.sign) (s2Step150CompleteOut.fv.payload[4]?.getD s2Step150CompleteOut.fv.sign) 797 42 s2Step150EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep150Arena : Arena := s2Step150EntryFBefore
def s2PrivateStep150Bank : WindowBank := s2Step150FrontBank
def s2PrivateStep150Spec : HmrSourceWalkStepLog := ⟨195,89,⟨194,193,90,89⟩,42,.early s2Step150CompleteLog⟩
def s2PrivateStep150Plan : HmrSourceStepPlan := .early s2Step150CompletePlan
theorem s2PrivateStep150_source : s2PrivateStep150Spec=s2ObservedLogs144[6] := rfl
theorem s2PrivateStep150_checked : compileHmrSourceStepLog s2PrivateStep150Arena s2PrivateStep150Bank
    s2PrivateStep150Spec.fgWidth s2PrivateStep150Spec.vWidth s2PrivateStep150Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 150 s2PrivateStep150Spec.need none s2PrivateStep150Spec.log=some s2PrivateStep150Plan := by
  change compileHmrSourceStepLog s2Step150EntryFBefore s2Step150FrontBank 195 89 ⟨194,193,90,89⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 150 42 none (.early s2Step150CompleteLog)=some (.early s2Step150CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 150<498)]
  rw [s2Step150Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
