import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep141
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

private def s2Step143CompleteMoves : List (Wire × Wire) := [(816,197),(836,709)]

private def s2Step143EarlyControlLog : HmrEarlyControlLog := ⟨[836, 816, 783, 841, 789],[778],[849],[790, 815, 867, 877, 879, 882],[]⟩

private def s2Step143FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[789], [841], [783], [842]],[[], [], [], []]⟩,[845],[788],[778],[849],[790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[778, 849, 790, 815]⟩

private def s2Step143CompleteLog : HmrEarlyStepLog := ⟨s2Step143FrontLog,s2Step143CompleteMoves,s2Step143EarlyControlLog⟩

private def s2Step143ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708],768⟩

private def s2Step143ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩

private def s2Step143ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196],769⟩

private def s2Step143ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩

private def s2Step143FrontOut : WindowBank := ⟨s2Step143ExitFOut,s2Step143ExitGOut,s2Step143ExitFvOut,s2Step143ExitGvOut⟩

private def s2Step143CompleteOut : WindowBank := s2Step143FrontOut.repacked s2Step143CompleteMoves

private def s2Step143EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step143EarlyControlPositiveArena,[778],s2Step143EarlyControlEqualityArena,[849],⟨⟨845,false⟩,[⟨⟨778,false⟩,849⟩]⟩⟩

private def s2Step143EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,836⟩,⟨⟨774,false⟩,816⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,841⟩,⟨⟨777,false⟩,789⟩]⟩

private def s2Step143EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step143EarlyControlZeroArena,s2Step143EarlyControlZeroPlan,s2Step143EarlyControlClassPlan,s2Step143EarlyControlFlagArena,s2Step143EarlyControlFittedArena,s2Step143EarlyControlHistoryArena,s2Step143EarlyControlSigmaArena,s2Step143EarlyControlOutputArena,s2Step143EarlyControlLog⟩

private def s2Step143CounterWork : List Wire := [778, 849, 790, 815]

private theorem s2Step143Counter_bounded : s2Step143CounterWork.toFinset⊆arenaWires := by norm_num [s2Step143CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step143HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143CounterDuring : Arena := ⟨s2Step143HeadFvAfter.live∪s2Step143CounterWork.toFinset,Finset.union_subset s2Step143HeadFvAfter.bounded s2Step143Counter_bounded⟩

private def s2Step143EntryFFresh : List Wire := []

private def s2Step143EntryFvFresh : List Wire := []

private def s2Step143EntryGFresh : List Wire := []

private def s2Step143EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143EntryGvAfter : Arena := s2Step143EntryFBefore

private def s2Step143EntryGvFresh : List Wire := []

private def s2Step143ExitFExtra : List Wire := [709, 841]

private def s2Step143ExitGExtra : List Wire := [197, 789]

private def s2Step143ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<197) ∨ (198≤q ∧ q<709) ∨ (710≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143ExitGvExtra : List Wire := [783]

private def s2Step143Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step143Add0_bounded : s2Step143Add0Work.toFinset⊆arenaWires := by
  have h : s2Step143Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step143Add0During : Arena := ⟨s2Step143Add0Arena.live∪s2Step143Add0Work.toFinset,Finset.union_subset s2Step143Add0Arena.bounded s2Step143Add0_bounded⟩

private def s2Step143Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 885, 888, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step143Add1_bounded : s2Step143Add1Work.toFinset⊆arenaWires := by
  have h : s2Step143Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step143Add1During : Arena := ⟨s2Step143Add1Arena.live∪s2Step143Add1Work.toFinset,Finset.union_subset s2Step143Add1Arena.bounded s2Step143Add1_bounded⟩

private def s2Step143F4FlagArena : Arena := ⟨s2Step143HeadFvAfter.live∪{778},Finset.union_subset s2Step143HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step143F4Plan : HmrHybridF4Plan := ⟨s2Step143F4FlagArena,[778],s2Step143Add0Arena,[849],s2Step143Add0During,s2Step143Add0Work,s2Step143Add1During,s2Step143Add1Work⟩

private def s2Step143HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 841],768⟩

private def s2Step143HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩

private def s2Step143HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 789],769⟩

private def s2Step143HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 783],771⟩

private def s2Step143FrontHead : WindowBank := ⟨s2Step143HeadFOut,s2Step143HeadGOut,s2Step143HeadFvOut,s2Step143HeadGvOut⟩

private def s2Step143EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709],768⟩

private def s2Step143EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩

private def s2Step143EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],769⟩

private def s2Step143EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩

private def s2Step143FrontPair : WindowBank := ⟨s2Step143EntryFOut,s2Step143EntryGOut,s2Step143EntryFvOut,s2Step143EntryGvOut⟩

private def s2Step143FrontSigmaArena : Arena := ⟨s2Step143EntryGvAfter.live∪{845},Finset.union_subset s2Step143EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step143HeadFFresh : List Wire := [841]

private def s2Step143HeadFvFresh : List Wire := [842]

private def s2Step143HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143HeadGFresh : List Wire := [789]

private def s2Step143HeadGvFresh : List Wire := [783]

private def s2Step143FrontPlan : HmrSourceFront := ⟨s2Step143EntryGvAfter,s2Step143FrontPair,(growRow 768 s2Step143EntryFFresh ++ (growRow 769 s2Step143EntryGFresh ++ (growRow 770 s2Step143EntryFvFresh ++ (growRow 771 s2Step143EntryGvFresh ++ [])))),s2Step143FrontSigmaArena,[845],s2Step143HeadGBefore,[788],
  s2Step143HeadFvAfter,s2Step143FrontHead,(growRow 769 s2Step143HeadGFresh ++ (growRow 768 s2Step143HeadFFresh ++ (growRow 771 s2Step143HeadGvFresh ++ (growRow 770 s2Step143HeadFvFresh ++ [])))),s2Step143F4Plan,s2Step143CounterDuring,s2Step143CounterWork,s2Step143ExitGvAfter,s2Step143FrontOut,(shrinkRow 769 s2Step143ExitGExtra ++ (shrinkRow 768 s2Step143ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step143ExitGvExtra ++ []))))⟩

private def s2Step143CompletePlan : HmrEarlyStepPlan := ⟨s2Step143FrontPlan,s2Step143EarlyControlArena,s2Step143EarlyControlPlan,s2Step143CompleteMoves⟩

private theorem s2Step143Complete_apart : List.Disjoint (s2Step143CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [845, 788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] := by
  have nd : ((s2Step143CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[845, 788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step143Complete_owned : (s2Step143CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step143EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step143EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private def s2Step143CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,709),(710,778),(779,783),(784,789),(791,815),(817,841),(842,849),(850,867),(868,877),(878,879),(880,882),(883,885),(886,888),(889,890)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step143CompleteRelocationMove0Borrowed : Arena := ⟨s2Step143ExitGvAfter.live∪{197},Finset.union_subset s2Step143ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step143CompleteRelocationMove1Borrowed : Arena := ⟨s2Step143CompleteRelocationMove0After.live∪{709},Finset.union_subset s2Step143CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step143CompleteRelocation_move0_owned : 816∈s2Step143ExitGvAfter.live := by norm_num [s2Step143ExitGvAfter,arenaWires]

private theorem s2Step143CompleteRelocation_move0_reserve : s2Step143ExitGvAfter.reserve {197}=some s2Step143CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step143ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step143CompleteRelocation_move0_retire : s2Step143CompleteRelocationMove0Borrowed.retireSet {816}=s2Step143CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step143CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step143CompleteRelocationMove0Borrowed,s2Step143ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step143CompleteRelocation_move1_owned : 836∈s2Step143CompleteRelocationMove0After.live := by norm_num [s2Step143CompleteRelocationMove0After,arenaWires]

private theorem s2Step143CompleteRelocation_move1_reserve : s2Step143CompleteRelocationMove0After.reserve {709}=some s2Step143CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step143CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step143CompleteRelocation_move1_retire : s2Step143CompleteRelocationMove1Borrowed.retireSet {836}=s2Step143EarlyControlArena := by
  unfold Arena.retireSet s2Step143EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step143CompleteRelocationMove1Borrowed,s2Step143CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step143CompleteRelocation_checked : s2Step143ExitGvAfter.checkRepack [(816,197),(836,709)]=some s2Step143EarlyControlArena := by
  have tail2 : s2Step143EarlyControlArena.checkRepack []=some s2Step143EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step143CompleteRelocationMove0After s2Step143CompleteRelocationMove1Borrowed s2Step143EarlyControlArena s2Step143EarlyControlArena 836 709 []
    s2Step143CompleteRelocation_move1_owned s2Step143CompleteRelocation_move1_reserve s2Step143CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step143ExitGvAfter s2Step143CompleteRelocationMove0Borrowed s2Step143CompleteRelocationMove0After s2Step143EarlyControlArena 816 197 [(836,709)]
    s2Step143CompleteRelocation_move0_owned s2Step143CompleteRelocation_move0_reserve s2Step143CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step143Complete_repack : s2Step143ExitGvAfter.checkRepack s2Step143CompleteMoves=some s2Step143EarlyControlArena := by
  simpa only [s2Step143CompleteMoves] using s2Step143CompleteRelocation_checked

private theorem s2Step143EarlyControl_branchOwned : ([788] : List Wire).toFinset⊆s2Step143EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step143EarlyControlSigmaArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EarlyControl_branch : compileHmrBranchRetirement s2Step143EarlyControlSigmaArena 788=some s2Step143EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step143EarlyControl_branchOwned
  · ext q
    simp [s2Step143EarlyControlOutputArena,s2Step143EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step143EarlyControl_classEqualityBorrow : s2Step143EarlyControlPositiveArena.checkBorrow (([845, 778] : List Wire).length-1) s2Step143EarlyControlLog.classWork=some s2Step143EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step143EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step143EarlyControlEqualityArena,s2Step143EarlyControlPositiveArena,s2Step143EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step143EarlyControl_classEqualityOwned : ([845, 778] : List Wire).toFinset⊆s2Step143EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step143EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EarlyControl_classEquality : compileHmrEqualityLog s2Step143EarlyControlPositiveArena [845, 778] 0 s2Step143EarlyControlLog.classWork=some (s2Step143EarlyControlEqualityArena,s2Step143EarlyControlLog.classWork,s2Step143EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step143EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step143EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step143EarlyControl_classOwned : ([777, 789, 845] : List Wire).toFinset⊆s2Step143EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step143EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EarlyControl_positiveBorrow : s2Step143EarlyControlZeroArena.checkBorrow (1) s2Step143EarlyControlLog.positiveWork=some s2Step143EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step143EarlyControlZeroArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step143EarlyControlPositiveArena,s2Step143EarlyControlZeroArena,s2Step143EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step143EarlyControl_class : compileHmrSourceClassLog s2Step143EarlyControlZeroArena false 777 s2Step143EarlyControlZeroPlan.top 0 845 s2Step143EarlyControlLog.positiveWork s2Step143EarlyControlLog.classWork=some s2Step143EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step143EarlyControlClassPlan s2Step143EarlyControlZeroArena false 777 s2Step143EarlyControlZeroPlan.top 0 845
  constructor
  · decide +kernel
  · exact s2Step143EarlyControl_classOwned
  · exact s2Step143EarlyControl_positiveBorrow
  · exact s2Step143EarlyControl_classEquality

private theorem s2Step143EarlyControl_entryRecordOwned : ([788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step143EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step143EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EarlyControl_entrySigmaOwned : ([845, 254] : List Wire).toFinset⊆s2Step143EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step143EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EarlyControl_fitBorrow : s2Step143EarlyControlFlagArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step143EarlyControlLog.recordFresh=some s2Step143EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step143EarlyControlFlagArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step143EarlyControlFittedArena,s2Step143EarlyControlFlagArena,s2Step143EarlyControlLog,arenaWires]

private theorem s2Step143EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step143EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step143EarlyControlFlagArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EarlyControl_fit : compileHmrRecordGrowLog s2Step143EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step143EarlyControlLog.recordFresh=some s2Step143EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step143EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step143EarlyControl_fitBorrow

private theorem s2Step143EarlyControl_flagsBorrow : s2Step143EarlyControlEqualityArena.checkBorrow (6) s2Step143EarlyControlLog.flagWork=some s2Step143EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step143EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step143EarlyControlFlagArena,s2Step143EarlyControlEqualityArena,s2Step143EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step143EarlyControl_flagsOwned : ([849, 253, 252, 251] : List Wire).toFinset⊆s2Step143EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step143EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EarlyControl_flags : compileHmrFlagsLog s2Step143EarlyControlClassPlan.equalityArena s2Step143EarlyControlClassPlan.equality.top 253 252 251 s2Step143EarlyControlLog.flagWork=some s2Step143EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step143EarlyControl_flagsOwned⟩
  · exact s2Step143EarlyControl_flagsBorrow

private theorem s2Step143EarlyControl_historyBorrow : s2Step143EarlyControlArena.checkBorrow ((42-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).length)) s2Step143EarlyControlLog.recordFresh=some s2Step143EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step143EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step143EarlyControlHistoryArena,s2Step143EarlyControlArena,s2Step143EarlyControlLog,arenaWires]

private theorem s2Step143EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] : List Wire).toFinset⊆s2Step143EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step143EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EarlyControl_history : compileHmrRecordGrowLog s2Step143EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step143EarlyControlLog.recordFresh=some s2Step143EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step143EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step143EarlyControl_historyBorrow

private theorem s2Step143EarlyControl_sigmaOwned : ([254, 845] : List Wire).toFinset⊆s2Step143EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step143EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EarlyControl_sigmaReleaseOwned : ([845] : List Wire).toFinset⊆s2Step143EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step143EarlyControlHistoryArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EarlyControl_sigmaRelease : s2Step143EarlyControlHistoryArena.release {845} (fun _ => false)=some s2Step143EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step143EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step143EarlyControlSigmaArena,s2Step143EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step143EarlyControl_sigma : compileHmrSigmaDropLog s2Step143EarlyControlHistoryArena false 0 0 254 845 []=some s2Step143EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step143EarlyControl_sigmaOwned⟩
  · exact s2Step143EarlyControl_sigmaRelease

private theorem s2Step143EarlyControl_zeroBorrow : s2Step143EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step143EarlyControlLog.zeroWork=some s2Step143EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step143EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step143EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
      decide +kernel
    · ext q
      simp [s2Step143EarlyControlZeroArena,s2Step143EarlyControlArena,s2Step143EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step143EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step143EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step143EarlyControlArena (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (817≤q ∧ q<836) ∨ (837≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EarlyControl_zero : compileHmrEqualityLog s2Step143EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step143EarlyControlLog.zeroWork=some (s2Step143EarlyControlZeroArena,s2Step143EarlyControlLog.zeroWork,s2Step143EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step143EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step143EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step143EarlyControl_logged : s2Step143EarlyControlPlan.Logged s2Step143EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 254 253 252 251 788 42 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step143EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step143EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step143EarlyControl_zero
  · exact s2Step143EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step143EarlyControl_flags
  · exact s2Step143EarlyControl_fit
  · exact s2Step143EarlyControl_history
  · exact s2Step143EarlyControl_sigma
  · exact s2Step143EarlyControl_branch

private theorem s2Step143EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step143EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 254 253 252 251 788 42 s2Step143EarlyControlLog=some s2Step143EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step143EarlyControlPlan s2Step143EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 254 253 252 251 788 42 s2Step143EarlyControl_logged

private def s2Step143EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709],768⟩

private def s2Step143EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩

private def s2Step143EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],769⟩

private def s2Step143EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩

private def s2Step143FrontBank : WindowBank := ⟨s2Step143EntryFRow,s2Step143EntryGRow,s2Step143EntryFvRow,s2Step143EntryGvRow⟩

private def s2Step143Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 841, 768]

private def s2Step143Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 789, 769]

private def s2Step143Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842, 770]

private def s2Step143Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 783, 771]

private theorem s2Step143Counter_apart : Disjoint s2Step143HeadFvAfter.live s2Step143CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step143HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143Counter_borrowed : s2Step143HeadFvAfter.checkBorrow 4 s2Step143CounterWork=some s2Step143CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step143HeadFvAfter s2Step143CounterDuring s2Step143CounterWork.toFinset s2Step143Counter_bounded s2Step143Counter_apart rfl

private theorem s2Step143Counter_owned : (845::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step143HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step143HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143Counter_checked : compileHmrCounterStepLog s2Step143HeadFvAfter true 845 [772, 773, 774, 775, 776, 777] s2Step143CounterWork=some s2Step143CounterDuring := by
  have owned : ∀q∈845::[772, 773, 774, 775, 776, 777],q∈s2Step143HeadFvAfter.live := fun q hq => s2Step143Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step143Counter_borrowed

private def s2Step143EntryFAfter : Arena := s2Step143EntryFBefore

private theorem s2Step143EntryBank_incomingDistinct : ([s2Step143EntryFRow,s2Step143EntryGRow,s2Step143EntryFvRow,s2Step143EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143EntryF_Incoming : rowsOwned s2Step143EntryFBefore [s2Step143EntryFRow,s2Step143EntryGRow,s2Step143EntryFvRow,s2Step143EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step143EntryFRow,s2Step143EntryGRow,s2Step143EntryFvRow,s2Step143EntryGvRow] 0 s2Step143EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step143EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143EntryBank_outgoingOwned : rowsOwned s2Step143EntryGvAfter [s2Step143EntryFOut,s2Step143EntryGOut,s2Step143EntryFvOut,s2Step143EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step143EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143EntryF_Outgoing : rowsOwned s2Step143EntryGvAfter [s2Step143EntryFOut,s2Step143EntryGOut,s2Step143EntryFvOut,s2Step143EntryGvOut] :=
  hmrRows_owned_drop s2Step143EntryGvAfter [s2Step143EntryFOut,s2Step143EntryGOut,s2Step143EntryFvOut,s2Step143EntryGvOut] 0 s2Step143EntryBank_outgoingOwned

private theorem s2Step143EntryF_distinct : (s2Step143EntryFRow.sign::s2Step143EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143EntryF_owned : (s2Step143EntryFRow.sign::s2Step143EntryFRow.payload).toFinset⊆s2Step143EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step143EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EntryF_reserved : s2Step143EntryFBefore.reserve s2Step143EntryFFresh.toFinset=some s2Step143EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step143EntryFFresh,arenaWires]
  · norm_num [s2Step143EntryFBefore,s2Step143EntryFFresh,arenaWires]
  · simp only [s2Step143EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step143EntryF_checked : planRowResizeLog s2Step143EntryFBefore s2Step143EntryFRow 198 s2Step143EntryFFresh=
    some (s2Step143EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709],768⟩,growRow 768 s2Step143EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step143EntryFBefore s2Step143EntryFAfter s2Step143EntryFRow 198 s2Step143EntryFFresh
    s2Step143EntryF_distinct s2Step143EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step143EntryF_reserved
  have rowEq : WindowRow.mk (s2Step143EntryFRow.payload++s2Step143EntryFFresh) s2Step143EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step143EntryFvAfter : Arena := s2Step143EntryFBefore

private def s2Step143EntryFvBefore : Arena := s2Step143EntryFBefore

private theorem s2Step143EntryFv_Incoming : rowsOwned s2Step143EntryFvBefore [s2Step143EntryFvRow,s2Step143EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step143EntryFRow,s2Step143EntryGRow,s2Step143EntryFvRow,s2Step143EntryGvRow] 2 s2Step143EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step143EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143EntryFv_Outgoing : rowsOwned s2Step143EntryGvAfter [s2Step143EntryFvOut,s2Step143EntryGvOut] :=
  hmrRows_owned_drop s2Step143EntryGvAfter [s2Step143EntryFOut,s2Step143EntryGOut,s2Step143EntryFvOut,s2Step143EntryGvOut] 2 s2Step143EntryBank_outgoingOwned

private theorem s2Step143EntryFv_distinct : (s2Step143EntryFvRow.sign::s2Step143EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143EntryFv_owned : (s2Step143EntryFvRow.sign::s2Step143EntryFvRow.payload).toFinset⊆s2Step143EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step143EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EntryFv_reserved : s2Step143EntryFvBefore.reserve s2Step143EntryFvFresh.toFinset=some s2Step143EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step143EntryFvFresh,arenaWires]
  · norm_num [s2Step143EntryFvBefore,s2Step143EntryFBefore,s2Step143EntryFvFresh,arenaWires]
  · simp only [s2Step143EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step143EntryFv_checked : planRowResizeLog s2Step143EntryFvBefore s2Step143EntryFvRow 85 s2Step143EntryFvFresh=
    some (s2Step143EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩,growRow 770 s2Step143EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step143EntryFvBefore s2Step143EntryFvAfter s2Step143EntryFvRow 85 s2Step143EntryFvFresh
    s2Step143EntryFv_distinct s2Step143EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step143EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step143EntryFvRow.payload++s2Step143EntryFvFresh) s2Step143EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step143EntryGAfter : Arena := s2Step143EntryFBefore

private def s2Step143EntryGBefore : Arena := s2Step143EntryFBefore

private theorem s2Step143EntryG_Incoming : rowsOwned s2Step143EntryGBefore [s2Step143EntryGRow,s2Step143EntryFvRow,s2Step143EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step143EntryFRow,s2Step143EntryGRow,s2Step143EntryFvRow,s2Step143EntryGvRow] 1 s2Step143EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step143EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143EntryG_Outgoing : rowsOwned s2Step143EntryGvAfter [s2Step143EntryGOut,s2Step143EntryFvOut,s2Step143EntryGvOut] :=
  hmrRows_owned_drop s2Step143EntryGvAfter [s2Step143EntryFOut,s2Step143EntryGOut,s2Step143EntryFvOut,s2Step143EntryGvOut] 1 s2Step143EntryBank_outgoingOwned

private theorem s2Step143EntryG_distinct : (s2Step143EntryGRow.sign::s2Step143EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143EntryG_owned : (s2Step143EntryGRow.sign::s2Step143EntryGRow.payload).toFinset⊆s2Step143EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step143EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EntryG_reserved : s2Step143EntryGBefore.reserve s2Step143EntryGFresh.toFinset=some s2Step143EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step143EntryGFresh,arenaWires]
  · norm_num [s2Step143EntryGBefore,s2Step143EntryFBefore,s2Step143EntryGFresh,arenaWires]
  · simp only [s2Step143EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step143EntryG_checked : planRowResizeLog s2Step143EntryGBefore s2Step143EntryGRow 198 s2Step143EntryGFresh=
    some (s2Step143EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],769⟩,growRow 769 s2Step143EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step143EntryGBefore s2Step143EntryGAfter s2Step143EntryGRow 198 s2Step143EntryGFresh
    s2Step143EntryG_distinct s2Step143EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step143EntryG_reserved
  have rowEq : WindowRow.mk (s2Step143EntryGRow.payload++s2Step143EntryGFresh) s2Step143EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step143EntryGvBefore : Arena := s2Step143EntryFBefore

private theorem s2Step143EntryGv_Incoming : rowsOwned s2Step143EntryGvBefore [s2Step143EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step143EntryFRow,s2Step143EntryGRow,s2Step143EntryFvRow,s2Step143EntryGvRow] 3 s2Step143EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step143EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143EntryGv_Outgoing : rowsOwned s2Step143EntryGvAfter [s2Step143EntryGvOut] :=
  hmrRows_owned_drop s2Step143EntryGvAfter [s2Step143EntryFOut,s2Step143EntryGOut,s2Step143EntryFvOut,s2Step143EntryGvOut] 3 s2Step143EntryBank_outgoingOwned

private theorem s2Step143EntryGv_distinct : (s2Step143EntryGvRow.sign::s2Step143EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143EntryGv_owned : (s2Step143EntryGvRow.sign::s2Step143EntryGvRow.payload).toFinset⊆s2Step143EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step143EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143EntryGv_reserved : s2Step143EntryGvBefore.reserve s2Step143EntryGvFresh.toFinset=some s2Step143EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step143EntryGvFresh,arenaWires]
  · norm_num [s2Step143EntryGvBefore,s2Step143EntryFBefore,s2Step143EntryGvFresh,arenaWires]
  · simp only [s2Step143EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step143EntryGv_checked : planRowResizeLog s2Step143EntryGvBefore s2Step143EntryGvRow 85 s2Step143EntryGvFresh=
    some (s2Step143EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩,growRow 771 s2Step143EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step143EntryGvBefore s2Step143EntryGvAfter s2Step143EntryGvRow 85 s2Step143EntryGvFresh
    s2Step143EntryGv_distinct s2Step143EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step143EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step143EntryGvRow.payload++s2Step143EntryGvFresh) s2Step143EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step143EntryBank_rows : planWindowRowsLog s2Step143EntryFBefore [(s2Step143EntryFRow,198),(s2Step143EntryGRow,198),(s2Step143EntryFvRow,85),(s2Step143EntryGvRow,85)] [s2Step143EntryFFresh,s2Step143EntryGFresh,s2Step143EntryFvFresh,s2Step143EntryGvFresh]=
    some (s2Step143EntryGvAfter,[s2Step143EntryFOut,s2Step143EntryGOut,s2Step143EntryFvOut,s2Step143EntryGvOut],(growRow 768 s2Step143EntryFFresh ++ (growRow 769 s2Step143EntryGFresh ++ (growRow 770 s2Step143EntryFvFresh ++ (growRow 771 s2Step143EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step143EntryGvAfter [] []=some (s2Step143EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step143EntryGvBefore s2Step143EntryGvAfter s2Step143EntryGvAfter
    s2Step143EntryGvRow s2Step143EntryGvOut 85 s2Step143EntryGvFresh [] [] []
    (growRow 771 s2Step143EntryGvFresh) ([]) s2Step143EntryGv_Incoming s2Step143EntryGv_checked h4 s2Step143EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step143EntryFvBefore s2Step143EntryFvAfter s2Step143EntryGvAfter
    s2Step143EntryFvRow s2Step143EntryFvOut 85 s2Step143EntryFvFresh [(s2Step143EntryGvRow,85)] [s2Step143EntryGvFresh] [s2Step143EntryGvOut]
    (growRow 770 s2Step143EntryFvFresh) ((growRow 771 s2Step143EntryGvFresh ++ [])) s2Step143EntryFv_Incoming s2Step143EntryFv_checked h3 s2Step143EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step143EntryGBefore s2Step143EntryGAfter s2Step143EntryGvAfter
    s2Step143EntryGRow s2Step143EntryGOut 198 s2Step143EntryGFresh [(s2Step143EntryFvRow,85),(s2Step143EntryGvRow,85)] [s2Step143EntryFvFresh,s2Step143EntryGvFresh] [s2Step143EntryFvOut,s2Step143EntryGvOut]
    (growRow 769 s2Step143EntryGFresh) ((growRow 770 s2Step143EntryFvFresh ++ (growRow 771 s2Step143EntryGvFresh ++ []))) s2Step143EntryG_Incoming s2Step143EntryG_checked h2 s2Step143EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step143EntryFBefore s2Step143EntryFAfter s2Step143EntryGvAfter
    s2Step143EntryFRow s2Step143EntryFOut 198 s2Step143EntryFFresh [(s2Step143EntryGRow,198),(s2Step143EntryFvRow,85),(s2Step143EntryGvRow,85)] [s2Step143EntryGFresh,s2Step143EntryFvFresh,s2Step143EntryGvFresh] [s2Step143EntryGOut,s2Step143EntryFvOut,s2Step143EntryGvOut]
    (growRow 768 s2Step143EntryFFresh) ((growRow 769 s2Step143EntryGFresh ++ (growRow 770 s2Step143EntryFvFresh ++ (growRow 771 s2Step143EntryGvFresh ++ [])))) s2Step143EntryF_Incoming s2Step143EntryF_checked h1 s2Step143EntryF_Outgoing
  exact h0

private theorem s2Step143EntryBank_checked : compileHmrBankResizeLog .entry s2Step143EntryFBefore ⟨s2Step143EntryFRow,s2Step143EntryGRow,s2Step143EntryFvRow,s2Step143EntryGvRow⟩ ⟨198,198,85,85⟩ [s2Step143EntryFFresh,s2Step143EntryGFresh,s2Step143EntryFvFresh,s2Step143EntryGvFresh]=
    some (s2Step143EntryGvAfter,⟨s2Step143EntryFOut,s2Step143EntryGOut,s2Step143EntryFvOut,s2Step143EntryGvOut⟩,(growRow 768 s2Step143EntryFFresh ++ (growRow 769 s2Step143EntryGFresh ++ (growRow 770 s2Step143EntryFvFresh ++ (growRow 771 s2Step143EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step143EntryBank_rows]
  rfl

private def s2Step143ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<197) ∨ (198≤q ∧ q<709) ∨ (710≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<197) ∨ (198≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143ExitFBefore : Arena := s2Step143ExitGAfter

private def s2Step143ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 841],768⟩

private def s2Step143ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩

private def s2Step143ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 789],769⟩

private def s2Step143ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 783],771⟩

private theorem s2Step143ExitBank_incomingDistinct : ([s2Step143ExitGRow,s2Step143ExitFRow,s2Step143ExitFvRow,s2Step143ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143ExitF_Incoming : rowsOwned s2Step143ExitFBefore [s2Step143ExitFRow,s2Step143ExitFvRow,s2Step143ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step143ExitGRow,s2Step143ExitFRow,s2Step143ExitFvRow,s2Step143ExitGvRow] 1 s2Step143ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step143ExitFBefore (fun q => (0≤q ∧ q<197) ∨ (198≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143ExitBank_outgoingOwned : rowsOwned s2Step143ExitGvAfter [s2Step143ExitGOut,s2Step143ExitFOut,s2Step143ExitFvOut,s2Step143ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step143ExitGvAfter (fun q => (0≤q ∧ q<197) ∨ (198≤q ∧ q<709) ∨ (710≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143ExitF_Outgoing : rowsOwned s2Step143ExitGvAfter [s2Step143ExitFOut,s2Step143ExitFvOut,s2Step143ExitGvOut] :=
  hmrRows_owned_drop s2Step143ExitGvAfter [s2Step143ExitGOut,s2Step143ExitFOut,s2Step143ExitFvOut,s2Step143ExitGvOut] 1 s2Step143ExitBank_outgoingOwned

private theorem s2Step143ExitF_distinct : (s2Step143ExitFRow.sign::s2Step143ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143ExitF_owned : (s2Step143ExitFRow.sign::s2Step143ExitFRow.payload).toFinset⊆s2Step143ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step143ExitFBefore (fun q => (0≤q ∧ q<197) ∨ (198≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143ExitF_retired : s2Step143ExitFBefore.retireSet s2Step143ExitFExtra.toFinset=s2Step143ExitFAfter := by
  unfold Arena.retireSet s2Step143ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step143ExitFBefore,s2Step143ExitGAfter,s2Step143ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step143ExitF_checked : planRowResizeLog s2Step143ExitFBefore s2Step143ExitFRow 197 []=
    some (s2Step143ExitFAfter,s2Step143ExitFOut,shrinkRow 768 s2Step143ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step143ExitFBefore s2Step143ExitFRow 197 s2Step143ExitF_distinct s2Step143ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step143ExitFRow.payload.take 197) s2Step143ExitFRow.sign=s2Step143ExitFOut := by decide +kernel
  have hi : s2Step143ExitFRow.payload.drop 197=s2Step143ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step143ExitF_retired] at result
  exact result

private def s2Step143ExitFvAfter : Arena := s2Step143ExitFAfter

private def s2Step143ExitFvBefore : Arena := s2Step143ExitFAfter

private theorem s2Step143ExitFv_Incoming : rowsOwned s2Step143ExitFvBefore [s2Step143ExitFvRow,s2Step143ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step143ExitGRow,s2Step143ExitFRow,s2Step143ExitFvRow,s2Step143ExitGvRow] 2 s2Step143ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step143ExitFvBefore (fun q => (0≤q ∧ q<197) ∨ (198≤q ∧ q<709) ∨ (710≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143ExitFv_Outgoing : rowsOwned s2Step143ExitGvAfter [s2Step143ExitFvOut,s2Step143ExitGvOut] :=
  hmrRows_owned_drop s2Step143ExitGvAfter [s2Step143ExitGOut,s2Step143ExitFOut,s2Step143ExitFvOut,s2Step143ExitGvOut] 2 s2Step143ExitBank_outgoingOwned

private theorem s2Step143ExitFv_distinct : (s2Step143ExitFvRow.sign::s2Step143ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143ExitFv_owned : (s2Step143ExitFvRow.sign::s2Step143ExitFvRow.payload).toFinset⊆s2Step143ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step143ExitFvBefore (fun q => (0≤q ∧ q<197) ∨ (198≤q ∧ q<709) ∨ (710≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143ExitFv_reserved : s2Step143ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step143ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step143ExitFv_checked : planRowResizeLog s2Step143ExitFvBefore s2Step143ExitFvRow 86 []=
    some (s2Step143ExitFvAfter,s2Step143ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step143ExitFvBefore s2Step143ExitFvAfter s2Step143ExitFvRow 86 []
    s2Step143ExitFv_distinct s2Step143ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step143ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step143ExitFvRow.payload++[]) s2Step143ExitFvRow.sign=s2Step143ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step143ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private theorem s2Step143ExitG_Incoming : rowsOwned s2Step143ExitGBefore [s2Step143ExitGRow,s2Step143ExitFRow,s2Step143ExitFvRow,s2Step143ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step143ExitGRow,s2Step143ExitFRow,s2Step143ExitFvRow,s2Step143ExitGvRow] 0 s2Step143ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step143ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143ExitG_Outgoing : rowsOwned s2Step143ExitGvAfter [s2Step143ExitGOut,s2Step143ExitFOut,s2Step143ExitFvOut,s2Step143ExitGvOut] :=
  hmrRows_owned_drop s2Step143ExitGvAfter [s2Step143ExitGOut,s2Step143ExitFOut,s2Step143ExitFvOut,s2Step143ExitGvOut] 0 s2Step143ExitBank_outgoingOwned

private theorem s2Step143ExitG_distinct : (s2Step143ExitGRow.sign::s2Step143ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143ExitG_owned : (s2Step143ExitGRow.sign::s2Step143ExitGRow.payload).toFinset⊆s2Step143ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step143ExitGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143ExitG_retired : s2Step143ExitGBefore.retireSet s2Step143ExitGExtra.toFinset=s2Step143ExitGAfter := by
  unfold Arena.retireSet s2Step143ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step143ExitGBefore,s2Step143ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step143ExitG_checked : planRowResizeLog s2Step143ExitGBefore s2Step143ExitGRow 197 []=
    some (s2Step143ExitGAfter,s2Step143ExitGOut,shrinkRow 769 s2Step143ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step143ExitGBefore s2Step143ExitGRow 197 s2Step143ExitG_distinct s2Step143ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step143ExitGRow.payload.take 197) s2Step143ExitGRow.sign=s2Step143ExitGOut := by decide +kernel
  have hi : s2Step143ExitGRow.payload.drop 197=s2Step143ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step143ExitG_retired] at result
  exact result

private def s2Step143ExitGvBefore : Arena := s2Step143ExitFAfter

private theorem s2Step143ExitGv_Incoming : rowsOwned s2Step143ExitGvBefore [s2Step143ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step143ExitGRow,s2Step143ExitFRow,s2Step143ExitFvRow,s2Step143ExitGvRow] 3 s2Step143ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step143ExitGvBefore (fun q => (0≤q ∧ q<197) ∨ (198≤q ∧ q<709) ∨ (710≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143ExitGv_Outgoing : rowsOwned s2Step143ExitGvAfter [s2Step143ExitGvOut] :=
  hmrRows_owned_drop s2Step143ExitGvAfter [s2Step143ExitGOut,s2Step143ExitFOut,s2Step143ExitFvOut,s2Step143ExitGvOut] 3 s2Step143ExitBank_outgoingOwned

private theorem s2Step143ExitGv_distinct : (s2Step143ExitGvRow.sign::s2Step143ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143ExitGv_owned : (s2Step143ExitGvRow.sign::s2Step143ExitGvRow.payload).toFinset⊆s2Step143ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step143ExitGvBefore (fun q => (0≤q ∧ q<197) ∨ (198≤q ∧ q<709) ∨ (710≤q ∧ q<778) ∨ (779≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (842≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143ExitGv_retired : s2Step143ExitGvBefore.retireSet s2Step143ExitGvExtra.toFinset=s2Step143ExitGvAfter := by
  unfold Arena.retireSet s2Step143ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step143ExitGvBefore,s2Step143ExitFAfter,s2Step143ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step143ExitGv_checked : planRowResizeLog s2Step143ExitGvBefore s2Step143ExitGvRow 85 []=
    some (s2Step143ExitGvAfter,s2Step143ExitGvOut,shrinkRow 771 s2Step143ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step143ExitGvBefore s2Step143ExitGvRow 85 s2Step143ExitGv_distinct s2Step143ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step143ExitGvRow.payload.take 85) s2Step143ExitGvRow.sign=s2Step143ExitGvOut := by decide +kernel
  have hi : s2Step143ExitGvRow.payload.drop 85=s2Step143ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step143ExitGv_retired] at result
  exact result

private theorem s2Step143ExitBank_rows : planWindowRowsLog s2Step143ExitGBefore [(s2Step143ExitGRow,197),(s2Step143ExitFRow,197),(s2Step143ExitFvRow,86),(s2Step143ExitGvRow,85)] [[],[],[],[]]=
    some (s2Step143ExitGvAfter,[s2Step143ExitGOut,s2Step143ExitFOut,s2Step143ExitFvOut,s2Step143ExitGvOut],(shrinkRow 769 s2Step143ExitGExtra ++ (shrinkRow 768 s2Step143ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step143ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step143ExitGvAfter [] []=some (s2Step143ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step143ExitGvBefore s2Step143ExitGvAfter s2Step143ExitGvAfter
    s2Step143ExitGvRow s2Step143ExitGvOut 85 [] [] [] []
    (shrinkRow 771 s2Step143ExitGvExtra) ([]) s2Step143ExitGv_Incoming s2Step143ExitGv_checked h4 s2Step143ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step143ExitFvBefore s2Step143ExitFvAfter s2Step143ExitGvAfter
    s2Step143ExitFvRow s2Step143ExitFvOut 86 [] [(s2Step143ExitGvRow,85)] [[]] [s2Step143ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step143ExitGvExtra ++ [])) s2Step143ExitFv_Incoming s2Step143ExitFv_checked h3 s2Step143ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step143ExitFBefore s2Step143ExitFAfter s2Step143ExitGvAfter
    s2Step143ExitFRow s2Step143ExitFOut 197 [] [(s2Step143ExitFvRow,86),(s2Step143ExitGvRow,85)] [[],[]] [s2Step143ExitFvOut,s2Step143ExitGvOut]
    (shrinkRow 768 s2Step143ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step143ExitGvExtra ++ []))) s2Step143ExitF_Incoming s2Step143ExitF_checked h2 s2Step143ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step143ExitGBefore s2Step143ExitGAfter s2Step143ExitGvAfter
    s2Step143ExitGRow s2Step143ExitGOut 197 [] [(s2Step143ExitFRow,197),(s2Step143ExitFvRow,86),(s2Step143ExitGvRow,85)] [[],[],[]] [s2Step143ExitFOut,s2Step143ExitFvOut,s2Step143ExitGvOut]
    (shrinkRow 769 s2Step143ExitGExtra) ((shrinkRow 768 s2Step143ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step143ExitGvExtra ++ [])))) s2Step143ExitG_Incoming s2Step143ExitG_checked h1 s2Step143ExitG_Outgoing
  exact h0

private theorem s2Step143ExitBank_checked : compileHmrBankResizeLog .exit s2Step143ExitGBefore ⟨s2Step143ExitFRow,s2Step143ExitGRow,s2Step143ExitFvRow,s2Step143ExitGvRow⟩ ⟨197,197,86,85⟩ [[],[],[],[]]=
    some (s2Step143ExitGvAfter,⟨s2Step143ExitFOut,s2Step143ExitGOut,s2Step143ExitFvOut,s2Step143ExitGvOut⟩,(shrinkRow 769 s2Step143ExitGExtra ++ (shrinkRow 768 s2Step143ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step143ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step143ExitBank_rows]
  rfl

private theorem s2Step143Add0_apart : Disjoint s2Step143Add0Arena.live s2Step143Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step143Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143Add0_card : s2Step143Add0Arena.live.card=882 := by
  decide +kernel

private theorem s2Step143Add0_borrowed : s2Step143Add0Arena.checkBorrow (hmrHybridCount s2Step143Add0Arena s2Step143Add0B.length) s2Step143Add0Work=some s2Step143Add0During := by
  have len : s2Step143Add0Work.length=hmrHybridCount s2Step143Add0Arena s2Step143Add0B.length := by
    rw [hmrHybridCount,s2Step143Add0_card]
    decide +kernel
  have nd : s2Step143Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step143Add0Arena s2Step143Add0During s2Step143Add0Work.toFinset s2Step143Add0_bounded s2Step143Add0_apart rfl

private theorem s2Step143Add0_distinct : (778::788::849::(s2Step143Add0A++s2Step143Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143Add0_owned : (778::788::849::(s2Step143Add0A++s2Step143Add0B)).toFinset⊆s2Step143Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step143Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143Add0_checked : compileHmrHybridCinLog s2Step143Add0Arena 788 778 849 s2Step143Add0A s2Step143Add0B s2Step143Add0Work=some s2Step143Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step143Add0Arena s2Step143Add0During 788 778 849 s2Step143Add0A s2Step143Add0B s2Step143Add0Work
    (by decide +kernel) (by decide +kernel) s2Step143Add0_distinct
    (fun q hq => s2Step143Add0_owned (List.mem_toFinset.mpr hq)) s2Step143Add0_borrowed

private theorem s2Step143Add1_apart : Disjoint s2Step143Add1Arena.live s2Step143Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step143Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143Add1_card : s2Step143Add1Arena.live.card=882 := by
  decide +kernel

private theorem s2Step143Add1_borrowed : s2Step143Add1Arena.checkBorrow (hmrHybridCount s2Step143Add1Arena s2Step143Add1B.length) s2Step143Add1Work=some s2Step143Add1During := by
  have len : s2Step143Add1Work.length=hmrHybridCount s2Step143Add1Arena s2Step143Add1B.length := by
    rw [hmrHybridCount,s2Step143Add1_card]
    decide +kernel
  have nd : s2Step143Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step143Add1Arena s2Step143Add1During s2Step143Add1Work.toFinset s2Step143Add1_bounded s2Step143Add1_apart rfl

private theorem s2Step143Add1_distinct : (778::788::849::(s2Step143Add1A++s2Step143Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143Add1_owned : (778::788::849::(s2Step143Add1A++s2Step143Add1B)).toFinset⊆s2Step143Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step143Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143Add1_checked : compileHmrHybridCinLog s2Step143Add1Arena 788 778 849 s2Step143Add1A s2Step143Add1B s2Step143Add1Work=some s2Step143Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step143Add1Arena s2Step143Add1During 788 778 849 s2Step143Add1A s2Step143Add1B s2Step143Add1Work
    (by decide +kernel) (by decide +kernel) s2Step143Add1_distinct
    (fun q hq => s2Step143Add1_owned (List.mem_toFinset.mpr hq)) s2Step143Add1_borrowed

private theorem s2Step143F4_apart : Disjoint (s2Step143Add0A++s2Step143Add0B).toFinset (s2Step143Add1A++s2Step143Add1B).toFinset := by
  have nd : ((s2Step143Add0A++s2Step143Add0B)++(s2Step143Add1A++s2Step143Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step143F4_carry : s2Step143F4FlagArena.checkBorrow 1 [849]=some s2Step143Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step143F4FlagArena,s2Step143HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step143F4FlagArena,s2Step143HeadFvAfter,s2Step143Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step143F4_distinct : (845::788::778::849::((s2Step143Add0A++s2Step143Add1A)++(s2Step143Add0B++s2Step143Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143F4_flag : s2Step143HeadFvAfter.checkBorrow 1 [778]=some s2Step143F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step143HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step143F4_owned : (845::788::((s2Step143Add0A++s2Step143Add1A)++(s2Step143Add0B++s2Step143Add1B))).toFinset⊆s2Step143HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step143HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143F4_checked : compileHmrHybridF4Log s2Step143HeadFvAfter 845 788 s2Step143Add0A s2Step143Add0B s2Step143Add1A s2Step143Add1B [778] [849] s2Step143Add0Work s2Step143Add1Work=some s2Step143F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step143HeadFvAfter s2Step143F4FlagArena s2Step143Add0Arena s2Step143Add0During s2Step143Add1During 845 788
    s2Step143Add0A s2Step143Add0B s2Step143Add1A s2Step143Add1B [778] [849] s2Step143Add0Work s2Step143Add1Work
    (fun q hq => s2Step143F4_owned (List.mem_toFinset.mpr hq)) s2Step143F4_flag s2Step143F4_carry
    s2Step143F4_distinct s2Step143F4_apart s2Step143Add0_checked s2Step143Add1_checked

private theorem s2Step143Front_branch : s2Step143FrontSigmaArena.checkBorrow 1 [788]=some s2Step143HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step143FrontSigmaArena,s2Step143EntryGvAfter,s2Step143EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step143FrontSigmaArena,s2Step143EntryGvAfter,s2Step143EntryFBefore,s2Step143HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step143Front_entry : HmrFrontEntryValid s2Step143EntryFBefore s2Step143FrontBank 198 85 ⟨197,197,86,85⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step143FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step143EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step143EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<788) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step143FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step143Front_sigma : s2Step143EntryGvAfter.checkBorrow 1 [845]=some s2Step143FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step143EntryGvAfter,s2Step143EntryFBefore,arenaWires]
  · rfl

private def s2Step143HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143HeadFBefore : Arena := s2Step143HeadGAfter

private def s2Step143HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709],768⟩

private def s2Step143HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837],770⟩

private def s2Step143HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197],769⟩

private def s2Step143HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781],771⟩

private theorem s2Step143HeadBank_incomingDistinct : ([s2Step143HeadGRow,s2Step143HeadFRow,s2Step143HeadGvRow,s2Step143HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143HeadF_Incoming : rowsOwned s2Step143HeadFBefore [s2Step143HeadFRow,s2Step143HeadGvRow,s2Step143HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step143HeadGRow,s2Step143HeadFRow,s2Step143HeadGvRow,s2Step143HeadFvRow] 1 s2Step143HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step143HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143HeadBank_outgoingOwned : rowsOwned s2Step143HeadFvAfter [s2Step143HeadGOut,s2Step143HeadFOut,s2Step143HeadGvOut,s2Step143HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step143HeadFvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143HeadF_Outgoing : rowsOwned s2Step143HeadFvAfter [s2Step143HeadFOut,s2Step143HeadGvOut,s2Step143HeadFvOut] :=
  hmrRows_owned_drop s2Step143HeadFvAfter [s2Step143HeadGOut,s2Step143HeadFOut,s2Step143HeadGvOut,s2Step143HeadFvOut] 1 s2Step143HeadBank_outgoingOwned

private theorem s2Step143HeadF_distinct : (s2Step143HeadFRow.sign::s2Step143HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143HeadF_owned : (s2Step143HeadFRow.sign::s2Step143HeadFRow.payload).toFinset⊆s2Step143HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step143HeadFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143HeadF_reserved : s2Step143HeadFBefore.reserve s2Step143HeadFFresh.toFinset=some s2Step143HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step143HeadFFresh,arenaWires]
  · norm_num [s2Step143HeadFBefore,s2Step143HeadGAfter,s2Step143HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step143HeadFAfter,s2Step143HeadFBefore,s2Step143HeadGAfter,s2Step143HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step143HeadF_checked : planRowResizeLog s2Step143HeadFBefore s2Step143HeadFRow 199 s2Step143HeadFFresh=
    some (s2Step143HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 841],768⟩,growRow 768 s2Step143HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step143HeadFBefore s2Step143HeadFAfter s2Step143HeadFRow 199 s2Step143HeadFFresh
    s2Step143HeadF_distinct s2Step143HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step143HeadF_reserved
  have rowEq : WindowRow.mk (s2Step143HeadFRow.payload++s2Step143HeadFFresh) s2Step143HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 841],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step143HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)),Finset.filter_subset _ _⟩

private def s2Step143HeadFvBefore : Arena := s2Step143HeadGvAfter

private theorem s2Step143HeadFv_Incoming : rowsOwned s2Step143HeadFvBefore [s2Step143HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step143HeadGRow,s2Step143HeadFRow,s2Step143HeadGvRow,s2Step143HeadFvRow] 3 s2Step143HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step143HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143HeadFv_Outgoing : rowsOwned s2Step143HeadFvAfter [s2Step143HeadFvOut] :=
  hmrRows_owned_drop s2Step143HeadFvAfter [s2Step143HeadGOut,s2Step143HeadFOut,s2Step143HeadGvOut,s2Step143HeadFvOut] 3 s2Step143HeadBank_outgoingOwned

private theorem s2Step143HeadFv_distinct : (s2Step143HeadFvRow.sign::s2Step143HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143HeadFv_owned : (s2Step143HeadFvRow.sign::s2Step143HeadFvRow.payload).toFinset⊆s2Step143HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step143HeadFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143HeadFv_reserved : s2Step143HeadFvBefore.reserve s2Step143HeadFvFresh.toFinset=some s2Step143HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step143HeadFvFresh,arenaWires]
  · norm_num [s2Step143HeadFvBefore,s2Step143HeadGvAfter,s2Step143HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step143HeadFvAfter,s2Step143HeadFvBefore,s2Step143HeadGvAfter,s2Step143HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step143HeadFv_checked : planRowResizeLog s2Step143HeadFvBefore s2Step143HeadFvRow 86 s2Step143HeadFvFresh=
    some (s2Step143HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩,growRow 770 s2Step143HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step143HeadFvBefore s2Step143HeadFvAfter s2Step143HeadFvRow 86 s2Step143HeadFvFresh
    s2Step143HeadFv_distinct s2Step143HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step143HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step143HeadFvRow.payload++s2Step143HeadFvFresh) s2Step143HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 822, 829, 827, 826, 837, 842],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step143HeadG_Incoming : rowsOwned s2Step143HeadGBefore [s2Step143HeadGRow,s2Step143HeadFRow,s2Step143HeadGvRow,s2Step143HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step143HeadGRow,s2Step143HeadFRow,s2Step143HeadGvRow,s2Step143HeadFvRow] 0 s2Step143HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step143HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143HeadG_Outgoing : rowsOwned s2Step143HeadFvAfter [s2Step143HeadGOut,s2Step143HeadFOut,s2Step143HeadGvOut,s2Step143HeadFvOut] :=
  hmrRows_owned_drop s2Step143HeadFvAfter [s2Step143HeadGOut,s2Step143HeadFOut,s2Step143HeadGvOut,s2Step143HeadFvOut] 0 s2Step143HeadBank_outgoingOwned

private theorem s2Step143HeadG_distinct : (s2Step143HeadGRow.sign::s2Step143HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143HeadG_owned : (s2Step143HeadGRow.sign::s2Step143HeadGRow.payload).toFinset⊆s2Step143HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step143HeadGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<841) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143HeadG_reserved : s2Step143HeadGBefore.reserve s2Step143HeadGFresh.toFinset=some s2Step143HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step143HeadGFresh,arenaWires]
  · norm_num [s2Step143HeadGBefore,s2Step143HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step143HeadGAfter,s2Step143HeadGBefore,s2Step143HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step143HeadG_checked : planRowResizeLog s2Step143HeadGBefore s2Step143HeadGRow 199 s2Step143HeadGFresh=
    some (s2Step143HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 789],769⟩,growRow 769 s2Step143HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step143HeadGBefore s2Step143HeadGAfter s2Step143HeadGRow 199 s2Step143HeadGFresh
    s2Step143HeadG_distinct s2Step143HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step143HeadG_reserved
  have rowEq : WindowRow.mk (s2Step143HeadGRow.payload++s2Step143HeadGFresh) s2Step143HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 789],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step143HeadGvBefore : Arena := s2Step143HeadFAfter

private theorem s2Step143HeadGv_Incoming : rowsOwned s2Step143HeadGvBefore [s2Step143HeadGvRow,s2Step143HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step143HeadGRow,s2Step143HeadFRow,s2Step143HeadGvRow,s2Step143HeadFvRow] 2 s2Step143HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step143HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
    decide +kernel

private theorem s2Step143HeadGv_Outgoing : rowsOwned s2Step143HeadFvAfter [s2Step143HeadGvOut,s2Step143HeadFvOut] :=
  hmrRows_owned_drop s2Step143HeadFvAfter [s2Step143HeadGOut,s2Step143HeadFOut,s2Step143HeadGvOut,s2Step143HeadFvOut] 2 s2Step143HeadBank_outgoingOwned

private theorem s2Step143HeadGv_distinct : (s2Step143HeadGvRow.sign::s2Step143HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step143HeadGv_owned : (s2Step143HeadGvRow.sign::s2Step143HeadGvRow.payload).toFinset⊆s2Step143HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step143HeadGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<888) ∨ (889≤q ∧ q<890)) rfl
  decide +kernel

private theorem s2Step143HeadGv_reserved : s2Step143HeadGvBefore.reserve s2Step143HeadGvFresh.toFinset=some s2Step143HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step143HeadGvFresh,arenaWires]
  · norm_num [s2Step143HeadGvBefore,s2Step143HeadFAfter,s2Step143HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step143HeadGvAfter,s2Step143HeadGvBefore,s2Step143HeadFAfter,s2Step143HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step143HeadGv_checked : planRowResizeLog s2Step143HeadGvBefore s2Step143HeadGvRow 86 s2Step143HeadGvFresh=
    some (s2Step143HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 783],771⟩,growRow 771 s2Step143HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step143HeadGvBefore s2Step143HeadGvAfter s2Step143HeadGvRow 86 s2Step143HeadGvFresh
    s2Step143HeadGv_distinct s2Step143HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step143HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step143HeadGvRow.payload++s2Step143HeadGvFresh) s2Step143HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 784, 817, 782, 814, 781, 783],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step143HeadBank_rows : planWindowRowsLog s2Step143HeadGBefore [(s2Step143HeadGRow,199),(s2Step143HeadFRow,199),(s2Step143HeadGvRow,86),(s2Step143HeadFvRow,86)] [s2Step143HeadGFresh,s2Step143HeadFFresh,s2Step143HeadGvFresh,s2Step143HeadFvFresh]=
    some (s2Step143HeadFvAfter,[s2Step143HeadGOut,s2Step143HeadFOut,s2Step143HeadGvOut,s2Step143HeadFvOut],(growRow 769 s2Step143HeadGFresh ++ (growRow 768 s2Step143HeadFFresh ++ (growRow 771 s2Step143HeadGvFresh ++ (growRow 770 s2Step143HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step143HeadFvAfter [] []=some (s2Step143HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step143HeadFvBefore s2Step143HeadFvAfter s2Step143HeadFvAfter
    s2Step143HeadFvRow s2Step143HeadFvOut 86 s2Step143HeadFvFresh [] [] []
    (growRow 770 s2Step143HeadFvFresh) ([]) s2Step143HeadFv_Incoming s2Step143HeadFv_checked h4 s2Step143HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step143HeadGvBefore s2Step143HeadGvAfter s2Step143HeadFvAfter
    s2Step143HeadGvRow s2Step143HeadGvOut 86 s2Step143HeadGvFresh [(s2Step143HeadFvRow,86)] [s2Step143HeadFvFresh] [s2Step143HeadFvOut]
    (growRow 771 s2Step143HeadGvFresh) ((growRow 770 s2Step143HeadFvFresh ++ [])) s2Step143HeadGv_Incoming s2Step143HeadGv_checked h3 s2Step143HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step143HeadFBefore s2Step143HeadFAfter s2Step143HeadFvAfter
    s2Step143HeadFRow s2Step143HeadFOut 199 s2Step143HeadFFresh [(s2Step143HeadGvRow,86),(s2Step143HeadFvRow,86)] [s2Step143HeadGvFresh,s2Step143HeadFvFresh] [s2Step143HeadGvOut,s2Step143HeadFvOut]
    (growRow 768 s2Step143HeadFFresh) ((growRow 771 s2Step143HeadGvFresh ++ (growRow 770 s2Step143HeadFvFresh ++ []))) s2Step143HeadF_Incoming s2Step143HeadF_checked h2 s2Step143HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step143HeadGBefore s2Step143HeadGAfter s2Step143HeadFvAfter
    s2Step143HeadGRow s2Step143HeadGOut 199 s2Step143HeadGFresh [(s2Step143HeadFRow,199),(s2Step143HeadGvRow,86),(s2Step143HeadFvRow,86)] [s2Step143HeadFFresh,s2Step143HeadGvFresh,s2Step143HeadFvFresh] [s2Step143HeadFOut,s2Step143HeadGvOut,s2Step143HeadFvOut]
    (growRow 769 s2Step143HeadGFresh) ((growRow 768 s2Step143HeadFFresh ++ (growRow 771 s2Step143HeadGvFresh ++ (growRow 770 s2Step143HeadFvFresh ++ [])))) s2Step143HeadG_Incoming s2Step143HeadG_checked h1 s2Step143HeadG_Outgoing
  exact h0

private theorem s2Step143HeadBank_checked : compileHmrBankResizeLog .headroom s2Step143HeadGBefore ⟨s2Step143HeadFRow,s2Step143HeadGRow,s2Step143HeadFvRow,s2Step143HeadGvRow⟩ ⟨199,199,86,86⟩ [s2Step143HeadGFresh,s2Step143HeadFFresh,s2Step143HeadGvFresh,s2Step143HeadFvFresh]=
    some (s2Step143HeadFvAfter,⟨s2Step143HeadFOut,s2Step143HeadGOut,s2Step143HeadFvOut,s2Step143HeadGvOut⟩,(growRow 769 s2Step143HeadGFresh ++ (growRow 768 s2Step143HeadFFresh ++ (growRow 771 s2Step143HeadGvFresh ++ (growRow 770 s2Step143HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step143HeadBank_rows]
  rfl

private theorem s2Step143Front_checked : compileHmrSourceFrontLog s2Step143EntryFBefore s2Step143FrontBank 198 85 ⟨197,197,86,85⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step143FrontLog=some s2Step143FrontPlan := by
  have pairEq : s2Step143FrontPair=⟨s2Step143HeadFRow,s2Step143HeadGRow,s2Step143HeadFvRow,s2Step143HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step143FrontHead=⟨s2Step143ExitFRow,s2Step143ExitGRow,s2Step143ExitFvRow,s2Step143ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step143Add0A=s2Step143FrontHead.f.wires := by decide +kernel
  have gEq : s2Step143Add0B=s2Step143FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step143Add1A=s2Step143FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step143Add1B=s2Step143FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step143EntryFBefore s2Step143FrontBank 198 85 ⟨197,197,86,85⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step143FrontLog s2Step143FrontPlan
  · exact s2Step143Front_entry
  · exact s2Step143EntryBank_checked
  · exact s2Step143Front_sigma
  · rfl
  · exact s2Step143Front_branch
  · rfl
  · simpa only [s2Step143FrontPlan,pairEq] using s2Step143HeadBank_checked
  · simpa only [s2Step143FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step143F4_checked
  · exact s2Step143Counter_checked
  · rfl
  · simpa only [s2Step143FrontPlan,headEq] using s2Step143ExitBank_checked

private theorem s2Step143Complete_explicit_checked : compileHmrEarlyStepLog s2Step143EntryFBefore s2Step143FrontBank 198 85 ⟨197,197,86,85⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step143CompleteLog=some s2Step143CompletePlan := by
  let Q := s2Step143EarlyControlPlan
  have hq := s2Step143EarlyControl_plan_checked
  have fv1 : s2Step143CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step143CompleteOut.fv.payload[2]?.getD s2Step143CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step143CompleteOut.fv.payload[3]?.getD s2Step143CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step143CompleteOut.fv.payload[4]?.getD s2Step143CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step143EntryFBefore s2Step143EarlyControlArena s2Step143FrontBank 198 85 ⟨197,197,86,85⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 42 s2Step143CompleteLog s2Step143FrontPlan Q
    s2Step143Front_checked s2Step143Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step143Complete_owned s2Step143Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step143EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 777 845 s2Step143CompleteOut.fv.second (s2Step143CompleteOut.fv.payload[2]?.getD s2Step143CompleteOut.fv.sign) (s2Step143CompleteOut.fv.payload[3]?.getD s2Step143CompleteOut.fv.sign) (s2Step143CompleteOut.fv.payload[4]?.getD s2Step143CompleteOut.fv.sign) 788 42 s2Step143EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep143Arena : Arena := s2Step143EntryFBefore
def s2PrivateStep143Bank : WindowBank := s2Step143FrontBank
def s2PrivateStep143Spec : HmrSourceWalkStepLog := ⟨198,85,⟨197,197,86,85⟩,42,.early s2Step143CompleteLog⟩
def s2PrivateStep143Plan : HmrSourceStepPlan := .early s2Step143CompletePlan
theorem s2PrivateStep143_source : s2PrivateStep143Spec=s2ObservedLogs128[15] := rfl
theorem s2PrivateStep143_checked : compileHmrSourceStepLog s2PrivateStep143Arena s2PrivateStep143Bank
    s2PrivateStep143Spec.fgWidth s2PrivateStep143Spec.vWidth s2PrivateStep143Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889]
    6 498 143 s2PrivateStep143Spec.need none s2PrivateStep143Spec.log=some s2PrivateStep143Plan := by
  change compileHmrSourceStepLog s2Step143EntryFBefore s2Step143FrontBank 198 85 ⟨197,197,86,85⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889] 6 498 143 42 none (.early s2Step143CompleteLog)=some (.early s2Step143CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 143<498)]
  rw [s2Step143Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
