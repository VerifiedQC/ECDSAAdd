import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep216
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

private def s2Step218CompleteMoves : List (Wire × Wire) := []

private def s2Step218EarlyControlLog : HmrEarlyControlLog := ⟨[798, 783, 801, 796, 845],[814],[882],[826, 842, 885, 891, 894, 895],[]⟩

private def s2Step218FrontLog : HmrFrontAllocationLog := ⟨⟨[[783], [], [], []],[[845], [801], [798], [815]],[[], [], [], []]⟩,[790],[778],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step218CompleteLog : HmrEarlyStepLog := ⟨s2Step218FrontLog,s2Step218CompleteMoves,s2Step218EarlyControlLog⟩

private def s2Step218ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672],768⟩

private def s2Step218ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩

private def s2Step218ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],769⟩

private def s2Step218ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839],771⟩

private def s2Step218FrontOut : WindowBank := ⟨s2Step218ExitFOut,s2Step218ExitGOut,s2Step218ExitFvOut,s2Step218ExitGvOut⟩

private def s2Step218CompleteOut : WindowBank := s2Step218FrontOut.repacked s2Step218CompleteMoves

private def s2Step218EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step218EarlyControlPositiveArena,[814],s2Step218EarlyControlEqualityArena,[882],⟨⟨790,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step218EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,798⟩,⟨⟨774,false⟩,783⟩,⟨⟨775,false⟩,801⟩,⟨⟨776,false⟩,796⟩,⟨⟨777,false⟩,845⟩]⟩

private def s2Step218EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step218EarlyControlZeroArena,s2Step218EarlyControlZeroPlan,s2Step218EarlyControlClassPlan,s2Step218EarlyControlFlagArena,s2Step218EarlyControlFittedArena,s2Step218EarlyControlHistoryArena,s2Step218EarlyControlSigmaArena,s2Step218EarlyControlOutputArena,s2Step218EarlyControlLog⟩

private def s2Step218CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step218Counter_bounded : s2Step218CounterWork.toFinset⊆arenaWires := by norm_num [s2Step218CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step218HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218CounterDuring : Arena := ⟨s2Step218HeadFvAfter.live∪s2Step218CounterWork.toFinset,Finset.union_subset s2Step218HeadFvAfter.bounded s2Step218Counter_bounded⟩

private def s2Step218EntryFFresh : List Wire := [783]

private def s2Step218EntryFvFresh : List Wire := []

private def s2Step218EntryGFresh : List Wire := []

private def s2Step218EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218EntryGvAfter : Arena := s2Step218EntryFAfter

private def s2Step218EntryGvFresh : List Wire := []

private def s2Step218ExitFExtra : List Wire := [783, 801]

private def s2Step218ExitGExtra : List Wire := [796, 845]

private def s2Step218ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218ExitGvExtra : List Wire := [798]

private def s2Step218Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step218Add0_bounded : s2Step218Add0Work.toFinset⊆arenaWires := by
  have h : s2Step218Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step218Add0During : Arena := ⟨s2Step218Add0Arena.live∪s2Step218Add0Work.toFinset,Finset.union_subset s2Step218Add0Arena.bounded s2Step218Add0_bounded⟩

private def s2Step218Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step218Add1_bounded : s2Step218Add1Work.toFinset⊆arenaWires := by
  have h : s2Step218Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step218Add1During : Arena := ⟨s2Step218Add1Arena.live∪s2Step218Add1Work.toFinset,Finset.union_subset s2Step218Add1Arena.bounded s2Step218Add1_bounded⟩

private def s2Step218F4FlagArena : Arena := ⟨s2Step218HeadFvAfter.live∪{814},Finset.union_subset s2Step218HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step218F4Plan : HmrHybridF4Plan := ⟨s2Step218F4FlagArena,[814],s2Step218Add0Arena,[882],s2Step218Add0During,s2Step218Add0Work,s2Step218Add1During,s2Step218Add1Work⟩

private def s2Step218HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 783, 801],768⟩

private def s2Step218HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩

private def s2Step218HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796, 845],769⟩

private def s2Step218HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 798],771⟩

private def s2Step218FrontHead : WindowBank := ⟨s2Step218HeadFOut,s2Step218HeadGOut,s2Step218HeadFvOut,s2Step218HeadGvOut⟩

private def s2Step218EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 783],768⟩

private def s2Step218EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩

private def s2Step218EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796],769⟩

private def s2Step218EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839],771⟩

private def s2Step218FrontPair : WindowBank := ⟨s2Step218EntryFOut,s2Step218EntryGOut,s2Step218EntryFvOut,s2Step218EntryGvOut⟩

private def s2Step218FrontSigmaArena : Arena := ⟨s2Step218EntryGvAfter.live∪{790},Finset.union_subset s2Step218EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step218HeadFFresh : List Wire := [801]

private def s2Step218HeadFvFresh : List Wire := [815]

private def s2Step218HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218HeadGFresh : List Wire := [845]

private def s2Step218HeadGvFresh : List Wire := [798]

private def s2Step218FrontPlan : HmrSourceFront := ⟨s2Step218EntryGvAfter,s2Step218FrontPair,(growRow 768 s2Step218EntryFFresh ++ (growRow 769 s2Step218EntryGFresh ++ (growRow 770 s2Step218EntryFvFresh ++ (growRow 771 s2Step218EntryGvFresh ++ [])))),s2Step218FrontSigmaArena,[790],s2Step218HeadGBefore,[778],
  s2Step218HeadFvAfter,s2Step218FrontHead,(growRow 769 s2Step218HeadGFresh ++ (growRow 768 s2Step218HeadFFresh ++ (growRow 771 s2Step218HeadGvFresh ++ (growRow 770 s2Step218HeadFvFresh ++ [])))),s2Step218F4Plan,s2Step218CounterDuring,s2Step218CounterWork,s2Step218ExitGvAfter,s2Step218FrontOut,(shrinkRow 769 s2Step218ExitGExtra ++ (shrinkRow 768 s2Step218ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step218ExitGvExtra ++ []))))⟩

private def s2Step218CompletePlan : HmrEarlyStepPlan := ⟨s2Step218FrontPlan,s2Step218EarlyControlArena,s2Step218EarlyControlPlan,s2Step218CompleteMoves⟩

private theorem s2Step218Complete_apart : List.Disjoint (s2Step218CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [790, 778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step218CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[790, 778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step218Complete_owned : (s2Step218CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step218EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step218EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218Complete_repack : s2Step218ExitGvAfter.checkRepack s2Step218CompleteMoves=some s2Step218EarlyControlArena := by rfl

private theorem s2Step218EarlyControl_branchOwned : ([778] : List Wire).toFinset⊆s2Step218EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step218EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EarlyControl_branch : compileHmrBranchRetirement s2Step218EarlyControlSigmaArena 778=some s2Step218EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step218EarlyControl_branchOwned
  · ext q
    simp [s2Step218EarlyControlOutputArena,s2Step218EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step218EarlyControl_classEqualityBorrow : s2Step218EarlyControlPositiveArena.checkBorrow (([790, 814] : List Wire).length-1) s2Step218EarlyControlLog.classWork=some s2Step218EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step218EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step218EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step218EarlyControlEqualityArena,s2Step218EarlyControlPositiveArena,s2Step218EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step218EarlyControl_classEqualityOwned : ([790, 814] : List Wire).toFinset⊆s2Step218EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step218EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EarlyControl_classEquality : compileHmrEqualityLog s2Step218EarlyControlPositiveArena [790, 814] 0 s2Step218EarlyControlLog.classWork=some (s2Step218EarlyControlEqualityArena,s2Step218EarlyControlLog.classWork,s2Step218EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step218EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step218EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step218EarlyControl_classOwned : ([777, 845, 790] : List Wire).toFinset⊆s2Step218EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step218EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EarlyControl_positiveBorrow : s2Step218EarlyControlZeroArena.checkBorrow (1) s2Step218EarlyControlLog.positiveWork=some s2Step218EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step218EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step218EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step218EarlyControlPositiveArena,s2Step218EarlyControlZeroArena,s2Step218EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step218EarlyControl_class : compileHmrSourceClassLog s2Step218EarlyControlZeroArena false 777 s2Step218EarlyControlZeroPlan.top 0 790 s2Step218EarlyControlLog.positiveWork s2Step218EarlyControlLog.classWork=some s2Step218EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step218EarlyControlClassPlan s2Step218EarlyControlZeroArena false 777 s2Step218EarlyControlZeroPlan.top 0 790
  constructor
  · decide +kernel
  · exact s2Step218EarlyControl_classOwned
  · exact s2Step218EarlyControl_positiveBorrow
  · exact s2Step218EarlyControl_classEquality

private theorem s2Step218EarlyControl_entryRecordOwned : ([778, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step218EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step218EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EarlyControl_entrySigmaOwned : ([790, 254] : List Wire).toFinset⊆s2Step218EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step218EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EarlyControl_fitBorrow : s2Step218EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step218EarlyControlLog.recordFresh=some s2Step218EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step218EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step218EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step218EarlyControlFittedArena,s2Step218EarlyControlFlagArena,s2Step218EarlyControlLog,arenaWires]

private theorem s2Step218EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step218EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step218EarlyControlFlagArena (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EarlyControl_fit : compileHmrRecordGrowLog s2Step218EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step218EarlyControlLog.recordFresh=some s2Step218EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step218EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step218EarlyControl_fitBorrow

private theorem s2Step218EarlyControl_flagsBorrow : s2Step218EarlyControlEqualityArena.checkBorrow (6) s2Step218EarlyControlLog.flagWork=some s2Step218EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step218EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step218EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step218EarlyControlFlagArena,s2Step218EarlyControlEqualityArena,s2Step218EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step218EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step218EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step218EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EarlyControl_flags : compileHmrFlagsLog s2Step218EarlyControlClassPlan.equalityArena s2Step218EarlyControlClassPlan.equality.top 253 252 251 s2Step218EarlyControlLog.flagWork=some s2Step218EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step218EarlyControl_flagsOwned⟩
  · exact s2Step218EarlyControl_flagsBorrow

private theorem s2Step218EarlyControl_historyBorrow : s2Step218EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step218EarlyControlLog.recordFresh=some s2Step218EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step218EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step218EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step218EarlyControlHistoryArena,s2Step218EarlyControlArena,s2Step218EarlyControlLog,arenaWires]

private theorem s2Step218EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step218EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step218EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EarlyControl_history : compileHmrRecordGrowLog s2Step218EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step218EarlyControlLog.recordFresh=some s2Step218EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step218EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step218EarlyControl_historyBorrow

private theorem s2Step218EarlyControl_sigmaOwned : ([254, 790] : List Wire).toFinset⊆s2Step218EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step218EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EarlyControl_sigmaReleaseOwned : ([790] : List Wire).toFinset⊆s2Step218EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step218EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EarlyControl_sigmaRelease : s2Step218EarlyControlHistoryArena.release {790} (fun _ => false)=some s2Step218EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step218EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step218EarlyControlSigmaArena,s2Step218EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step218EarlyControl_sigma : compileHmrSigmaDropLog s2Step218EarlyControlHistoryArena false 0 0 254 790 []=some s2Step218EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step218EarlyControl_sigmaOwned⟩
  · exact s2Step218EarlyControl_sigmaRelease

private theorem s2Step218EarlyControl_zeroBorrow : s2Step218EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step218EarlyControlLog.zeroWork=some s2Step218EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step218EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step218EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step218EarlyControlZeroArena,s2Step218EarlyControlArena,s2Step218EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step218EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step218EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step218EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EarlyControl_zero : compileHmrEqualityLog s2Step218EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step218EarlyControlLog.zeroWork=some (s2Step218EarlyControlZeroArena,s2Step218EarlyControlLog.zeroWork,s2Step218EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step218EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step218EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step218EarlyControl_logged : s2Step218EarlyControlPlan.Logged s2Step218EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 790 254 253 252 251 778 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step218EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step218EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step218EarlyControl_zero
  · exact s2Step218EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step218EarlyControl_flags
  · exact s2Step218EarlyControl_fit
  · exact s2Step218EarlyControl_history
  · exact s2Step218EarlyControl_sigma
  · exact s2Step218EarlyControl_branch

private theorem s2Step218EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step218EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 790 254 253 252 251 778 47 s2Step218EarlyControlLog=some s2Step218EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step218EarlyControlPlan s2Step218EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 790 254 253 252 251 778 47 s2Step218EarlyControl_logged

private def s2Step218EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672],768⟩

private def s2Step218EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩

private def s2Step218EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796],769⟩

private def s2Step218EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839],771⟩

private def s2Step218FrontBank : WindowBank := ⟨s2Step218EntryFRow,s2Step218EntryGRow,s2Step218EntryFvRow,s2Step218EntryGvRow⟩

private def s2Step218Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 783, 801, 768]

private def s2Step218Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796, 845, 769]

private def s2Step218Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 770]

private def s2Step218Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 798, 771]

private theorem s2Step218Counter_apart : Disjoint s2Step218HeadFvAfter.live s2Step218CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step218HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218Counter_borrowed : s2Step218HeadFvAfter.checkBorrow 4 s2Step218CounterWork=some s2Step218CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step218HeadFvAfter s2Step218CounterDuring s2Step218CounterWork.toFinset s2Step218Counter_bounded s2Step218Counter_apart rfl

private theorem s2Step218Counter_owned : (790::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step218HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step218HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218Counter_checked : compileHmrCounterStepLog s2Step218HeadFvAfter true 790 [772, 773, 774, 775, 776, 777] s2Step218CounterWork=some s2Step218CounterDuring := by
  have owned : ∀q∈790::[772, 773, 774, 775, 776, 777],q∈s2Step218HeadFvAfter.live := fun q hq => s2Step218Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step218Counter_borrowed

private theorem s2Step218EntryBank_incomingDistinct : ([s2Step218EntryFRow,s2Step218EntryGRow,s2Step218EntryFvRow,s2Step218EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218EntryF_Incoming : rowsOwned s2Step218EntryFBefore [s2Step218EntryFRow,s2Step218EntryGRow,s2Step218EntryFvRow,s2Step218EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step218EntryFRow,s2Step218EntryGRow,s2Step218EntryFvRow,s2Step218EntryGvRow] 0 s2Step218EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step218EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218EntryBank_outgoingOwned : rowsOwned s2Step218EntryGvAfter [s2Step218EntryFOut,s2Step218EntryGOut,s2Step218EntryFvOut,s2Step218EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step218EntryGvAfter (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218EntryF_Outgoing : rowsOwned s2Step218EntryGvAfter [s2Step218EntryFOut,s2Step218EntryGOut,s2Step218EntryFvOut,s2Step218EntryGvOut] :=
  hmrRows_owned_drop s2Step218EntryGvAfter [s2Step218EntryFOut,s2Step218EntryGOut,s2Step218EntryFvOut,s2Step218EntryGvOut] 0 s2Step218EntryBank_outgoingOwned

private theorem s2Step218EntryF_distinct : (s2Step218EntryFRow.sign::s2Step218EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218EntryF_owned : (s2Step218EntryFRow.sign::s2Step218EntryFRow.payload).toFinset⊆s2Step218EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step218EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EntryF_reserved : s2Step218EntryFBefore.reserve s2Step218EntryFFresh.toFinset=some s2Step218EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step218EntryFFresh,arenaWires]
  · norm_num [s2Step218EntryFBefore,s2Step218EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step218EntryFAfter,s2Step218EntryFBefore,s2Step218EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step218EntryF_checked : planRowResizeLog s2Step218EntryFBefore s2Step218EntryFRow 162 s2Step218EntryFFresh=
    some (s2Step218EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 783],768⟩,growRow 768 s2Step218EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step218EntryFBefore s2Step218EntryFAfter s2Step218EntryFRow 162 s2Step218EntryFFresh
    s2Step218EntryF_distinct s2Step218EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step218EntryF_reserved
  have rowEq : WindowRow.mk (s2Step218EntryFRow.payload++s2Step218EntryFFresh) s2Step218EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 783],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step218EntryFvAfter : Arena := s2Step218EntryFAfter

private def s2Step218EntryFvBefore : Arena := s2Step218EntryFAfter

private theorem s2Step218EntryFv_Incoming : rowsOwned s2Step218EntryFvBefore [s2Step218EntryFvRow,s2Step218EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step218EntryFRow,s2Step218EntryGRow,s2Step218EntryFvRow,s2Step218EntryGvRow] 2 s2Step218EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step218EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218EntryFv_Outgoing : rowsOwned s2Step218EntryGvAfter [s2Step218EntryFvOut,s2Step218EntryGvOut] :=
  hmrRows_owned_drop s2Step218EntryGvAfter [s2Step218EntryFOut,s2Step218EntryGOut,s2Step218EntryFvOut,s2Step218EntryGvOut] 2 s2Step218EntryBank_outgoingOwned

private theorem s2Step218EntryFv_distinct : (s2Step218EntryFvRow.sign::s2Step218EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218EntryFv_owned : (s2Step218EntryFvRow.sign::s2Step218EntryFvRow.payload).toFinset⊆s2Step218EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step218EntryFvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EntryFv_reserved : s2Step218EntryFvBefore.reserve s2Step218EntryFvFresh.toFinset=some s2Step218EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step218EntryFvFresh,arenaWires]
  · norm_num [s2Step218EntryFvBefore,s2Step218EntryFAfter,s2Step218EntryFvFresh,arenaWires]
  · simp only [s2Step218EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step218EntryFv_checked : planRowResizeLog s2Step218EntryFvBefore s2Step218EntryFvRow 123 s2Step218EntryFvFresh=
    some (s2Step218EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩,growRow 770 s2Step218EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step218EntryFvBefore s2Step218EntryFvAfter s2Step218EntryFvRow 123 s2Step218EntryFvFresh
    s2Step218EntryFv_distinct s2Step218EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step218EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step218EntryFvRow.payload++s2Step218EntryFvFresh) s2Step218EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step218EntryGAfter : Arena := s2Step218EntryFAfter

private def s2Step218EntryGBefore : Arena := s2Step218EntryFAfter

private theorem s2Step218EntryG_Incoming : rowsOwned s2Step218EntryGBefore [s2Step218EntryGRow,s2Step218EntryFvRow,s2Step218EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step218EntryFRow,s2Step218EntryGRow,s2Step218EntryFvRow,s2Step218EntryGvRow] 1 s2Step218EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step218EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218EntryG_Outgoing : rowsOwned s2Step218EntryGvAfter [s2Step218EntryGOut,s2Step218EntryFvOut,s2Step218EntryGvOut] :=
  hmrRows_owned_drop s2Step218EntryGvAfter [s2Step218EntryFOut,s2Step218EntryGOut,s2Step218EntryFvOut,s2Step218EntryGvOut] 1 s2Step218EntryBank_outgoingOwned

private theorem s2Step218EntryG_distinct : (s2Step218EntryGRow.sign::s2Step218EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218EntryG_owned : (s2Step218EntryGRow.sign::s2Step218EntryGRow.payload).toFinset⊆s2Step218EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step218EntryGBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EntryG_reserved : s2Step218EntryGBefore.reserve s2Step218EntryGFresh.toFinset=some s2Step218EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step218EntryGFresh,arenaWires]
  · norm_num [s2Step218EntryGBefore,s2Step218EntryFAfter,s2Step218EntryGFresh,arenaWires]
  · simp only [s2Step218EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step218EntryG_checked : planRowResizeLog s2Step218EntryGBefore s2Step218EntryGRow 162 s2Step218EntryGFresh=
    some (s2Step218EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796],769⟩,growRow 769 s2Step218EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step218EntryGBefore s2Step218EntryGAfter s2Step218EntryGRow 162 s2Step218EntryGFresh
    s2Step218EntryG_distinct s2Step218EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step218EntryG_reserved
  have rowEq : WindowRow.mk (s2Step218EntryGRow.payload++s2Step218EntryGFresh) s2Step218EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step218EntryGvBefore : Arena := s2Step218EntryFAfter

private theorem s2Step218EntryGv_Incoming : rowsOwned s2Step218EntryGvBefore [s2Step218EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step218EntryFRow,s2Step218EntryGRow,s2Step218EntryFvRow,s2Step218EntryGvRow] 3 s2Step218EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step218EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218EntryGv_Outgoing : rowsOwned s2Step218EntryGvAfter [s2Step218EntryGvOut] :=
  hmrRows_owned_drop s2Step218EntryGvAfter [s2Step218EntryFOut,s2Step218EntryGOut,s2Step218EntryFvOut,s2Step218EntryGvOut] 3 s2Step218EntryBank_outgoingOwned

private theorem s2Step218EntryGv_distinct : (s2Step218EntryGvRow.sign::s2Step218EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218EntryGv_owned : (s2Step218EntryGvRow.sign::s2Step218EntryGvRow.payload).toFinset⊆s2Step218EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step218EntryGvBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218EntryGv_reserved : s2Step218EntryGvBefore.reserve s2Step218EntryGvFresh.toFinset=some s2Step218EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step218EntryGvFresh,arenaWires]
  · norm_num [s2Step218EntryGvBefore,s2Step218EntryFAfter,s2Step218EntryGvFresh,arenaWires]
  · simp only [s2Step218EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step218EntryGv_checked : planRowResizeLog s2Step218EntryGvBefore s2Step218EntryGvRow 123 s2Step218EntryGvFresh=
    some (s2Step218EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839],771⟩,growRow 771 s2Step218EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step218EntryGvBefore s2Step218EntryGvAfter s2Step218EntryGvRow 123 s2Step218EntryGvFresh
    s2Step218EntryGv_distinct s2Step218EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step218EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step218EntryGvRow.payload++s2Step218EntryGvFresh) s2Step218EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step218EntryBank_rows : planWindowRowsLog s2Step218EntryFBefore [(s2Step218EntryFRow,162),(s2Step218EntryGRow,162),(s2Step218EntryFvRow,123),(s2Step218EntryGvRow,123)] [s2Step218EntryFFresh,s2Step218EntryGFresh,s2Step218EntryFvFresh,s2Step218EntryGvFresh]=
    some (s2Step218EntryGvAfter,[s2Step218EntryFOut,s2Step218EntryGOut,s2Step218EntryFvOut,s2Step218EntryGvOut],(growRow 768 s2Step218EntryFFresh ++ (growRow 769 s2Step218EntryGFresh ++ (growRow 770 s2Step218EntryFvFresh ++ (growRow 771 s2Step218EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step218EntryGvAfter [] []=some (s2Step218EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step218EntryGvBefore s2Step218EntryGvAfter s2Step218EntryGvAfter
    s2Step218EntryGvRow s2Step218EntryGvOut 123 s2Step218EntryGvFresh [] [] []
    (growRow 771 s2Step218EntryGvFresh) ([]) s2Step218EntryGv_Incoming s2Step218EntryGv_checked h4 s2Step218EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step218EntryFvBefore s2Step218EntryFvAfter s2Step218EntryGvAfter
    s2Step218EntryFvRow s2Step218EntryFvOut 123 s2Step218EntryFvFresh [(s2Step218EntryGvRow,123)] [s2Step218EntryGvFresh] [s2Step218EntryGvOut]
    (growRow 770 s2Step218EntryFvFresh) ((growRow 771 s2Step218EntryGvFresh ++ [])) s2Step218EntryFv_Incoming s2Step218EntryFv_checked h3 s2Step218EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step218EntryGBefore s2Step218EntryGAfter s2Step218EntryGvAfter
    s2Step218EntryGRow s2Step218EntryGOut 162 s2Step218EntryGFresh [(s2Step218EntryFvRow,123),(s2Step218EntryGvRow,123)] [s2Step218EntryFvFresh,s2Step218EntryGvFresh] [s2Step218EntryFvOut,s2Step218EntryGvOut]
    (growRow 769 s2Step218EntryGFresh) ((growRow 770 s2Step218EntryFvFresh ++ (growRow 771 s2Step218EntryGvFresh ++ []))) s2Step218EntryG_Incoming s2Step218EntryG_checked h2 s2Step218EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step218EntryFBefore s2Step218EntryFAfter s2Step218EntryGvAfter
    s2Step218EntryFRow s2Step218EntryFOut 162 s2Step218EntryFFresh [(s2Step218EntryGRow,162),(s2Step218EntryFvRow,123),(s2Step218EntryGvRow,123)] [s2Step218EntryGFresh,s2Step218EntryFvFresh,s2Step218EntryGvFresh] [s2Step218EntryGOut,s2Step218EntryFvOut,s2Step218EntryGvOut]
    (growRow 768 s2Step218EntryFFresh) ((growRow 769 s2Step218EntryGFresh ++ (growRow 770 s2Step218EntryFvFresh ++ (growRow 771 s2Step218EntryGvFresh ++ [])))) s2Step218EntryF_Incoming s2Step218EntryF_checked h1 s2Step218EntryF_Outgoing
  exact h0

private theorem s2Step218EntryBank_checked : compileHmrBankResizeLog .entry s2Step218EntryFBefore ⟨s2Step218EntryFRow,s2Step218EntryGRow,s2Step218EntryFvRow,s2Step218EntryGvRow⟩ ⟨162,162,123,123⟩ [s2Step218EntryFFresh,s2Step218EntryGFresh,s2Step218EntryFvFresh,s2Step218EntryGvFresh]=
    some (s2Step218EntryGvAfter,⟨s2Step218EntryFOut,s2Step218EntryGOut,s2Step218EntryFvOut,s2Step218EntryGvOut⟩,(growRow 768 s2Step218EntryFFresh ++ (growRow 769 s2Step218EntryGFresh ++ (growRow 770 s2Step218EntryFvFresh ++ (growRow 771 s2Step218EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step218EntryBank_rows]
  rfl

private def s2Step218ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218ExitFBefore : Arena := s2Step218ExitGAfter

private def s2Step218ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 783, 801],768⟩

private def s2Step218ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩

private def s2Step218ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796, 845],769⟩

private def s2Step218ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 798],771⟩

private theorem s2Step218ExitBank_incomingDistinct : ([s2Step218ExitGRow,s2Step218ExitFRow,s2Step218ExitFvRow,s2Step218ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218ExitF_Incoming : rowsOwned s2Step218ExitFBefore [s2Step218ExitFRow,s2Step218ExitFvRow,s2Step218ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step218ExitGRow,s2Step218ExitFRow,s2Step218ExitFvRow,s2Step218ExitGvRow] 1 s2Step218ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step218ExitFBefore (fun q => (0≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218ExitBank_outgoingOwned : rowsOwned s2Step218ExitGvAfter [s2Step218ExitGOut,s2Step218ExitFOut,s2Step218ExitFvOut,s2Step218ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step218ExitGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218ExitF_Outgoing : rowsOwned s2Step218ExitGvAfter [s2Step218ExitFOut,s2Step218ExitFvOut,s2Step218ExitGvOut] :=
  hmrRows_owned_drop s2Step218ExitGvAfter [s2Step218ExitGOut,s2Step218ExitFOut,s2Step218ExitFvOut,s2Step218ExitGvOut] 1 s2Step218ExitBank_outgoingOwned

private theorem s2Step218ExitF_distinct : (s2Step218ExitFRow.sign::s2Step218ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218ExitF_owned : (s2Step218ExitFRow.sign::s2Step218ExitFRow.payload).toFinset⊆s2Step218ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step218ExitFBefore (fun q => (0≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218ExitF_retired : s2Step218ExitFBefore.retireSet s2Step218ExitFExtra.toFinset=s2Step218ExitFAfter := by
  unfold Arena.retireSet s2Step218ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step218ExitFBefore,s2Step218ExitGAfter,s2Step218ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step218ExitF_checked : planRowResizeLog s2Step218ExitFBefore s2Step218ExitFRow 161 []=
    some (s2Step218ExitFAfter,s2Step218ExitFOut,shrinkRow 768 s2Step218ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step218ExitFBefore s2Step218ExitFRow 161 s2Step218ExitF_distinct s2Step218ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step218ExitFRow.payload.take 161) s2Step218ExitFRow.sign=s2Step218ExitFOut := by decide +kernel
  have hi : s2Step218ExitFRow.payload.drop 161=s2Step218ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step218ExitF_retired] at result
  exact result

private def s2Step218ExitFvAfter : Arena := s2Step218ExitFAfter

private def s2Step218ExitFvBefore : Arena := s2Step218ExitFAfter

private theorem s2Step218ExitFv_Incoming : rowsOwned s2Step218ExitFvBefore [s2Step218ExitFvRow,s2Step218ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step218ExitGRow,s2Step218ExitFRow,s2Step218ExitFvRow,s2Step218ExitGvRow] 2 s2Step218ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step218ExitFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218ExitFv_Outgoing : rowsOwned s2Step218ExitGvAfter [s2Step218ExitFvOut,s2Step218ExitGvOut] :=
  hmrRows_owned_drop s2Step218ExitGvAfter [s2Step218ExitGOut,s2Step218ExitFOut,s2Step218ExitFvOut,s2Step218ExitGvOut] 2 s2Step218ExitBank_outgoingOwned

private theorem s2Step218ExitFv_distinct : (s2Step218ExitFvRow.sign::s2Step218ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218ExitFv_owned : (s2Step218ExitFvRow.sign::s2Step218ExitFvRow.payload).toFinset⊆s2Step218ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step218ExitFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218ExitFv_reserved : s2Step218ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step218ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step218ExitFv_checked : planRowResizeLog s2Step218ExitFvBefore s2Step218ExitFvRow 124 []=
    some (s2Step218ExitFvAfter,s2Step218ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step218ExitFvBefore s2Step218ExitFvAfter s2Step218ExitFvRow 124 []
    s2Step218ExitFv_distinct s2Step218ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step218ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step218ExitFvRow.payload++[]) s2Step218ExitFvRow.sign=s2Step218ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step218ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step218ExitG_Incoming : rowsOwned s2Step218ExitGBefore [s2Step218ExitGRow,s2Step218ExitFRow,s2Step218ExitFvRow,s2Step218ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step218ExitGRow,s2Step218ExitFRow,s2Step218ExitFvRow,s2Step218ExitGvRow] 0 s2Step218ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step218ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218ExitG_Outgoing : rowsOwned s2Step218ExitGvAfter [s2Step218ExitGOut,s2Step218ExitFOut,s2Step218ExitFvOut,s2Step218ExitGvOut] :=
  hmrRows_owned_drop s2Step218ExitGvAfter [s2Step218ExitGOut,s2Step218ExitFOut,s2Step218ExitFvOut,s2Step218ExitGvOut] 0 s2Step218ExitBank_outgoingOwned

private theorem s2Step218ExitG_distinct : (s2Step218ExitGRow.sign::s2Step218ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218ExitG_owned : (s2Step218ExitGRow.sign::s2Step218ExitGRow.payload).toFinset⊆s2Step218ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step218ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218ExitG_retired : s2Step218ExitGBefore.retireSet s2Step218ExitGExtra.toFinset=s2Step218ExitGAfter := by
  unfold Arena.retireSet s2Step218ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step218ExitGBefore,s2Step218ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step218ExitG_checked : planRowResizeLog s2Step218ExitGBefore s2Step218ExitGRow 161 []=
    some (s2Step218ExitGAfter,s2Step218ExitGOut,shrinkRow 769 s2Step218ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step218ExitGBefore s2Step218ExitGRow 161 s2Step218ExitG_distinct s2Step218ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step218ExitGRow.payload.take 161) s2Step218ExitGRow.sign=s2Step218ExitGOut := by decide +kernel
  have hi : s2Step218ExitGRow.payload.drop 161=s2Step218ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step218ExitG_retired] at result
  exact result

private def s2Step218ExitGvBefore : Arena := s2Step218ExitFAfter

private theorem s2Step218ExitGv_Incoming : rowsOwned s2Step218ExitGvBefore [s2Step218ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step218ExitGRow,s2Step218ExitFRow,s2Step218ExitFvRow,s2Step218ExitGvRow] 3 s2Step218ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step218ExitGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218ExitGv_Outgoing : rowsOwned s2Step218ExitGvAfter [s2Step218ExitGvOut] :=
  hmrRows_owned_drop s2Step218ExitGvAfter [s2Step218ExitGOut,s2Step218ExitFOut,s2Step218ExitFvOut,s2Step218ExitGvOut] 3 s2Step218ExitBank_outgoingOwned

private theorem s2Step218ExitGv_distinct : (s2Step218ExitGvRow.sign::s2Step218ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218ExitGv_owned : (s2Step218ExitGvRow.sign::s2Step218ExitGvRow.payload).toFinset⊆s2Step218ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step218ExitGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218ExitGv_retired : s2Step218ExitGvBefore.retireSet s2Step218ExitGvExtra.toFinset=s2Step218ExitGvAfter := by
  unfold Arena.retireSet s2Step218ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step218ExitGvBefore,s2Step218ExitFAfter,s2Step218ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step218ExitGv_checked : planRowResizeLog s2Step218ExitGvBefore s2Step218ExitGvRow 123 []=
    some (s2Step218ExitGvAfter,s2Step218ExitGvOut,shrinkRow 771 s2Step218ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step218ExitGvBefore s2Step218ExitGvRow 123 s2Step218ExitGv_distinct s2Step218ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step218ExitGvRow.payload.take 123) s2Step218ExitGvRow.sign=s2Step218ExitGvOut := by decide +kernel
  have hi : s2Step218ExitGvRow.payload.drop 123=s2Step218ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step218ExitGv_retired] at result
  exact result

private theorem s2Step218ExitBank_rows : planWindowRowsLog s2Step218ExitGBefore [(s2Step218ExitGRow,161),(s2Step218ExitFRow,161),(s2Step218ExitFvRow,124),(s2Step218ExitGvRow,123)] [[],[],[],[]]=
    some (s2Step218ExitGvAfter,[s2Step218ExitGOut,s2Step218ExitFOut,s2Step218ExitFvOut,s2Step218ExitGvOut],(shrinkRow 769 s2Step218ExitGExtra ++ (shrinkRow 768 s2Step218ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step218ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step218ExitGvAfter [] []=some (s2Step218ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step218ExitGvBefore s2Step218ExitGvAfter s2Step218ExitGvAfter
    s2Step218ExitGvRow s2Step218ExitGvOut 123 [] [] [] []
    (shrinkRow 771 s2Step218ExitGvExtra) ([]) s2Step218ExitGv_Incoming s2Step218ExitGv_checked h4 s2Step218ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step218ExitFvBefore s2Step218ExitFvAfter s2Step218ExitGvAfter
    s2Step218ExitFvRow s2Step218ExitFvOut 124 [] [(s2Step218ExitGvRow,123)] [[]] [s2Step218ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step218ExitGvExtra ++ [])) s2Step218ExitFv_Incoming s2Step218ExitFv_checked h3 s2Step218ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step218ExitFBefore s2Step218ExitFAfter s2Step218ExitGvAfter
    s2Step218ExitFRow s2Step218ExitFOut 161 [] [(s2Step218ExitFvRow,124),(s2Step218ExitGvRow,123)] [[],[]] [s2Step218ExitFvOut,s2Step218ExitGvOut]
    (shrinkRow 768 s2Step218ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step218ExitGvExtra ++ []))) s2Step218ExitF_Incoming s2Step218ExitF_checked h2 s2Step218ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step218ExitGBefore s2Step218ExitGAfter s2Step218ExitGvAfter
    s2Step218ExitGRow s2Step218ExitGOut 161 [] [(s2Step218ExitFRow,161),(s2Step218ExitFvRow,124),(s2Step218ExitGvRow,123)] [[],[],[]] [s2Step218ExitFOut,s2Step218ExitFvOut,s2Step218ExitGvOut]
    (shrinkRow 769 s2Step218ExitGExtra) ((shrinkRow 768 s2Step218ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step218ExitGvExtra ++ [])))) s2Step218ExitG_Incoming s2Step218ExitG_checked h1 s2Step218ExitG_Outgoing
  exact h0

private theorem s2Step218ExitBank_checked : compileHmrBankResizeLog .exit s2Step218ExitGBefore ⟨s2Step218ExitFRow,s2Step218ExitGRow,s2Step218ExitFvRow,s2Step218ExitGvRow⟩ ⟨161,161,124,123⟩ [[],[],[],[]]=
    some (s2Step218ExitGvAfter,⟨s2Step218ExitFOut,s2Step218ExitGOut,s2Step218ExitFvOut,s2Step218ExitGvOut⟩,(shrinkRow 769 s2Step218ExitGExtra ++ (shrinkRow 768 s2Step218ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step218ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step218ExitBank_rows]
  rfl

private theorem s2Step218Add0_apart : Disjoint s2Step218Add0Arena.live s2Step218Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step218Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218Add0_card : s2Step218Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step218Add0_borrowed : s2Step218Add0Arena.checkBorrow (hmrHybridCount s2Step218Add0Arena s2Step218Add0B.length) s2Step218Add0Work=some s2Step218Add0During := by
  have len : s2Step218Add0Work.length=hmrHybridCount s2Step218Add0Arena s2Step218Add0B.length := by
    rw [hmrHybridCount,s2Step218Add0_card]
    decide +kernel
  have nd : s2Step218Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step218Add0Arena s2Step218Add0During s2Step218Add0Work.toFinset s2Step218Add0_bounded s2Step218Add0_apart rfl

private theorem s2Step218Add0_distinct : (814::778::882::(s2Step218Add0A++s2Step218Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218Add0_owned : (814::778::882::(s2Step218Add0A++s2Step218Add0B)).toFinset⊆s2Step218Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step218Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218Add0_checked : compileHmrHybridCinLog s2Step218Add0Arena 778 814 882 s2Step218Add0A s2Step218Add0B s2Step218Add0Work=some s2Step218Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step218Add0Arena s2Step218Add0During 778 814 882 s2Step218Add0A s2Step218Add0B s2Step218Add0Work
    (by decide +kernel) (by decide +kernel) s2Step218Add0_distinct
    (fun q hq => s2Step218Add0_owned (List.mem_toFinset.mpr hq)) s2Step218Add0_borrowed

private theorem s2Step218Add1_apart : Disjoint s2Step218Add1Arena.live s2Step218Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step218Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218Add1_card : s2Step218Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step218Add1_borrowed : s2Step218Add1Arena.checkBorrow (hmrHybridCount s2Step218Add1Arena s2Step218Add1B.length) s2Step218Add1Work=some s2Step218Add1During := by
  have len : s2Step218Add1Work.length=hmrHybridCount s2Step218Add1Arena s2Step218Add1B.length := by
    rw [hmrHybridCount,s2Step218Add1_card]
    decide +kernel
  have nd : s2Step218Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step218Add1Arena s2Step218Add1During s2Step218Add1Work.toFinset s2Step218Add1_bounded s2Step218Add1_apart rfl

private theorem s2Step218Add1_distinct : (814::778::882::(s2Step218Add1A++s2Step218Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218Add1_owned : (814::778::882::(s2Step218Add1A++s2Step218Add1B)).toFinset⊆s2Step218Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step218Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218Add1_checked : compileHmrHybridCinLog s2Step218Add1Arena 778 814 882 s2Step218Add1A s2Step218Add1B s2Step218Add1Work=some s2Step218Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step218Add1Arena s2Step218Add1During 778 814 882 s2Step218Add1A s2Step218Add1B s2Step218Add1Work
    (by decide +kernel) (by decide +kernel) s2Step218Add1_distinct
    (fun q hq => s2Step218Add1_owned (List.mem_toFinset.mpr hq)) s2Step218Add1_borrowed

private theorem s2Step218F4_apart : Disjoint (s2Step218Add0A++s2Step218Add0B).toFinset (s2Step218Add1A++s2Step218Add1B).toFinset := by
  have nd : ((s2Step218Add0A++s2Step218Add0B)++(s2Step218Add1A++s2Step218Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step218F4_carry : s2Step218F4FlagArena.checkBorrow 1 [882]=some s2Step218Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step218F4FlagArena,s2Step218HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step218F4FlagArena,s2Step218HeadFvAfter,s2Step218Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step218F4_distinct : (790::778::814::882::((s2Step218Add0A++s2Step218Add1A)++(s2Step218Add0B++s2Step218Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218F4_flag : s2Step218HeadFvAfter.checkBorrow 1 [814]=some s2Step218F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step218HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step218F4_owned : (790::778::((s2Step218Add0A++s2Step218Add1A)++(s2Step218Add0B++s2Step218Add1B))).toFinset⊆s2Step218HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step218HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218F4_checked : compileHmrHybridF4Log s2Step218HeadFvAfter 790 778 s2Step218Add0A s2Step218Add0B s2Step218Add1A s2Step218Add1B [814] [882] s2Step218Add0Work s2Step218Add1Work=some s2Step218F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step218HeadFvAfter s2Step218F4FlagArena s2Step218Add0Arena s2Step218Add0During s2Step218Add1During 790 778
    s2Step218Add0A s2Step218Add0B s2Step218Add1A s2Step218Add1B [814] [882] s2Step218Add0Work s2Step218Add1Work
    (fun q hq => s2Step218F4_owned (List.mem_toFinset.mpr hq)) s2Step218F4_flag s2Step218F4_carry
    s2Step218F4_distinct s2Step218F4_apart s2Step218Add0_checked s2Step218Add1_checked

private theorem s2Step218Front_branch : s2Step218FrontSigmaArena.checkBorrow 1 [778]=some s2Step218HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step218FrontSigmaArena,s2Step218EntryGvAfter,s2Step218EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step218FrontSigmaArena,s2Step218EntryGvAfter,s2Step218EntryFAfter,s2Step218HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step218Front_entry : HmrFrontEntryValid s2Step218EntryFBefore s2Step218FrontBank 162 123 ⟨161,161,124,123⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step218FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step218EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step218EntryFBefore (fun q => (0≤q ∧ q<778) ∨ (779≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step218FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step218Front_sigma : s2Step218EntryGvAfter.checkBorrow 1 [790]=some s2Step218FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step218EntryGvAfter,s2Step218EntryFAfter,arenaWires]
  · rfl

private def s2Step218HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218HeadFBefore : Arena := s2Step218HeadGAfter

private def s2Step218HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 783],768⟩

private def s2Step218HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩

private def s2Step218HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796],769⟩

private def s2Step218HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839],771⟩

private theorem s2Step218HeadBank_incomingDistinct : ([s2Step218HeadGRow,s2Step218HeadFRow,s2Step218HeadGvRow,s2Step218HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218HeadF_Incoming : rowsOwned s2Step218HeadFBefore [s2Step218HeadFRow,s2Step218HeadGvRow,s2Step218HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step218HeadGRow,s2Step218HeadFRow,s2Step218HeadGvRow,s2Step218HeadFvRow] 1 s2Step218HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step218HeadFBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218HeadBank_outgoingOwned : rowsOwned s2Step218HeadFvAfter [s2Step218HeadGOut,s2Step218HeadFOut,s2Step218HeadGvOut,s2Step218HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step218HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218HeadF_Outgoing : rowsOwned s2Step218HeadFvAfter [s2Step218HeadFOut,s2Step218HeadGvOut,s2Step218HeadFvOut] :=
  hmrRows_owned_drop s2Step218HeadFvAfter [s2Step218HeadGOut,s2Step218HeadFOut,s2Step218HeadGvOut,s2Step218HeadFvOut] 1 s2Step218HeadBank_outgoingOwned

private theorem s2Step218HeadF_distinct : (s2Step218HeadFRow.sign::s2Step218HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218HeadF_owned : (s2Step218HeadFRow.sign::s2Step218HeadFRow.payload).toFinset⊆s2Step218HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step218HeadFBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218HeadF_reserved : s2Step218HeadFBefore.reserve s2Step218HeadFFresh.toFinset=some s2Step218HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step218HeadFFresh,arenaWires]
  · norm_num [s2Step218HeadFBefore,s2Step218HeadGAfter,s2Step218HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step218HeadFAfter,s2Step218HeadFBefore,s2Step218HeadGAfter,s2Step218HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step218HeadF_checked : planRowResizeLog s2Step218HeadFBefore s2Step218HeadFRow 163 s2Step218HeadFFresh=
    some (s2Step218HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 783, 801],768⟩,growRow 768 s2Step218HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step218HeadFBefore s2Step218HeadFAfter s2Step218HeadFRow 163 s2Step218HeadFFresh
    s2Step218HeadF_distinct s2Step218HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step218HeadF_reserved
  have rowEq : WindowRow.mk (s2Step218HeadFRow.payload++s2Step218HeadFFresh) s2Step218HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 783, 801],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step218HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step218HeadFvBefore : Arena := s2Step218HeadGvAfter

private theorem s2Step218HeadFv_Incoming : rowsOwned s2Step218HeadFvBefore [s2Step218HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step218HeadGRow,s2Step218HeadFRow,s2Step218HeadGvRow,s2Step218HeadFvRow] 3 s2Step218HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step218HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218HeadFv_Outgoing : rowsOwned s2Step218HeadFvAfter [s2Step218HeadFvOut] :=
  hmrRows_owned_drop s2Step218HeadFvAfter [s2Step218HeadGOut,s2Step218HeadFOut,s2Step218HeadGvOut,s2Step218HeadFvOut] 3 s2Step218HeadBank_outgoingOwned

private theorem s2Step218HeadFv_distinct : (s2Step218HeadFvRow.sign::s2Step218HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218HeadFv_owned : (s2Step218HeadFvRow.sign::s2Step218HeadFvRow.payload).toFinset⊆s2Step218HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step218HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218HeadFv_reserved : s2Step218HeadFvBefore.reserve s2Step218HeadFvFresh.toFinset=some s2Step218HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step218HeadFvFresh,arenaWires]
  · norm_num [s2Step218HeadFvBefore,s2Step218HeadGvAfter,s2Step218HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step218HeadFvAfter,s2Step218HeadFvBefore,s2Step218HeadGvAfter,s2Step218HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step218HeadFv_checked : planRowResizeLog s2Step218HeadFvBefore s2Step218HeadFvRow 124 s2Step218HeadFvFresh=
    some (s2Step218HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩,growRow 770 s2Step218HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step218HeadFvBefore s2Step218HeadFvAfter s2Step218HeadFvRow 124 s2Step218HeadFvFresh
    s2Step218HeadFv_distinct s2Step218HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step218HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step218HeadFvRow.payload++s2Step218HeadFvFresh) s2Step218HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step218HeadG_Incoming : rowsOwned s2Step218HeadGBefore [s2Step218HeadGRow,s2Step218HeadFRow,s2Step218HeadGvRow,s2Step218HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step218HeadGRow,s2Step218HeadFRow,s2Step218HeadGvRow,s2Step218HeadFvRow] 0 s2Step218HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step218HeadGBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218HeadG_Outgoing : rowsOwned s2Step218HeadFvAfter [s2Step218HeadGOut,s2Step218HeadFOut,s2Step218HeadGvOut,s2Step218HeadFvOut] :=
  hmrRows_owned_drop s2Step218HeadFvAfter [s2Step218HeadGOut,s2Step218HeadFOut,s2Step218HeadGvOut,s2Step218HeadFvOut] 0 s2Step218HeadBank_outgoingOwned

private theorem s2Step218HeadG_distinct : (s2Step218HeadGRow.sign::s2Step218HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218HeadG_owned : (s2Step218HeadGRow.sign::s2Step218HeadGRow.payload).toFinset⊆s2Step218HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step218HeadGBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218HeadG_reserved : s2Step218HeadGBefore.reserve s2Step218HeadGFresh.toFinset=some s2Step218HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step218HeadGFresh,arenaWires]
  · norm_num [s2Step218HeadGBefore,s2Step218HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step218HeadGAfter,s2Step218HeadGBefore,s2Step218HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step218HeadG_checked : planRowResizeLog s2Step218HeadGBefore s2Step218HeadGRow 163 s2Step218HeadGFresh=
    some (s2Step218HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796, 845],769⟩,growRow 769 s2Step218HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step218HeadGBefore s2Step218HeadGAfter s2Step218HeadGRow 163 s2Step218HeadGFresh
    s2Step218HeadG_distinct s2Step218HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step218HeadG_reserved
  have rowEq : WindowRow.mk (s2Step218HeadGRow.payload++s2Step218HeadGFresh) s2Step218HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 796, 845],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step218HeadGvBefore : Arena := s2Step218HeadFAfter

private theorem s2Step218HeadGv_Incoming : rowsOwned s2Step218HeadGvBefore [s2Step218HeadGvRow,s2Step218HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step218HeadGRow,s2Step218HeadFRow,s2Step218HeadGvRow,s2Step218HeadFvRow] 2 s2Step218HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step218HeadGvBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step218HeadGv_Outgoing : rowsOwned s2Step218HeadFvAfter [s2Step218HeadGvOut,s2Step218HeadFvOut] :=
  hmrRows_owned_drop s2Step218HeadFvAfter [s2Step218HeadGOut,s2Step218HeadFOut,s2Step218HeadGvOut,s2Step218HeadFvOut] 2 s2Step218HeadBank_outgoingOwned

private theorem s2Step218HeadGv_distinct : (s2Step218HeadGvRow.sign::s2Step218HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step218HeadGv_owned : (s2Step218HeadGvRow.sign::s2Step218HeadGvRow.payload).toFinset⊆s2Step218HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step218HeadGvBefore (fun q => (0≤q ∧ q<798) ∨ (799≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step218HeadGv_reserved : s2Step218HeadGvBefore.reserve s2Step218HeadGvFresh.toFinset=some s2Step218HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step218HeadGvFresh,arenaWires]
  · norm_num [s2Step218HeadGvBefore,s2Step218HeadFAfter,s2Step218HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step218HeadGvAfter,s2Step218HeadGvBefore,s2Step218HeadFAfter,s2Step218HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step218HeadGv_checked : planRowResizeLog s2Step218HeadGvBefore s2Step218HeadGvRow 124 s2Step218HeadGvFresh=
    some (s2Step218HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 798],771⟩,growRow 771 s2Step218HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step218HeadGvBefore s2Step218HeadGvAfter s2Step218HeadGvRow 124 s2Step218HeadGvFresh
    s2Step218HeadGv_distinct s2Step218HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step218HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step218HeadGvRow.payload++s2Step218HeadGvFresh) s2Step218HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 798],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step218HeadBank_rows : planWindowRowsLog s2Step218HeadGBefore [(s2Step218HeadGRow,163),(s2Step218HeadFRow,163),(s2Step218HeadGvRow,124),(s2Step218HeadFvRow,124)] [s2Step218HeadGFresh,s2Step218HeadFFresh,s2Step218HeadGvFresh,s2Step218HeadFvFresh]=
    some (s2Step218HeadFvAfter,[s2Step218HeadGOut,s2Step218HeadFOut,s2Step218HeadGvOut,s2Step218HeadFvOut],(growRow 769 s2Step218HeadGFresh ++ (growRow 768 s2Step218HeadFFresh ++ (growRow 771 s2Step218HeadGvFresh ++ (growRow 770 s2Step218HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step218HeadFvAfter [] []=some (s2Step218HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step218HeadFvBefore s2Step218HeadFvAfter s2Step218HeadFvAfter
    s2Step218HeadFvRow s2Step218HeadFvOut 124 s2Step218HeadFvFresh [] [] []
    (growRow 770 s2Step218HeadFvFresh) ([]) s2Step218HeadFv_Incoming s2Step218HeadFv_checked h4 s2Step218HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step218HeadGvBefore s2Step218HeadGvAfter s2Step218HeadFvAfter
    s2Step218HeadGvRow s2Step218HeadGvOut 124 s2Step218HeadGvFresh [(s2Step218HeadFvRow,124)] [s2Step218HeadFvFresh] [s2Step218HeadFvOut]
    (growRow 771 s2Step218HeadGvFresh) ((growRow 770 s2Step218HeadFvFresh ++ [])) s2Step218HeadGv_Incoming s2Step218HeadGv_checked h3 s2Step218HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step218HeadFBefore s2Step218HeadFAfter s2Step218HeadFvAfter
    s2Step218HeadFRow s2Step218HeadFOut 163 s2Step218HeadFFresh [(s2Step218HeadGvRow,124),(s2Step218HeadFvRow,124)] [s2Step218HeadGvFresh,s2Step218HeadFvFresh] [s2Step218HeadGvOut,s2Step218HeadFvOut]
    (growRow 768 s2Step218HeadFFresh) ((growRow 771 s2Step218HeadGvFresh ++ (growRow 770 s2Step218HeadFvFresh ++ []))) s2Step218HeadF_Incoming s2Step218HeadF_checked h2 s2Step218HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step218HeadGBefore s2Step218HeadGAfter s2Step218HeadFvAfter
    s2Step218HeadGRow s2Step218HeadGOut 163 s2Step218HeadGFresh [(s2Step218HeadFRow,163),(s2Step218HeadGvRow,124),(s2Step218HeadFvRow,124)] [s2Step218HeadFFresh,s2Step218HeadGvFresh,s2Step218HeadFvFresh] [s2Step218HeadFOut,s2Step218HeadGvOut,s2Step218HeadFvOut]
    (growRow 769 s2Step218HeadGFresh) ((growRow 768 s2Step218HeadFFresh ++ (growRow 771 s2Step218HeadGvFresh ++ (growRow 770 s2Step218HeadFvFresh ++ [])))) s2Step218HeadG_Incoming s2Step218HeadG_checked h1 s2Step218HeadG_Outgoing
  exact h0

private theorem s2Step218HeadBank_checked : compileHmrBankResizeLog .headroom s2Step218HeadGBefore ⟨s2Step218HeadFRow,s2Step218HeadGRow,s2Step218HeadFvRow,s2Step218HeadGvRow⟩ ⟨163,163,124,124⟩ [s2Step218HeadGFresh,s2Step218HeadFFresh,s2Step218HeadGvFresh,s2Step218HeadFvFresh]=
    some (s2Step218HeadFvAfter,⟨s2Step218HeadFOut,s2Step218HeadGOut,s2Step218HeadFvOut,s2Step218HeadGvOut⟩,(growRow 769 s2Step218HeadGFresh ++ (growRow 768 s2Step218HeadFFresh ++ (growRow 771 s2Step218HeadGvFresh ++ (growRow 770 s2Step218HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step218HeadBank_rows]
  rfl

private theorem s2Step218Front_checked : compileHmrSourceFrontLog s2Step218EntryFBefore s2Step218FrontBank 162 123 ⟨161,161,124,123⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step218FrontLog=some s2Step218FrontPlan := by
  have pairEq : s2Step218FrontPair=⟨s2Step218HeadFRow,s2Step218HeadGRow,s2Step218HeadFvRow,s2Step218HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step218FrontHead=⟨s2Step218ExitFRow,s2Step218ExitGRow,s2Step218ExitFvRow,s2Step218ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step218Add0A=s2Step218FrontHead.f.wires := by decide +kernel
  have gEq : s2Step218Add0B=s2Step218FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step218Add1A=s2Step218FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step218Add1B=s2Step218FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step218EntryFBefore s2Step218FrontBank 162 123 ⟨161,161,124,123⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step218FrontLog s2Step218FrontPlan
  · exact s2Step218Front_entry
  · exact s2Step218EntryBank_checked
  · exact s2Step218Front_sigma
  · rfl
  · exact s2Step218Front_branch
  · rfl
  · simpa only [s2Step218FrontPlan,pairEq] using s2Step218HeadBank_checked
  · simpa only [s2Step218FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step218F4_checked
  · exact s2Step218Counter_checked
  · rfl
  · simpa only [s2Step218FrontPlan,headEq] using s2Step218ExitBank_checked

private theorem s2Step218Complete_explicit_checked : compileHmrEarlyStepLog s2Step218EntryFBefore s2Step218FrontBank 162 123 ⟨161,161,124,123⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step218CompleteLog=some s2Step218CompletePlan := by
  let Q := s2Step218EarlyControlPlan
  have hq := s2Step218EarlyControl_plan_checked
  have fv1 : s2Step218CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step218CompleteOut.fv.payload[2]?.getD s2Step218CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step218CompleteOut.fv.payload[3]?.getD s2Step218CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step218CompleteOut.fv.payload[4]?.getD s2Step218CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step218EntryFBefore s2Step218EarlyControlArena s2Step218FrontBank 162 123 ⟨161,161,124,123⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step218CompleteLog s2Step218FrontPlan Q
    s2Step218Front_checked s2Step218Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step218Complete_owned s2Step218Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step218EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 790 s2Step218CompleteOut.fv.second (s2Step218CompleteOut.fv.payload[2]?.getD s2Step218CompleteOut.fv.sign) (s2Step218CompleteOut.fv.payload[3]?.getD s2Step218CompleteOut.fv.sign) (s2Step218CompleteOut.fv.payload[4]?.getD s2Step218CompleteOut.fv.sign) 778 47 s2Step218EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep218Arena : Arena := s2Step218EntryFBefore
def s2PrivateStep218Bank : WindowBank := s2Step218FrontBank
def s2PrivateStep218Spec : HmrSourceWalkStepLog := ⟨162,123,⟨161,161,124,123⟩,47,.early s2Step218CompleteLog⟩
def s2PrivateStep218Plan : HmrSourceStepPlan := .early s2Step218CompletePlan
theorem s2PrivateStep218_source : s2PrivateStep218Spec=s2ObservedLogs208[10] := rfl
theorem s2PrivateStep218_checked : compileHmrSourceStepLog s2PrivateStep218Arena s2PrivateStep218Bank
    s2PrivateStep218Spec.fgWidth s2PrivateStep218Spec.vWidth s2PrivateStep218Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 218 s2PrivateStep218Spec.need none s2PrivateStep218Spec.log=some s2PrivateStep218Plan := by
  change compileHmrSourceStepLog s2Step218EntryFBefore s2Step218FrontBank 162 123 ⟨161,161,124,123⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 218 47 none (.early s2Step218CompleteLog)=some (.early s2Step218CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 218<498)]
  rw [s2Step218Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
