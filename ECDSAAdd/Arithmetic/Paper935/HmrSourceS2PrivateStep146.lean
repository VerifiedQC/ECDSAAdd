import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep144
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

private def s2Step146CompleteMoves : List (Wire × Wire) := [(844,195)]

private def s2Step146EarlyControlLog : HmrEarlyControlLog := ⟨[844, 845, 789, 783, 797],[778],[849],[790, 815, 867, 877, 879, 882],[]⟩

private def s2Step146FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [845]],[[797], [783], [789], [841]],[[], [], [], []]⟩,[836],[780],[778],[849],[790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[778, 849, 790, 815]⟩

private def s2Step146CompleteLog : HmrEarlyStepLog := ⟨s2Step146FrontLog,s2Step146CompleteMoves,s2Step146EarlyControlLog⟩

private def s2Step146ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707],768⟩

private def s2Step146ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩

private def s2Step146ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194],769⟩

private def s2Step146ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788],771⟩

private def s2Step146FrontOut : WindowBank := ⟨s2Step146ExitFOut,s2Step146ExitGOut,s2Step146ExitFvOut,s2Step146ExitGvOut⟩

private def s2Step146CompleteOut : WindowBank := s2Step146FrontOut.repacked s2Step146CompleteMoves

private def s2Step146EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step146EarlyControlPositiveArena,[778],s2Step146EarlyControlEqualityArena,[849],⟨⟨836,false⟩,[⟨⟨778,false⟩,849⟩]⟩⟩

private def s2Step146EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,844⟩,⟨⟨774,false⟩,845⟩,⟨⟨775,false⟩,789⟩,⟨⟨776,false⟩,783⟩,⟨⟨777,false⟩,797⟩]⟩

private def s2Step146EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step146EarlyControlZeroArena,s2Step146EarlyControlZeroPlan,s2Step146EarlyControlClassPlan,s2Step146EarlyControlFlagArena,s2Step146EarlyControlFittedArena,s2Step146EarlyControlHistoryArena,s2Step146EarlyControlSigmaArena,s2Step146EarlyControlOutputArena,s2Step146EarlyControlLog⟩

private def s2Step146CounterWork : List Wire := [778, 849, 790, 815]

private theorem s2Step146Counter_bounded : s2Step146CounterWork.toFinset⊆arenaWires := by norm_num [s2Step146CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step146HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146CounterDuring : Arena := ⟨s2Step146HeadFvAfter.live∪s2Step146CounterWork.toFinset,Finset.union_subset s2Step146HeadFvAfter.bounded s2Step146Counter_bounded⟩

private def s2Step146EntryFFresh : List Wire := []

private def s2Step146EntryFvFresh : List Wire := []

private def s2Step146EntryGFresh : List Wire := []

private def s2Step146EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146EntryGvFresh : List Wire := [845]

private def s2Step146ExitFExtra : List Wire := [783]

private def s2Step146ExitGExtra : List Wire := [195, 797]

private def s2Step146ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<195) ∨ (196≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146ExitGvExtra : List Wire := [845, 789]

private def s2Step146Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step146Add0_bounded : s2Step146Add0Work.toFinset⊆arenaWires := by
  have h : s2Step146Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step146Add0During : Arena := ⟨s2Step146Add0Arena.live∪s2Step146Add0Work.toFinset,Finset.union_subset s2Step146Add0Arena.bounded s2Step146Add0_bounded⟩

private def s2Step146Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step146Add1_bounded : s2Step146Add1Work.toFinset⊆arenaWires := by
  have h : s2Step146Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step146Add1During : Arena := ⟨s2Step146Add1Arena.live∪s2Step146Add1Work.toFinset,Finset.union_subset s2Step146Add1Arena.bounded s2Step146Add1_bounded⟩

private def s2Step146F4FlagArena : Arena := ⟨s2Step146HeadFvAfter.live∪{778},Finset.union_subset s2Step146HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step146F4Plan : HmrHybridF4Plan := ⟨s2Step146F4FlagArena,[778],s2Step146Add0Arena,[849],s2Step146Add0During,s2Step146Add0Work,s2Step146Add1During,s2Step146Add1Work⟩

private def s2Step146HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 783],768⟩

private def s2Step146HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩

private def s2Step146HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 797],769⟩

private def s2Step146HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 845, 789],771⟩

private def s2Step146FrontHead : WindowBank := ⟨s2Step146HeadFOut,s2Step146HeadGOut,s2Step146HeadFvOut,s2Step146HeadGvOut⟩

private def s2Step146EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707],768⟩

private def s2Step146EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816],770⟩

private def s2Step146EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195],769⟩

private def s2Step146EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 845],771⟩

private def s2Step146FrontPair : WindowBank := ⟨s2Step146EntryFOut,s2Step146EntryGOut,s2Step146EntryFvOut,s2Step146EntryGvOut⟩

private def s2Step146FrontSigmaArena : Arena := ⟨s2Step146EntryGvAfter.live∪{836},Finset.union_subset s2Step146EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step146HeadFFresh : List Wire := [783]

private def s2Step146HeadFvFresh : List Wire := [841]

private def s2Step146HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146HeadGFresh : List Wire := [797]

private def s2Step146HeadGvFresh : List Wire := [789]

private def s2Step146FrontPlan : HmrSourceFront := ⟨s2Step146EntryGvAfter,s2Step146FrontPair,(growRow 768 s2Step146EntryFFresh ++ (growRow 769 s2Step146EntryGFresh ++ (growRow 770 s2Step146EntryFvFresh ++ (growRow 771 s2Step146EntryGvFresh ++ [])))),s2Step146FrontSigmaArena,[836],s2Step146HeadGBefore,[780],
  s2Step146HeadFvAfter,s2Step146FrontHead,(growRow 769 s2Step146HeadGFresh ++ (growRow 768 s2Step146HeadFFresh ++ (growRow 771 s2Step146HeadGvFresh ++ (growRow 770 s2Step146HeadFvFresh ++ [])))),s2Step146F4Plan,s2Step146CounterDuring,s2Step146CounterWork,s2Step146ExitGvAfter,s2Step146FrontOut,(shrinkRow 769 s2Step146ExitGExtra ++ (shrinkRow 768 s2Step146ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step146ExitGvExtra ++ []))))⟩

private def s2Step146CompletePlan : HmrEarlyStepPlan := ⟨s2Step146FrontPlan,s2Step146EarlyControlArena,s2Step146EarlyControlPlan,s2Step146CompleteMoves⟩

private theorem s2Step146Complete_apart : List.Disjoint (s2Step146CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [836, 780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step146CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[836, 780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step146Complete_owned : (s2Step146CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step146EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step146EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step146CompleteMoveArena : Arena := ⟨s2Step146ExitGvAfter.live∪{195},Finset.union_subset s2Step146ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step146Complete_repack : s2Step146ExitGvAfter.checkRepack s2Step146CompleteMoves=some s2Step146EarlyControlArena := by
  have owned : 844∈s2Step146ExitGvAfter.live := by norm_num [s2Step146ExitGvAfter,arenaWires]
  have reserve : s2Step146ExitGvAfter.reserve {195}=some s2Step146CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step146ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step146CompleteMoveArena.retireSet {844}=s2Step146EarlyControlArena := by
    unfold Arena.retireSet s2Step146EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step146CompleteMoveArena,s2Step146ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step146CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step146CompleteMoveArena.retireSet {844}).checkRepack []=some s2Step146EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step146EarlyControl_branchOwned : ([780] : List Wire).toFinset⊆s2Step146EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step146EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EarlyControl_branch : compileHmrBranchRetirement s2Step146EarlyControlSigmaArena 780=some s2Step146EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step146EarlyControl_branchOwned
  · ext q
    simp [s2Step146EarlyControlOutputArena,s2Step146EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step146EarlyControl_classEqualityBorrow : s2Step146EarlyControlPositiveArena.checkBorrow (([836, 778] : List Wire).length-1) s2Step146EarlyControlLog.classWork=some s2Step146EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step146EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step146EarlyControlEqualityArena,s2Step146EarlyControlPositiveArena,s2Step146EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step146EarlyControl_classEqualityOwned : ([836, 778] : List Wire).toFinset⊆s2Step146EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step146EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EarlyControl_classEquality : compileHmrEqualityLog s2Step146EarlyControlPositiveArena [836, 778] 0 s2Step146EarlyControlLog.classWork=some (s2Step146EarlyControlEqualityArena,s2Step146EarlyControlLog.classWork,s2Step146EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step146EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step146EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step146EarlyControl_classOwned : ([777, 797, 836] : List Wire).toFinset⊆s2Step146EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step146EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EarlyControl_positiveBorrow : s2Step146EarlyControlZeroArena.checkBorrow (1) s2Step146EarlyControlLog.positiveWork=some s2Step146EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step146EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step146EarlyControlPositiveArena,s2Step146EarlyControlZeroArena,s2Step146EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step146EarlyControl_class : compileHmrSourceClassLog s2Step146EarlyControlZeroArena false 777 s2Step146EarlyControlZeroPlan.top 0 836 s2Step146EarlyControlLog.positiveWork s2Step146EarlyControlLog.classWork=some s2Step146EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step146EarlyControlClassPlan s2Step146EarlyControlZeroArena false 777 s2Step146EarlyControlZeroPlan.top 0 836
  constructor
  · decide +kernel
  · exact s2Step146EarlyControl_classOwned
  · exact s2Step146EarlyControl_positiveBorrow
  · exact s2Step146EarlyControl_classEquality

private theorem s2Step146EarlyControl_entryRecordOwned : ([780, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step146EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step146EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EarlyControl_entrySigmaOwned : ([836, 254] : List Wire).toFinset⊆s2Step146EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step146EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EarlyControl_fitBorrow : s2Step146EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step146EarlyControlLog.recordFresh=some s2Step146EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step146EarlyControlFlagArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step146EarlyControlFittedArena,s2Step146EarlyControlFlagArena,s2Step146EarlyControlLog,arenaWires]

private theorem s2Step146EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step146EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step146EarlyControlFlagArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EarlyControl_fit : compileHmrRecordGrowLog s2Step146EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step146EarlyControlLog.recordFresh=some s2Step146EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step146EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step146EarlyControl_fitBorrow

private theorem s2Step146EarlyControl_flagsBorrow : s2Step146EarlyControlEqualityArena.checkBorrow (6) s2Step146EarlyControlLog.flagWork=some s2Step146EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step146EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step146EarlyControlFlagArena,s2Step146EarlyControlEqualityArena,s2Step146EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step146EarlyControl_flagsOwned : ([849, 253, 252, 251] : List Wire).toFinset⊆s2Step146EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step146EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EarlyControl_flags : compileHmrFlagsLog s2Step146EarlyControlClassPlan.equalityArena s2Step146EarlyControlClassPlan.equality.top 253 252 251 s2Step146EarlyControlLog.flagWork=some s2Step146EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step146EarlyControl_flagsOwned⟩
  · exact s2Step146EarlyControl_flagsBorrow

private theorem s2Step146EarlyControl_historyBorrow : s2Step146EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step146EarlyControlLog.recordFresh=some s2Step146EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step146EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step146EarlyControlHistoryArena,s2Step146EarlyControlArena,s2Step146EarlyControlLog,arenaWires]

private theorem s2Step146EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step146EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step146EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EarlyControl_history : compileHmrRecordGrowLog s2Step146EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step146EarlyControlLog.recordFresh=some s2Step146EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step146EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step146EarlyControl_historyBorrow

private theorem s2Step146EarlyControl_sigmaOwned : ([254, 836] : List Wire).toFinset⊆s2Step146EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step146EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EarlyControl_sigmaReleaseOwned : ([836] : List Wire).toFinset⊆s2Step146EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step146EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EarlyControl_sigmaRelease : s2Step146EarlyControlHistoryArena.release {836} (fun _ => false)=some s2Step146EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step146EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step146EarlyControlSigmaArena,s2Step146EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step146EarlyControl_sigma : compileHmrSigmaDropLog s2Step146EarlyControlHistoryArena false 0 0 254 836 []=some s2Step146EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step146EarlyControl_sigmaOwned⟩
  · exact s2Step146EarlyControl_sigmaRelease

private theorem s2Step146EarlyControl_zeroBorrow : s2Step146EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step146EarlyControlLog.zeroWork=some s2Step146EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step146EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step146EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step146EarlyControlZeroArena,s2Step146EarlyControlArena,s2Step146EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step146EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step146EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step146EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<844) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EarlyControl_zero : compileHmrEqualityLog s2Step146EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step146EarlyControlLog.zeroWork=some (s2Step146EarlyControlZeroArena,s2Step146EarlyControlLog.zeroWork,s2Step146EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step146EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step146EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step146EarlyControl_logged : s2Step146EarlyControlPlan.Logged s2Step146EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 836 254 253 252 251 780 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step146EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step146EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step146EarlyControl_zero
  · exact s2Step146EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step146EarlyControl_flags
  · exact s2Step146EarlyControl_fit
  · exact s2Step146EarlyControl_history
  · exact s2Step146EarlyControl_sigma
  · exact s2Step146EarlyControl_branch

private theorem s2Step146EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step146EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 836 254 253 252 251 780 42 s2Step146EarlyControlLog=some s2Step146EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step146EarlyControlPlan s2Step146EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 836 254 253 252 251 780 42 s2Step146EarlyControl_logged

private def s2Step146EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707],768⟩

private def s2Step146EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816],770⟩

private def s2Step146EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195],769⟩

private def s2Step146EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788],771⟩

private def s2Step146FrontBank : WindowBank := ⟨s2Step146EntryFRow,s2Step146EntryGRow,s2Step146EntryFvRow,s2Step146EntryGvRow⟩

private def s2Step146Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 783, 768]

private def s2Step146Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 797, 769]

private def s2Step146Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841, 770]

private def s2Step146Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 845, 789, 771]

private theorem s2Step146Counter_apart : Disjoint s2Step146HeadFvAfter.live s2Step146CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step146HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146Counter_borrowed : s2Step146HeadFvAfter.checkBorrow 4 s2Step146CounterWork=some s2Step146CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step146HeadFvAfter s2Step146CounterDuring s2Step146CounterWork.toFinset s2Step146Counter_bounded s2Step146Counter_apart rfl

private theorem s2Step146Counter_owned : (836::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step146HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step146HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146Counter_checked : compileHmrCounterStepLog s2Step146HeadFvAfter true 836 [772, 773, 774, 775, 776, 777] s2Step146CounterWork=some s2Step146CounterDuring := by
  have owned : ∀q∈836::[772, 773, 774, 775, 776, 777],q∈s2Step146HeadFvAfter.live := fun q hq => s2Step146Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step146Counter_borrowed

private def s2Step146EntryFAfter : Arena := s2Step146EntryFBefore

private theorem s2Step146EntryBank_incomingDistinct : ([s2Step146EntryFRow,s2Step146EntryGRow,s2Step146EntryFvRow,s2Step146EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146EntryF_Incoming : rowsOwned s2Step146EntryFBefore [s2Step146EntryFRow,s2Step146EntryGRow,s2Step146EntryFvRow,s2Step146EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step146EntryFRow,s2Step146EntryGRow,s2Step146EntryFvRow,s2Step146EntryGvRow] 0 s2Step146EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step146EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146EntryBank_outgoingOwned : rowsOwned s2Step146EntryGvAfter [s2Step146EntryFOut,s2Step146EntryGOut,s2Step146EntryFvOut,s2Step146EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step146EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146EntryF_Outgoing : rowsOwned s2Step146EntryGvAfter [s2Step146EntryFOut,s2Step146EntryGOut,s2Step146EntryFvOut,s2Step146EntryGvOut] :=
  hmrRows_owned_drop s2Step146EntryGvAfter [s2Step146EntryFOut,s2Step146EntryGOut,s2Step146EntryFvOut,s2Step146EntryGvOut] 0 s2Step146EntryBank_outgoingOwned

private theorem s2Step146EntryF_distinct : (s2Step146EntryFRow.sign::s2Step146EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146EntryF_owned : (s2Step146EntryFRow.sign::s2Step146EntryFRow.payload).toFinset⊆s2Step146EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step146EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EntryF_reserved : s2Step146EntryFBefore.reserve s2Step146EntryFFresh.toFinset=some s2Step146EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step146EntryFFresh,arenaWires]
  · norm_num [s2Step146EntryFBefore,s2Step146EntryFFresh,arenaWires]
  · simp only [s2Step146EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step146EntryF_checked : planRowResizeLog s2Step146EntryFBefore s2Step146EntryFRow 196 s2Step146EntryFFresh=
    some (s2Step146EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707],768⟩,growRow 768 s2Step146EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step146EntryFBefore s2Step146EntryFAfter s2Step146EntryFRow 196 s2Step146EntryFFresh
    s2Step146EntryF_distinct s2Step146EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step146EntryF_reserved
  have rowEq : WindowRow.mk (s2Step146EntryFRow.payload++s2Step146EntryFFresh) s2Step146EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step146EntryFvAfter : Arena := s2Step146EntryFBefore

private def s2Step146EntryFvBefore : Arena := s2Step146EntryFBefore

private theorem s2Step146EntryFv_Incoming : rowsOwned s2Step146EntryFvBefore [s2Step146EntryFvRow,s2Step146EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step146EntryFRow,s2Step146EntryGRow,s2Step146EntryFvRow,s2Step146EntryGvRow] 2 s2Step146EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step146EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146EntryFv_Outgoing : rowsOwned s2Step146EntryGvAfter [s2Step146EntryFvOut,s2Step146EntryGvOut] :=
  hmrRows_owned_drop s2Step146EntryGvAfter [s2Step146EntryFOut,s2Step146EntryGOut,s2Step146EntryFvOut,s2Step146EntryGvOut] 2 s2Step146EntryBank_outgoingOwned

private theorem s2Step146EntryFv_distinct : (s2Step146EntryFvRow.sign::s2Step146EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146EntryFv_owned : (s2Step146EntryFvRow.sign::s2Step146EntryFvRow.payload).toFinset⊆s2Step146EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step146EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EntryFv_reserved : s2Step146EntryFvBefore.reserve s2Step146EntryFvFresh.toFinset=some s2Step146EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step146EntryFvFresh,arenaWires]
  · norm_num [s2Step146EntryFvBefore,s2Step146EntryFBefore,s2Step146EntryFvFresh,arenaWires]
  · simp only [s2Step146EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step146EntryFv_checked : planRowResizeLog s2Step146EntryFvBefore s2Step146EntryFvRow 87 s2Step146EntryFvFresh=
    some (s2Step146EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816],770⟩,growRow 770 s2Step146EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step146EntryFvBefore s2Step146EntryFvAfter s2Step146EntryFvRow 87 s2Step146EntryFvFresh
    s2Step146EntryFv_distinct s2Step146EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step146EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step146EntryFvRow.payload++s2Step146EntryFvFresh) s2Step146EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step146EntryGAfter : Arena := s2Step146EntryFBefore

private def s2Step146EntryGBefore : Arena := s2Step146EntryFBefore

private theorem s2Step146EntryG_Incoming : rowsOwned s2Step146EntryGBefore [s2Step146EntryGRow,s2Step146EntryFvRow,s2Step146EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step146EntryFRow,s2Step146EntryGRow,s2Step146EntryFvRow,s2Step146EntryGvRow] 1 s2Step146EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step146EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146EntryG_Outgoing : rowsOwned s2Step146EntryGvAfter [s2Step146EntryGOut,s2Step146EntryFvOut,s2Step146EntryGvOut] :=
  hmrRows_owned_drop s2Step146EntryGvAfter [s2Step146EntryFOut,s2Step146EntryGOut,s2Step146EntryFvOut,s2Step146EntryGvOut] 1 s2Step146EntryBank_outgoingOwned

private theorem s2Step146EntryG_distinct : (s2Step146EntryGRow.sign::s2Step146EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146EntryG_owned : (s2Step146EntryGRow.sign::s2Step146EntryGRow.payload).toFinset⊆s2Step146EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step146EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EntryG_reserved : s2Step146EntryGBefore.reserve s2Step146EntryGFresh.toFinset=some s2Step146EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step146EntryGFresh,arenaWires]
  · norm_num [s2Step146EntryGBefore,s2Step146EntryFBefore,s2Step146EntryGFresh,arenaWires]
  · simp only [s2Step146EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step146EntryG_checked : planRowResizeLog s2Step146EntryGBefore s2Step146EntryGRow 196 s2Step146EntryGFresh=
    some (s2Step146EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195],769⟩,growRow 769 s2Step146EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step146EntryGBefore s2Step146EntryGAfter s2Step146EntryGRow 196 s2Step146EntryGFresh
    s2Step146EntryG_distinct s2Step146EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step146EntryG_reserved
  have rowEq : WindowRow.mk (s2Step146EntryGRow.payload++s2Step146EntryGFresh) s2Step146EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step146EntryGvBefore : Arena := s2Step146EntryFBefore

private theorem s2Step146EntryGv_Incoming : rowsOwned s2Step146EntryGvBefore [s2Step146EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step146EntryFRow,s2Step146EntryGRow,s2Step146EntryFvRow,s2Step146EntryGvRow] 3 s2Step146EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step146EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146EntryGv_Outgoing : rowsOwned s2Step146EntryGvAfter [s2Step146EntryGvOut] :=
  hmrRows_owned_drop s2Step146EntryGvAfter [s2Step146EntryFOut,s2Step146EntryGOut,s2Step146EntryFvOut,s2Step146EntryGvOut] 3 s2Step146EntryBank_outgoingOwned

private theorem s2Step146EntryGv_distinct : (s2Step146EntryGvRow.sign::s2Step146EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146EntryGv_owned : (s2Step146EntryGvRow.sign::s2Step146EntryGvRow.payload).toFinset⊆s2Step146EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step146EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146EntryGv_reserved : s2Step146EntryGvBefore.reserve s2Step146EntryGvFresh.toFinset=some s2Step146EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step146EntryGvFresh,arenaWires]
  · norm_num [s2Step146EntryGvBefore,s2Step146EntryFBefore,s2Step146EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step146EntryGvAfter,s2Step146EntryGvBefore,s2Step146EntryFBefore,s2Step146EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step146EntryGv_checked : planRowResizeLog s2Step146EntryGvBefore s2Step146EntryGvRow 87 s2Step146EntryGvFresh=
    some (s2Step146EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 845],771⟩,growRow 771 s2Step146EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step146EntryGvBefore s2Step146EntryGvAfter s2Step146EntryGvRow 87 s2Step146EntryGvFresh
    s2Step146EntryGv_distinct s2Step146EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step146EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step146EntryGvRow.payload++s2Step146EntryGvFresh) s2Step146EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 845],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step146EntryBank_rows : planWindowRowsLog s2Step146EntryFBefore [(s2Step146EntryFRow,196),(s2Step146EntryGRow,196),(s2Step146EntryFvRow,87),(s2Step146EntryGvRow,87)] [s2Step146EntryFFresh,s2Step146EntryGFresh,s2Step146EntryFvFresh,s2Step146EntryGvFresh]=
    some (s2Step146EntryGvAfter,[s2Step146EntryFOut,s2Step146EntryGOut,s2Step146EntryFvOut,s2Step146EntryGvOut],(growRow 768 s2Step146EntryFFresh ++ (growRow 769 s2Step146EntryGFresh ++ (growRow 770 s2Step146EntryFvFresh ++ (growRow 771 s2Step146EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step146EntryGvAfter [] []=some (s2Step146EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step146EntryGvBefore s2Step146EntryGvAfter s2Step146EntryGvAfter
    s2Step146EntryGvRow s2Step146EntryGvOut 87 s2Step146EntryGvFresh [] [] []
    (growRow 771 s2Step146EntryGvFresh) ([]) s2Step146EntryGv_Incoming s2Step146EntryGv_checked h4 s2Step146EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step146EntryFvBefore s2Step146EntryFvAfter s2Step146EntryGvAfter
    s2Step146EntryFvRow s2Step146EntryFvOut 87 s2Step146EntryFvFresh [(s2Step146EntryGvRow,87)] [s2Step146EntryGvFresh] [s2Step146EntryGvOut]
    (growRow 770 s2Step146EntryFvFresh) ((growRow 771 s2Step146EntryGvFresh ++ [])) s2Step146EntryFv_Incoming s2Step146EntryFv_checked h3 s2Step146EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step146EntryGBefore s2Step146EntryGAfter s2Step146EntryGvAfter
    s2Step146EntryGRow s2Step146EntryGOut 196 s2Step146EntryGFresh [(s2Step146EntryFvRow,87),(s2Step146EntryGvRow,87)] [s2Step146EntryFvFresh,s2Step146EntryGvFresh] [s2Step146EntryFvOut,s2Step146EntryGvOut]
    (growRow 769 s2Step146EntryGFresh) ((growRow 770 s2Step146EntryFvFresh ++ (growRow 771 s2Step146EntryGvFresh ++ []))) s2Step146EntryG_Incoming s2Step146EntryG_checked h2 s2Step146EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step146EntryFBefore s2Step146EntryFAfter s2Step146EntryGvAfter
    s2Step146EntryFRow s2Step146EntryFOut 196 s2Step146EntryFFresh [(s2Step146EntryGRow,196),(s2Step146EntryFvRow,87),(s2Step146EntryGvRow,87)] [s2Step146EntryGFresh,s2Step146EntryFvFresh,s2Step146EntryGvFresh] [s2Step146EntryGOut,s2Step146EntryFvOut,s2Step146EntryGvOut]
    (growRow 768 s2Step146EntryFFresh) ((growRow 769 s2Step146EntryGFresh ++ (growRow 770 s2Step146EntryFvFresh ++ (growRow 771 s2Step146EntryGvFresh ++ [])))) s2Step146EntryF_Incoming s2Step146EntryF_checked h1 s2Step146EntryF_Outgoing
  exact h0

private theorem s2Step146EntryBank_checked : compileHmrBankResizeLog .entry s2Step146EntryFBefore ⟨s2Step146EntryFRow,s2Step146EntryGRow,s2Step146EntryFvRow,s2Step146EntryGvRow⟩ ⟨196,196,87,87⟩ [s2Step146EntryFFresh,s2Step146EntryGFresh,s2Step146EntryFvFresh,s2Step146EntryGvFresh]=
    some (s2Step146EntryGvAfter,⟨s2Step146EntryFOut,s2Step146EntryGOut,s2Step146EntryFvOut,s2Step146EntryGvOut⟩,(growRow 768 s2Step146EntryFFresh ++ (growRow 769 s2Step146EntryGFresh ++ (growRow 770 s2Step146EntryFvFresh ++ (growRow 771 s2Step146EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step146EntryBank_rows]
  rfl

private def s2Step146ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<195) ∨ (196≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<195) ∨ (196≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146ExitFBefore : Arena := s2Step146ExitGAfter

private def s2Step146ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 783],768⟩

private def s2Step146ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩

private def s2Step146ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 797],769⟩

private def s2Step146ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 845, 789],771⟩

private theorem s2Step146ExitBank_incomingDistinct : ([s2Step146ExitGRow,s2Step146ExitFRow,s2Step146ExitFvRow,s2Step146ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146ExitF_Incoming : rowsOwned s2Step146ExitFBefore [s2Step146ExitFRow,s2Step146ExitFvRow,s2Step146ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step146ExitGRow,s2Step146ExitFRow,s2Step146ExitFvRow,s2Step146ExitGvRow] 1 s2Step146ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step146ExitFBefore (fun q => (0≤q ∧ q<195) ∨ (196≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146ExitBank_outgoingOwned : rowsOwned s2Step146ExitGvAfter [s2Step146ExitGOut,s2Step146ExitFOut,s2Step146ExitFvOut,s2Step146ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step146ExitGvAfter (fun q => (0≤q ∧ q<195) ∨ (196≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146ExitF_Outgoing : rowsOwned s2Step146ExitGvAfter [s2Step146ExitFOut,s2Step146ExitFvOut,s2Step146ExitGvOut] :=
  hmrRows_owned_drop s2Step146ExitGvAfter [s2Step146ExitGOut,s2Step146ExitFOut,s2Step146ExitFvOut,s2Step146ExitGvOut] 1 s2Step146ExitBank_outgoingOwned

private theorem s2Step146ExitF_distinct : (s2Step146ExitFRow.sign::s2Step146ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146ExitF_owned : (s2Step146ExitFRow.sign::s2Step146ExitFRow.payload).toFinset⊆s2Step146ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step146ExitFBefore (fun q => (0≤q ∧ q<195) ∨ (196≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146ExitF_retired : s2Step146ExitFBefore.retireSet s2Step146ExitFExtra.toFinset=s2Step146ExitFAfter := by
  unfold Arena.retireSet s2Step146ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step146ExitFBefore,s2Step146ExitGAfter,s2Step146ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step146ExitF_checked : planRowResizeLog s2Step146ExitFBefore s2Step146ExitFRow 196 []=
    some (s2Step146ExitFAfter,s2Step146ExitFOut,shrinkRow 768 s2Step146ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step146ExitFBefore s2Step146ExitFRow 196 s2Step146ExitF_distinct s2Step146ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step146ExitFRow.payload.take 196) s2Step146ExitFRow.sign=s2Step146ExitFOut := by decide +kernel
  have hi : s2Step146ExitFRow.payload.drop 196=s2Step146ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step146ExitF_retired] at result
  exact result

private def s2Step146ExitFvAfter : Arena := s2Step146ExitFAfter

private def s2Step146ExitFvBefore : Arena := s2Step146ExitFAfter

private theorem s2Step146ExitFv_Incoming : rowsOwned s2Step146ExitFvBefore [s2Step146ExitFvRow,s2Step146ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step146ExitGRow,s2Step146ExitFRow,s2Step146ExitFvRow,s2Step146ExitGvRow] 2 s2Step146ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step146ExitFvBefore (fun q => (0≤q ∧ q<195) ∨ (196≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146ExitFv_Outgoing : rowsOwned s2Step146ExitGvAfter [s2Step146ExitFvOut,s2Step146ExitGvOut] :=
  hmrRows_owned_drop s2Step146ExitGvAfter [s2Step146ExitGOut,s2Step146ExitFOut,s2Step146ExitFvOut,s2Step146ExitGvOut] 2 s2Step146ExitBank_outgoingOwned

private theorem s2Step146ExitFv_distinct : (s2Step146ExitFvRow.sign::s2Step146ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146ExitFv_owned : (s2Step146ExitFvRow.sign::s2Step146ExitFvRow.payload).toFinset⊆s2Step146ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step146ExitFvBefore (fun q => (0≤q ∧ q<195) ∨ (196≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146ExitFv_reserved : s2Step146ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step146ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step146ExitFv_checked : planRowResizeLog s2Step146ExitFvBefore s2Step146ExitFvRow 88 []=
    some (s2Step146ExitFvAfter,s2Step146ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step146ExitFvBefore s2Step146ExitFvAfter s2Step146ExitFvRow 88 []
    s2Step146ExitFv_distinct s2Step146ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step146ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step146ExitFvRow.payload++[]) s2Step146ExitFvRow.sign=s2Step146ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step146ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step146ExitG_Incoming : rowsOwned s2Step146ExitGBefore [s2Step146ExitGRow,s2Step146ExitFRow,s2Step146ExitFvRow,s2Step146ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step146ExitGRow,s2Step146ExitFRow,s2Step146ExitFvRow,s2Step146ExitGvRow] 0 s2Step146ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step146ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146ExitG_Outgoing : rowsOwned s2Step146ExitGvAfter [s2Step146ExitGOut,s2Step146ExitFOut,s2Step146ExitFvOut,s2Step146ExitGvOut] :=
  hmrRows_owned_drop s2Step146ExitGvAfter [s2Step146ExitGOut,s2Step146ExitFOut,s2Step146ExitFvOut,s2Step146ExitGvOut] 0 s2Step146ExitBank_outgoingOwned

private theorem s2Step146ExitG_distinct : (s2Step146ExitGRow.sign::s2Step146ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146ExitG_owned : (s2Step146ExitGRow.sign::s2Step146ExitGRow.payload).toFinset⊆s2Step146ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step146ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146ExitG_retired : s2Step146ExitGBefore.retireSet s2Step146ExitGExtra.toFinset=s2Step146ExitGAfter := by
  unfold Arena.retireSet s2Step146ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step146ExitGBefore,s2Step146ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step146ExitG_checked : planRowResizeLog s2Step146ExitGBefore s2Step146ExitGRow 195 []=
    some (s2Step146ExitGAfter,s2Step146ExitGOut,shrinkRow 769 s2Step146ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step146ExitGBefore s2Step146ExitGRow 195 s2Step146ExitG_distinct s2Step146ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step146ExitGRow.payload.take 195) s2Step146ExitGRow.sign=s2Step146ExitGOut := by decide +kernel
  have hi : s2Step146ExitGRow.payload.drop 195=s2Step146ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step146ExitG_retired] at result
  exact result

private def s2Step146ExitGvBefore : Arena := s2Step146ExitFAfter

private theorem s2Step146ExitGv_Incoming : rowsOwned s2Step146ExitGvBefore [s2Step146ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step146ExitGRow,s2Step146ExitFRow,s2Step146ExitFvRow,s2Step146ExitGvRow] 3 s2Step146ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step146ExitGvBefore (fun q => (0≤q ∧ q<195) ∨ (196≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146ExitGv_Outgoing : rowsOwned s2Step146ExitGvAfter [s2Step146ExitGvOut] :=
  hmrRows_owned_drop s2Step146ExitGvAfter [s2Step146ExitGOut,s2Step146ExitFOut,s2Step146ExitFvOut,s2Step146ExitGvOut] 3 s2Step146ExitBank_outgoingOwned

private theorem s2Step146ExitGv_distinct : (s2Step146ExitGvRow.sign::s2Step146ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146ExitGv_owned : (s2Step146ExitGvRow.sign::s2Step146ExitGvRow.payload).toFinset⊆s2Step146ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step146ExitGvBefore (fun q => (0≤q ∧ q<195) ∨ (196≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146ExitGv_retired : s2Step146ExitGvBefore.retireSet s2Step146ExitGvExtra.toFinset=s2Step146ExitGvAfter := by
  unfold Arena.retireSet s2Step146ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step146ExitGvBefore,s2Step146ExitFAfter,s2Step146ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step146ExitGv_checked : planRowResizeLog s2Step146ExitGvBefore s2Step146ExitGvRow 86 []=
    some (s2Step146ExitGvAfter,s2Step146ExitGvOut,shrinkRow 771 s2Step146ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step146ExitGvBefore s2Step146ExitGvRow 86 s2Step146ExitGv_distinct s2Step146ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step146ExitGvRow.payload.take 86) s2Step146ExitGvRow.sign=s2Step146ExitGvOut := by decide +kernel
  have hi : s2Step146ExitGvRow.payload.drop 86=s2Step146ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step146ExitGv_retired] at result
  exact result

private theorem s2Step146ExitBank_rows : planWindowRowsLog s2Step146ExitGBefore [(s2Step146ExitGRow,195),(s2Step146ExitFRow,196),(s2Step146ExitFvRow,88),(s2Step146ExitGvRow,86)] [[],[],[],[]]=
    some (s2Step146ExitGvAfter,[s2Step146ExitGOut,s2Step146ExitFOut,s2Step146ExitFvOut,s2Step146ExitGvOut],(shrinkRow 769 s2Step146ExitGExtra ++ (shrinkRow 768 s2Step146ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step146ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step146ExitGvAfter [] []=some (s2Step146ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step146ExitGvBefore s2Step146ExitGvAfter s2Step146ExitGvAfter
    s2Step146ExitGvRow s2Step146ExitGvOut 86 [] [] [] []
    (shrinkRow 771 s2Step146ExitGvExtra) ([]) s2Step146ExitGv_Incoming s2Step146ExitGv_checked h4 s2Step146ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step146ExitFvBefore s2Step146ExitFvAfter s2Step146ExitGvAfter
    s2Step146ExitFvRow s2Step146ExitFvOut 88 [] [(s2Step146ExitGvRow,86)] [[]] [s2Step146ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step146ExitGvExtra ++ [])) s2Step146ExitFv_Incoming s2Step146ExitFv_checked h3 s2Step146ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step146ExitFBefore s2Step146ExitFAfter s2Step146ExitGvAfter
    s2Step146ExitFRow s2Step146ExitFOut 196 [] [(s2Step146ExitFvRow,88),(s2Step146ExitGvRow,86)] [[],[]] [s2Step146ExitFvOut,s2Step146ExitGvOut]
    (shrinkRow 768 s2Step146ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step146ExitGvExtra ++ []))) s2Step146ExitF_Incoming s2Step146ExitF_checked h2 s2Step146ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step146ExitGBefore s2Step146ExitGAfter s2Step146ExitGvAfter
    s2Step146ExitGRow s2Step146ExitGOut 195 [] [(s2Step146ExitFRow,196),(s2Step146ExitFvRow,88),(s2Step146ExitGvRow,86)] [[],[],[]] [s2Step146ExitFOut,s2Step146ExitFvOut,s2Step146ExitGvOut]
    (shrinkRow 769 s2Step146ExitGExtra) ((shrinkRow 768 s2Step146ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step146ExitGvExtra ++ [])))) s2Step146ExitG_Incoming s2Step146ExitG_checked h1 s2Step146ExitG_Outgoing
  exact h0

private theorem s2Step146ExitBank_checked : compileHmrBankResizeLog .exit s2Step146ExitGBefore ⟨s2Step146ExitFRow,s2Step146ExitGRow,s2Step146ExitFvRow,s2Step146ExitGvRow⟩ ⟨196,195,88,86⟩ [[],[],[],[]]=
    some (s2Step146ExitGvAfter,⟨s2Step146ExitFOut,s2Step146ExitGOut,s2Step146ExitFvOut,s2Step146ExitGvOut⟩,(shrinkRow 769 s2Step146ExitGExtra ++ (shrinkRow 768 s2Step146ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step146ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step146ExitBank_rows]
  rfl

private theorem s2Step146Add0_apart : Disjoint s2Step146Add0Arena.live s2Step146Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step146Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146Add0_card : s2Step146Add0Arena.live.card=882 := by
  decide +kernel

private theorem s2Step146Add0_borrowed : s2Step146Add0Arena.checkBorrow (hmrHybridCount s2Step146Add0Arena s2Step146Add0B.length) s2Step146Add0Work=some s2Step146Add0During := by
  have len : s2Step146Add0Work.length=hmrHybridCount s2Step146Add0Arena s2Step146Add0B.length := by
    rw [hmrHybridCount,s2Step146Add0_card]
    decide +kernel
  have nd : s2Step146Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step146Add0Arena s2Step146Add0During s2Step146Add0Work.toFinset s2Step146Add0_bounded s2Step146Add0_apart rfl

private theorem s2Step146Add0_distinct : (778::780::849::(s2Step146Add0A++s2Step146Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146Add0_owned : (778::780::849::(s2Step146Add0A++s2Step146Add0B)).toFinset⊆s2Step146Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step146Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146Add0_checked : compileHmrHybridCinLog s2Step146Add0Arena 780 778 849 s2Step146Add0A s2Step146Add0B s2Step146Add0Work=some s2Step146Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step146Add0Arena s2Step146Add0During 780 778 849 s2Step146Add0A s2Step146Add0B s2Step146Add0Work
    (by decide +kernel) (by decide +kernel) s2Step146Add0_distinct
    (fun q hq => s2Step146Add0_owned (List.mem_toFinset.mpr hq)) s2Step146Add0_borrowed

private theorem s2Step146Add1_apart : Disjoint s2Step146Add1Arena.live s2Step146Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step146Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146Add1_card : s2Step146Add1Arena.live.card=882 := by
  decide +kernel

private theorem s2Step146Add1_borrowed : s2Step146Add1Arena.checkBorrow (hmrHybridCount s2Step146Add1Arena s2Step146Add1B.length) s2Step146Add1Work=some s2Step146Add1During := by
  have len : s2Step146Add1Work.length=hmrHybridCount s2Step146Add1Arena s2Step146Add1B.length := by
    rw [hmrHybridCount,s2Step146Add1_card]
    decide +kernel
  have nd : s2Step146Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step146Add1Arena s2Step146Add1During s2Step146Add1Work.toFinset s2Step146Add1_bounded s2Step146Add1_apart rfl

private theorem s2Step146Add1_distinct : (778::780::849::(s2Step146Add1A++s2Step146Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146Add1_owned : (778::780::849::(s2Step146Add1A++s2Step146Add1B)).toFinset⊆s2Step146Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step146Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146Add1_checked : compileHmrHybridCinLog s2Step146Add1Arena 780 778 849 s2Step146Add1A s2Step146Add1B s2Step146Add1Work=some s2Step146Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step146Add1Arena s2Step146Add1During 780 778 849 s2Step146Add1A s2Step146Add1B s2Step146Add1Work
    (by decide +kernel) (by decide +kernel) s2Step146Add1_distinct
    (fun q hq => s2Step146Add1_owned (List.mem_toFinset.mpr hq)) s2Step146Add1_borrowed

private theorem s2Step146F4_apart : Disjoint (s2Step146Add0A++s2Step146Add0B).toFinset (s2Step146Add1A++s2Step146Add1B).toFinset := by
  have nd : ((s2Step146Add0A++s2Step146Add0B)++(s2Step146Add1A++s2Step146Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step146F4_carry : s2Step146F4FlagArena.checkBorrow 1 [849]=some s2Step146Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step146F4FlagArena,s2Step146HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step146F4FlagArena,s2Step146HeadFvAfter,s2Step146Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step146F4_distinct : (836::780::778::849::((s2Step146Add0A++s2Step146Add1A)++(s2Step146Add0B++s2Step146Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146F4_flag : s2Step146HeadFvAfter.checkBorrow 1 [778]=some s2Step146F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step146HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step146F4_owned : (836::780::((s2Step146Add0A++s2Step146Add1A)++(s2Step146Add0B++s2Step146Add1B))).toFinset⊆s2Step146HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step146HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146F4_checked : compileHmrHybridF4Log s2Step146HeadFvAfter 836 780 s2Step146Add0A s2Step146Add0B s2Step146Add1A s2Step146Add1B [778] [849] s2Step146Add0Work s2Step146Add1Work=some s2Step146F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step146HeadFvAfter s2Step146F4FlagArena s2Step146Add0Arena s2Step146Add0During s2Step146Add1During 836 780
    s2Step146Add0A s2Step146Add0B s2Step146Add1A s2Step146Add1B [778] [849] s2Step146Add0Work s2Step146Add1Work
    (fun q hq => s2Step146F4_owned (List.mem_toFinset.mpr hq)) s2Step146F4_flag s2Step146F4_carry
    s2Step146F4_distinct s2Step146F4_apart s2Step146Add0_checked s2Step146Add1_checked

private theorem s2Step146Front_branch : s2Step146FrontSigmaArena.checkBorrow 1 [780]=some s2Step146HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step146FrontSigmaArena,s2Step146EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step146FrontSigmaArena,s2Step146EntryGvAfter,s2Step146HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step146Front_entry : HmrFrontEntryValid s2Step146EntryFBefore s2Step146FrontBank 196 87 ⟨196,195,88,86⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step146FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step146EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step146EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<780) ∨ (781≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step146FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step146Front_sigma : s2Step146EntryGvAfter.checkBorrow 1 [836]=some s2Step146FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step146EntryGvAfter,arenaWires]
  · rfl

private def s2Step146HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146HeadFBefore : Arena := s2Step146HeadGAfter

private def s2Step146HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707],768⟩

private def s2Step146HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816],770⟩

private def s2Step146HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195],769⟩

private def s2Step146HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 845],771⟩

private theorem s2Step146HeadBank_incomingDistinct : ([s2Step146HeadGRow,s2Step146HeadFRow,s2Step146HeadGvRow,s2Step146HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146HeadF_Incoming : rowsOwned s2Step146HeadFBefore [s2Step146HeadFRow,s2Step146HeadGvRow,s2Step146HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step146HeadGRow,s2Step146HeadFRow,s2Step146HeadGvRow,s2Step146HeadFvRow] 1 s2Step146HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step146HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146HeadBank_outgoingOwned : rowsOwned s2Step146HeadFvAfter [s2Step146HeadGOut,s2Step146HeadFOut,s2Step146HeadGvOut,s2Step146HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step146HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146HeadF_Outgoing : rowsOwned s2Step146HeadFvAfter [s2Step146HeadFOut,s2Step146HeadGvOut,s2Step146HeadFvOut] :=
  hmrRows_owned_drop s2Step146HeadFvAfter [s2Step146HeadGOut,s2Step146HeadFOut,s2Step146HeadGvOut,s2Step146HeadFvOut] 1 s2Step146HeadBank_outgoingOwned

private theorem s2Step146HeadF_distinct : (s2Step146HeadFRow.sign::s2Step146HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146HeadF_owned : (s2Step146HeadFRow.sign::s2Step146HeadFRow.payload).toFinset⊆s2Step146HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step146HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146HeadF_reserved : s2Step146HeadFBefore.reserve s2Step146HeadFFresh.toFinset=some s2Step146HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step146HeadFFresh,arenaWires]
  · norm_num [s2Step146HeadFBefore,s2Step146HeadGAfter,s2Step146HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step146HeadFAfter,s2Step146HeadFBefore,s2Step146HeadGAfter,s2Step146HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step146HeadF_checked : planRowResizeLog s2Step146HeadFBefore s2Step146HeadFRow 197 s2Step146HeadFFresh=
    some (s2Step146HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 783],768⟩,growRow 768 s2Step146HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step146HeadFBefore s2Step146HeadFAfter s2Step146HeadFRow 197 s2Step146HeadFFresh
    s2Step146HeadF_distinct s2Step146HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step146HeadF_reserved
  have rowEq : WindowRow.mk (s2Step146HeadFRow.payload++s2Step146HeadFFresh) s2Step146HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 783],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step146HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step146HeadFvBefore : Arena := s2Step146HeadGvAfter

private theorem s2Step146HeadFv_Incoming : rowsOwned s2Step146HeadFvBefore [s2Step146HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step146HeadGRow,s2Step146HeadFRow,s2Step146HeadGvRow,s2Step146HeadFvRow] 3 s2Step146HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step146HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146HeadFv_Outgoing : rowsOwned s2Step146HeadFvAfter [s2Step146HeadFvOut] :=
  hmrRows_owned_drop s2Step146HeadFvAfter [s2Step146HeadGOut,s2Step146HeadFOut,s2Step146HeadGvOut,s2Step146HeadFvOut] 3 s2Step146HeadBank_outgoingOwned

private theorem s2Step146HeadFv_distinct : (s2Step146HeadFvRow.sign::s2Step146HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146HeadFv_owned : (s2Step146HeadFvRow.sign::s2Step146HeadFvRow.payload).toFinset⊆s2Step146HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step146HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146HeadFv_reserved : s2Step146HeadFvBefore.reserve s2Step146HeadFvFresh.toFinset=some s2Step146HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step146HeadFvFresh,arenaWires]
  · norm_num [s2Step146HeadFvBefore,s2Step146HeadGvAfter,s2Step146HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step146HeadFvAfter,s2Step146HeadFvBefore,s2Step146HeadGvAfter,s2Step146HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step146HeadFv_checked : planRowResizeLog s2Step146HeadFvBefore s2Step146HeadFvRow 88 s2Step146HeadFvFresh=
    some (s2Step146HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩,growRow 770 s2Step146HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step146HeadFvBefore s2Step146HeadFvAfter s2Step146HeadFvRow 88 s2Step146HeadFvFresh
    s2Step146HeadFv_distinct s2Step146HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step146HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step146HeadFvRow.payload++s2Step146HeadFvFresh) s2Step146HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 816, 841],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step146HeadG_Incoming : rowsOwned s2Step146HeadGBefore [s2Step146HeadGRow,s2Step146HeadFRow,s2Step146HeadGvRow,s2Step146HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step146HeadGRow,s2Step146HeadFRow,s2Step146HeadGvRow,s2Step146HeadFvRow] 0 s2Step146HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step146HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146HeadG_Outgoing : rowsOwned s2Step146HeadFvAfter [s2Step146HeadGOut,s2Step146HeadFOut,s2Step146HeadGvOut,s2Step146HeadFvOut] :=
  hmrRows_owned_drop s2Step146HeadFvAfter [s2Step146HeadGOut,s2Step146HeadFOut,s2Step146HeadGvOut,s2Step146HeadFvOut] 0 s2Step146HeadBank_outgoingOwned

private theorem s2Step146HeadG_distinct : (s2Step146HeadGRow.sign::s2Step146HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146HeadG_owned : (s2Step146HeadGRow.sign::s2Step146HeadGRow.payload).toFinset⊆s2Step146HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step146HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146HeadG_reserved : s2Step146HeadGBefore.reserve s2Step146HeadGFresh.toFinset=some s2Step146HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step146HeadGFresh,arenaWires]
  · norm_num [s2Step146HeadGBefore,s2Step146HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step146HeadGAfter,s2Step146HeadGBefore,s2Step146HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step146HeadG_checked : planRowResizeLog s2Step146HeadGBefore s2Step146HeadGRow 197 s2Step146HeadGFresh=
    some (s2Step146HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 797],769⟩,growRow 769 s2Step146HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step146HeadGBefore s2Step146HeadGAfter s2Step146HeadGRow 197 s2Step146HeadGFresh
    s2Step146HeadG_distinct s2Step146HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step146HeadG_reserved
  have rowEq : WindowRow.mk (s2Step146HeadGRow.payload++s2Step146HeadGFresh) s2Step146HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 797],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step146HeadGvBefore : Arena := s2Step146HeadFAfter

private theorem s2Step146HeadGv_Incoming : rowsOwned s2Step146HeadGvBefore [s2Step146HeadGvRow,s2Step146HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step146HeadGRow,s2Step146HeadFRow,s2Step146HeadGvRow,s2Step146HeadFvRow] 2 s2Step146HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step146HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step146HeadGv_Outgoing : rowsOwned s2Step146HeadFvAfter [s2Step146HeadGvOut,s2Step146HeadFvOut] :=
  hmrRows_owned_drop s2Step146HeadFvAfter [s2Step146HeadGOut,s2Step146HeadFOut,s2Step146HeadGvOut,s2Step146HeadFvOut] 2 s2Step146HeadBank_outgoingOwned

private theorem s2Step146HeadGv_distinct : (s2Step146HeadGvRow.sign::s2Step146HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step146HeadGv_owned : (s2Step146HeadGvRow.sign::s2Step146HeadGvRow.payload).toFinset⊆s2Step146HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step146HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step146HeadGv_reserved : s2Step146HeadGvBefore.reserve s2Step146HeadGvFresh.toFinset=some s2Step146HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step146HeadGvFresh,arenaWires]
  · norm_num [s2Step146HeadGvBefore,s2Step146HeadFAfter,s2Step146HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step146HeadGvAfter,s2Step146HeadGvBefore,s2Step146HeadFAfter,s2Step146HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step146HeadGv_checked : planRowResizeLog s2Step146HeadGvBefore s2Step146HeadGvRow 88 s2Step146HeadGvFresh=
    some (s2Step146HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 845, 789],771⟩,growRow 771 s2Step146HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step146HeadGvBefore s2Step146HeadGvAfter s2Step146HeadGvRow 88 s2Step146HeadGvFresh
    s2Step146HeadGv_distinct s2Step146HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step146HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step146HeadGvRow.payload++s2Step146HeadGvFresh) s2Step146HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 788, 845, 789],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step146HeadBank_rows : planWindowRowsLog s2Step146HeadGBefore [(s2Step146HeadGRow,197),(s2Step146HeadFRow,197),(s2Step146HeadGvRow,88),(s2Step146HeadFvRow,88)] [s2Step146HeadGFresh,s2Step146HeadFFresh,s2Step146HeadGvFresh,s2Step146HeadFvFresh]=
    some (s2Step146HeadFvAfter,[s2Step146HeadGOut,s2Step146HeadFOut,s2Step146HeadGvOut,s2Step146HeadFvOut],(growRow 769 s2Step146HeadGFresh ++ (growRow 768 s2Step146HeadFFresh ++ (growRow 771 s2Step146HeadGvFresh ++ (growRow 770 s2Step146HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step146HeadFvAfter [] []=some (s2Step146HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step146HeadFvBefore s2Step146HeadFvAfter s2Step146HeadFvAfter
    s2Step146HeadFvRow s2Step146HeadFvOut 88 s2Step146HeadFvFresh [] [] []
    (growRow 770 s2Step146HeadFvFresh) ([]) s2Step146HeadFv_Incoming s2Step146HeadFv_checked h4 s2Step146HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step146HeadGvBefore s2Step146HeadGvAfter s2Step146HeadFvAfter
    s2Step146HeadGvRow s2Step146HeadGvOut 88 s2Step146HeadGvFresh [(s2Step146HeadFvRow,88)] [s2Step146HeadFvFresh] [s2Step146HeadFvOut]
    (growRow 771 s2Step146HeadGvFresh) ((growRow 770 s2Step146HeadFvFresh ++ [])) s2Step146HeadGv_Incoming s2Step146HeadGv_checked h3 s2Step146HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step146HeadFBefore s2Step146HeadFAfter s2Step146HeadFvAfter
    s2Step146HeadFRow s2Step146HeadFOut 197 s2Step146HeadFFresh [(s2Step146HeadGvRow,88),(s2Step146HeadFvRow,88)] [s2Step146HeadGvFresh,s2Step146HeadFvFresh] [s2Step146HeadGvOut,s2Step146HeadFvOut]
    (growRow 768 s2Step146HeadFFresh) ((growRow 771 s2Step146HeadGvFresh ++ (growRow 770 s2Step146HeadFvFresh ++ []))) s2Step146HeadF_Incoming s2Step146HeadF_checked h2 s2Step146HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step146HeadGBefore s2Step146HeadGAfter s2Step146HeadFvAfter
    s2Step146HeadGRow s2Step146HeadGOut 197 s2Step146HeadGFresh [(s2Step146HeadFRow,197),(s2Step146HeadGvRow,88),(s2Step146HeadFvRow,88)] [s2Step146HeadFFresh,s2Step146HeadGvFresh,s2Step146HeadFvFresh] [s2Step146HeadFOut,s2Step146HeadGvOut,s2Step146HeadFvOut]
    (growRow 769 s2Step146HeadGFresh) ((growRow 768 s2Step146HeadFFresh ++ (growRow 771 s2Step146HeadGvFresh ++ (growRow 770 s2Step146HeadFvFresh ++ [])))) s2Step146HeadG_Incoming s2Step146HeadG_checked h1 s2Step146HeadG_Outgoing
  exact h0

private theorem s2Step146HeadBank_checked : compileHmrBankResizeLog .headroom s2Step146HeadGBefore ⟨s2Step146HeadFRow,s2Step146HeadGRow,s2Step146HeadFvRow,s2Step146HeadGvRow⟩ ⟨197,197,88,88⟩ [s2Step146HeadGFresh,s2Step146HeadFFresh,s2Step146HeadGvFresh,s2Step146HeadFvFresh]=
    some (s2Step146HeadFvAfter,⟨s2Step146HeadFOut,s2Step146HeadGOut,s2Step146HeadFvOut,s2Step146HeadGvOut⟩,(growRow 769 s2Step146HeadGFresh ++ (growRow 768 s2Step146HeadFFresh ++ (growRow 771 s2Step146HeadGvFresh ++ (growRow 770 s2Step146HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step146HeadBank_rows]
  rfl

private theorem s2Step146Front_checked : compileHmrSourceFrontLog s2Step146EntryFBefore s2Step146FrontBank 196 87 ⟨196,195,88,86⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step146FrontLog=some s2Step146FrontPlan := by
  have pairEq : s2Step146FrontPair=⟨s2Step146HeadFRow,s2Step146HeadGRow,s2Step146HeadFvRow,s2Step146HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step146FrontHead=⟨s2Step146ExitFRow,s2Step146ExitGRow,s2Step146ExitFvRow,s2Step146ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step146Add0A=s2Step146FrontHead.f.wires := by decide +kernel
  have gEq : s2Step146Add0B=s2Step146FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step146Add1A=s2Step146FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step146Add1B=s2Step146FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step146EntryFBefore s2Step146FrontBank 196 87 ⟨196,195,88,86⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step146FrontLog s2Step146FrontPlan
  · exact s2Step146Front_entry
  · exact s2Step146EntryBank_checked
  · exact s2Step146Front_sigma
  · rfl
  · exact s2Step146Front_branch
  · rfl
  · simpa only [s2Step146FrontPlan,pairEq] using s2Step146HeadBank_checked
  · simpa only [s2Step146FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step146F4_checked
  · exact s2Step146Counter_checked
  · rfl
  · simpa only [s2Step146FrontPlan,headEq] using s2Step146ExitBank_checked

private theorem s2Step146Complete_explicit_checked : compileHmrEarlyStepLog s2Step146EntryFBefore s2Step146FrontBank 196 87 ⟨196,195,88,86⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step146CompleteLog=some s2Step146CompletePlan := by
  let Q := s2Step146EarlyControlPlan
  have hq := s2Step146EarlyControl_plan_checked
  have fv1 : s2Step146CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step146CompleteOut.fv.payload[2]?.getD s2Step146CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step146CompleteOut.fv.payload[3]?.getD s2Step146CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step146CompleteOut.fv.payload[4]?.getD s2Step146CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step146EntryFBefore s2Step146EarlyControlArena s2Step146FrontBank 196 87 ⟨196,195,88,86⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step146CompleteLog s2Step146FrontPlan Q
    s2Step146Front_checked s2Step146Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step146Complete_owned s2Step146Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step146EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 836 s2Step146CompleteOut.fv.second (s2Step146CompleteOut.fv.payload[2]?.getD s2Step146CompleteOut.fv.sign) (s2Step146CompleteOut.fv.payload[3]?.getD s2Step146CompleteOut.fv.sign) (s2Step146CompleteOut.fv.payload[4]?.getD s2Step146CompleteOut.fv.sign) 780 42 s2Step146EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep146Arena : Arena := s2Step146EntryFBefore
def s2PrivateStep146Bank : WindowBank := s2Step146FrontBank
def s2PrivateStep146Spec : HmrSourceWalkStepLog := ⟨196,87,⟨196,195,88,86⟩,42,.early s2Step146CompleteLog⟩
def s2PrivateStep146Plan : HmrSourceStepPlan := .early s2Step146CompletePlan
theorem s2PrivateStep146_source : s2PrivateStep146Spec=s2ObservedLogs144[2] := rfl
theorem s2PrivateStep146_checked : compileHmrSourceStepLog s2PrivateStep146Arena s2PrivateStep146Bank
    s2PrivateStep146Spec.fgWidth s2PrivateStep146Spec.vWidth s2PrivateStep146Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 146 s2PrivateStep146Spec.need none s2PrivateStep146Spec.log=some s2PrivateStep146Plan := by
  change compileHmrSourceStepLog s2Step146EntryFBefore s2Step146FrontBank 196 87 ⟨196,195,88,86⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 146 42 none (.early s2Step146CompleteLog)=some (.early s2Step146CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 146<498)]
  rw [s2Step146Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
