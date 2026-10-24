import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep217
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

private def s2Step219CompleteMoves : List (Wire × Wire) := [(804,160),(808,672)]

private def s2Step219EarlyControlLog : HmrEarlyControlLog := ⟨[808, 804, 796, 845, 801],[783],[814],[882, 826, 842, 885, 891, 894],[]⟩

private def s2Step219FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [778]],[[783], [801], [796], [845]],[[], [], [], []]⟩,[790],[798],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step219CompleteLog : HmrEarlyStepLog := ⟨s2Step219FrontLog,s2Step219CompleteMoves,s2Step219EarlyControlLog⟩

private def s2Step219ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671],768⟩

private def s2Step219ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩

private def s2Step219ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159],769⟩

private def s2Step219ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778],771⟩

private def s2Step219FrontOut : WindowBank := ⟨s2Step219ExitFOut,s2Step219ExitGOut,s2Step219ExitFvOut,s2Step219ExitGvOut⟩

private def s2Step219CompleteOut : WindowBank := s2Step219FrontOut.repacked s2Step219CompleteMoves

private def s2Step219EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step219EarlyControlPositiveArena,[783],s2Step219EarlyControlEqualityArena,[814],⟨⟨790,false⟩,[⟨⟨783,false⟩,814⟩]⟩⟩

private def s2Step219EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,808⟩,⟨⟨774,false⟩,804⟩,⟨⟨775,false⟩,796⟩,⟨⟨776,false⟩,845⟩,⟨⟨777,false⟩,801⟩]⟩

private def s2Step219EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step219EarlyControlZeroArena,s2Step219EarlyControlZeroPlan,s2Step219EarlyControlClassPlan,s2Step219EarlyControlFlagArena,s2Step219EarlyControlFittedArena,s2Step219EarlyControlHistoryArena,s2Step219EarlyControlSigmaArena,s2Step219EarlyControlOutputArena,s2Step219EarlyControlLog⟩

private def s2Step219CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step219Counter_bounded : s2Step219CounterWork.toFinset⊆arenaWires := by norm_num [s2Step219CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step219HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219CounterDuring : Arena := ⟨s2Step219HeadFvAfter.live∪s2Step219CounterWork.toFinset,Finset.union_subset s2Step219HeadFvAfter.bounded s2Step219Counter_bounded⟩

private def s2Step219EntryFFresh : List Wire := []

private def s2Step219EntryFvFresh : List Wire := []

private def s2Step219EntryGFresh : List Wire := []

private def s2Step219EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219EntryGvFresh : List Wire := [778]

private def s2Step219ExitFExtra : List Wire := [672, 801]

private def s2Step219ExitFvExtra : List Wire := [845]

private def s2Step219ExitGExtra : List Wire := [160, 783]

private def s2Step219ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<672) ∨ (673≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219ExitGvExtra : List Wire := [796]

private def s2Step219Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step219Add0_bounded : s2Step219Add0Work.toFinset⊆arenaWires := by
  have h : s2Step219Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step219Add0During : Arena := ⟨s2Step219Add0Arena.live∪s2Step219Add0Work.toFinset,Finset.union_subset s2Step219Add0Arena.bounded s2Step219Add0_bounded⟩

private def s2Step219Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step219Add1_bounded : s2Step219Add1Work.toFinset⊆arenaWires := by
  have h : s2Step219Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step219Add1During : Arena := ⟨s2Step219Add1Arena.live∪s2Step219Add1Work.toFinset,Finset.union_subset s2Step219Add1Arena.bounded s2Step219Add1_bounded⟩

private def s2Step219F4FlagArena : Arena := ⟨s2Step219HeadFvAfter.live∪{814},Finset.union_subset s2Step219HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step219F4Plan : HmrHybridF4Plan := ⟨s2Step219F4FlagArena,[814],s2Step219Add0Arena,[882],s2Step219Add0During,s2Step219Add0Work,s2Step219Add1During,s2Step219Add1Work⟩

private def s2Step219HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 801],768⟩

private def s2Step219HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845],770⟩

private def s2Step219HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 783],769⟩

private def s2Step219HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 796],771⟩

private def s2Step219FrontHead : WindowBank := ⟨s2Step219HeadFOut,s2Step219HeadGOut,s2Step219HeadFvOut,s2Step219HeadGvOut⟩

private def s2Step219EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672],768⟩

private def s2Step219EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩

private def s2Step219EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],769⟩

private def s2Step219EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778],771⟩

private def s2Step219FrontPair : WindowBank := ⟨s2Step219EntryFOut,s2Step219EntryGOut,s2Step219EntryFvOut,s2Step219EntryGvOut⟩

private def s2Step219FrontSigmaArena : Arena := ⟨s2Step219EntryGvAfter.live∪{790},Finset.union_subset s2Step219EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step219HeadFFresh : List Wire := [801]

private def s2Step219HeadFvFresh : List Wire := [845]

private def s2Step219HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219HeadGFresh : List Wire := [783]

private def s2Step219HeadGvFresh : List Wire := [796]

private def s2Step219FrontPlan : HmrSourceFront := ⟨s2Step219EntryGvAfter,s2Step219FrontPair,(growRow 768 s2Step219EntryFFresh ++ (growRow 769 s2Step219EntryGFresh ++ (growRow 770 s2Step219EntryFvFresh ++ (growRow 771 s2Step219EntryGvFresh ++ [])))),s2Step219FrontSigmaArena,[790],s2Step219HeadGBefore,[798],
  s2Step219HeadFvAfter,s2Step219FrontHead,(growRow 769 s2Step219HeadGFresh ++ (growRow 768 s2Step219HeadFFresh ++ (growRow 771 s2Step219HeadGvFresh ++ (growRow 770 s2Step219HeadFvFresh ++ [])))),s2Step219F4Plan,s2Step219CounterDuring,s2Step219CounterWork,s2Step219ExitGvAfter,s2Step219FrontOut,(shrinkRow 769 s2Step219ExitGExtra ++ (shrinkRow 768 s2Step219ExitFExtra ++ (shrinkRow 770 s2Step219ExitFvExtra ++ (shrinkRow 771 s2Step219ExitGvExtra ++ []))))⟩

private def s2Step219CompletePlan : HmrEarlyStepPlan := ⟨s2Step219FrontPlan,s2Step219EarlyControlArena,s2Step219EarlyControlPlan,s2Step219CompleteMoves⟩

private theorem s2Step219Complete_apart : List.Disjoint (s2Step219CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [790, 798, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step219CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[790, 798, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step219Complete_owned : (s2Step219CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step219EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step219EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step219CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,672),(673,783),(784,796),(797,801),(802,804),(805,814),(815,826),(827,842),(843,845),(846,882),(883,885),(886,891),(892,894),(897,898)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step219CompleteRelocationMove0Borrowed : Arena := ⟨s2Step219ExitGvAfter.live∪{160},Finset.union_subset s2Step219ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step219CompleteRelocationMove1Borrowed : Arena := ⟨s2Step219CompleteRelocationMove0After.live∪{672},Finset.union_subset s2Step219CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step219CompleteRelocation_move0_owned : 804∈s2Step219ExitGvAfter.live := by norm_num [s2Step219ExitGvAfter,arenaWires]

private theorem s2Step219CompleteRelocation_move0_reserve : s2Step219ExitGvAfter.reserve {160}=some s2Step219CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step219ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step219CompleteRelocation_move0_retire : s2Step219CompleteRelocationMove0Borrowed.retireSet {804}=s2Step219CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step219CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step219CompleteRelocationMove0Borrowed,s2Step219ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step219CompleteRelocation_move1_owned : 808∈s2Step219CompleteRelocationMove0After.live := by norm_num [s2Step219CompleteRelocationMove0After,arenaWires]

private theorem s2Step219CompleteRelocation_move1_reserve : s2Step219CompleteRelocationMove0After.reserve {672}=some s2Step219CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step219CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step219CompleteRelocation_move1_retire : s2Step219CompleteRelocationMove1Borrowed.retireSet {808}=s2Step219EarlyControlArena := by
  unfold Arena.retireSet s2Step219EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step219CompleteRelocationMove1Borrowed,s2Step219CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step219CompleteRelocation_checked : s2Step219ExitGvAfter.checkRepack [(804,160),(808,672)]=some s2Step219EarlyControlArena := by
  have tail2 : s2Step219EarlyControlArena.checkRepack []=some s2Step219EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step219CompleteRelocationMove0After s2Step219CompleteRelocationMove1Borrowed s2Step219EarlyControlArena s2Step219EarlyControlArena 808 672 []
    s2Step219CompleteRelocation_move1_owned s2Step219CompleteRelocation_move1_reserve s2Step219CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step219ExitGvAfter s2Step219CompleteRelocationMove0Borrowed s2Step219CompleteRelocationMove0After s2Step219EarlyControlArena 804 160 [(808,672)]
    s2Step219CompleteRelocation_move0_owned s2Step219CompleteRelocation_move0_reserve s2Step219CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step219Complete_repack : s2Step219ExitGvAfter.checkRepack s2Step219CompleteMoves=some s2Step219EarlyControlArena := by
  simpa only [s2Step219CompleteMoves] using s2Step219CompleteRelocation_checked

private theorem s2Step219EarlyControl_branchOwned : ([798] : List Wire).toFinset⊆s2Step219EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step219EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EarlyControl_branch : compileHmrBranchRetirement s2Step219EarlyControlSigmaArena 798=some s2Step219EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step219EarlyControl_branchOwned
  · ext q
    simp [s2Step219EarlyControlOutputArena,s2Step219EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step219EarlyControl_classEqualityBorrow : s2Step219EarlyControlPositiveArena.checkBorrow (([790, 783] : List Wire).length-1) s2Step219EarlyControlLog.classWork=some s2Step219EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step219EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step219EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step219EarlyControlEqualityArena,s2Step219EarlyControlPositiveArena,s2Step219EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step219EarlyControl_classEqualityOwned : ([790, 783] : List Wire).toFinset⊆s2Step219EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step219EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EarlyControl_classEquality : compileHmrEqualityLog s2Step219EarlyControlPositiveArena [790, 783] 0 s2Step219EarlyControlLog.classWork=some (s2Step219EarlyControlEqualityArena,s2Step219EarlyControlLog.classWork,s2Step219EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step219EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step219EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step219EarlyControl_classOwned : ([777, 801, 790] : List Wire).toFinset⊆s2Step219EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step219EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EarlyControl_positiveBorrow : s2Step219EarlyControlZeroArena.checkBorrow (1) s2Step219EarlyControlLog.positiveWork=some s2Step219EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step219EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step219EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step219EarlyControlPositiveArena,s2Step219EarlyControlZeroArena,s2Step219EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step219EarlyControl_class : compileHmrSourceClassLog s2Step219EarlyControlZeroArena false 777 s2Step219EarlyControlZeroPlan.top 0 790 s2Step219EarlyControlLog.positiveWork s2Step219EarlyControlLog.classWork=some s2Step219EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step219EarlyControlClassPlan s2Step219EarlyControlZeroArena false 777 s2Step219EarlyControlZeroPlan.top 0 790
  constructor
  · decide +kernel
  · exact s2Step219EarlyControl_classOwned
  · exact s2Step219EarlyControl_positiveBorrow
  · exact s2Step219EarlyControl_classEquality

private theorem s2Step219EarlyControl_entryRecordOwned : ([798, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step219EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step219EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EarlyControl_entrySigmaOwned : ([790, 254] : List Wire).toFinset⊆s2Step219EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step219EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EarlyControl_fitBorrow : s2Step219EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step219EarlyControlLog.recordFresh=some s2Step219EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step219EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step219EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step219EarlyControlFittedArena,s2Step219EarlyControlFlagArena,s2Step219EarlyControlLog,arenaWires]

private theorem s2Step219EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step219EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step219EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EarlyControl_fit : compileHmrRecordGrowLog s2Step219EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step219EarlyControlLog.recordFresh=some s2Step219EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step219EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step219EarlyControl_fitBorrow

private theorem s2Step219EarlyControl_flagsBorrow : s2Step219EarlyControlEqualityArena.checkBorrow (6) s2Step219EarlyControlLog.flagWork=some s2Step219EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step219EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step219EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step219EarlyControlFlagArena,s2Step219EarlyControlEqualityArena,s2Step219EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step219EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step219EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step219EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EarlyControl_flags : compileHmrFlagsLog s2Step219EarlyControlClassPlan.equalityArena s2Step219EarlyControlClassPlan.equality.top 253 252 251 s2Step219EarlyControlLog.flagWork=some s2Step219EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step219EarlyControl_flagsOwned⟩
  · exact s2Step219EarlyControl_flagsBorrow

private theorem s2Step219EarlyControl_historyBorrow : s2Step219EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step219EarlyControlLog.recordFresh=some s2Step219EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step219EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step219EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step219EarlyControlHistoryArena,s2Step219EarlyControlArena,s2Step219EarlyControlLog,arenaWires]

private theorem s2Step219EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step219EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step219EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EarlyControl_history : compileHmrRecordGrowLog s2Step219EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step219EarlyControlLog.recordFresh=some s2Step219EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step219EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step219EarlyControl_historyBorrow

private theorem s2Step219EarlyControl_sigmaOwned : ([254, 790] : List Wire).toFinset⊆s2Step219EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step219EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EarlyControl_sigmaReleaseOwned : ([790] : List Wire).toFinset⊆s2Step219EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step219EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EarlyControl_sigmaRelease : s2Step219EarlyControlHistoryArena.release {790} (fun _ => false)=some s2Step219EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step219EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step219EarlyControlSigmaArena,s2Step219EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step219EarlyControl_sigma : compileHmrSigmaDropLog s2Step219EarlyControlHistoryArena false 0 0 254 790 []=some s2Step219EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step219EarlyControl_sigmaOwned⟩
  · exact s2Step219EarlyControl_sigmaRelease

private theorem s2Step219EarlyControl_zeroBorrow : s2Step219EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step219EarlyControlLog.zeroWork=some s2Step219EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step219EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step219EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step219EarlyControlZeroArena,s2Step219EarlyControlArena,s2Step219EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step219EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step219EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step219EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EarlyControl_zero : compileHmrEqualityLog s2Step219EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step219EarlyControlLog.zeroWork=some (s2Step219EarlyControlZeroArena,s2Step219EarlyControlLog.zeroWork,s2Step219EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step219EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step219EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step219EarlyControl_logged : s2Step219EarlyControlPlan.Logged s2Step219EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 790 254 253 252 251 798 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step219EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step219EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step219EarlyControl_zero
  · exact s2Step219EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step219EarlyControl_flags
  · exact s2Step219EarlyControl_fit
  · exact s2Step219EarlyControl_history
  · exact s2Step219EarlyControl_sigma
  · exact s2Step219EarlyControl_branch

private theorem s2Step219EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step219EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 790 254 253 252 251 798 47 s2Step219EarlyControlLog=some s2Step219EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step219EarlyControlPlan s2Step219EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 790 254 253 252 251 798 47 s2Step219EarlyControl_logged

private def s2Step219EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672],768⟩

private def s2Step219EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩

private def s2Step219EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],769⟩

private def s2Step219EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839],771⟩

private def s2Step219FrontBank : WindowBank := ⟨s2Step219EntryFRow,s2Step219EntryGRow,s2Step219EntryFvRow,s2Step219EntryGvRow⟩

private def s2Step219Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 801, 768]

private def s2Step219Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 783, 769]

private def s2Step219Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 770]

private def s2Step219Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 796, 771]

private theorem s2Step219Counter_apart : Disjoint s2Step219HeadFvAfter.live s2Step219CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step219HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219Counter_borrowed : s2Step219HeadFvAfter.checkBorrow 4 s2Step219CounterWork=some s2Step219CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step219HeadFvAfter s2Step219CounterDuring s2Step219CounterWork.toFinset s2Step219Counter_bounded s2Step219Counter_apart rfl

private theorem s2Step219Counter_owned : (790::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step219HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step219HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219Counter_checked : compileHmrCounterStepLog s2Step219HeadFvAfter true 790 [772, 773, 774, 775, 776, 777] s2Step219CounterWork=some s2Step219CounterDuring := by
  have owned : ∀q∈790::[772, 773, 774, 775, 776, 777],q∈s2Step219HeadFvAfter.live := fun q hq => s2Step219Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step219Counter_borrowed

private def s2Step219EntryFAfter : Arena := s2Step219EntryFBefore

private theorem s2Step219EntryBank_incomingDistinct : ([s2Step219EntryFRow,s2Step219EntryGRow,s2Step219EntryFvRow,s2Step219EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219EntryF_Incoming : rowsOwned s2Step219EntryFBefore [s2Step219EntryFRow,s2Step219EntryGRow,s2Step219EntryFvRow,s2Step219EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step219EntryFRow,s2Step219EntryGRow,s2Step219EntryFvRow,s2Step219EntryGvRow] 0 s2Step219EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step219EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219EntryBank_outgoingOwned : rowsOwned s2Step219EntryGvAfter [s2Step219EntryFOut,s2Step219EntryGOut,s2Step219EntryFvOut,s2Step219EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step219EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219EntryF_Outgoing : rowsOwned s2Step219EntryGvAfter [s2Step219EntryFOut,s2Step219EntryGOut,s2Step219EntryFvOut,s2Step219EntryGvOut] :=
  hmrRows_owned_drop s2Step219EntryGvAfter [s2Step219EntryFOut,s2Step219EntryGOut,s2Step219EntryFvOut,s2Step219EntryGvOut] 0 s2Step219EntryBank_outgoingOwned

private theorem s2Step219EntryF_distinct : (s2Step219EntryFRow.sign::s2Step219EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219EntryF_owned : (s2Step219EntryFRow.sign::s2Step219EntryFRow.payload).toFinset⊆s2Step219EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step219EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EntryF_reserved : s2Step219EntryFBefore.reserve s2Step219EntryFFresh.toFinset=some s2Step219EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step219EntryFFresh,arenaWires]
  · norm_num [s2Step219EntryFBefore,s2Step219EntryFFresh,arenaWires]
  · simp only [s2Step219EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step219EntryF_checked : planRowResizeLog s2Step219EntryFBefore s2Step219EntryFRow 161 s2Step219EntryFFresh=
    some (s2Step219EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672],768⟩,growRow 768 s2Step219EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step219EntryFBefore s2Step219EntryFAfter s2Step219EntryFRow 161 s2Step219EntryFFresh
    s2Step219EntryF_distinct s2Step219EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step219EntryF_reserved
  have rowEq : WindowRow.mk (s2Step219EntryFRow.payload++s2Step219EntryFFresh) s2Step219EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step219EntryFvAfter : Arena := s2Step219EntryFBefore

private def s2Step219EntryFvBefore : Arena := s2Step219EntryFBefore

private theorem s2Step219EntryFv_Incoming : rowsOwned s2Step219EntryFvBefore [s2Step219EntryFvRow,s2Step219EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step219EntryFRow,s2Step219EntryGRow,s2Step219EntryFvRow,s2Step219EntryGvRow] 2 s2Step219EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step219EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219EntryFv_Outgoing : rowsOwned s2Step219EntryGvAfter [s2Step219EntryFvOut,s2Step219EntryGvOut] :=
  hmrRows_owned_drop s2Step219EntryGvAfter [s2Step219EntryFOut,s2Step219EntryGOut,s2Step219EntryFvOut,s2Step219EntryGvOut] 2 s2Step219EntryBank_outgoingOwned

private theorem s2Step219EntryFv_distinct : (s2Step219EntryFvRow.sign::s2Step219EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219EntryFv_owned : (s2Step219EntryFvRow.sign::s2Step219EntryFvRow.payload).toFinset⊆s2Step219EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step219EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EntryFv_reserved : s2Step219EntryFvBefore.reserve s2Step219EntryFvFresh.toFinset=some s2Step219EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step219EntryFvFresh,arenaWires]
  · norm_num [s2Step219EntryFvBefore,s2Step219EntryFBefore,s2Step219EntryFvFresh,arenaWires]
  · simp only [s2Step219EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step219EntryFv_checked : planRowResizeLog s2Step219EntryFvBefore s2Step219EntryFvRow 124 s2Step219EntryFvFresh=
    some (s2Step219EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩,growRow 770 s2Step219EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step219EntryFvBefore s2Step219EntryFvAfter s2Step219EntryFvRow 124 s2Step219EntryFvFresh
    s2Step219EntryFv_distinct s2Step219EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step219EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step219EntryFvRow.payload++s2Step219EntryFvFresh) s2Step219EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step219EntryGAfter : Arena := s2Step219EntryFBefore

private def s2Step219EntryGBefore : Arena := s2Step219EntryFBefore

private theorem s2Step219EntryG_Incoming : rowsOwned s2Step219EntryGBefore [s2Step219EntryGRow,s2Step219EntryFvRow,s2Step219EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step219EntryFRow,s2Step219EntryGRow,s2Step219EntryFvRow,s2Step219EntryGvRow] 1 s2Step219EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step219EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219EntryG_Outgoing : rowsOwned s2Step219EntryGvAfter [s2Step219EntryGOut,s2Step219EntryFvOut,s2Step219EntryGvOut] :=
  hmrRows_owned_drop s2Step219EntryGvAfter [s2Step219EntryFOut,s2Step219EntryGOut,s2Step219EntryFvOut,s2Step219EntryGvOut] 1 s2Step219EntryBank_outgoingOwned

private theorem s2Step219EntryG_distinct : (s2Step219EntryGRow.sign::s2Step219EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219EntryG_owned : (s2Step219EntryGRow.sign::s2Step219EntryGRow.payload).toFinset⊆s2Step219EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step219EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EntryG_reserved : s2Step219EntryGBefore.reserve s2Step219EntryGFresh.toFinset=some s2Step219EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step219EntryGFresh,arenaWires]
  · norm_num [s2Step219EntryGBefore,s2Step219EntryFBefore,s2Step219EntryGFresh,arenaWires]
  · simp only [s2Step219EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step219EntryG_checked : planRowResizeLog s2Step219EntryGBefore s2Step219EntryGRow 161 s2Step219EntryGFresh=
    some (s2Step219EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],769⟩,growRow 769 s2Step219EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step219EntryGBefore s2Step219EntryGAfter s2Step219EntryGRow 161 s2Step219EntryGFresh
    s2Step219EntryG_distinct s2Step219EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step219EntryG_reserved
  have rowEq : WindowRow.mk (s2Step219EntryGRow.payload++s2Step219EntryGFresh) s2Step219EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step219EntryGvBefore : Arena := s2Step219EntryFBefore

private theorem s2Step219EntryGv_Incoming : rowsOwned s2Step219EntryGvBefore [s2Step219EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step219EntryFRow,s2Step219EntryGRow,s2Step219EntryFvRow,s2Step219EntryGvRow] 3 s2Step219EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step219EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219EntryGv_Outgoing : rowsOwned s2Step219EntryGvAfter [s2Step219EntryGvOut] :=
  hmrRows_owned_drop s2Step219EntryGvAfter [s2Step219EntryFOut,s2Step219EntryGOut,s2Step219EntryFvOut,s2Step219EntryGvOut] 3 s2Step219EntryBank_outgoingOwned

private theorem s2Step219EntryGv_distinct : (s2Step219EntryGvRow.sign::s2Step219EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219EntryGv_owned : (s2Step219EntryGvRow.sign::s2Step219EntryGvRow.payload).toFinset⊆s2Step219EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step219EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219EntryGv_reserved : s2Step219EntryGvBefore.reserve s2Step219EntryGvFresh.toFinset=some s2Step219EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step219EntryGvFresh,arenaWires]
  · norm_num [s2Step219EntryGvBefore,s2Step219EntryFBefore,s2Step219EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step219EntryGvAfter,s2Step219EntryGvBefore,s2Step219EntryFBefore,s2Step219EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step219EntryGv_checked : planRowResizeLog s2Step219EntryGvBefore s2Step219EntryGvRow 124 s2Step219EntryGvFresh=
    some (s2Step219EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778],771⟩,growRow 771 s2Step219EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step219EntryGvBefore s2Step219EntryGvAfter s2Step219EntryGvRow 124 s2Step219EntryGvFresh
    s2Step219EntryGv_distinct s2Step219EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step219EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step219EntryGvRow.payload++s2Step219EntryGvFresh) s2Step219EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step219EntryBank_rows : planWindowRowsLog s2Step219EntryFBefore [(s2Step219EntryFRow,161),(s2Step219EntryGRow,161),(s2Step219EntryFvRow,124),(s2Step219EntryGvRow,124)] [s2Step219EntryFFresh,s2Step219EntryGFresh,s2Step219EntryFvFresh,s2Step219EntryGvFresh]=
    some (s2Step219EntryGvAfter,[s2Step219EntryFOut,s2Step219EntryGOut,s2Step219EntryFvOut,s2Step219EntryGvOut],(growRow 768 s2Step219EntryFFresh ++ (growRow 769 s2Step219EntryGFresh ++ (growRow 770 s2Step219EntryFvFresh ++ (growRow 771 s2Step219EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step219EntryGvAfter [] []=some (s2Step219EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step219EntryGvBefore s2Step219EntryGvAfter s2Step219EntryGvAfter
    s2Step219EntryGvRow s2Step219EntryGvOut 124 s2Step219EntryGvFresh [] [] []
    (growRow 771 s2Step219EntryGvFresh) ([]) s2Step219EntryGv_Incoming s2Step219EntryGv_checked h4 s2Step219EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step219EntryFvBefore s2Step219EntryFvAfter s2Step219EntryGvAfter
    s2Step219EntryFvRow s2Step219EntryFvOut 124 s2Step219EntryFvFresh [(s2Step219EntryGvRow,124)] [s2Step219EntryGvFresh] [s2Step219EntryGvOut]
    (growRow 770 s2Step219EntryFvFresh) ((growRow 771 s2Step219EntryGvFresh ++ [])) s2Step219EntryFv_Incoming s2Step219EntryFv_checked h3 s2Step219EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step219EntryGBefore s2Step219EntryGAfter s2Step219EntryGvAfter
    s2Step219EntryGRow s2Step219EntryGOut 161 s2Step219EntryGFresh [(s2Step219EntryFvRow,124),(s2Step219EntryGvRow,124)] [s2Step219EntryFvFresh,s2Step219EntryGvFresh] [s2Step219EntryFvOut,s2Step219EntryGvOut]
    (growRow 769 s2Step219EntryGFresh) ((growRow 770 s2Step219EntryFvFresh ++ (growRow 771 s2Step219EntryGvFresh ++ []))) s2Step219EntryG_Incoming s2Step219EntryG_checked h2 s2Step219EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step219EntryFBefore s2Step219EntryFAfter s2Step219EntryGvAfter
    s2Step219EntryFRow s2Step219EntryFOut 161 s2Step219EntryFFresh [(s2Step219EntryGRow,161),(s2Step219EntryFvRow,124),(s2Step219EntryGvRow,124)] [s2Step219EntryGFresh,s2Step219EntryFvFresh,s2Step219EntryGvFresh] [s2Step219EntryGOut,s2Step219EntryFvOut,s2Step219EntryGvOut]
    (growRow 768 s2Step219EntryFFresh) ((growRow 769 s2Step219EntryGFresh ++ (growRow 770 s2Step219EntryFvFresh ++ (growRow 771 s2Step219EntryGvFresh ++ [])))) s2Step219EntryF_Incoming s2Step219EntryF_checked h1 s2Step219EntryF_Outgoing
  exact h0

private theorem s2Step219EntryBank_checked : compileHmrBankResizeLog .entry s2Step219EntryFBefore ⟨s2Step219EntryFRow,s2Step219EntryGRow,s2Step219EntryFvRow,s2Step219EntryGvRow⟩ ⟨161,161,124,124⟩ [s2Step219EntryFFresh,s2Step219EntryGFresh,s2Step219EntryFvFresh,s2Step219EntryGvFresh]=
    some (s2Step219EntryGvAfter,⟨s2Step219EntryFOut,s2Step219EntryGOut,s2Step219EntryFvOut,s2Step219EntryGvOut⟩,(growRow 768 s2Step219EntryFFresh ++ (growRow 769 s2Step219EntryGFresh ++ (growRow 770 s2Step219EntryFvFresh ++ (growRow 771 s2Step219EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step219EntryBank_rows]
  rfl

private def s2Step219ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<672) ∨ (673≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219ExitFBefore : Arena := s2Step219ExitGAfter

private def s2Step219ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 801],768⟩

private def s2Step219ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845],770⟩

private def s2Step219ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 783],769⟩

private def s2Step219ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 796],771⟩

private theorem s2Step219ExitBank_incomingDistinct : ([s2Step219ExitGRow,s2Step219ExitFRow,s2Step219ExitFvRow,s2Step219ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219ExitF_Incoming : rowsOwned s2Step219ExitFBefore [s2Step219ExitFRow,s2Step219ExitFvRow,s2Step219ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step219ExitGRow,s2Step219ExitFRow,s2Step219ExitFvRow,s2Step219ExitGvRow] 1 s2Step219ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step219ExitFBefore (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219ExitBank_outgoingOwned : rowsOwned s2Step219ExitGvAfter [s2Step219ExitGOut,s2Step219ExitFOut,s2Step219ExitFvOut,s2Step219ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step219ExitGvAfter (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<672) ∨ (673≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219ExitF_Outgoing : rowsOwned s2Step219ExitGvAfter [s2Step219ExitFOut,s2Step219ExitFvOut,s2Step219ExitGvOut] :=
  hmrRows_owned_drop s2Step219ExitGvAfter [s2Step219ExitGOut,s2Step219ExitFOut,s2Step219ExitFvOut,s2Step219ExitGvOut] 1 s2Step219ExitBank_outgoingOwned

private theorem s2Step219ExitF_distinct : (s2Step219ExitFRow.sign::s2Step219ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219ExitF_owned : (s2Step219ExitFRow.sign::s2Step219ExitFRow.payload).toFinset⊆s2Step219ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step219ExitFBefore (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219ExitF_retired : s2Step219ExitFBefore.retireSet s2Step219ExitFExtra.toFinset=s2Step219ExitFAfter := by
  unfold Arena.retireSet s2Step219ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step219ExitFBefore,s2Step219ExitGAfter,s2Step219ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step219ExitF_checked : planRowResizeLog s2Step219ExitFBefore s2Step219ExitFRow 160 []=
    some (s2Step219ExitFAfter,s2Step219ExitFOut,shrinkRow 768 s2Step219ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step219ExitFBefore s2Step219ExitFRow 160 s2Step219ExitF_distinct s2Step219ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step219ExitFRow.payload.take 160) s2Step219ExitFRow.sign=s2Step219ExitFOut := by decide +kernel
  have hi : s2Step219ExitFRow.payload.drop 160=s2Step219ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step219ExitF_retired] at result
  exact result

private def s2Step219ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<672) ∨ (673≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219ExitFvBefore : Arena := s2Step219ExitFAfter

private theorem s2Step219ExitFv_Incoming : rowsOwned s2Step219ExitFvBefore [s2Step219ExitFvRow,s2Step219ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step219ExitGRow,s2Step219ExitFRow,s2Step219ExitFvRow,s2Step219ExitGvRow] 2 s2Step219ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step219ExitFvBefore (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<672) ∨ (673≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219ExitFv_Outgoing : rowsOwned s2Step219ExitGvAfter [s2Step219ExitFvOut,s2Step219ExitGvOut] :=
  hmrRows_owned_drop s2Step219ExitGvAfter [s2Step219ExitGOut,s2Step219ExitFOut,s2Step219ExitFvOut,s2Step219ExitGvOut] 2 s2Step219ExitBank_outgoingOwned

private theorem s2Step219ExitFv_distinct : (s2Step219ExitFvRow.sign::s2Step219ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219ExitFv_owned : (s2Step219ExitFvRow.sign::s2Step219ExitFvRow.payload).toFinset⊆s2Step219ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step219ExitFvBefore (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<672) ∨ (673≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219ExitFv_retired : s2Step219ExitFvBefore.retireSet s2Step219ExitFvExtra.toFinset=s2Step219ExitFvAfter := by
  unfold Arena.retireSet s2Step219ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step219ExitFvBefore,s2Step219ExitFAfter,s2Step219ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step219ExitFv_checked : planRowResizeLog s2Step219ExitFvBefore s2Step219ExitFvRow 124 []=
    some (s2Step219ExitFvAfter,s2Step219ExitFvOut,shrinkRow 770 s2Step219ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step219ExitFvBefore s2Step219ExitFvRow 124 s2Step219ExitFv_distinct s2Step219ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step219ExitFvRow.payload.take 124) s2Step219ExitFvRow.sign=s2Step219ExitFvOut := by decide +kernel
  have hi : s2Step219ExitFvRow.payload.drop 124=s2Step219ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step219ExitFv_retired] at result
  exact result

private def s2Step219ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step219ExitG_Incoming : rowsOwned s2Step219ExitGBefore [s2Step219ExitGRow,s2Step219ExitFRow,s2Step219ExitFvRow,s2Step219ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step219ExitGRow,s2Step219ExitFRow,s2Step219ExitFvRow,s2Step219ExitGvRow] 0 s2Step219ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step219ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219ExitG_Outgoing : rowsOwned s2Step219ExitGvAfter [s2Step219ExitGOut,s2Step219ExitFOut,s2Step219ExitFvOut,s2Step219ExitGvOut] :=
  hmrRows_owned_drop s2Step219ExitGvAfter [s2Step219ExitGOut,s2Step219ExitFOut,s2Step219ExitFvOut,s2Step219ExitGvOut] 0 s2Step219ExitBank_outgoingOwned

private theorem s2Step219ExitG_distinct : (s2Step219ExitGRow.sign::s2Step219ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219ExitG_owned : (s2Step219ExitGRow.sign::s2Step219ExitGRow.payload).toFinset⊆s2Step219ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step219ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219ExitG_retired : s2Step219ExitGBefore.retireSet s2Step219ExitGExtra.toFinset=s2Step219ExitGAfter := by
  unfold Arena.retireSet s2Step219ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step219ExitGBefore,s2Step219ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step219ExitG_checked : planRowResizeLog s2Step219ExitGBefore s2Step219ExitGRow 160 []=
    some (s2Step219ExitGAfter,s2Step219ExitGOut,shrinkRow 769 s2Step219ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step219ExitGBefore s2Step219ExitGRow 160 s2Step219ExitG_distinct s2Step219ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step219ExitGRow.payload.take 160) s2Step219ExitGRow.sign=s2Step219ExitGOut := by decide +kernel
  have hi : s2Step219ExitGRow.payload.drop 160=s2Step219ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step219ExitG_retired] at result
  exact result

private def s2Step219ExitGvBefore : Arena := s2Step219ExitFvAfter

private theorem s2Step219ExitGv_Incoming : rowsOwned s2Step219ExitGvBefore [s2Step219ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step219ExitGRow,s2Step219ExitFRow,s2Step219ExitFvRow,s2Step219ExitGvRow] 3 s2Step219ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step219ExitGvBefore (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<672) ∨ (673≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219ExitGv_Outgoing : rowsOwned s2Step219ExitGvAfter [s2Step219ExitGvOut] :=
  hmrRows_owned_drop s2Step219ExitGvAfter [s2Step219ExitGOut,s2Step219ExitFOut,s2Step219ExitFvOut,s2Step219ExitGvOut] 3 s2Step219ExitBank_outgoingOwned

private theorem s2Step219ExitGv_distinct : (s2Step219ExitGvRow.sign::s2Step219ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219ExitGv_owned : (s2Step219ExitGvRow.sign::s2Step219ExitGvRow.payload).toFinset⊆s2Step219ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step219ExitGvBefore (fun q => (0≤q ∧ q<160) ∨ (161≤q ∧ q<672) ∨ (673≤q ∧ q<783) ∨ (784≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219ExitGv_retired : s2Step219ExitGvBefore.retireSet s2Step219ExitGvExtra.toFinset=s2Step219ExitGvAfter := by
  unfold Arena.retireSet s2Step219ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step219ExitGvBefore,s2Step219ExitFvAfter,s2Step219ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step219ExitGv_checked : planRowResizeLog s2Step219ExitGvBefore s2Step219ExitGvRow 124 []=
    some (s2Step219ExitGvAfter,s2Step219ExitGvOut,shrinkRow 771 s2Step219ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step219ExitGvBefore s2Step219ExitGvRow 124 s2Step219ExitGv_distinct s2Step219ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step219ExitGvRow.payload.take 124) s2Step219ExitGvRow.sign=s2Step219ExitGvOut := by decide +kernel
  have hi : s2Step219ExitGvRow.payload.drop 124=s2Step219ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step219ExitGv_retired] at result
  exact result

private theorem s2Step219ExitBank_rows : planWindowRowsLog s2Step219ExitGBefore [(s2Step219ExitGRow,160),(s2Step219ExitFRow,160),(s2Step219ExitFvRow,124),(s2Step219ExitGvRow,124)] [[],[],[],[]]=
    some (s2Step219ExitGvAfter,[s2Step219ExitGOut,s2Step219ExitFOut,s2Step219ExitFvOut,s2Step219ExitGvOut],(shrinkRow 769 s2Step219ExitGExtra ++ (shrinkRow 768 s2Step219ExitFExtra ++ (shrinkRow 770 s2Step219ExitFvExtra ++ (shrinkRow 771 s2Step219ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step219ExitGvAfter [] []=some (s2Step219ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step219ExitGvBefore s2Step219ExitGvAfter s2Step219ExitGvAfter
    s2Step219ExitGvRow s2Step219ExitGvOut 124 [] [] [] []
    (shrinkRow 771 s2Step219ExitGvExtra) ([]) s2Step219ExitGv_Incoming s2Step219ExitGv_checked h4 s2Step219ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step219ExitFvBefore s2Step219ExitFvAfter s2Step219ExitGvAfter
    s2Step219ExitFvRow s2Step219ExitFvOut 124 [] [(s2Step219ExitGvRow,124)] [[]] [s2Step219ExitGvOut]
    (shrinkRow 770 s2Step219ExitFvExtra) ((shrinkRow 771 s2Step219ExitGvExtra ++ [])) s2Step219ExitFv_Incoming s2Step219ExitFv_checked h3 s2Step219ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step219ExitFBefore s2Step219ExitFAfter s2Step219ExitGvAfter
    s2Step219ExitFRow s2Step219ExitFOut 160 [] [(s2Step219ExitFvRow,124),(s2Step219ExitGvRow,124)] [[],[]] [s2Step219ExitFvOut,s2Step219ExitGvOut]
    (shrinkRow 768 s2Step219ExitFExtra) ((shrinkRow 770 s2Step219ExitFvExtra ++ (shrinkRow 771 s2Step219ExitGvExtra ++ []))) s2Step219ExitF_Incoming s2Step219ExitF_checked h2 s2Step219ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step219ExitGBefore s2Step219ExitGAfter s2Step219ExitGvAfter
    s2Step219ExitGRow s2Step219ExitGOut 160 [] [(s2Step219ExitFRow,160),(s2Step219ExitFvRow,124),(s2Step219ExitGvRow,124)] [[],[],[]] [s2Step219ExitFOut,s2Step219ExitFvOut,s2Step219ExitGvOut]
    (shrinkRow 769 s2Step219ExitGExtra) ((shrinkRow 768 s2Step219ExitFExtra ++ (shrinkRow 770 s2Step219ExitFvExtra ++ (shrinkRow 771 s2Step219ExitGvExtra ++ [])))) s2Step219ExitG_Incoming s2Step219ExitG_checked h1 s2Step219ExitG_Outgoing
  exact h0

private theorem s2Step219ExitBank_checked : compileHmrBankResizeLog .exit s2Step219ExitGBefore ⟨s2Step219ExitFRow,s2Step219ExitGRow,s2Step219ExitFvRow,s2Step219ExitGvRow⟩ ⟨160,160,124,124⟩ [[],[],[],[]]=
    some (s2Step219ExitGvAfter,⟨s2Step219ExitFOut,s2Step219ExitGOut,s2Step219ExitFvOut,s2Step219ExitGvOut⟩,(shrinkRow 769 s2Step219ExitGExtra ++ (shrinkRow 768 s2Step219ExitFExtra ++ (shrinkRow 770 s2Step219ExitFvExtra ++ (shrinkRow 771 s2Step219ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step219ExitBank_rows]
  rfl

private theorem s2Step219Add0_apart : Disjoint s2Step219Add0Arena.live s2Step219Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step219Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219Add0_card : s2Step219Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step219Add0_borrowed : s2Step219Add0Arena.checkBorrow (hmrHybridCount s2Step219Add0Arena s2Step219Add0B.length) s2Step219Add0Work=some s2Step219Add0During := by
  have len : s2Step219Add0Work.length=hmrHybridCount s2Step219Add0Arena s2Step219Add0B.length := by
    rw [hmrHybridCount,s2Step219Add0_card]
    decide +kernel
  have nd : s2Step219Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step219Add0Arena s2Step219Add0During s2Step219Add0Work.toFinset s2Step219Add0_bounded s2Step219Add0_apart rfl

private theorem s2Step219Add0_distinct : (814::798::882::(s2Step219Add0A++s2Step219Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219Add0_owned : (814::798::882::(s2Step219Add0A++s2Step219Add0B)).toFinset⊆s2Step219Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step219Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219Add0_checked : compileHmrHybridCinLog s2Step219Add0Arena 798 814 882 s2Step219Add0A s2Step219Add0B s2Step219Add0Work=some s2Step219Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step219Add0Arena s2Step219Add0During 798 814 882 s2Step219Add0A s2Step219Add0B s2Step219Add0Work
    (by decide +kernel) (by decide +kernel) s2Step219Add0_distinct
    (fun q hq => s2Step219Add0_owned (List.mem_toFinset.mpr hq)) s2Step219Add0_borrowed

private theorem s2Step219Add1_apart : Disjoint s2Step219Add1Arena.live s2Step219Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step219Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219Add1_card : s2Step219Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step219Add1_borrowed : s2Step219Add1Arena.checkBorrow (hmrHybridCount s2Step219Add1Arena s2Step219Add1B.length) s2Step219Add1Work=some s2Step219Add1During := by
  have len : s2Step219Add1Work.length=hmrHybridCount s2Step219Add1Arena s2Step219Add1B.length := by
    rw [hmrHybridCount,s2Step219Add1_card]
    decide +kernel
  have nd : s2Step219Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step219Add1Arena s2Step219Add1During s2Step219Add1Work.toFinset s2Step219Add1_bounded s2Step219Add1_apart rfl

private theorem s2Step219Add1_distinct : (814::798::882::(s2Step219Add1A++s2Step219Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219Add1_owned : (814::798::882::(s2Step219Add1A++s2Step219Add1B)).toFinset⊆s2Step219Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step219Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219Add1_checked : compileHmrHybridCinLog s2Step219Add1Arena 798 814 882 s2Step219Add1A s2Step219Add1B s2Step219Add1Work=some s2Step219Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step219Add1Arena s2Step219Add1During 798 814 882 s2Step219Add1A s2Step219Add1B s2Step219Add1Work
    (by decide +kernel) (by decide +kernel) s2Step219Add1_distinct
    (fun q hq => s2Step219Add1_owned (List.mem_toFinset.mpr hq)) s2Step219Add1_borrowed

private theorem s2Step219F4_apart : Disjoint (s2Step219Add0A++s2Step219Add0B).toFinset (s2Step219Add1A++s2Step219Add1B).toFinset := by
  have nd : ((s2Step219Add0A++s2Step219Add0B)++(s2Step219Add1A++s2Step219Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step219F4_carry : s2Step219F4FlagArena.checkBorrow 1 [882]=some s2Step219Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step219F4FlagArena,s2Step219HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step219F4FlagArena,s2Step219HeadFvAfter,s2Step219Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step219F4_distinct : (790::798::814::882::((s2Step219Add0A++s2Step219Add1A)++(s2Step219Add0B++s2Step219Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219F4_flag : s2Step219HeadFvAfter.checkBorrow 1 [814]=some s2Step219F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step219HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step219F4_owned : (790::798::((s2Step219Add0A++s2Step219Add1A)++(s2Step219Add0B++s2Step219Add1B))).toFinset⊆s2Step219HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step219HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219F4_checked : compileHmrHybridF4Log s2Step219HeadFvAfter 790 798 s2Step219Add0A s2Step219Add0B s2Step219Add1A s2Step219Add1B [814] [882] s2Step219Add0Work s2Step219Add1Work=some s2Step219F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step219HeadFvAfter s2Step219F4FlagArena s2Step219Add0Arena s2Step219Add0During s2Step219Add1During 790 798
    s2Step219Add0A s2Step219Add0B s2Step219Add1A s2Step219Add1B [814] [882] s2Step219Add0Work s2Step219Add1Work
    (fun q hq => s2Step219F4_owned (List.mem_toFinset.mpr hq)) s2Step219F4_flag s2Step219F4_carry
    s2Step219F4_distinct s2Step219F4_apart s2Step219Add0_checked s2Step219Add1_checked

private theorem s2Step219Front_branch : s2Step219FrontSigmaArena.checkBorrow 1 [798]=some s2Step219HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step219FrontSigmaArena,s2Step219EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step219FrontSigmaArena,s2Step219EntryGvAfter,s2Step219HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step219Front_entry : HmrFrontEntryValid s2Step219EntryFBefore s2Step219FrontBank 161 124 ⟨160,160,124,124⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step219FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step219EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step219EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step219FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step219Front_sigma : s2Step219EntryGvAfter.checkBorrow 1 [790]=some s2Step219FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step219EntryGvAfter,arenaWires]
  · rfl

private def s2Step219HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219HeadFBefore : Arena := s2Step219HeadGAfter

private def s2Step219HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672],768⟩

private def s2Step219HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩

private def s2Step219HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],769⟩

private def s2Step219HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778],771⟩

private theorem s2Step219HeadBank_incomingDistinct : ([s2Step219HeadGRow,s2Step219HeadFRow,s2Step219HeadGvRow,s2Step219HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219HeadF_Incoming : rowsOwned s2Step219HeadFBefore [s2Step219HeadFRow,s2Step219HeadGvRow,s2Step219HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step219HeadGRow,s2Step219HeadFRow,s2Step219HeadGvRow,s2Step219HeadFvRow] 1 s2Step219HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step219HeadFBefore (fun q => (0≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219HeadBank_outgoingOwned : rowsOwned s2Step219HeadFvAfter [s2Step219HeadGOut,s2Step219HeadFOut,s2Step219HeadGvOut,s2Step219HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step219HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219HeadF_Outgoing : rowsOwned s2Step219HeadFvAfter [s2Step219HeadFOut,s2Step219HeadGvOut,s2Step219HeadFvOut] :=
  hmrRows_owned_drop s2Step219HeadFvAfter [s2Step219HeadGOut,s2Step219HeadFOut,s2Step219HeadGvOut,s2Step219HeadFvOut] 1 s2Step219HeadBank_outgoingOwned

private theorem s2Step219HeadF_distinct : (s2Step219HeadFRow.sign::s2Step219HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219HeadF_owned : (s2Step219HeadFRow.sign::s2Step219HeadFRow.payload).toFinset⊆s2Step219HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step219HeadFBefore (fun q => (0≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219HeadF_reserved : s2Step219HeadFBefore.reserve s2Step219HeadFFresh.toFinset=some s2Step219HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step219HeadFFresh,arenaWires]
  · norm_num [s2Step219HeadFBefore,s2Step219HeadGAfter,s2Step219HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step219HeadFAfter,s2Step219HeadFBefore,s2Step219HeadGAfter,s2Step219HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step219HeadF_checked : planRowResizeLog s2Step219HeadFBefore s2Step219HeadFRow 162 s2Step219HeadFFresh=
    some (s2Step219HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 801],768⟩,growRow 768 s2Step219HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step219HeadFBefore s2Step219HeadFAfter s2Step219HeadFRow 162 s2Step219HeadFFresh
    s2Step219HeadF_distinct s2Step219HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step219HeadF_reserved
  have rowEq : WindowRow.mk (s2Step219HeadFRow.payload++s2Step219HeadFFresh) s2Step219HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 801],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step219HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step219HeadFvBefore : Arena := s2Step219HeadGvAfter

private theorem s2Step219HeadFv_Incoming : rowsOwned s2Step219HeadFvBefore [s2Step219HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step219HeadGRow,s2Step219HeadFRow,s2Step219HeadGvRow,s2Step219HeadFvRow] 3 s2Step219HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step219HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219HeadFv_Outgoing : rowsOwned s2Step219HeadFvAfter [s2Step219HeadFvOut] :=
  hmrRows_owned_drop s2Step219HeadFvAfter [s2Step219HeadGOut,s2Step219HeadFOut,s2Step219HeadGvOut,s2Step219HeadFvOut] 3 s2Step219HeadBank_outgoingOwned

private theorem s2Step219HeadFv_distinct : (s2Step219HeadFvRow.sign::s2Step219HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219HeadFv_owned : (s2Step219HeadFvRow.sign::s2Step219HeadFvRow.payload).toFinset⊆s2Step219HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step219HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219HeadFv_reserved : s2Step219HeadFvBefore.reserve s2Step219HeadFvFresh.toFinset=some s2Step219HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step219HeadFvFresh,arenaWires]
  · norm_num [s2Step219HeadFvBefore,s2Step219HeadGvAfter,s2Step219HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step219HeadFvAfter,s2Step219HeadFvBefore,s2Step219HeadGvAfter,s2Step219HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step219HeadFv_checked : planRowResizeLog s2Step219HeadFvBefore s2Step219HeadFvRow 125 s2Step219HeadFvFresh=
    some (s2Step219HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845],770⟩,growRow 770 s2Step219HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step219HeadFvBefore s2Step219HeadFvAfter s2Step219HeadFvRow 125 s2Step219HeadFvFresh
    s2Step219HeadFv_distinct s2Step219HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step219HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step219HeadFvRow.payload++s2Step219HeadFvFresh) s2Step219HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step219HeadG_Incoming : rowsOwned s2Step219HeadGBefore [s2Step219HeadGRow,s2Step219HeadFRow,s2Step219HeadGvRow,s2Step219HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step219HeadGRow,s2Step219HeadFRow,s2Step219HeadGvRow,s2Step219HeadFvRow] 0 s2Step219HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step219HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219HeadG_Outgoing : rowsOwned s2Step219HeadFvAfter [s2Step219HeadGOut,s2Step219HeadFOut,s2Step219HeadGvOut,s2Step219HeadFvOut] :=
  hmrRows_owned_drop s2Step219HeadFvAfter [s2Step219HeadGOut,s2Step219HeadFOut,s2Step219HeadGvOut,s2Step219HeadFvOut] 0 s2Step219HeadBank_outgoingOwned

private theorem s2Step219HeadG_distinct : (s2Step219HeadGRow.sign::s2Step219HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219HeadG_owned : (s2Step219HeadGRow.sign::s2Step219HeadGRow.payload).toFinset⊆s2Step219HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step219HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219HeadG_reserved : s2Step219HeadGBefore.reserve s2Step219HeadGFresh.toFinset=some s2Step219HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step219HeadGFresh,arenaWires]
  · norm_num [s2Step219HeadGBefore,s2Step219HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step219HeadGAfter,s2Step219HeadGBefore,s2Step219HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step219HeadG_checked : planRowResizeLog s2Step219HeadGBefore s2Step219HeadGRow 162 s2Step219HeadGFresh=
    some (s2Step219HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 783],769⟩,growRow 769 s2Step219HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step219HeadGBefore s2Step219HeadGAfter s2Step219HeadGRow 162 s2Step219HeadGFresh
    s2Step219HeadG_distinct s2Step219HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step219HeadG_reserved
  have rowEq : WindowRow.mk (s2Step219HeadGRow.payload++s2Step219HeadGFresh) s2Step219HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step219HeadGvBefore : Arena := s2Step219HeadFAfter

private theorem s2Step219HeadGv_Incoming : rowsOwned s2Step219HeadGvBefore [s2Step219HeadGvRow,s2Step219HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step219HeadGRow,s2Step219HeadFRow,s2Step219HeadGvRow,s2Step219HeadFvRow] 2 s2Step219HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step219HeadGvBefore (fun q => (0≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step219HeadGv_Outgoing : rowsOwned s2Step219HeadFvAfter [s2Step219HeadGvOut,s2Step219HeadFvOut] :=
  hmrRows_owned_drop s2Step219HeadFvAfter [s2Step219HeadGOut,s2Step219HeadFOut,s2Step219HeadGvOut,s2Step219HeadFvOut] 2 s2Step219HeadBank_outgoingOwned

private theorem s2Step219HeadGv_distinct : (s2Step219HeadGvRow.sign::s2Step219HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step219HeadGv_owned : (s2Step219HeadGvRow.sign::s2Step219HeadGvRow.payload).toFinset⊆s2Step219HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step219HeadGvBefore (fun q => (0≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step219HeadGv_reserved : s2Step219HeadGvBefore.reserve s2Step219HeadGvFresh.toFinset=some s2Step219HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step219HeadGvFresh,arenaWires]
  · norm_num [s2Step219HeadGvBefore,s2Step219HeadFAfter,s2Step219HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step219HeadGvAfter,s2Step219HeadGvBefore,s2Step219HeadFAfter,s2Step219HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step219HeadGv_checked : planRowResizeLog s2Step219HeadGvBefore s2Step219HeadGvRow 125 s2Step219HeadGvFresh=
    some (s2Step219HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 796],771⟩,growRow 771 s2Step219HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step219HeadGvBefore s2Step219HeadGvAfter s2Step219HeadGvRow 125 s2Step219HeadGvFresh
    s2Step219HeadGv_distinct s2Step219HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step219HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step219HeadGvRow.payload++s2Step219HeadGvFresh) s2Step219HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step219HeadBank_rows : planWindowRowsLog s2Step219HeadGBefore [(s2Step219HeadGRow,162),(s2Step219HeadFRow,162),(s2Step219HeadGvRow,125),(s2Step219HeadFvRow,125)] [s2Step219HeadGFresh,s2Step219HeadFFresh,s2Step219HeadGvFresh,s2Step219HeadFvFresh]=
    some (s2Step219HeadFvAfter,[s2Step219HeadGOut,s2Step219HeadFOut,s2Step219HeadGvOut,s2Step219HeadFvOut],(growRow 769 s2Step219HeadGFresh ++ (growRow 768 s2Step219HeadFFresh ++ (growRow 771 s2Step219HeadGvFresh ++ (growRow 770 s2Step219HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step219HeadFvAfter [] []=some (s2Step219HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step219HeadFvBefore s2Step219HeadFvAfter s2Step219HeadFvAfter
    s2Step219HeadFvRow s2Step219HeadFvOut 125 s2Step219HeadFvFresh [] [] []
    (growRow 770 s2Step219HeadFvFresh) ([]) s2Step219HeadFv_Incoming s2Step219HeadFv_checked h4 s2Step219HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step219HeadGvBefore s2Step219HeadGvAfter s2Step219HeadFvAfter
    s2Step219HeadGvRow s2Step219HeadGvOut 125 s2Step219HeadGvFresh [(s2Step219HeadFvRow,125)] [s2Step219HeadFvFresh] [s2Step219HeadFvOut]
    (growRow 771 s2Step219HeadGvFresh) ((growRow 770 s2Step219HeadFvFresh ++ [])) s2Step219HeadGv_Incoming s2Step219HeadGv_checked h3 s2Step219HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step219HeadFBefore s2Step219HeadFAfter s2Step219HeadFvAfter
    s2Step219HeadFRow s2Step219HeadFOut 162 s2Step219HeadFFresh [(s2Step219HeadGvRow,125),(s2Step219HeadFvRow,125)] [s2Step219HeadGvFresh,s2Step219HeadFvFresh] [s2Step219HeadGvOut,s2Step219HeadFvOut]
    (growRow 768 s2Step219HeadFFresh) ((growRow 771 s2Step219HeadGvFresh ++ (growRow 770 s2Step219HeadFvFresh ++ []))) s2Step219HeadF_Incoming s2Step219HeadF_checked h2 s2Step219HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step219HeadGBefore s2Step219HeadGAfter s2Step219HeadFvAfter
    s2Step219HeadGRow s2Step219HeadGOut 162 s2Step219HeadGFresh [(s2Step219HeadFRow,162),(s2Step219HeadGvRow,125),(s2Step219HeadFvRow,125)] [s2Step219HeadFFresh,s2Step219HeadGvFresh,s2Step219HeadFvFresh] [s2Step219HeadFOut,s2Step219HeadGvOut,s2Step219HeadFvOut]
    (growRow 769 s2Step219HeadGFresh) ((growRow 768 s2Step219HeadFFresh ++ (growRow 771 s2Step219HeadGvFresh ++ (growRow 770 s2Step219HeadFvFresh ++ [])))) s2Step219HeadG_Incoming s2Step219HeadG_checked h1 s2Step219HeadG_Outgoing
  exact h0

private theorem s2Step219HeadBank_checked : compileHmrBankResizeLog .headroom s2Step219HeadGBefore ⟨s2Step219HeadFRow,s2Step219HeadGRow,s2Step219HeadFvRow,s2Step219HeadGvRow⟩ ⟨162,162,125,125⟩ [s2Step219HeadGFresh,s2Step219HeadFFresh,s2Step219HeadGvFresh,s2Step219HeadFvFresh]=
    some (s2Step219HeadFvAfter,⟨s2Step219HeadFOut,s2Step219HeadGOut,s2Step219HeadFvOut,s2Step219HeadGvOut⟩,(growRow 769 s2Step219HeadGFresh ++ (growRow 768 s2Step219HeadFFresh ++ (growRow 771 s2Step219HeadGvFresh ++ (growRow 770 s2Step219HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step219HeadBank_rows]
  rfl

private theorem s2Step219Front_checked : compileHmrSourceFrontLog s2Step219EntryFBefore s2Step219FrontBank 161 124 ⟨160,160,124,124⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step219FrontLog=some s2Step219FrontPlan := by
  have pairEq : s2Step219FrontPair=⟨s2Step219HeadFRow,s2Step219HeadGRow,s2Step219HeadFvRow,s2Step219HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step219FrontHead=⟨s2Step219ExitFRow,s2Step219ExitGRow,s2Step219ExitFvRow,s2Step219ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step219Add0A=s2Step219FrontHead.f.wires := by decide +kernel
  have gEq : s2Step219Add0B=s2Step219FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step219Add1A=s2Step219FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step219Add1B=s2Step219FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step219EntryFBefore s2Step219FrontBank 161 124 ⟨160,160,124,124⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step219FrontLog s2Step219FrontPlan
  · exact s2Step219Front_entry
  · exact s2Step219EntryBank_checked
  · exact s2Step219Front_sigma
  · rfl
  · exact s2Step219Front_branch
  · rfl
  · simpa only [s2Step219FrontPlan,pairEq] using s2Step219HeadBank_checked
  · simpa only [s2Step219FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step219F4_checked
  · exact s2Step219Counter_checked
  · rfl
  · simpa only [s2Step219FrontPlan,headEq] using s2Step219ExitBank_checked

private theorem s2Step219Complete_explicit_checked : compileHmrEarlyStepLog s2Step219EntryFBefore s2Step219FrontBank 161 124 ⟨160,160,124,124⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step219CompleteLog=some s2Step219CompletePlan := by
  let Q := s2Step219EarlyControlPlan
  have hq := s2Step219EarlyControl_plan_checked
  have fv1 : s2Step219CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step219CompleteOut.fv.payload[2]?.getD s2Step219CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step219CompleteOut.fv.payload[3]?.getD s2Step219CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step219CompleteOut.fv.payload[4]?.getD s2Step219CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step219EntryFBefore s2Step219EarlyControlArena s2Step219FrontBank 161 124 ⟨160,160,124,124⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step219CompleteLog s2Step219FrontPlan Q
    s2Step219Front_checked s2Step219Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step219Complete_owned s2Step219Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step219EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 790 s2Step219CompleteOut.fv.second (s2Step219CompleteOut.fv.payload[2]?.getD s2Step219CompleteOut.fv.sign) (s2Step219CompleteOut.fv.payload[3]?.getD s2Step219CompleteOut.fv.sign) (s2Step219CompleteOut.fv.payload[4]?.getD s2Step219CompleteOut.fv.sign) 798 47 s2Step219EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep219Arena : Arena := s2Step219EntryFBefore
def s2PrivateStep219Bank : WindowBank := s2Step219FrontBank
def s2PrivateStep219Spec : HmrSourceWalkStepLog := ⟨161,124,⟨160,160,124,124⟩,47,.early s2Step219CompleteLog⟩
def s2PrivateStep219Plan : HmrSourceStepPlan := .early s2Step219CompletePlan
theorem s2PrivateStep219_source : s2PrivateStep219Spec=s2ObservedLogs208[11] := rfl
theorem s2PrivateStep219_checked : compileHmrSourceStepLog s2PrivateStep219Arena s2PrivateStep219Bank
    s2PrivateStep219Spec.fgWidth s2PrivateStep219Spec.vWidth s2PrivateStep219Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 219 s2PrivateStep219Spec.need none s2PrivateStep219Spec.log=some s2PrivateStep219Plan := by
  change compileHmrSourceStepLog s2Step219EntryFBefore s2Step219FrontBank 161 124 ⟨160,160,124,124⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 219 47 none (.early s2Step219CompleteLog)=some (.early s2Step219CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 219<498)]
  rw [s2Step219Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
