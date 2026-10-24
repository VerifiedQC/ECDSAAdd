import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep142
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

private def s2Step144CompleteMoves : List (Wire × Wire) := []

private def s2Step144EarlyControlLog : HmrEarlyControlLog := ⟨[841, 789, 783, 816, 778],[849],[790],[815, 867, 877, 879, 882, 885],[]⟩

private def s2Step144FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [788]],[[816], [783], [841], [789]],[[], [], [], []]⟩,[845],[836],[778],[849],[790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[778, 849, 790, 815]⟩

private def s2Step144CompleteLog : HmrEarlyStepLog := ⟨s2Step144FrontLog,s2Step144CompleteMoves,s2Step144EarlyControlLog⟩

private def s2Step144ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708],768⟩

private def s2Step144ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩

private def s2Step144ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],769⟩

private def s2Step144ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788],771⟩

private def s2Step144FrontOut : WindowBank := ⟨s2Step144ExitFOut,s2Step144ExitGOut,s2Step144ExitFvOut,s2Step144ExitGvOut⟩

private def s2Step144CompleteOut : WindowBank := s2Step144FrontOut.repacked s2Step144CompleteMoves

private def s2Step144EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step144EarlyControlPositiveArena,[849],s2Step144EarlyControlEqualityArena,[790],⟨⟨845,false⟩,[⟨⟨849,false⟩,790⟩]⟩⟩

private def s2Step144EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,841⟩,⟨⟨774,false⟩,789⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,816⟩,⟨⟨777,false⟩,778⟩]⟩

private def s2Step144EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step144EarlyControlZeroArena,s2Step144EarlyControlZeroPlan,s2Step144EarlyControlClassPlan,s2Step144EarlyControlFlagArena,s2Step144EarlyControlFittedArena,s2Step144EarlyControlHistoryArena,s2Step144EarlyControlSigmaArena,s2Step144EarlyControlOutputArena,s2Step144EarlyControlLog⟩

private def s2Step144CounterWork : List Wire := [778, 849, 790, 815]

private theorem s2Step144Counter_bounded : s2Step144CounterWork.toFinset⊆arenaWires := by norm_num [s2Step144CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step144HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144CounterDuring : Arena := ⟨s2Step144HeadFvAfter.live∪s2Step144CounterWork.toFinset,Finset.union_subset s2Step144HeadFvAfter.bounded s2Step144Counter_bounded⟩

private def s2Step144EntryFFresh : List Wire := []

private def s2Step144EntryFvFresh : List Wire := []

private def s2Step144EntryGFresh : List Wire := []

private def s2Step144EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144EntryGvFresh : List Wire := [788]

private def s2Step144ExitFExtra : List Wire := [783]

private def s2Step144ExitFvExtra : List Wire := [789]

private def s2Step144ExitGExtra : List Wire := [816]

private def s2Step144ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144ExitGvExtra : List Wire := [841]

private def s2Step144Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step144Add0_bounded : s2Step144Add0Work.toFinset⊆arenaWires := by
  have h : s2Step144Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step144Add0During : Arena := ⟨s2Step144Add0Arena.live∪s2Step144Add0Work.toFinset,Finset.union_subset s2Step144Add0Arena.bounded s2Step144Add0_bounded⟩

private def s2Step144Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step144Add1_bounded : s2Step144Add1Work.toFinset⊆arenaWires := by
  have h : s2Step144Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step144Add1During : Arena := ⟨s2Step144Add1Arena.live∪s2Step144Add1Work.toFinset,Finset.union_subset s2Step144Add1Arena.bounded s2Step144Add1_bounded⟩

private def s2Step144F4FlagArena : Arena := ⟨s2Step144HeadFvAfter.live∪{778},Finset.union_subset s2Step144HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step144F4Plan : HmrHybridF4Plan := ⟨s2Step144F4FlagArena,[778],s2Step144Add0Arena,[849],s2Step144Add0During,s2Step144Add0Work,s2Step144Add1During,s2Step144Add1Work⟩

private def s2Step144HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 783],768⟩

private def s2Step144HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 789],770⟩

private def s2Step144HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 816],769⟩

private def s2Step144HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 841],771⟩

private def s2Step144FrontHead : WindowBank := ⟨s2Step144HeadFOut,s2Step144HeadGOut,s2Step144HeadFvOut,s2Step144HeadGvOut⟩

private def s2Step144EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708],768⟩

private def s2Step144EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩

private def s2Step144EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],769⟩

private def s2Step144EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788],771⟩

private def s2Step144FrontPair : WindowBank := ⟨s2Step144EntryFOut,s2Step144EntryGOut,s2Step144EntryFvOut,s2Step144EntryGvOut⟩

private def s2Step144FrontSigmaArena : Arena := ⟨s2Step144EntryGvAfter.live∪{845},Finset.union_subset s2Step144EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step144HeadFFresh : List Wire := [783]

private def s2Step144HeadFvFresh : List Wire := [789]

private def s2Step144HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144HeadGFresh : List Wire := [816]

private def s2Step144HeadGvFresh : List Wire := [841]

private def s2Step144FrontPlan : HmrSourceFront := ⟨s2Step144EntryGvAfter,s2Step144FrontPair,(growRow 768 s2Step144EntryFFresh ++ (growRow 769 s2Step144EntryGFresh ++ (growRow 770 s2Step144EntryFvFresh ++ (growRow 771 s2Step144EntryGvFresh ++ [])))),s2Step144FrontSigmaArena,[845],s2Step144HeadGBefore,[836],
  s2Step144HeadFvAfter,s2Step144FrontHead,(growRow 769 s2Step144HeadGFresh ++ (growRow 768 s2Step144HeadFFresh ++ (growRow 771 s2Step144HeadGvFresh ++ (growRow 770 s2Step144HeadFvFresh ++ [])))),s2Step144F4Plan,s2Step144CounterDuring,s2Step144CounterWork,s2Step144ExitGvAfter,s2Step144FrontOut,(shrinkRow 769 s2Step144ExitGExtra ++ (shrinkRow 768 s2Step144ExitFExtra ++ (shrinkRow 770 s2Step144ExitFvExtra ++ (shrinkRow 771 s2Step144ExitGvExtra ++ []))))⟩

private def s2Step144CompletePlan : HmrEarlyStepPlan := ⟨s2Step144FrontPlan,s2Step144EarlyControlArena,s2Step144EarlyControlPlan,s2Step144CompleteMoves⟩

private theorem s2Step144Complete_apart : List.Disjoint (s2Step144CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [845, 836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step144CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[845, 836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step144Complete_owned : (s2Step144CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step144EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step144EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144Complete_repack : s2Step144ExitGvAfter.checkRepack s2Step144CompleteMoves=some s2Step144EarlyControlArena := by rfl

private theorem s2Step144EarlyControl_branchOwned : ([836] : List Wire).toFinset⊆s2Step144EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step144EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EarlyControl_branch : compileHmrBranchRetirement s2Step144EarlyControlSigmaArena 836=some s2Step144EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step144EarlyControl_branchOwned
  · ext q
    simp [s2Step144EarlyControlOutputArena,s2Step144EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step144EarlyControl_classEqualityBorrow : s2Step144EarlyControlPositiveArena.checkBorrow (([845, 849] : List Wire).length-1) s2Step144EarlyControlLog.classWork=some s2Step144EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step144EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step144EarlyControlEqualityArena,s2Step144EarlyControlPositiveArena,s2Step144EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step144EarlyControl_classEqualityOwned : ([845, 849] : List Wire).toFinset⊆s2Step144EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step144EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EarlyControl_classEquality : compileHmrEqualityLog s2Step144EarlyControlPositiveArena [845, 849] 0 s2Step144EarlyControlLog.classWork=some (s2Step144EarlyControlEqualityArena,s2Step144EarlyControlLog.classWork,s2Step144EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step144EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step144EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step144EarlyControl_classOwned : ([777, 778, 845] : List Wire).toFinset⊆s2Step144EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step144EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EarlyControl_positiveBorrow : s2Step144EarlyControlZeroArena.checkBorrow (1) s2Step144EarlyControlLog.positiveWork=some s2Step144EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step144EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step144EarlyControlPositiveArena,s2Step144EarlyControlZeroArena,s2Step144EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step144EarlyControl_class : compileHmrSourceClassLog s2Step144EarlyControlZeroArena false 777 s2Step144EarlyControlZeroPlan.top 0 845 s2Step144EarlyControlLog.positiveWork s2Step144EarlyControlLog.classWork=some s2Step144EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step144EarlyControlClassPlan s2Step144EarlyControlZeroArena false 777 s2Step144EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s2Step144EarlyControl_classOwned
  · exact s2Step144EarlyControl_positiveBorrow
  · exact s2Step144EarlyControl_classEquality

private theorem s2Step144EarlyControl_entryRecordOwned : ([836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step144EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step144EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s2Step144EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step144EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EarlyControl_fitBorrow : s2Step144EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step144EarlyControlLog.recordFresh=some s2Step144EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step144EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step144EarlyControlFittedArena,s2Step144EarlyControlFlagArena,s2Step144EarlyControlLog,arenaWires]

private theorem s2Step144EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step144EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step144EarlyControlFlagArena (fun q => (0≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EarlyControl_fit : compileHmrRecordGrowLog s2Step144EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step144EarlyControlLog.recordFresh=some s2Step144EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step144EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step144EarlyControl_fitBorrow

private theorem s2Step144EarlyControl_flagsBorrow : s2Step144EarlyControlEqualityArena.checkBorrow (6) s2Step144EarlyControlLog.flagWork=some s2Step144EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step144EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step144EarlyControlFlagArena,s2Step144EarlyControlEqualityArena,s2Step144EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step144EarlyControl_flagsOwned : ([790, 253, 252, 251] : List Wire).toFinset⊆s2Step144EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step144EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EarlyControl_flags : compileHmrFlagsLog s2Step144EarlyControlClassPlan.equalityArena s2Step144EarlyControlClassPlan.equality.top 253 252 251 s2Step144EarlyControlLog.flagWork=some s2Step144EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step144EarlyControl_flagsOwned⟩
  · exact s2Step144EarlyControl_flagsBorrow

private theorem s2Step144EarlyControl_historyBorrow : s2Step144EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step144EarlyControlLog.recordFresh=some s2Step144EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step144EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step144EarlyControlHistoryArena,s2Step144EarlyControlArena,s2Step144EarlyControlLog,arenaWires]

private theorem s2Step144EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step144EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step144EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EarlyControl_history : compileHmrRecordGrowLog s2Step144EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step144EarlyControlLog.recordFresh=some s2Step144EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step144EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step144EarlyControl_historyBorrow

private theorem s2Step144EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s2Step144EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step144EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s2Step144EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step144EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EarlyControl_sigmaRelease : s2Step144EarlyControlHistoryArena.release {845} (fun _ => false)=some s2Step144EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step144EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step144EarlyControlSigmaArena,s2Step144EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step144EarlyControl_sigma : compileHmrSigmaDropLog s2Step144EarlyControlHistoryArena false 0 0 254 845 []=some s2Step144EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step144EarlyControl_sigmaOwned⟩
  · exact s2Step144EarlyControl_sigmaRelease

private theorem s2Step144EarlyControl_zeroBorrow : s2Step144EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step144EarlyControlLog.zeroWork=some s2Step144EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step144EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step144EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step144EarlyControlZeroArena,s2Step144EarlyControlArena,s2Step144EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step144EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step144EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step144EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EarlyControl_zero : compileHmrEqualityLog s2Step144EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step144EarlyControlLog.zeroWork=some (s2Step144EarlyControlZeroArena,s2Step144EarlyControlLog.zeroWork,s2Step144EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step144EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step144EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step144EarlyControl_logged : s2Step144EarlyControlPlan.Logged s2Step144EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 254 253 252 251 836 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step144EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step144EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step144EarlyControl_zero
  · exact s2Step144EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step144EarlyControl_flags
  · exact s2Step144EarlyControl_fit
  · exact s2Step144EarlyControl_history
  · exact s2Step144EarlyControl_sigma
  · exact s2Step144EarlyControl_branch

private theorem s2Step144EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step144EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 254 253 252 251 836 42 s2Step144EarlyControlLog=some s2Step144EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step144EarlyControlPlan s2Step144EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 254 253 252 251 836 42 s2Step144EarlyControl_logged

private def s2Step144EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708],768⟩

private def s2Step144EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩

private def s2Step144EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],769⟩

private def s2Step144EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩

private def s2Step144FrontBank : WindowBank := ⟨s2Step144EntryFRow,s2Step144EntryGRow,s2Step144EntryFvRow,s2Step144EntryGvRow⟩

private def s2Step144Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 783, 768]

private def s2Step144Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 816, 769]

private def s2Step144Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 789, 770]

private def s2Step144Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 841, 771]

private theorem s2Step144Counter_apart : Disjoint s2Step144HeadFvAfter.live s2Step144CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step144HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144Counter_borrowed : s2Step144HeadFvAfter.checkBorrow 4 s2Step144CounterWork=some s2Step144CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step144HeadFvAfter s2Step144CounterDuring s2Step144CounterWork.toFinset s2Step144Counter_bounded s2Step144Counter_apart rfl

private theorem s2Step144Counter_owned : (845::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step144HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step144HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144Counter_checked : compileHmrCounterStepLog s2Step144HeadFvAfter true 845 [772, 773, 774, 775, 776, 777] s2Step144CounterWork=some s2Step144CounterDuring := by
  have owned : ∀q∈845::[772, 773, 774, 775, 776, 777],q∈s2Step144HeadFvAfter.live := fun q hq => s2Step144Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step144Counter_borrowed

private def s2Step144EntryFAfter : Arena := s2Step144EntryFBefore

private theorem s2Step144EntryBank_incomingDistinct : ([s2Step144EntryFRow,s2Step144EntryGRow,s2Step144EntryFvRow,s2Step144EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144EntryF_Incoming : rowsOwned s2Step144EntryFBefore [s2Step144EntryFRow,s2Step144EntryGRow,s2Step144EntryFvRow,s2Step144EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step144EntryFRow,s2Step144EntryGRow,s2Step144EntryFvRow,s2Step144EntryGvRow] 0 s2Step144EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step144EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144EntryBank_outgoingOwned : rowsOwned s2Step144EntryGvAfter [s2Step144EntryFOut,s2Step144EntryGOut,s2Step144EntryFvOut,s2Step144EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step144EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144EntryF_Outgoing : rowsOwned s2Step144EntryGvAfter [s2Step144EntryFOut,s2Step144EntryGOut,s2Step144EntryFvOut,s2Step144EntryGvOut] :=
  hmrRows_owned_drop s2Step144EntryGvAfter [s2Step144EntryFOut,s2Step144EntryGOut,s2Step144EntryFvOut,s2Step144EntryGvOut] 0 s2Step144EntryBank_outgoingOwned

private theorem s2Step144EntryF_distinct : (s2Step144EntryFRow.sign::s2Step144EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144EntryF_owned : (s2Step144EntryFRow.sign::s2Step144EntryFRow.payload).toFinset⊆s2Step144EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step144EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EntryF_reserved : s2Step144EntryFBefore.reserve s2Step144EntryFFresh.toFinset=some s2Step144EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step144EntryFFresh,arenaWires]
  · norm_num [s2Step144EntryFBefore,s2Step144EntryFFresh,arenaWires]
  · simp only [s2Step144EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step144EntryF_checked : planRowResizeLog s2Step144EntryFBefore s2Step144EntryFRow 197 s2Step144EntryFFresh=
    some (s2Step144EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708],768⟩,growRow 768 s2Step144EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step144EntryFBefore s2Step144EntryFAfter s2Step144EntryFRow 197 s2Step144EntryFFresh
    s2Step144EntryF_distinct s2Step144EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step144EntryF_reserved
  have rowEq : WindowRow.mk (s2Step144EntryFRow.payload++s2Step144EntryFFresh) s2Step144EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step144EntryFvAfter : Arena := s2Step144EntryFBefore

private def s2Step144EntryFvBefore : Arena := s2Step144EntryFBefore

private theorem s2Step144EntryFv_Incoming : rowsOwned s2Step144EntryFvBefore [s2Step144EntryFvRow,s2Step144EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step144EntryFRow,s2Step144EntryGRow,s2Step144EntryFvRow,s2Step144EntryGvRow] 2 s2Step144EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step144EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144EntryFv_Outgoing : rowsOwned s2Step144EntryGvAfter [s2Step144EntryFvOut,s2Step144EntryGvOut] :=
  hmrRows_owned_drop s2Step144EntryGvAfter [s2Step144EntryFOut,s2Step144EntryGOut,s2Step144EntryFvOut,s2Step144EntryGvOut] 2 s2Step144EntryBank_outgoingOwned

private theorem s2Step144EntryFv_distinct : (s2Step144EntryFvRow.sign::s2Step144EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144EntryFv_owned : (s2Step144EntryFvRow.sign::s2Step144EntryFvRow.payload).toFinset⊆s2Step144EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step144EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EntryFv_reserved : s2Step144EntryFvBefore.reserve s2Step144EntryFvFresh.toFinset=some s2Step144EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step144EntryFvFresh,arenaWires]
  · norm_num [s2Step144EntryFvBefore,s2Step144EntryFBefore,s2Step144EntryFvFresh,arenaWires]
  · simp only [s2Step144EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step144EntryFv_checked : planRowResizeLog s2Step144EntryFvBefore s2Step144EntryFvRow 86 s2Step144EntryFvFresh=
    some (s2Step144EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩,growRow 770 s2Step144EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step144EntryFvBefore s2Step144EntryFvAfter s2Step144EntryFvRow 86 s2Step144EntryFvFresh
    s2Step144EntryFv_distinct s2Step144EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step144EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step144EntryFvRow.payload++s2Step144EntryFvFresh) s2Step144EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step144EntryGAfter : Arena := s2Step144EntryFBefore

private def s2Step144EntryGBefore : Arena := s2Step144EntryFBefore

private theorem s2Step144EntryG_Incoming : rowsOwned s2Step144EntryGBefore [s2Step144EntryGRow,s2Step144EntryFvRow,s2Step144EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step144EntryFRow,s2Step144EntryGRow,s2Step144EntryFvRow,s2Step144EntryGvRow] 1 s2Step144EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step144EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144EntryG_Outgoing : rowsOwned s2Step144EntryGvAfter [s2Step144EntryGOut,s2Step144EntryFvOut,s2Step144EntryGvOut] :=
  hmrRows_owned_drop s2Step144EntryGvAfter [s2Step144EntryFOut,s2Step144EntryGOut,s2Step144EntryFvOut,s2Step144EntryGvOut] 1 s2Step144EntryBank_outgoingOwned

private theorem s2Step144EntryG_distinct : (s2Step144EntryGRow.sign::s2Step144EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144EntryG_owned : (s2Step144EntryGRow.sign::s2Step144EntryGRow.payload).toFinset⊆s2Step144EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step144EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EntryG_reserved : s2Step144EntryGBefore.reserve s2Step144EntryGFresh.toFinset=some s2Step144EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step144EntryGFresh,arenaWires]
  · norm_num [s2Step144EntryGBefore,s2Step144EntryFBefore,s2Step144EntryGFresh,arenaWires]
  · simp only [s2Step144EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step144EntryG_checked : planRowResizeLog s2Step144EntryGBefore s2Step144EntryGRow 197 s2Step144EntryGFresh=
    some (s2Step144EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],769⟩,growRow 769 s2Step144EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step144EntryGBefore s2Step144EntryGAfter s2Step144EntryGRow 197 s2Step144EntryGFresh
    s2Step144EntryG_distinct s2Step144EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step144EntryG_reserved
  have rowEq : WindowRow.mk (s2Step144EntryGRow.payload++s2Step144EntryGFresh) s2Step144EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step144EntryGvBefore : Arena := s2Step144EntryFBefore

private theorem s2Step144EntryGv_Incoming : rowsOwned s2Step144EntryGvBefore [s2Step144EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step144EntryFRow,s2Step144EntryGRow,s2Step144EntryFvRow,s2Step144EntryGvRow] 3 s2Step144EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step144EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144EntryGv_Outgoing : rowsOwned s2Step144EntryGvAfter [s2Step144EntryGvOut] :=
  hmrRows_owned_drop s2Step144EntryGvAfter [s2Step144EntryFOut,s2Step144EntryGOut,s2Step144EntryFvOut,s2Step144EntryGvOut] 3 s2Step144EntryBank_outgoingOwned

private theorem s2Step144EntryGv_distinct : (s2Step144EntryGvRow.sign::s2Step144EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144EntryGv_owned : (s2Step144EntryGvRow.sign::s2Step144EntryGvRow.payload).toFinset⊆s2Step144EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step144EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144EntryGv_reserved : s2Step144EntryGvBefore.reserve s2Step144EntryGvFresh.toFinset=some s2Step144EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step144EntryGvFresh,arenaWires]
  · norm_num [s2Step144EntryGvBefore,s2Step144EntryFBefore,s2Step144EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step144EntryGvAfter,s2Step144EntryGvBefore,s2Step144EntryFBefore,s2Step144EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step144EntryGv_checked : planRowResizeLog s2Step144EntryGvBefore s2Step144EntryGvRow 86 s2Step144EntryGvFresh=
    some (s2Step144EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788],771⟩,growRow 771 s2Step144EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step144EntryGvBefore s2Step144EntryGvAfter s2Step144EntryGvRow 86 s2Step144EntryGvFresh
    s2Step144EntryGv_distinct s2Step144EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step144EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step144EntryGvRow.payload++s2Step144EntryGvFresh) s2Step144EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step144EntryBank_rows : planWindowRowsLog s2Step144EntryFBefore [(s2Step144EntryFRow,197),(s2Step144EntryGRow,197),(s2Step144EntryFvRow,86),(s2Step144EntryGvRow,86)] [s2Step144EntryFFresh,s2Step144EntryGFresh,s2Step144EntryFvFresh,s2Step144EntryGvFresh]=
    some (s2Step144EntryGvAfter,[s2Step144EntryFOut,s2Step144EntryGOut,s2Step144EntryFvOut,s2Step144EntryGvOut],(growRow 768 s2Step144EntryFFresh ++ (growRow 769 s2Step144EntryGFresh ++ (growRow 770 s2Step144EntryFvFresh ++ (growRow 771 s2Step144EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step144EntryGvAfter [] []=some (s2Step144EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step144EntryGvBefore s2Step144EntryGvAfter s2Step144EntryGvAfter
    s2Step144EntryGvRow s2Step144EntryGvOut 86 s2Step144EntryGvFresh [] [] []
    (growRow 771 s2Step144EntryGvFresh) ([]) s2Step144EntryGv_Incoming s2Step144EntryGv_checked h4 s2Step144EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step144EntryFvBefore s2Step144EntryFvAfter s2Step144EntryGvAfter
    s2Step144EntryFvRow s2Step144EntryFvOut 86 s2Step144EntryFvFresh [(s2Step144EntryGvRow,86)] [s2Step144EntryGvFresh] [s2Step144EntryGvOut]
    (growRow 770 s2Step144EntryFvFresh) ((growRow 771 s2Step144EntryGvFresh ++ [])) s2Step144EntryFv_Incoming s2Step144EntryFv_checked h3 s2Step144EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step144EntryGBefore s2Step144EntryGAfter s2Step144EntryGvAfter
    s2Step144EntryGRow s2Step144EntryGOut 197 s2Step144EntryGFresh [(s2Step144EntryFvRow,86),(s2Step144EntryGvRow,86)] [s2Step144EntryFvFresh,s2Step144EntryGvFresh] [s2Step144EntryFvOut,s2Step144EntryGvOut]
    (growRow 769 s2Step144EntryGFresh) ((growRow 770 s2Step144EntryFvFresh ++ (growRow 771 s2Step144EntryGvFresh ++ []))) s2Step144EntryG_Incoming s2Step144EntryG_checked h2 s2Step144EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step144EntryFBefore s2Step144EntryFAfter s2Step144EntryGvAfter
    s2Step144EntryFRow s2Step144EntryFOut 197 s2Step144EntryFFresh [(s2Step144EntryGRow,197),(s2Step144EntryFvRow,86),(s2Step144EntryGvRow,86)] [s2Step144EntryGFresh,s2Step144EntryFvFresh,s2Step144EntryGvFresh] [s2Step144EntryGOut,s2Step144EntryFvOut,s2Step144EntryGvOut]
    (growRow 768 s2Step144EntryFFresh) ((growRow 769 s2Step144EntryGFresh ++ (growRow 770 s2Step144EntryFvFresh ++ (growRow 771 s2Step144EntryGvFresh ++ [])))) s2Step144EntryF_Incoming s2Step144EntryF_checked h1 s2Step144EntryF_Outgoing
  exact h0

private theorem s2Step144EntryBank_checked : compileHmrBankResizeLog .entry s2Step144EntryFBefore ⟨s2Step144EntryFRow,s2Step144EntryGRow,s2Step144EntryFvRow,s2Step144EntryGvRow⟩ ⟨197,197,86,86⟩ [s2Step144EntryFFresh,s2Step144EntryGFresh,s2Step144EntryFvFresh,s2Step144EntryGvFresh]=
    some (s2Step144EntryGvAfter,⟨s2Step144EntryFOut,s2Step144EntryGOut,s2Step144EntryFvOut,s2Step144EntryGvOut⟩,(growRow 768 s2Step144EntryFFresh ++ (growRow 769 s2Step144EntryGFresh ++ (growRow 770 s2Step144EntryFvFresh ++ (growRow 771 s2Step144EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step144EntryBank_rows]
  rfl

private def s2Step144ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144ExitFBefore : Arena := s2Step144ExitGAfter

private def s2Step144ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 783],768⟩

private def s2Step144ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 789],770⟩

private def s2Step144ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 816],769⟩

private def s2Step144ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 841],771⟩

private theorem s2Step144ExitBank_incomingDistinct : ([s2Step144ExitGRow,s2Step144ExitFRow,s2Step144ExitFvRow,s2Step144ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144ExitF_Incoming : rowsOwned s2Step144ExitFBefore [s2Step144ExitFRow,s2Step144ExitFvRow,s2Step144ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step144ExitGRow,s2Step144ExitFRow,s2Step144ExitFvRow,s2Step144ExitGvRow] 1 s2Step144ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step144ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144ExitBank_outgoingOwned : rowsOwned s2Step144ExitGvAfter [s2Step144ExitGOut,s2Step144ExitFOut,s2Step144ExitFvOut,s2Step144ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step144ExitGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144ExitF_Outgoing : rowsOwned s2Step144ExitGvAfter [s2Step144ExitFOut,s2Step144ExitFvOut,s2Step144ExitGvOut] :=
  hmrRows_owned_drop s2Step144ExitGvAfter [s2Step144ExitGOut,s2Step144ExitFOut,s2Step144ExitFvOut,s2Step144ExitGvOut] 1 s2Step144ExitBank_outgoingOwned

private theorem s2Step144ExitF_distinct : (s2Step144ExitFRow.sign::s2Step144ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144ExitF_owned : (s2Step144ExitFRow.sign::s2Step144ExitFRow.payload).toFinset⊆s2Step144ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step144ExitFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144ExitF_retired : s2Step144ExitFBefore.retireSet s2Step144ExitFExtra.toFinset=s2Step144ExitFAfter := by
  unfold Arena.retireSet s2Step144ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step144ExitFBefore,s2Step144ExitGAfter,s2Step144ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step144ExitF_checked : planRowResizeLog s2Step144ExitFBefore s2Step144ExitFRow 197 []=
    some (s2Step144ExitFAfter,s2Step144ExitFOut,shrinkRow 768 s2Step144ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step144ExitFBefore s2Step144ExitFRow 197 s2Step144ExitF_distinct s2Step144ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step144ExitFRow.payload.take 197) s2Step144ExitFRow.sign=s2Step144ExitFOut := by decide +kernel
  have hi : s2Step144ExitFRow.payload.drop 197=s2Step144ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step144ExitF_retired] at result
  exact result

private def s2Step144ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144ExitFvBefore : Arena := s2Step144ExitFAfter

private theorem s2Step144ExitFv_Incoming : rowsOwned s2Step144ExitFvBefore [s2Step144ExitFvRow,s2Step144ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step144ExitGRow,s2Step144ExitFRow,s2Step144ExitFvRow,s2Step144ExitGvRow] 2 s2Step144ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step144ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144ExitFv_Outgoing : rowsOwned s2Step144ExitGvAfter [s2Step144ExitFvOut,s2Step144ExitGvOut] :=
  hmrRows_owned_drop s2Step144ExitGvAfter [s2Step144ExitGOut,s2Step144ExitFOut,s2Step144ExitFvOut,s2Step144ExitGvOut] 2 s2Step144ExitBank_outgoingOwned

private theorem s2Step144ExitFv_distinct : (s2Step144ExitFvRow.sign::s2Step144ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144ExitFv_owned : (s2Step144ExitFvRow.sign::s2Step144ExitFvRow.payload).toFinset⊆s2Step144ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step144ExitFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144ExitFv_retired : s2Step144ExitFvBefore.retireSet s2Step144ExitFvExtra.toFinset=s2Step144ExitFvAfter := by
  unfold Arena.retireSet s2Step144ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step144ExitFvBefore,s2Step144ExitFAfter,s2Step144ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step144ExitFv_checked : planRowResizeLog s2Step144ExitFvBefore s2Step144ExitFvRow 86 []=
    some (s2Step144ExitFvAfter,s2Step144ExitFvOut,shrinkRow 770 s2Step144ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step144ExitFvBefore s2Step144ExitFvRow 86 s2Step144ExitFv_distinct s2Step144ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step144ExitFvRow.payload.take 86) s2Step144ExitFvRow.sign=s2Step144ExitFvOut := by decide +kernel
  have hi : s2Step144ExitFvRow.payload.drop 86=s2Step144ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step144ExitFv_retired] at result
  exact result

private def s2Step144ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step144ExitG_Incoming : rowsOwned s2Step144ExitGBefore [s2Step144ExitGRow,s2Step144ExitFRow,s2Step144ExitFvRow,s2Step144ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step144ExitGRow,s2Step144ExitFRow,s2Step144ExitFvRow,s2Step144ExitGvRow] 0 s2Step144ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step144ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144ExitG_Outgoing : rowsOwned s2Step144ExitGvAfter [s2Step144ExitGOut,s2Step144ExitFOut,s2Step144ExitFvOut,s2Step144ExitGvOut] :=
  hmrRows_owned_drop s2Step144ExitGvAfter [s2Step144ExitGOut,s2Step144ExitFOut,s2Step144ExitFvOut,s2Step144ExitGvOut] 0 s2Step144ExitBank_outgoingOwned

private theorem s2Step144ExitG_distinct : (s2Step144ExitGRow.sign::s2Step144ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144ExitG_owned : (s2Step144ExitGRow.sign::s2Step144ExitGRow.payload).toFinset⊆s2Step144ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step144ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144ExitG_retired : s2Step144ExitGBefore.retireSet s2Step144ExitGExtra.toFinset=s2Step144ExitGAfter := by
  unfold Arena.retireSet s2Step144ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step144ExitGBefore,s2Step144ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step144ExitG_checked : planRowResizeLog s2Step144ExitGBefore s2Step144ExitGRow 197 []=
    some (s2Step144ExitGAfter,s2Step144ExitGOut,shrinkRow 769 s2Step144ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step144ExitGBefore s2Step144ExitGRow 197 s2Step144ExitG_distinct s2Step144ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step144ExitGRow.payload.take 197) s2Step144ExitGRow.sign=s2Step144ExitGOut := by decide +kernel
  have hi : s2Step144ExitGRow.payload.drop 197=s2Step144ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step144ExitG_retired] at result
  exact result

private def s2Step144ExitGvBefore : Arena := s2Step144ExitFvAfter

private theorem s2Step144ExitGv_Incoming : rowsOwned s2Step144ExitGvBefore [s2Step144ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step144ExitGRow,s2Step144ExitFRow,s2Step144ExitFvRow,s2Step144ExitGvRow] 3 s2Step144ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step144ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144ExitGv_Outgoing : rowsOwned s2Step144ExitGvAfter [s2Step144ExitGvOut] :=
  hmrRows_owned_drop s2Step144ExitGvAfter [s2Step144ExitGOut,s2Step144ExitFOut,s2Step144ExitFvOut,s2Step144ExitGvOut] 3 s2Step144ExitBank_outgoingOwned

private theorem s2Step144ExitGv_distinct : (s2Step144ExitGvRow.sign::s2Step144ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144ExitGv_owned : (s2Step144ExitGvRow.sign::s2Step144ExitGvRow.payload).toFinset⊆s2Step144ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step144ExitGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144ExitGv_retired : s2Step144ExitGvBefore.retireSet s2Step144ExitGvExtra.toFinset=s2Step144ExitGvAfter := by
  unfold Arena.retireSet s2Step144ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step144ExitGvBefore,s2Step144ExitFvAfter,s2Step144ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step144ExitGv_checked : planRowResizeLog s2Step144ExitGvBefore s2Step144ExitGvRow 86 []=
    some (s2Step144ExitGvAfter,s2Step144ExitGvOut,shrinkRow 771 s2Step144ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step144ExitGvBefore s2Step144ExitGvRow 86 s2Step144ExitGv_distinct s2Step144ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step144ExitGvRow.payload.take 86) s2Step144ExitGvRow.sign=s2Step144ExitGvOut := by decide +kernel
  have hi : s2Step144ExitGvRow.payload.drop 86=s2Step144ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step144ExitGv_retired] at result
  exact result

private theorem s2Step144ExitBank_rows : planWindowRowsLog s2Step144ExitGBefore [(s2Step144ExitGRow,197),(s2Step144ExitFRow,197),(s2Step144ExitFvRow,86),(s2Step144ExitGvRow,86)] [[],[],[],[]]=
    some (s2Step144ExitGvAfter,[s2Step144ExitGOut,s2Step144ExitFOut,s2Step144ExitFvOut,s2Step144ExitGvOut],(shrinkRow 769 s2Step144ExitGExtra ++ (shrinkRow 768 s2Step144ExitFExtra ++ (shrinkRow 770 s2Step144ExitFvExtra ++ (shrinkRow 771 s2Step144ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step144ExitGvAfter [] []=some (s2Step144ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step144ExitGvBefore s2Step144ExitGvAfter s2Step144ExitGvAfter
    s2Step144ExitGvRow s2Step144ExitGvOut 86 [] [] [] []
    (shrinkRow 771 s2Step144ExitGvExtra) ([]) s2Step144ExitGv_Incoming s2Step144ExitGv_checked h4 s2Step144ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step144ExitFvBefore s2Step144ExitFvAfter s2Step144ExitGvAfter
    s2Step144ExitFvRow s2Step144ExitFvOut 86 [] [(s2Step144ExitGvRow,86)] [[]] [s2Step144ExitGvOut]
    (shrinkRow 770 s2Step144ExitFvExtra) ((shrinkRow 771 s2Step144ExitGvExtra ++ [])) s2Step144ExitFv_Incoming s2Step144ExitFv_checked h3 s2Step144ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step144ExitFBefore s2Step144ExitFAfter s2Step144ExitGvAfter
    s2Step144ExitFRow s2Step144ExitFOut 197 [] [(s2Step144ExitFvRow,86),(s2Step144ExitGvRow,86)] [[],[]] [s2Step144ExitFvOut,s2Step144ExitGvOut]
    (shrinkRow 768 s2Step144ExitFExtra) ((shrinkRow 770 s2Step144ExitFvExtra ++ (shrinkRow 771 s2Step144ExitGvExtra ++ []))) s2Step144ExitF_Incoming s2Step144ExitF_checked h2 s2Step144ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step144ExitGBefore s2Step144ExitGAfter s2Step144ExitGvAfter
    s2Step144ExitGRow s2Step144ExitGOut 197 [] [(s2Step144ExitFRow,197),(s2Step144ExitFvRow,86),(s2Step144ExitGvRow,86)] [[],[],[]] [s2Step144ExitFOut,s2Step144ExitFvOut,s2Step144ExitGvOut]
    (shrinkRow 769 s2Step144ExitGExtra) ((shrinkRow 768 s2Step144ExitFExtra ++ (shrinkRow 770 s2Step144ExitFvExtra ++ (shrinkRow 771 s2Step144ExitGvExtra ++ [])))) s2Step144ExitG_Incoming s2Step144ExitG_checked h1 s2Step144ExitG_Outgoing
  exact h0

private theorem s2Step144ExitBank_checked : compileHmrBankResizeLog .exit s2Step144ExitGBefore ⟨s2Step144ExitFRow,s2Step144ExitGRow,s2Step144ExitFvRow,s2Step144ExitGvRow⟩ ⟨197,197,86,86⟩ [[],[],[],[]]=
    some (s2Step144ExitGvAfter,⟨s2Step144ExitFOut,s2Step144ExitGOut,s2Step144ExitFvOut,s2Step144ExitGvOut⟩,(shrinkRow 769 s2Step144ExitGExtra ++ (shrinkRow 768 s2Step144ExitFExtra ++ (shrinkRow 770 s2Step144ExitFvExtra ++ (shrinkRow 771 s2Step144ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step144ExitBank_rows]
  rfl

private theorem s2Step144Add0_apart : Disjoint s2Step144Add0Arena.live s2Step144Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step144Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144Add0_card : s2Step144Add0Arena.live.card=882 := by
  decide +kernel

private theorem s2Step144Add0_borrowed : s2Step144Add0Arena.checkBorrow (hmrHybridCount s2Step144Add0Arena s2Step144Add0B.length) s2Step144Add0Work=some s2Step144Add0During := by
  have len : s2Step144Add0Work.length=hmrHybridCount s2Step144Add0Arena s2Step144Add0B.length := by
    rw [hmrHybridCount,s2Step144Add0_card]
    decide +kernel
  have nd : s2Step144Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step144Add0Arena s2Step144Add0During s2Step144Add0Work.toFinset s2Step144Add0_bounded s2Step144Add0_apart rfl

private theorem s2Step144Add0_distinct : (778::836::849::(s2Step144Add0A++s2Step144Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144Add0_owned : (778::836::849::(s2Step144Add0A++s2Step144Add0B)).toFinset⊆s2Step144Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step144Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144Add0_checked : compileHmrHybridCinLog s2Step144Add0Arena 836 778 849 s2Step144Add0A s2Step144Add0B s2Step144Add0Work=some s2Step144Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step144Add0Arena s2Step144Add0During 836 778 849 s2Step144Add0A s2Step144Add0B s2Step144Add0Work
    (by decide +kernel) (by decide +kernel) s2Step144Add0_distinct
    (fun q hq => s2Step144Add0_owned (List.mem_toFinset.mpr hq)) s2Step144Add0_borrowed

private theorem s2Step144Add1_apart : Disjoint s2Step144Add1Arena.live s2Step144Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step144Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144Add1_card : s2Step144Add1Arena.live.card=882 := by
  decide +kernel

private theorem s2Step144Add1_borrowed : s2Step144Add1Arena.checkBorrow (hmrHybridCount s2Step144Add1Arena s2Step144Add1B.length) s2Step144Add1Work=some s2Step144Add1During := by
  have len : s2Step144Add1Work.length=hmrHybridCount s2Step144Add1Arena s2Step144Add1B.length := by
    rw [hmrHybridCount,s2Step144Add1_card]
    decide +kernel
  have nd : s2Step144Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step144Add1Arena s2Step144Add1During s2Step144Add1Work.toFinset s2Step144Add1_bounded s2Step144Add1_apart rfl

private theorem s2Step144Add1_distinct : (778::836::849::(s2Step144Add1A++s2Step144Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144Add1_owned : (778::836::849::(s2Step144Add1A++s2Step144Add1B)).toFinset⊆s2Step144Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step144Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144Add1_checked : compileHmrHybridCinLog s2Step144Add1Arena 836 778 849 s2Step144Add1A s2Step144Add1B s2Step144Add1Work=some s2Step144Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step144Add1Arena s2Step144Add1During 836 778 849 s2Step144Add1A s2Step144Add1B s2Step144Add1Work
    (by decide +kernel) (by decide +kernel) s2Step144Add1_distinct
    (fun q hq => s2Step144Add1_owned (List.mem_toFinset.mpr hq)) s2Step144Add1_borrowed

private theorem s2Step144F4_apart : Disjoint (s2Step144Add0A++s2Step144Add0B).toFinset (s2Step144Add1A++s2Step144Add1B).toFinset := by
  have nd : ((s2Step144Add0A++s2Step144Add0B)++(s2Step144Add1A++s2Step144Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step144F4_carry : s2Step144F4FlagArena.checkBorrow 1 [849]=some s2Step144Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step144F4FlagArena,s2Step144HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step144F4FlagArena,s2Step144HeadFvAfter,s2Step144Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step144F4_distinct : (845::836::778::849::((s2Step144Add0A++s2Step144Add1A)++(s2Step144Add0B++s2Step144Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144F4_flag : s2Step144HeadFvAfter.checkBorrow 1 [778]=some s2Step144F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step144HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step144F4_owned : (845::836::((s2Step144Add0A++s2Step144Add1A)++(s2Step144Add0B++s2Step144Add1B))).toFinset⊆s2Step144HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step144HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144F4_checked : compileHmrHybridF4Log s2Step144HeadFvAfter 845 836 s2Step144Add0A s2Step144Add0B s2Step144Add1A s2Step144Add1B [778] [849] s2Step144Add0Work s2Step144Add1Work=some s2Step144F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step144HeadFvAfter s2Step144F4FlagArena s2Step144Add0Arena s2Step144Add0During s2Step144Add1During 845 836
    s2Step144Add0A s2Step144Add0B s2Step144Add1A s2Step144Add1B [778] [849] s2Step144Add0Work s2Step144Add1Work
    (fun q hq => s2Step144F4_owned (List.mem_toFinset.mpr hq)) s2Step144F4_flag s2Step144F4_carry
    s2Step144F4_distinct s2Step144F4_apart s2Step144Add0_checked s2Step144Add1_checked

private theorem s2Step144Front_branch : s2Step144FrontSigmaArena.checkBorrow 1 [836]=some s2Step144HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step144FrontSigmaArena,s2Step144EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step144FrontSigmaArena,s2Step144EntryGvAfter,s2Step144HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step144Front_entry : HmrFrontEntryValid s2Step144EntryFBefore s2Step144FrontBank 197 86 ⟨197,197,86,86⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step144FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step144EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step144EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step144FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step144Front_sigma : s2Step144EntryGvAfter.checkBorrow 1 [845]=some s2Step144FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step144EntryGvAfter,arenaWires]
  · rfl

private def s2Step144HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144HeadFBefore : Arena := s2Step144HeadGAfter

private def s2Step144HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708],768⟩

private def s2Step144HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩

private def s2Step144HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],769⟩

private def s2Step144HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788],771⟩

private theorem s2Step144HeadBank_incomingDistinct : ([s2Step144HeadGRow,s2Step144HeadFRow,s2Step144HeadGvRow,s2Step144HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144HeadF_Incoming : rowsOwned s2Step144HeadFBefore [s2Step144HeadFRow,s2Step144HeadGvRow,s2Step144HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step144HeadGRow,s2Step144HeadFRow,s2Step144HeadGvRow,s2Step144HeadFvRow] 1 s2Step144HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step144HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144HeadBank_outgoingOwned : rowsOwned s2Step144HeadFvAfter [s2Step144HeadGOut,s2Step144HeadFOut,s2Step144HeadGvOut,s2Step144HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step144HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144HeadF_Outgoing : rowsOwned s2Step144HeadFvAfter [s2Step144HeadFOut,s2Step144HeadGvOut,s2Step144HeadFvOut] :=
  hmrRows_owned_drop s2Step144HeadFvAfter [s2Step144HeadGOut,s2Step144HeadFOut,s2Step144HeadGvOut,s2Step144HeadFvOut] 1 s2Step144HeadBank_outgoingOwned

private theorem s2Step144HeadF_distinct : (s2Step144HeadFRow.sign::s2Step144HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144HeadF_owned : (s2Step144HeadFRow.sign::s2Step144HeadFRow.payload).toFinset⊆s2Step144HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step144HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144HeadF_reserved : s2Step144HeadFBefore.reserve s2Step144HeadFFresh.toFinset=some s2Step144HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step144HeadFFresh,arenaWires]
  · norm_num [s2Step144HeadFBefore,s2Step144HeadGAfter,s2Step144HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step144HeadFAfter,s2Step144HeadFBefore,s2Step144HeadGAfter,s2Step144HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step144HeadF_checked : planRowResizeLog s2Step144HeadFBefore s2Step144HeadFRow 198 s2Step144HeadFFresh=
    some (s2Step144HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 783],768⟩,growRow 768 s2Step144HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step144HeadFBefore s2Step144HeadFAfter s2Step144HeadFRow 198 s2Step144HeadFFresh
    s2Step144HeadF_distinct s2Step144HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step144HeadF_reserved
  have rowEq : WindowRow.mk (s2Step144HeadFRow.payload++s2Step144HeadFFresh) s2Step144HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 783],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step144HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step144HeadFvBefore : Arena := s2Step144HeadGvAfter

private theorem s2Step144HeadFv_Incoming : rowsOwned s2Step144HeadFvBefore [s2Step144HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step144HeadGRow,s2Step144HeadFRow,s2Step144HeadGvRow,s2Step144HeadFvRow] 3 s2Step144HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step144HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144HeadFv_Outgoing : rowsOwned s2Step144HeadFvAfter [s2Step144HeadFvOut] :=
  hmrRows_owned_drop s2Step144HeadFvAfter [s2Step144HeadGOut,s2Step144HeadFOut,s2Step144HeadGvOut,s2Step144HeadFvOut] 3 s2Step144HeadBank_outgoingOwned

private theorem s2Step144HeadFv_distinct : (s2Step144HeadFvRow.sign::s2Step144HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144HeadFv_owned : (s2Step144HeadFvRow.sign::s2Step144HeadFvRow.payload).toFinset⊆s2Step144HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step144HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144HeadFv_reserved : s2Step144HeadFvBefore.reserve s2Step144HeadFvFresh.toFinset=some s2Step144HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step144HeadFvFresh,arenaWires]
  · norm_num [s2Step144HeadFvBefore,s2Step144HeadGvAfter,s2Step144HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step144HeadFvAfter,s2Step144HeadFvBefore,s2Step144HeadGvAfter,s2Step144HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step144HeadFv_checked : planRowResizeLog s2Step144HeadFvBefore s2Step144HeadFvRow 87 s2Step144HeadFvFresh=
    some (s2Step144HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 789],770⟩,growRow 770 s2Step144HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step144HeadFvBefore s2Step144HeadFvAfter s2Step144HeadFvRow 87 s2Step144HeadFvFresh
    s2Step144HeadFv_distinct s2Step144HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step144HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step144HeadFvRow.payload++s2Step144HeadFvFresh) s2Step144HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step144HeadG_Incoming : rowsOwned s2Step144HeadGBefore [s2Step144HeadGRow,s2Step144HeadFRow,s2Step144HeadGvRow,s2Step144HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step144HeadGRow,s2Step144HeadFRow,s2Step144HeadGvRow,s2Step144HeadFvRow] 0 s2Step144HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step144HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144HeadG_Outgoing : rowsOwned s2Step144HeadFvAfter [s2Step144HeadGOut,s2Step144HeadFOut,s2Step144HeadGvOut,s2Step144HeadFvOut] :=
  hmrRows_owned_drop s2Step144HeadFvAfter [s2Step144HeadGOut,s2Step144HeadFOut,s2Step144HeadGvOut,s2Step144HeadFvOut] 0 s2Step144HeadBank_outgoingOwned

private theorem s2Step144HeadG_distinct : (s2Step144HeadGRow.sign::s2Step144HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144HeadG_owned : (s2Step144HeadGRow.sign::s2Step144HeadGRow.payload).toFinset⊆s2Step144HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step144HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144HeadG_reserved : s2Step144HeadGBefore.reserve s2Step144HeadGFresh.toFinset=some s2Step144HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step144HeadGFresh,arenaWires]
  · norm_num [s2Step144HeadGBefore,s2Step144HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step144HeadGAfter,s2Step144HeadGBefore,s2Step144HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step144HeadG_checked : planRowResizeLog s2Step144HeadGBefore s2Step144HeadGRow 198 s2Step144HeadGFresh=
    some (s2Step144HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 816],769⟩,growRow 769 s2Step144HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step144HeadGBefore s2Step144HeadGAfter s2Step144HeadGRow 198 s2Step144HeadGFresh
    s2Step144HeadG_distinct s2Step144HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step144HeadG_reserved
  have rowEq : WindowRow.mk (s2Step144HeadGRow.payload++s2Step144HeadGFresh) s2Step144HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 816],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step144HeadGvBefore : Arena := s2Step144HeadFAfter

private theorem s2Step144HeadGv_Incoming : rowsOwned s2Step144HeadGvBefore [s2Step144HeadGvRow,s2Step144HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step144HeadGRow,s2Step144HeadFRow,s2Step144HeadGvRow,s2Step144HeadFvRow] 2 s2Step144HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step144HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step144HeadGv_Outgoing : rowsOwned s2Step144HeadFvAfter [s2Step144HeadGvOut,s2Step144HeadFvOut] :=
  hmrRows_owned_drop s2Step144HeadFvAfter [s2Step144HeadGOut,s2Step144HeadFOut,s2Step144HeadGvOut,s2Step144HeadFvOut] 2 s2Step144HeadBank_outgoingOwned

private theorem s2Step144HeadGv_distinct : (s2Step144HeadGvRow.sign::s2Step144HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step144HeadGv_owned : (s2Step144HeadGvRow.sign::s2Step144HeadGvRow.payload).toFinset⊆s2Step144HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step144HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step144HeadGv_reserved : s2Step144HeadGvBefore.reserve s2Step144HeadGvFresh.toFinset=some s2Step144HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step144HeadGvFresh,arenaWires]
  · norm_num [s2Step144HeadGvBefore,s2Step144HeadFAfter,s2Step144HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step144HeadGvAfter,s2Step144HeadGvBefore,s2Step144HeadFAfter,s2Step144HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step144HeadGv_checked : planRowResizeLog s2Step144HeadGvBefore s2Step144HeadGvRow 87 s2Step144HeadGvFresh=
    some (s2Step144HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 841],771⟩,growRow 771 s2Step144HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step144HeadGvBefore s2Step144HeadGvAfter s2Step144HeadGvRow 87 s2Step144HeadGvFresh
    s2Step144HeadGv_distinct s2Step144HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step144HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step144HeadGvRow.payload++s2Step144HeadGvFresh) s2Step144HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 841],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step144HeadBank_rows : planWindowRowsLog s2Step144HeadGBefore [(s2Step144HeadGRow,198),(s2Step144HeadFRow,198),(s2Step144HeadGvRow,87),(s2Step144HeadFvRow,87)] [s2Step144HeadGFresh,s2Step144HeadFFresh,s2Step144HeadGvFresh,s2Step144HeadFvFresh]=
    some (s2Step144HeadFvAfter,[s2Step144HeadGOut,s2Step144HeadFOut,s2Step144HeadGvOut,s2Step144HeadFvOut],(growRow 769 s2Step144HeadGFresh ++ (growRow 768 s2Step144HeadFFresh ++ (growRow 771 s2Step144HeadGvFresh ++ (growRow 770 s2Step144HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step144HeadFvAfter [] []=some (s2Step144HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step144HeadFvBefore s2Step144HeadFvAfter s2Step144HeadFvAfter
    s2Step144HeadFvRow s2Step144HeadFvOut 87 s2Step144HeadFvFresh [] [] []
    (growRow 770 s2Step144HeadFvFresh) ([]) s2Step144HeadFv_Incoming s2Step144HeadFv_checked h4 s2Step144HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step144HeadGvBefore s2Step144HeadGvAfter s2Step144HeadFvAfter
    s2Step144HeadGvRow s2Step144HeadGvOut 87 s2Step144HeadGvFresh [(s2Step144HeadFvRow,87)] [s2Step144HeadFvFresh] [s2Step144HeadFvOut]
    (growRow 771 s2Step144HeadGvFresh) ((growRow 770 s2Step144HeadFvFresh ++ [])) s2Step144HeadGv_Incoming s2Step144HeadGv_checked h3 s2Step144HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step144HeadFBefore s2Step144HeadFAfter s2Step144HeadFvAfter
    s2Step144HeadFRow s2Step144HeadFOut 198 s2Step144HeadFFresh [(s2Step144HeadGvRow,87),(s2Step144HeadFvRow,87)] [s2Step144HeadGvFresh,s2Step144HeadFvFresh] [s2Step144HeadGvOut,s2Step144HeadFvOut]
    (growRow 768 s2Step144HeadFFresh) ((growRow 771 s2Step144HeadGvFresh ++ (growRow 770 s2Step144HeadFvFresh ++ []))) s2Step144HeadF_Incoming s2Step144HeadF_checked h2 s2Step144HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step144HeadGBefore s2Step144HeadGAfter s2Step144HeadFvAfter
    s2Step144HeadGRow s2Step144HeadGOut 198 s2Step144HeadGFresh [(s2Step144HeadFRow,198),(s2Step144HeadGvRow,87),(s2Step144HeadFvRow,87)] [s2Step144HeadFFresh,s2Step144HeadGvFresh,s2Step144HeadFvFresh] [s2Step144HeadFOut,s2Step144HeadGvOut,s2Step144HeadFvOut]
    (growRow 769 s2Step144HeadGFresh) ((growRow 768 s2Step144HeadFFresh ++ (growRow 771 s2Step144HeadGvFresh ++ (growRow 770 s2Step144HeadFvFresh ++ [])))) s2Step144HeadG_Incoming s2Step144HeadG_checked h1 s2Step144HeadG_Outgoing
  exact h0

private theorem s2Step144HeadBank_checked : compileHmrBankResizeLog .headroom s2Step144HeadGBefore ⟨s2Step144HeadFRow,s2Step144HeadGRow,s2Step144HeadFvRow,s2Step144HeadGvRow⟩ ⟨198,198,87,87⟩ [s2Step144HeadGFresh,s2Step144HeadFFresh,s2Step144HeadGvFresh,s2Step144HeadFvFresh]=
    some (s2Step144HeadFvAfter,⟨s2Step144HeadFOut,s2Step144HeadGOut,s2Step144HeadFvOut,s2Step144HeadGvOut⟩,(growRow 769 s2Step144HeadGFresh ++ (growRow 768 s2Step144HeadFFresh ++ (growRow 771 s2Step144HeadGvFresh ++ (growRow 770 s2Step144HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step144HeadBank_rows]
  rfl

private theorem s2Step144Front_checked : compileHmrSourceFrontLog s2Step144EntryFBefore s2Step144FrontBank 197 86 ⟨197,197,86,86⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step144FrontLog=some s2Step144FrontPlan := by
  have pairEq : s2Step144FrontPair=⟨s2Step144HeadFRow,s2Step144HeadGRow,s2Step144HeadFvRow,s2Step144HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step144FrontHead=⟨s2Step144ExitFRow,s2Step144ExitGRow,s2Step144ExitFvRow,s2Step144ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step144Add0A=s2Step144FrontHead.f.wires := by decide +kernel
  have gEq : s2Step144Add0B=s2Step144FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step144Add1A=s2Step144FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step144Add1B=s2Step144FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step144EntryFBefore s2Step144FrontBank 197 86 ⟨197,197,86,86⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step144FrontLog s2Step144FrontPlan
  · exact s2Step144Front_entry
  · exact s2Step144EntryBank_checked
  · exact s2Step144Front_sigma
  · rfl
  · exact s2Step144Front_branch
  · rfl
  · simpa only [s2Step144FrontPlan,pairEq] using s2Step144HeadBank_checked
  · simpa only [s2Step144FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step144F4_checked
  · exact s2Step144Counter_checked
  · rfl
  · simpa only [s2Step144FrontPlan,headEq] using s2Step144ExitBank_checked

private theorem s2Step144Complete_explicit_checked : compileHmrEarlyStepLog s2Step144EntryFBefore s2Step144FrontBank 197 86 ⟨197,197,86,86⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step144CompleteLog=some s2Step144CompletePlan := by
  let Q := s2Step144EarlyControlPlan
  have hq := s2Step144EarlyControl_plan_checked
  have fv1 : s2Step144CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step144CompleteOut.fv.payload[2]?.getD s2Step144CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step144CompleteOut.fv.payload[3]?.getD s2Step144CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step144CompleteOut.fv.payload[4]?.getD s2Step144CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step144EntryFBefore s2Step144EarlyControlArena s2Step144FrontBank 197 86 ⟨197,197,86,86⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step144CompleteLog s2Step144FrontPlan Q
    s2Step144Front_checked s2Step144Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step144Complete_owned s2Step144Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step144EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 s2Step144CompleteOut.fv.second (s2Step144CompleteOut.fv.payload[2]?.getD s2Step144CompleteOut.fv.sign) (s2Step144CompleteOut.fv.payload[3]?.getD s2Step144CompleteOut.fv.sign) (s2Step144CompleteOut.fv.payload[4]?.getD s2Step144CompleteOut.fv.sign) 836 42 s2Step144EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep144Arena : Arena := s2Step144EntryFBefore
def s2PrivateStep144Bank : WindowBank := s2Step144FrontBank
def s2PrivateStep144Spec : HmrSourceWalkStepLog := ⟨197,86,⟨197,197,86,86⟩,42,.early s2Step144CompleteLog⟩
def s2PrivateStep144Plan : HmrSourceStepPlan := .early s2Step144CompletePlan
theorem s2PrivateStep144_source : s2PrivateStep144Spec=s2ObservedLogs144[0] := rfl
theorem s2PrivateStep144_checked : compileHmrSourceStepLog s2PrivateStep144Arena s2PrivateStep144Bank
    s2PrivateStep144Spec.fgWidth s2PrivateStep144Spec.vWidth s2PrivateStep144Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 144 s2PrivateStep144Spec.need none s2PrivateStep144Spec.log=some s2PrivateStep144Plan := by
  change compileHmrSourceStepLog s2Step144EntryFBefore s2Step144FrontBank 197 86 ⟨197,197,86,86⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 144 42 none (.early s2Step144CompleteLog)=some (.early s2Step144CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 144<498)]
  rw [s2Step144Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
