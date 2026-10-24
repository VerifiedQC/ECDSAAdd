import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep214
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

private def s2Step216CompleteMoves : List (Wire × Wire) := [(790,161)]

private def s2Step216EarlyControlLog : HmrEarlyControlLog := ⟨[790, 783, 815, 798, 845],[801],[814],[882, 826, 842, 885, 891, 894],[]⟩

private def s2Step216FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[798], [815], [783], [789]],[[], [], [], []]⟩,[839],[796],[845],[801],[814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[845, 801, 814, 882]⟩

private def s2Step216CompleteLog : HmrEarlyStepLog := ⟨s2Step216FrontLog,s2Step216CompleteMoves,s2Step216EarlyControlLog⟩

private def s2Step216ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673],768⟩

private def s2Step216ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩

private def s2Step216ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160],769⟩

private def s2Step216ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851],771⟩

private def s2Step216FrontOut : WindowBank := ⟨s2Step216ExitFOut,s2Step216ExitGOut,s2Step216ExitFvOut,s2Step216ExitGvOut⟩

private def s2Step216CompleteOut : WindowBank := s2Step216FrontOut.repacked s2Step216CompleteMoves

private def s2Step216EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step216EarlyControlPositiveArena,[801],s2Step216EarlyControlEqualityArena,[814],⟨⟨839,false⟩,[⟨⟨801,false⟩,814⟩]⟩⟩

private def s2Step216EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,790⟩,⟨⟨774,false⟩,783⟩,⟨⟨775,false⟩,815⟩,⟨⟨776,false⟩,798⟩,⟨⟨777,false⟩,845⟩]⟩

private def s2Step216EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step216EarlyControlZeroArena,s2Step216EarlyControlZeroPlan,s2Step216EarlyControlClassPlan,s2Step216EarlyControlFlagArena,s2Step216EarlyControlFittedArena,s2Step216EarlyControlHistoryArena,s2Step216EarlyControlSigmaArena,s2Step216EarlyControlOutputArena,s2Step216EarlyControlLog⟩

private def s2Step216CounterWork : List Wire := [845, 801, 814, 882]

private theorem s2Step216Counter_bounded : s2Step216CounterWork.toFinset⊆arenaWires := by norm_num [s2Step216CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step216HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216CounterDuring : Arena := ⟨s2Step216HeadFvAfter.live∪s2Step216CounterWork.toFinset,Finset.union_subset s2Step216HeadFvAfter.bounded s2Step216Counter_bounded⟩

private def s2Step216EntryFFresh : List Wire := []

private def s2Step216EntryFvFresh : List Wire := []

private def s2Step216EntryGFresh : List Wire := []

private def s2Step216EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216EntryGvAfter : Arena := s2Step216EntryFBefore

private def s2Step216EntryGvFresh : List Wire := []

private def s2Step216ExitFExtra : List Wire := [815]

private def s2Step216ExitGExtra : List Wire := [161, 798]

private def s2Step216ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<161) ∨ (162≤q ∧ q<783) ∨ (784≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216ExitGvExtra : List Wire := [783]

private def s2Step216Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216Add0Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step216Add0_bounded : s2Step216Add0Work.toFinset⊆arenaWires := by
  have h : s2Step216Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step216Add0During : Arena := ⟨s2Step216Add0Arena.live∪s2Step216Add0Work.toFinset,Finset.union_subset s2Step216Add0Arena.bounded s2Step216Add0_bounded⟩

private def s2Step216Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216Add1Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step216Add1_bounded : s2Step216Add1Work.toFinset⊆arenaWires := by
  have h : s2Step216Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step216Add1During : Arena := ⟨s2Step216Add1Arena.live∪s2Step216Add1Work.toFinset,Finset.union_subset s2Step216Add1Arena.bounded s2Step216Add1_bounded⟩

private def s2Step216F4FlagArena : Arena := ⟨s2Step216HeadFvAfter.live∪{845},Finset.union_subset s2Step216HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step216F4Plan : HmrHybridF4Plan := ⟨s2Step216F4FlagArena,[845],s2Step216Add0Arena,[801],s2Step216Add0During,s2Step216Add0Work,s2Step216Add1During,s2Step216Add1Work⟩

private def s2Step216HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 815],768⟩

private def s2Step216HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩

private def s2Step216HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 798],769⟩

private def s2Step216HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 783],771⟩

private def s2Step216FrontHead : WindowBank := ⟨s2Step216HeadFOut,s2Step216HeadGOut,s2Step216HeadFvOut,s2Step216HeadGvOut⟩

private def s2Step216EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673],768⟩

private def s2Step216EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩

private def s2Step216EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],769⟩

private def s2Step216EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851],771⟩

private def s2Step216FrontPair : WindowBank := ⟨s2Step216EntryFOut,s2Step216EntryGOut,s2Step216EntryFvOut,s2Step216EntryGvOut⟩

private def s2Step216FrontSigmaArena : Arena := ⟨s2Step216EntryGvAfter.live∪{839},Finset.union_subset s2Step216EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step216HeadFFresh : List Wire := [815]

private def s2Step216HeadFvFresh : List Wire := [789]

private def s2Step216HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216HeadGFresh : List Wire := [798]

private def s2Step216HeadGvFresh : List Wire := [783]

private def s2Step216FrontPlan : HmrSourceFront := ⟨s2Step216EntryGvAfter,s2Step216FrontPair,(growRow 768 s2Step216EntryFFresh ++ (growRow 769 s2Step216EntryGFresh ++ (growRow 770 s2Step216EntryFvFresh ++ (growRow 771 s2Step216EntryGvFresh ++ [])))),s2Step216FrontSigmaArena,[839],s2Step216HeadGBefore,[796],
  s2Step216HeadFvAfter,s2Step216FrontHead,(growRow 769 s2Step216HeadGFresh ++ (growRow 768 s2Step216HeadFFresh ++ (growRow 771 s2Step216HeadGvFresh ++ (growRow 770 s2Step216HeadFvFresh ++ [])))),s2Step216F4Plan,s2Step216CounterDuring,s2Step216CounterWork,s2Step216ExitGvAfter,s2Step216FrontOut,(shrinkRow 769 s2Step216ExitGExtra ++ (shrinkRow 768 s2Step216ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step216ExitGvExtra ++ []))))⟩

private def s2Step216CompletePlan : HmrEarlyStepPlan := ⟨s2Step216FrontPlan,s2Step216EarlyControlArena,s2Step216EarlyControlPlan,s2Step216CompleteMoves⟩

private theorem s2Step216Complete_apart : List.Disjoint (s2Step216CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [839, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step216CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[839, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step216Complete_owned : (s2Step216CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step216EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step216EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step216CompleteMoveArena : Arena := ⟨s2Step216ExitGvAfter.live∪{161},Finset.union_subset s2Step216ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step216Complete_repack : s2Step216ExitGvAfter.checkRepack s2Step216CompleteMoves=some s2Step216EarlyControlArena := by
  have owned : 790∈s2Step216ExitGvAfter.live := by norm_num [s2Step216ExitGvAfter,arenaWires]
  have reserve : s2Step216ExitGvAfter.reserve {161}=some s2Step216CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step216ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step216CompleteMoveArena.retireSet {790}=s2Step216EarlyControlArena := by
    unfold Arena.retireSet s2Step216EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step216CompleteMoveArena,s2Step216ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step216CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step216CompleteMoveArena.retireSet {790}).checkRepack []=some s2Step216EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step216EarlyControl_branchOwned : ([796] : List Wire).toFinset⊆s2Step216EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step216EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EarlyControl_branch : compileHmrBranchRetirement s2Step216EarlyControlSigmaArena 796=some s2Step216EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step216EarlyControl_branchOwned
  · ext q
    simp [s2Step216EarlyControlOutputArena,s2Step216EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step216EarlyControl_classEqualityBorrow : s2Step216EarlyControlPositiveArena.checkBorrow (([839, 801] : List Wire).length-1) s2Step216EarlyControlLog.classWork=some s2Step216EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step216EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step216EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step216EarlyControlEqualityArena,s2Step216EarlyControlPositiveArena,s2Step216EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step216EarlyControl_classEqualityOwned : ([839, 801] : List Wire).toFinset⊆s2Step216EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step216EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EarlyControl_classEquality : compileHmrEqualityLog s2Step216EarlyControlPositiveArena [839, 801] 0 s2Step216EarlyControlLog.classWork=some (s2Step216EarlyControlEqualityArena,s2Step216EarlyControlLog.classWork,s2Step216EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step216EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step216EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step216EarlyControl_classOwned : ([777, 845, 839] : List Wire).toFinset⊆s2Step216EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step216EarlyControlZeroArena (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EarlyControl_positiveBorrow : s2Step216EarlyControlZeroArena.checkBorrow (1) s2Step216EarlyControlLog.positiveWork=some s2Step216EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step216EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step216EarlyControlZeroArena (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step216EarlyControlPositiveArena,s2Step216EarlyControlZeroArena,s2Step216EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step216EarlyControl_class : compileHmrSourceClassLog s2Step216EarlyControlZeroArena false 777 s2Step216EarlyControlZeroPlan.top 0 839 s2Step216EarlyControlLog.positiveWork s2Step216EarlyControlLog.classWork=some s2Step216EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step216EarlyControlClassPlan s2Step216EarlyControlZeroArena false 777 s2Step216EarlyControlZeroPlan.top 0 839
  constructor
  · decide +kernel
  · exact s2Step216EarlyControl_classOwned
  · exact s2Step216EarlyControl_positiveBorrow
  · exact s2Step216EarlyControl_classEquality

private theorem s2Step216EarlyControl_entryRecordOwned : ([796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step216EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step216EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EarlyControl_entrySigmaOwned : ([839, 254] : List Wire).toFinset⊆s2Step216EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step216EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EarlyControl_fitBorrow : s2Step216EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step216EarlyControlLog.recordFresh=some s2Step216EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step216EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step216EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step216EarlyControlFittedArena,s2Step216EarlyControlFlagArena,s2Step216EarlyControlLog,arenaWires]

private theorem s2Step216EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step216EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step216EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EarlyControl_fit : compileHmrRecordGrowLog s2Step216EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step216EarlyControlLog.recordFresh=some s2Step216EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step216EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step216EarlyControl_fitBorrow

private theorem s2Step216EarlyControl_flagsBorrow : s2Step216EarlyControlEqualityArena.checkBorrow (6) s2Step216EarlyControlLog.flagWork=some s2Step216EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step216EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step216EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step216EarlyControlFlagArena,s2Step216EarlyControlEqualityArena,s2Step216EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step216EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step216EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step216EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EarlyControl_flags : compileHmrFlagsLog s2Step216EarlyControlClassPlan.equalityArena s2Step216EarlyControlClassPlan.equality.top 253 252 251 s2Step216EarlyControlLog.flagWork=some s2Step216EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step216EarlyControl_flagsOwned⟩
  · exact s2Step216EarlyControl_flagsBorrow

private theorem s2Step216EarlyControl_historyBorrow : s2Step216EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step216EarlyControlLog.recordFresh=some s2Step216EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step216EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step216EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step216EarlyControlHistoryArena,s2Step216EarlyControlArena,s2Step216EarlyControlLog,arenaWires]

private theorem s2Step216EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step216EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step216EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EarlyControl_history : compileHmrRecordGrowLog s2Step216EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step216EarlyControlLog.recordFresh=some s2Step216EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step216EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step216EarlyControl_historyBorrow

private theorem s2Step216EarlyControl_sigmaOwned : ([254, 839] : List Wire).toFinset⊆s2Step216EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step216EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EarlyControl_sigmaReleaseOwned : ([839] : List Wire).toFinset⊆s2Step216EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step216EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EarlyControl_sigmaRelease : s2Step216EarlyControlHistoryArena.release {839} (fun _ => false)=some s2Step216EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step216EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step216EarlyControlSigmaArena,s2Step216EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step216EarlyControl_sigma : compileHmrSigmaDropLog s2Step216EarlyControlHistoryArena false 0 0 254 839 []=some s2Step216EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step216EarlyControl_sigmaOwned⟩
  · exact s2Step216EarlyControl_sigmaRelease

private theorem s2Step216EarlyControl_zeroBorrow : s2Step216EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step216EarlyControlLog.zeroWork=some s2Step216EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step216EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step216EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step216EarlyControlZeroArena,s2Step216EarlyControlArena,s2Step216EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step216EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step216EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step216EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EarlyControl_zero : compileHmrEqualityLog s2Step216EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step216EarlyControlLog.zeroWork=some (s2Step216EarlyControlZeroArena,s2Step216EarlyControlLog.zeroWork,s2Step216EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step216EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step216EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step216EarlyControl_logged : s2Step216EarlyControlPlan.Logged s2Step216EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 839 254 253 252 251 796 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step216EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step216EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step216EarlyControl_zero
  · exact s2Step216EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step216EarlyControl_flags
  · exact s2Step216EarlyControl_fit
  · exact s2Step216EarlyControl_history
  · exact s2Step216EarlyControl_sigma
  · exact s2Step216EarlyControl_branch

private theorem s2Step216EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step216EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 839 254 253 252 251 796 47 s2Step216EarlyControlLog=some s2Step216EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step216EarlyControlPlan s2Step216EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 839 254 253 252 251 796 47 s2Step216EarlyControl_logged

private def s2Step216EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673],768⟩

private def s2Step216EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩

private def s2Step216EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],769⟩

private def s2Step216EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851],771⟩

private def s2Step216FrontBank : WindowBank := ⟨s2Step216EntryFRow,s2Step216EntryGRow,s2Step216EntryFvRow,s2Step216EntryGvRow⟩

private def s2Step216Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 815, 768]

private def s2Step216Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 798, 769]

private def s2Step216Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 770]

private def s2Step216Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 783, 771]

private theorem s2Step216Counter_apart : Disjoint s2Step216HeadFvAfter.live s2Step216CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step216HeadFvAfter (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216Counter_borrowed : s2Step216HeadFvAfter.checkBorrow 4 s2Step216CounterWork=some s2Step216CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step216HeadFvAfter s2Step216CounterDuring s2Step216CounterWork.toFinset s2Step216Counter_bounded s2Step216Counter_apart rfl

private theorem s2Step216Counter_owned : (839::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step216HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step216HeadFvAfter (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216Counter_checked : compileHmrCounterStepLog s2Step216HeadFvAfter true 839 [772, 773, 774, 775, 776, 777] s2Step216CounterWork=some s2Step216CounterDuring := by
  have owned : ∀q∈839::[772, 773, 774, 775, 776, 777],q∈s2Step216HeadFvAfter.live := fun q hq => s2Step216Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step216Counter_borrowed

private def s2Step216EntryFAfter : Arena := s2Step216EntryFBefore

private theorem s2Step216EntryBank_incomingDistinct : ([s2Step216EntryFRow,s2Step216EntryGRow,s2Step216EntryFvRow,s2Step216EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216EntryF_Incoming : rowsOwned s2Step216EntryFBefore [s2Step216EntryFRow,s2Step216EntryGRow,s2Step216EntryFvRow,s2Step216EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step216EntryFRow,s2Step216EntryGRow,s2Step216EntryFvRow,s2Step216EntryGvRow] 0 s2Step216EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step216EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216EntryBank_outgoingOwned : rowsOwned s2Step216EntryGvAfter [s2Step216EntryFOut,s2Step216EntryGOut,s2Step216EntryFvOut,s2Step216EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step216EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216EntryF_Outgoing : rowsOwned s2Step216EntryGvAfter [s2Step216EntryFOut,s2Step216EntryGOut,s2Step216EntryFvOut,s2Step216EntryGvOut] :=
  hmrRows_owned_drop s2Step216EntryGvAfter [s2Step216EntryFOut,s2Step216EntryGOut,s2Step216EntryFvOut,s2Step216EntryGvOut] 0 s2Step216EntryBank_outgoingOwned

private theorem s2Step216EntryF_distinct : (s2Step216EntryFRow.sign::s2Step216EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216EntryF_owned : (s2Step216EntryFRow.sign::s2Step216EntryFRow.payload).toFinset⊆s2Step216EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step216EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EntryF_reserved : s2Step216EntryFBefore.reserve s2Step216EntryFFresh.toFinset=some s2Step216EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step216EntryFFresh,arenaWires]
  · norm_num [s2Step216EntryFBefore,s2Step216EntryFFresh,arenaWires]
  · simp only [s2Step216EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step216EntryF_checked : planRowResizeLog s2Step216EntryFBefore s2Step216EntryFRow 162 s2Step216EntryFFresh=
    some (s2Step216EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673],768⟩,growRow 768 s2Step216EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step216EntryFBefore s2Step216EntryFAfter s2Step216EntryFRow 162 s2Step216EntryFFresh
    s2Step216EntryF_distinct s2Step216EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step216EntryF_reserved
  have rowEq : WindowRow.mk (s2Step216EntryFRow.payload++s2Step216EntryFFresh) s2Step216EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step216EntryFvAfter : Arena := s2Step216EntryFBefore

private def s2Step216EntryFvBefore : Arena := s2Step216EntryFBefore

private theorem s2Step216EntryFv_Incoming : rowsOwned s2Step216EntryFvBefore [s2Step216EntryFvRow,s2Step216EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step216EntryFRow,s2Step216EntryGRow,s2Step216EntryFvRow,s2Step216EntryGvRow] 2 s2Step216EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step216EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216EntryFv_Outgoing : rowsOwned s2Step216EntryGvAfter [s2Step216EntryFvOut,s2Step216EntryGvOut] :=
  hmrRows_owned_drop s2Step216EntryGvAfter [s2Step216EntryFOut,s2Step216EntryGOut,s2Step216EntryFvOut,s2Step216EntryGvOut] 2 s2Step216EntryBank_outgoingOwned

private theorem s2Step216EntryFv_distinct : (s2Step216EntryFvRow.sign::s2Step216EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216EntryFv_owned : (s2Step216EntryFvRow.sign::s2Step216EntryFvRow.payload).toFinset⊆s2Step216EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step216EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EntryFv_reserved : s2Step216EntryFvBefore.reserve s2Step216EntryFvFresh.toFinset=some s2Step216EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step216EntryFvFresh,arenaWires]
  · norm_num [s2Step216EntryFvBefore,s2Step216EntryFBefore,s2Step216EntryFvFresh,arenaWires]
  · simp only [s2Step216EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step216EntryFv_checked : planRowResizeLog s2Step216EntryFvBefore s2Step216EntryFvRow 122 s2Step216EntryFvFresh=
    some (s2Step216EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩,growRow 770 s2Step216EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step216EntryFvBefore s2Step216EntryFvAfter s2Step216EntryFvRow 122 s2Step216EntryFvFresh
    s2Step216EntryFv_distinct s2Step216EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step216EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step216EntryFvRow.payload++s2Step216EntryFvFresh) s2Step216EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step216EntryGAfter : Arena := s2Step216EntryFBefore

private def s2Step216EntryGBefore : Arena := s2Step216EntryFBefore

private theorem s2Step216EntryG_Incoming : rowsOwned s2Step216EntryGBefore [s2Step216EntryGRow,s2Step216EntryFvRow,s2Step216EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step216EntryFRow,s2Step216EntryGRow,s2Step216EntryFvRow,s2Step216EntryGvRow] 1 s2Step216EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step216EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216EntryG_Outgoing : rowsOwned s2Step216EntryGvAfter [s2Step216EntryGOut,s2Step216EntryFvOut,s2Step216EntryGvOut] :=
  hmrRows_owned_drop s2Step216EntryGvAfter [s2Step216EntryFOut,s2Step216EntryGOut,s2Step216EntryFvOut,s2Step216EntryGvOut] 1 s2Step216EntryBank_outgoingOwned

private theorem s2Step216EntryG_distinct : (s2Step216EntryGRow.sign::s2Step216EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216EntryG_owned : (s2Step216EntryGRow.sign::s2Step216EntryGRow.payload).toFinset⊆s2Step216EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step216EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EntryG_reserved : s2Step216EntryGBefore.reserve s2Step216EntryGFresh.toFinset=some s2Step216EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step216EntryGFresh,arenaWires]
  · norm_num [s2Step216EntryGBefore,s2Step216EntryFBefore,s2Step216EntryGFresh,arenaWires]
  · simp only [s2Step216EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step216EntryG_checked : planRowResizeLog s2Step216EntryGBefore s2Step216EntryGRow 162 s2Step216EntryGFresh=
    some (s2Step216EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],769⟩,growRow 769 s2Step216EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step216EntryGBefore s2Step216EntryGAfter s2Step216EntryGRow 162 s2Step216EntryGFresh
    s2Step216EntryG_distinct s2Step216EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step216EntryG_reserved
  have rowEq : WindowRow.mk (s2Step216EntryGRow.payload++s2Step216EntryGFresh) s2Step216EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step216EntryGvBefore : Arena := s2Step216EntryFBefore

private theorem s2Step216EntryGv_Incoming : rowsOwned s2Step216EntryGvBefore [s2Step216EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step216EntryFRow,s2Step216EntryGRow,s2Step216EntryFvRow,s2Step216EntryGvRow] 3 s2Step216EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step216EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216EntryGv_Outgoing : rowsOwned s2Step216EntryGvAfter [s2Step216EntryGvOut] :=
  hmrRows_owned_drop s2Step216EntryGvAfter [s2Step216EntryFOut,s2Step216EntryGOut,s2Step216EntryFvOut,s2Step216EntryGvOut] 3 s2Step216EntryBank_outgoingOwned

private theorem s2Step216EntryGv_distinct : (s2Step216EntryGvRow.sign::s2Step216EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216EntryGv_owned : (s2Step216EntryGvRow.sign::s2Step216EntryGvRow.payload).toFinset⊆s2Step216EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step216EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216EntryGv_reserved : s2Step216EntryGvBefore.reserve s2Step216EntryGvFresh.toFinset=some s2Step216EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step216EntryGvFresh,arenaWires]
  · norm_num [s2Step216EntryGvBefore,s2Step216EntryFBefore,s2Step216EntryGvFresh,arenaWires]
  · simp only [s2Step216EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step216EntryGv_checked : planRowResizeLog s2Step216EntryGvBefore s2Step216EntryGvRow 122 s2Step216EntryGvFresh=
    some (s2Step216EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851],771⟩,growRow 771 s2Step216EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step216EntryGvBefore s2Step216EntryGvAfter s2Step216EntryGvRow 122 s2Step216EntryGvFresh
    s2Step216EntryGv_distinct s2Step216EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step216EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step216EntryGvRow.payload++s2Step216EntryGvFresh) s2Step216EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step216EntryBank_rows : planWindowRowsLog s2Step216EntryFBefore [(s2Step216EntryFRow,162),(s2Step216EntryGRow,162),(s2Step216EntryFvRow,122),(s2Step216EntryGvRow,122)] [s2Step216EntryFFresh,s2Step216EntryGFresh,s2Step216EntryFvFresh,s2Step216EntryGvFresh]=
    some (s2Step216EntryGvAfter,[s2Step216EntryFOut,s2Step216EntryGOut,s2Step216EntryFvOut,s2Step216EntryGvOut],(growRow 768 s2Step216EntryFFresh ++ (growRow 769 s2Step216EntryGFresh ++ (growRow 770 s2Step216EntryFvFresh ++ (growRow 771 s2Step216EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step216EntryGvAfter [] []=some (s2Step216EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step216EntryGvBefore s2Step216EntryGvAfter s2Step216EntryGvAfter
    s2Step216EntryGvRow s2Step216EntryGvOut 122 s2Step216EntryGvFresh [] [] []
    (growRow 771 s2Step216EntryGvFresh) ([]) s2Step216EntryGv_Incoming s2Step216EntryGv_checked h4 s2Step216EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step216EntryFvBefore s2Step216EntryFvAfter s2Step216EntryGvAfter
    s2Step216EntryFvRow s2Step216EntryFvOut 122 s2Step216EntryFvFresh [(s2Step216EntryGvRow,122)] [s2Step216EntryGvFresh] [s2Step216EntryGvOut]
    (growRow 770 s2Step216EntryFvFresh) ((growRow 771 s2Step216EntryGvFresh ++ [])) s2Step216EntryFv_Incoming s2Step216EntryFv_checked h3 s2Step216EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step216EntryGBefore s2Step216EntryGAfter s2Step216EntryGvAfter
    s2Step216EntryGRow s2Step216EntryGOut 162 s2Step216EntryGFresh [(s2Step216EntryFvRow,122),(s2Step216EntryGvRow,122)] [s2Step216EntryFvFresh,s2Step216EntryGvFresh] [s2Step216EntryFvOut,s2Step216EntryGvOut]
    (growRow 769 s2Step216EntryGFresh) ((growRow 770 s2Step216EntryFvFresh ++ (growRow 771 s2Step216EntryGvFresh ++ []))) s2Step216EntryG_Incoming s2Step216EntryG_checked h2 s2Step216EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step216EntryFBefore s2Step216EntryFAfter s2Step216EntryGvAfter
    s2Step216EntryFRow s2Step216EntryFOut 162 s2Step216EntryFFresh [(s2Step216EntryGRow,162),(s2Step216EntryFvRow,122),(s2Step216EntryGvRow,122)] [s2Step216EntryGFresh,s2Step216EntryFvFresh,s2Step216EntryGvFresh] [s2Step216EntryGOut,s2Step216EntryFvOut,s2Step216EntryGvOut]
    (growRow 768 s2Step216EntryFFresh) ((growRow 769 s2Step216EntryGFresh ++ (growRow 770 s2Step216EntryFvFresh ++ (growRow 771 s2Step216EntryGvFresh ++ [])))) s2Step216EntryF_Incoming s2Step216EntryF_checked h1 s2Step216EntryF_Outgoing
  exact h0

private theorem s2Step216EntryBank_checked : compileHmrBankResizeLog .entry s2Step216EntryFBefore ⟨s2Step216EntryFRow,s2Step216EntryGRow,s2Step216EntryFvRow,s2Step216EntryGvRow⟩ ⟨162,162,122,122⟩ [s2Step216EntryFFresh,s2Step216EntryGFresh,s2Step216EntryFvFresh,s2Step216EntryGvFresh]=
    some (s2Step216EntryGvAfter,⟨s2Step216EntryFOut,s2Step216EntryGOut,s2Step216EntryFvOut,s2Step216EntryGvOut⟩,(growRow 768 s2Step216EntryFFresh ++ (growRow 769 s2Step216EntryGFresh ++ (growRow 770 s2Step216EntryFvFresh ++ (growRow 771 s2Step216EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step216EntryBank_rows]
  rfl

private def s2Step216ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<161) ∨ (162≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<161) ∨ (162≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216ExitFBefore : Arena := s2Step216ExitGAfter

private def s2Step216ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 815],768⟩

private def s2Step216ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩

private def s2Step216ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 798],769⟩

private def s2Step216ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 783],771⟩

private theorem s2Step216ExitBank_incomingDistinct : ([s2Step216ExitGRow,s2Step216ExitFRow,s2Step216ExitFvRow,s2Step216ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216ExitF_Incoming : rowsOwned s2Step216ExitFBefore [s2Step216ExitFRow,s2Step216ExitFvRow,s2Step216ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step216ExitGRow,s2Step216ExitFRow,s2Step216ExitFvRow,s2Step216ExitGvRow] 1 s2Step216ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step216ExitFBefore (fun q => (0≤q ∧ q<161) ∨ (162≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216ExitBank_outgoingOwned : rowsOwned s2Step216ExitGvAfter [s2Step216ExitGOut,s2Step216ExitFOut,s2Step216ExitFvOut,s2Step216ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step216ExitGvAfter (fun q => (0≤q ∧ q<161) ∨ (162≤q ∧ q<783) ∨ (784≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216ExitF_Outgoing : rowsOwned s2Step216ExitGvAfter [s2Step216ExitFOut,s2Step216ExitFvOut,s2Step216ExitGvOut] :=
  hmrRows_owned_drop s2Step216ExitGvAfter [s2Step216ExitGOut,s2Step216ExitFOut,s2Step216ExitFvOut,s2Step216ExitGvOut] 1 s2Step216ExitBank_outgoingOwned

private theorem s2Step216ExitF_distinct : (s2Step216ExitFRow.sign::s2Step216ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216ExitF_owned : (s2Step216ExitFRow.sign::s2Step216ExitFRow.payload).toFinset⊆s2Step216ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step216ExitFBefore (fun q => (0≤q ∧ q<161) ∨ (162≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216ExitF_retired : s2Step216ExitFBefore.retireSet s2Step216ExitFExtra.toFinset=s2Step216ExitFAfter := by
  unfold Arena.retireSet s2Step216ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step216ExitFBefore,s2Step216ExitGAfter,s2Step216ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step216ExitF_checked : planRowResizeLog s2Step216ExitFBefore s2Step216ExitFRow 162 []=
    some (s2Step216ExitFAfter,s2Step216ExitFOut,shrinkRow 768 s2Step216ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step216ExitFBefore s2Step216ExitFRow 162 s2Step216ExitF_distinct s2Step216ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step216ExitFRow.payload.take 162) s2Step216ExitFRow.sign=s2Step216ExitFOut := by decide +kernel
  have hi : s2Step216ExitFRow.payload.drop 162=s2Step216ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step216ExitF_retired] at result
  exact result

private def s2Step216ExitFvAfter : Arena := s2Step216ExitFAfter

private def s2Step216ExitFvBefore : Arena := s2Step216ExitFAfter

private theorem s2Step216ExitFv_Incoming : rowsOwned s2Step216ExitFvBefore [s2Step216ExitFvRow,s2Step216ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step216ExitGRow,s2Step216ExitFRow,s2Step216ExitFvRow,s2Step216ExitGvRow] 2 s2Step216ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step216ExitFvBefore (fun q => (0≤q ∧ q<161) ∨ (162≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216ExitFv_Outgoing : rowsOwned s2Step216ExitGvAfter [s2Step216ExitFvOut,s2Step216ExitGvOut] :=
  hmrRows_owned_drop s2Step216ExitGvAfter [s2Step216ExitGOut,s2Step216ExitFOut,s2Step216ExitFvOut,s2Step216ExitGvOut] 2 s2Step216ExitBank_outgoingOwned

private theorem s2Step216ExitFv_distinct : (s2Step216ExitFvRow.sign::s2Step216ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216ExitFv_owned : (s2Step216ExitFvRow.sign::s2Step216ExitFvRow.payload).toFinset⊆s2Step216ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step216ExitFvBefore (fun q => (0≤q ∧ q<161) ∨ (162≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216ExitFv_reserved : s2Step216ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step216ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step216ExitFv_checked : planRowResizeLog s2Step216ExitFvBefore s2Step216ExitFvRow 123 []=
    some (s2Step216ExitFvAfter,s2Step216ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step216ExitFvBefore s2Step216ExitFvAfter s2Step216ExitFvRow 123 []
    s2Step216ExitFv_distinct s2Step216ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step216ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step216ExitFvRow.payload++[]) s2Step216ExitFvRow.sign=s2Step216ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step216ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step216ExitG_Incoming : rowsOwned s2Step216ExitGBefore [s2Step216ExitGRow,s2Step216ExitFRow,s2Step216ExitFvRow,s2Step216ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step216ExitGRow,s2Step216ExitFRow,s2Step216ExitFvRow,s2Step216ExitGvRow] 0 s2Step216ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step216ExitGBefore (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216ExitG_Outgoing : rowsOwned s2Step216ExitGvAfter [s2Step216ExitGOut,s2Step216ExitFOut,s2Step216ExitFvOut,s2Step216ExitGvOut] :=
  hmrRows_owned_drop s2Step216ExitGvAfter [s2Step216ExitGOut,s2Step216ExitFOut,s2Step216ExitFvOut,s2Step216ExitGvOut] 0 s2Step216ExitBank_outgoingOwned

private theorem s2Step216ExitG_distinct : (s2Step216ExitGRow.sign::s2Step216ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216ExitG_owned : (s2Step216ExitGRow.sign::s2Step216ExitGRow.payload).toFinset⊆s2Step216ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step216ExitGBefore (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216ExitG_retired : s2Step216ExitGBefore.retireSet s2Step216ExitGExtra.toFinset=s2Step216ExitGAfter := by
  unfold Arena.retireSet s2Step216ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step216ExitGBefore,s2Step216ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step216ExitG_checked : planRowResizeLog s2Step216ExitGBefore s2Step216ExitGRow 161 []=
    some (s2Step216ExitGAfter,s2Step216ExitGOut,shrinkRow 769 s2Step216ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step216ExitGBefore s2Step216ExitGRow 161 s2Step216ExitG_distinct s2Step216ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step216ExitGRow.payload.take 161) s2Step216ExitGRow.sign=s2Step216ExitGOut := by decide +kernel
  have hi : s2Step216ExitGRow.payload.drop 161=s2Step216ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step216ExitG_retired] at result
  exact result

private def s2Step216ExitGvBefore : Arena := s2Step216ExitFAfter

private theorem s2Step216ExitGv_Incoming : rowsOwned s2Step216ExitGvBefore [s2Step216ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step216ExitGRow,s2Step216ExitFRow,s2Step216ExitFvRow,s2Step216ExitGvRow] 3 s2Step216ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step216ExitGvBefore (fun q => (0≤q ∧ q<161) ∨ (162≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216ExitGv_Outgoing : rowsOwned s2Step216ExitGvAfter [s2Step216ExitGvOut] :=
  hmrRows_owned_drop s2Step216ExitGvAfter [s2Step216ExitGOut,s2Step216ExitFOut,s2Step216ExitFvOut,s2Step216ExitGvOut] 3 s2Step216ExitBank_outgoingOwned

private theorem s2Step216ExitGv_distinct : (s2Step216ExitGvRow.sign::s2Step216ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216ExitGv_owned : (s2Step216ExitGvRow.sign::s2Step216ExitGvRow.payload).toFinset⊆s2Step216ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step216ExitGvBefore (fun q => (0≤q ∧ q<161) ∨ (162≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216ExitGv_retired : s2Step216ExitGvBefore.retireSet s2Step216ExitGvExtra.toFinset=s2Step216ExitGvAfter := by
  unfold Arena.retireSet s2Step216ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step216ExitGvBefore,s2Step216ExitFAfter,s2Step216ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step216ExitGv_checked : planRowResizeLog s2Step216ExitGvBefore s2Step216ExitGvRow 122 []=
    some (s2Step216ExitGvAfter,s2Step216ExitGvOut,shrinkRow 771 s2Step216ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step216ExitGvBefore s2Step216ExitGvRow 122 s2Step216ExitGv_distinct s2Step216ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step216ExitGvRow.payload.take 122) s2Step216ExitGvRow.sign=s2Step216ExitGvOut := by decide +kernel
  have hi : s2Step216ExitGvRow.payload.drop 122=s2Step216ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step216ExitGv_retired] at result
  exact result

private theorem s2Step216ExitBank_rows : planWindowRowsLog s2Step216ExitGBefore [(s2Step216ExitGRow,161),(s2Step216ExitFRow,162),(s2Step216ExitFvRow,123),(s2Step216ExitGvRow,122)] [[],[],[],[]]=
    some (s2Step216ExitGvAfter,[s2Step216ExitGOut,s2Step216ExitFOut,s2Step216ExitFvOut,s2Step216ExitGvOut],(shrinkRow 769 s2Step216ExitGExtra ++ (shrinkRow 768 s2Step216ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step216ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step216ExitGvAfter [] []=some (s2Step216ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step216ExitGvBefore s2Step216ExitGvAfter s2Step216ExitGvAfter
    s2Step216ExitGvRow s2Step216ExitGvOut 122 [] [] [] []
    (shrinkRow 771 s2Step216ExitGvExtra) ([]) s2Step216ExitGv_Incoming s2Step216ExitGv_checked h4 s2Step216ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step216ExitFvBefore s2Step216ExitFvAfter s2Step216ExitGvAfter
    s2Step216ExitFvRow s2Step216ExitFvOut 123 [] [(s2Step216ExitGvRow,122)] [[]] [s2Step216ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step216ExitGvExtra ++ [])) s2Step216ExitFv_Incoming s2Step216ExitFv_checked h3 s2Step216ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step216ExitFBefore s2Step216ExitFAfter s2Step216ExitGvAfter
    s2Step216ExitFRow s2Step216ExitFOut 162 [] [(s2Step216ExitFvRow,123),(s2Step216ExitGvRow,122)] [[],[]] [s2Step216ExitFvOut,s2Step216ExitGvOut]
    (shrinkRow 768 s2Step216ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step216ExitGvExtra ++ []))) s2Step216ExitF_Incoming s2Step216ExitF_checked h2 s2Step216ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step216ExitGBefore s2Step216ExitGAfter s2Step216ExitGvAfter
    s2Step216ExitGRow s2Step216ExitGOut 161 [] [(s2Step216ExitFRow,162),(s2Step216ExitFvRow,123),(s2Step216ExitGvRow,122)] [[],[],[]] [s2Step216ExitFOut,s2Step216ExitFvOut,s2Step216ExitGvOut]
    (shrinkRow 769 s2Step216ExitGExtra) ((shrinkRow 768 s2Step216ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step216ExitGvExtra ++ [])))) s2Step216ExitG_Incoming s2Step216ExitG_checked h1 s2Step216ExitG_Outgoing
  exact h0

private theorem s2Step216ExitBank_checked : compileHmrBankResizeLog .exit s2Step216ExitGBefore ⟨s2Step216ExitFRow,s2Step216ExitGRow,s2Step216ExitFvRow,s2Step216ExitGvRow⟩ ⟨162,161,123,122⟩ [[],[],[],[]]=
    some (s2Step216ExitGvAfter,⟨s2Step216ExitFOut,s2Step216ExitGOut,s2Step216ExitFvOut,s2Step216ExitGvOut⟩,(shrinkRow 769 s2Step216ExitGExtra ++ (shrinkRow 768 s2Step216ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step216ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step216ExitBank_rows]
  rfl

private theorem s2Step216Add0_apart : Disjoint s2Step216Add0Arena.live s2Step216Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step216Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216Add0_card : s2Step216Add0Arena.live.card=889 := by
  decide +kernel

private theorem s2Step216Add0_borrowed : s2Step216Add0Arena.checkBorrow (hmrHybridCount s2Step216Add0Arena s2Step216Add0B.length) s2Step216Add0Work=some s2Step216Add0During := by
  have len : s2Step216Add0Work.length=hmrHybridCount s2Step216Add0Arena s2Step216Add0B.length := by
    rw [hmrHybridCount,s2Step216Add0_card]
    decide +kernel
  have nd : s2Step216Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step216Add0Arena s2Step216Add0During s2Step216Add0Work.toFinset s2Step216Add0_bounded s2Step216Add0_apart rfl

private theorem s2Step216Add0_distinct : (845::796::801::(s2Step216Add0A++s2Step216Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216Add0_owned : (845::796::801::(s2Step216Add0A++s2Step216Add0B)).toFinset⊆s2Step216Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step216Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216Add0_checked : compileHmrHybridCinLog s2Step216Add0Arena 796 845 801 s2Step216Add0A s2Step216Add0B s2Step216Add0Work=some s2Step216Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step216Add0Arena s2Step216Add0During 796 845 801 s2Step216Add0A s2Step216Add0B s2Step216Add0Work
    (by decide +kernel) (by decide +kernel) s2Step216Add0_distinct
    (fun q hq => s2Step216Add0_owned (List.mem_toFinset.mpr hq)) s2Step216Add0_borrowed

private theorem s2Step216Add1_apart : Disjoint s2Step216Add1Arena.live s2Step216Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step216Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216Add1_card : s2Step216Add1Arena.live.card=889 := by
  decide +kernel

private theorem s2Step216Add1_borrowed : s2Step216Add1Arena.checkBorrow (hmrHybridCount s2Step216Add1Arena s2Step216Add1B.length) s2Step216Add1Work=some s2Step216Add1During := by
  have len : s2Step216Add1Work.length=hmrHybridCount s2Step216Add1Arena s2Step216Add1B.length := by
    rw [hmrHybridCount,s2Step216Add1_card]
    decide +kernel
  have nd : s2Step216Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step216Add1Arena s2Step216Add1During s2Step216Add1Work.toFinset s2Step216Add1_bounded s2Step216Add1_apart rfl

private theorem s2Step216Add1_distinct : (845::796::801::(s2Step216Add1A++s2Step216Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216Add1_owned : (845::796::801::(s2Step216Add1A++s2Step216Add1B)).toFinset⊆s2Step216Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step216Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216Add1_checked : compileHmrHybridCinLog s2Step216Add1Arena 796 845 801 s2Step216Add1A s2Step216Add1B s2Step216Add1Work=some s2Step216Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step216Add1Arena s2Step216Add1During 796 845 801 s2Step216Add1A s2Step216Add1B s2Step216Add1Work
    (by decide +kernel) (by decide +kernel) s2Step216Add1_distinct
    (fun q hq => s2Step216Add1_owned (List.mem_toFinset.mpr hq)) s2Step216Add1_borrowed

private theorem s2Step216F4_apart : Disjoint (s2Step216Add0A++s2Step216Add0B).toFinset (s2Step216Add1A++s2Step216Add1B).toFinset := by
  have nd : ((s2Step216Add0A++s2Step216Add0B)++(s2Step216Add1A++s2Step216Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step216F4_carry : s2Step216F4FlagArena.checkBorrow 1 [801]=some s2Step216Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step216F4FlagArena,s2Step216HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step216F4FlagArena,s2Step216HeadFvAfter,s2Step216Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step216F4_distinct : (839::796::845::801::((s2Step216Add0A++s2Step216Add1A)++(s2Step216Add0B++s2Step216Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216F4_flag : s2Step216HeadFvAfter.checkBorrow 1 [845]=some s2Step216F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step216HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step216F4_owned : (839::796::((s2Step216Add0A++s2Step216Add1A)++(s2Step216Add0B++s2Step216Add1B))).toFinset⊆s2Step216HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step216HeadFvAfter (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216F4_checked : compileHmrHybridF4Log s2Step216HeadFvAfter 839 796 s2Step216Add0A s2Step216Add0B s2Step216Add1A s2Step216Add1B [845] [801] s2Step216Add0Work s2Step216Add1Work=some s2Step216F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step216HeadFvAfter s2Step216F4FlagArena s2Step216Add0Arena s2Step216Add0During s2Step216Add1During 839 796
    s2Step216Add0A s2Step216Add0B s2Step216Add1A s2Step216Add1B [845] [801] s2Step216Add0Work s2Step216Add1Work
    (fun q hq => s2Step216F4_owned (List.mem_toFinset.mpr hq)) s2Step216F4_flag s2Step216F4_carry
    s2Step216F4_distinct s2Step216F4_apart s2Step216Add0_checked s2Step216Add1_checked

private theorem s2Step216Front_branch : s2Step216FrontSigmaArena.checkBorrow 1 [796]=some s2Step216HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step216FrontSigmaArena,s2Step216EntryGvAfter,s2Step216EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step216FrontSigmaArena,s2Step216EntryGvAfter,s2Step216EntryFBefore,s2Step216HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step216Front_entry : HmrFrontEntryValid s2Step216EntryFBefore s2Step216FrontBank 162 122 ⟨162,161,123,122⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step216FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step216EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step216EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step216FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step216Front_sigma : s2Step216EntryGvAfter.checkBorrow 1 [839]=some s2Step216FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step216EntryGvAfter,s2Step216EntryFBefore,arenaWires]
  · rfl

private def s2Step216HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216HeadFBefore : Arena := s2Step216HeadGAfter

private def s2Step216HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673],768⟩

private def s2Step216HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩

private def s2Step216HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],769⟩

private def s2Step216HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851],771⟩

private theorem s2Step216HeadBank_incomingDistinct : ([s2Step216HeadGRow,s2Step216HeadFRow,s2Step216HeadGvRow,s2Step216HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216HeadF_Incoming : rowsOwned s2Step216HeadFBefore [s2Step216HeadFRow,s2Step216HeadGvRow,s2Step216HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step216HeadGRow,s2Step216HeadFRow,s2Step216HeadGvRow,s2Step216HeadFvRow] 1 s2Step216HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step216HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216HeadBank_outgoingOwned : rowsOwned s2Step216HeadFvAfter [s2Step216HeadGOut,s2Step216HeadFOut,s2Step216HeadGvOut,s2Step216HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step216HeadFvAfter (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216HeadF_Outgoing : rowsOwned s2Step216HeadFvAfter [s2Step216HeadFOut,s2Step216HeadGvOut,s2Step216HeadFvOut] :=
  hmrRows_owned_drop s2Step216HeadFvAfter [s2Step216HeadGOut,s2Step216HeadFOut,s2Step216HeadGvOut,s2Step216HeadFvOut] 1 s2Step216HeadBank_outgoingOwned

private theorem s2Step216HeadF_distinct : (s2Step216HeadFRow.sign::s2Step216HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216HeadF_owned : (s2Step216HeadFRow.sign::s2Step216HeadFRow.payload).toFinset⊆s2Step216HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step216HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216HeadF_reserved : s2Step216HeadFBefore.reserve s2Step216HeadFFresh.toFinset=some s2Step216HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step216HeadFFresh,arenaWires]
  · norm_num [s2Step216HeadFBefore,s2Step216HeadGAfter,s2Step216HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step216HeadFAfter,s2Step216HeadFBefore,s2Step216HeadGAfter,s2Step216HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step216HeadF_checked : planRowResizeLog s2Step216HeadFBefore s2Step216HeadFRow 163 s2Step216HeadFFresh=
    some (s2Step216HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 815],768⟩,growRow 768 s2Step216HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step216HeadFBefore s2Step216HeadFAfter s2Step216HeadFRow 163 s2Step216HeadFFresh
    s2Step216HeadF_distinct s2Step216HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step216HeadF_reserved
  have rowEq : WindowRow.mk (s2Step216HeadFRow.payload++s2Step216HeadFFresh) s2Step216HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 815],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step216HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step216HeadFvBefore : Arena := s2Step216HeadGvAfter

private theorem s2Step216HeadFv_Incoming : rowsOwned s2Step216HeadFvBefore [s2Step216HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step216HeadGRow,s2Step216HeadFRow,s2Step216HeadGvRow,s2Step216HeadFvRow] 3 s2Step216HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step216HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216HeadFv_Outgoing : rowsOwned s2Step216HeadFvAfter [s2Step216HeadFvOut] :=
  hmrRows_owned_drop s2Step216HeadFvAfter [s2Step216HeadGOut,s2Step216HeadFOut,s2Step216HeadGvOut,s2Step216HeadFvOut] 3 s2Step216HeadBank_outgoingOwned

private theorem s2Step216HeadFv_distinct : (s2Step216HeadFvRow.sign::s2Step216HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216HeadFv_owned : (s2Step216HeadFvRow.sign::s2Step216HeadFvRow.payload).toFinset⊆s2Step216HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step216HeadFvBefore (fun q => (0≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216HeadFv_reserved : s2Step216HeadFvBefore.reserve s2Step216HeadFvFresh.toFinset=some s2Step216HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step216HeadFvFresh,arenaWires]
  · norm_num [s2Step216HeadFvBefore,s2Step216HeadGvAfter,s2Step216HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step216HeadFvAfter,s2Step216HeadFvBefore,s2Step216HeadGvAfter,s2Step216HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step216HeadFv_checked : planRowResizeLog s2Step216HeadFvBefore s2Step216HeadFvRow 123 s2Step216HeadFvFresh=
    some (s2Step216HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩,growRow 770 s2Step216HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step216HeadFvBefore s2Step216HeadFvAfter s2Step216HeadFvRow 123 s2Step216HeadFvFresh
    s2Step216HeadFv_distinct s2Step216HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step216HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step216HeadFvRow.payload++s2Step216HeadFvFresh) s2Step216HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step216HeadG_Incoming : rowsOwned s2Step216HeadGBefore [s2Step216HeadGRow,s2Step216HeadFRow,s2Step216HeadGvRow,s2Step216HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step216HeadGRow,s2Step216HeadFRow,s2Step216HeadGvRow,s2Step216HeadFvRow] 0 s2Step216HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step216HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216HeadG_Outgoing : rowsOwned s2Step216HeadFvAfter [s2Step216HeadGOut,s2Step216HeadFOut,s2Step216HeadGvOut,s2Step216HeadFvOut] :=
  hmrRows_owned_drop s2Step216HeadFvAfter [s2Step216HeadGOut,s2Step216HeadFOut,s2Step216HeadGvOut,s2Step216HeadFvOut] 0 s2Step216HeadBank_outgoingOwned

private theorem s2Step216HeadG_distinct : (s2Step216HeadGRow.sign::s2Step216HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216HeadG_owned : (s2Step216HeadGRow.sign::s2Step216HeadGRow.payload).toFinset⊆s2Step216HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step216HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216HeadG_reserved : s2Step216HeadGBefore.reserve s2Step216HeadGFresh.toFinset=some s2Step216HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step216HeadGFresh,arenaWires]
  · norm_num [s2Step216HeadGBefore,s2Step216HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step216HeadGAfter,s2Step216HeadGBefore,s2Step216HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step216HeadG_checked : planRowResizeLog s2Step216HeadGBefore s2Step216HeadGRow 163 s2Step216HeadGFresh=
    some (s2Step216HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 798],769⟩,growRow 769 s2Step216HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step216HeadGBefore s2Step216HeadGAfter s2Step216HeadGRow 163 s2Step216HeadGFresh
    s2Step216HeadG_distinct s2Step216HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step216HeadG_reserved
  have rowEq : WindowRow.mk (s2Step216HeadGRow.payload++s2Step216HeadGFresh) s2Step216HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 798],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step216HeadGvBefore : Arena := s2Step216HeadFAfter

private theorem s2Step216HeadGv_Incoming : rowsOwned s2Step216HeadGvBefore [s2Step216HeadGvRow,s2Step216HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step216HeadGRow,s2Step216HeadFRow,s2Step216HeadGvRow,s2Step216HeadFvRow] 2 s2Step216HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step216HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step216HeadGv_Outgoing : rowsOwned s2Step216HeadFvAfter [s2Step216HeadGvOut,s2Step216HeadFvOut] :=
  hmrRows_owned_drop s2Step216HeadFvAfter [s2Step216HeadGOut,s2Step216HeadFOut,s2Step216HeadGvOut,s2Step216HeadFvOut] 2 s2Step216HeadBank_outgoingOwned

private theorem s2Step216HeadGv_distinct : (s2Step216HeadGvRow.sign::s2Step216HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step216HeadGv_owned : (s2Step216HeadGvRow.sign::s2Step216HeadGvRow.payload).toFinset⊆s2Step216HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step216HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step216HeadGv_reserved : s2Step216HeadGvBefore.reserve s2Step216HeadGvFresh.toFinset=some s2Step216HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step216HeadGvFresh,arenaWires]
  · norm_num [s2Step216HeadGvBefore,s2Step216HeadFAfter,s2Step216HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step216HeadGvAfter,s2Step216HeadGvBefore,s2Step216HeadFAfter,s2Step216HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step216HeadGv_checked : planRowResizeLog s2Step216HeadGvBefore s2Step216HeadGvRow 123 s2Step216HeadGvFresh=
    some (s2Step216HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 783],771⟩,growRow 771 s2Step216HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step216HeadGvBefore s2Step216HeadGvAfter s2Step216HeadGvRow 123 s2Step216HeadGvFresh
    s2Step216HeadGv_distinct s2Step216HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step216HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step216HeadGvRow.payload++s2Step216HeadGvFresh) s2Step216HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 783],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step216HeadBank_rows : planWindowRowsLog s2Step216HeadGBefore [(s2Step216HeadGRow,163),(s2Step216HeadFRow,163),(s2Step216HeadGvRow,123),(s2Step216HeadFvRow,123)] [s2Step216HeadGFresh,s2Step216HeadFFresh,s2Step216HeadGvFresh,s2Step216HeadFvFresh]=
    some (s2Step216HeadFvAfter,[s2Step216HeadGOut,s2Step216HeadFOut,s2Step216HeadGvOut,s2Step216HeadFvOut],(growRow 769 s2Step216HeadGFresh ++ (growRow 768 s2Step216HeadFFresh ++ (growRow 771 s2Step216HeadGvFresh ++ (growRow 770 s2Step216HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step216HeadFvAfter [] []=some (s2Step216HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step216HeadFvBefore s2Step216HeadFvAfter s2Step216HeadFvAfter
    s2Step216HeadFvRow s2Step216HeadFvOut 123 s2Step216HeadFvFresh [] [] []
    (growRow 770 s2Step216HeadFvFresh) ([]) s2Step216HeadFv_Incoming s2Step216HeadFv_checked h4 s2Step216HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step216HeadGvBefore s2Step216HeadGvAfter s2Step216HeadFvAfter
    s2Step216HeadGvRow s2Step216HeadGvOut 123 s2Step216HeadGvFresh [(s2Step216HeadFvRow,123)] [s2Step216HeadFvFresh] [s2Step216HeadFvOut]
    (growRow 771 s2Step216HeadGvFresh) ((growRow 770 s2Step216HeadFvFresh ++ [])) s2Step216HeadGv_Incoming s2Step216HeadGv_checked h3 s2Step216HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step216HeadFBefore s2Step216HeadFAfter s2Step216HeadFvAfter
    s2Step216HeadFRow s2Step216HeadFOut 163 s2Step216HeadFFresh [(s2Step216HeadGvRow,123),(s2Step216HeadFvRow,123)] [s2Step216HeadGvFresh,s2Step216HeadFvFresh] [s2Step216HeadGvOut,s2Step216HeadFvOut]
    (growRow 768 s2Step216HeadFFresh) ((growRow 771 s2Step216HeadGvFresh ++ (growRow 770 s2Step216HeadFvFresh ++ []))) s2Step216HeadF_Incoming s2Step216HeadF_checked h2 s2Step216HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step216HeadGBefore s2Step216HeadGAfter s2Step216HeadFvAfter
    s2Step216HeadGRow s2Step216HeadGOut 163 s2Step216HeadGFresh [(s2Step216HeadFRow,163),(s2Step216HeadGvRow,123),(s2Step216HeadFvRow,123)] [s2Step216HeadFFresh,s2Step216HeadGvFresh,s2Step216HeadFvFresh] [s2Step216HeadFOut,s2Step216HeadGvOut,s2Step216HeadFvOut]
    (growRow 769 s2Step216HeadGFresh) ((growRow 768 s2Step216HeadFFresh ++ (growRow 771 s2Step216HeadGvFresh ++ (growRow 770 s2Step216HeadFvFresh ++ [])))) s2Step216HeadG_Incoming s2Step216HeadG_checked h1 s2Step216HeadG_Outgoing
  exact h0

private theorem s2Step216HeadBank_checked : compileHmrBankResizeLog .headroom s2Step216HeadGBefore ⟨s2Step216HeadFRow,s2Step216HeadGRow,s2Step216HeadFvRow,s2Step216HeadGvRow⟩ ⟨163,163,123,123⟩ [s2Step216HeadGFresh,s2Step216HeadFFresh,s2Step216HeadGvFresh,s2Step216HeadFvFresh]=
    some (s2Step216HeadFvAfter,⟨s2Step216HeadFOut,s2Step216HeadGOut,s2Step216HeadFvOut,s2Step216HeadGvOut⟩,(growRow 769 s2Step216HeadGFresh ++ (growRow 768 s2Step216HeadFFresh ++ (growRow 771 s2Step216HeadGvFresh ++ (growRow 770 s2Step216HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step216HeadBank_rows]
  rfl

private theorem s2Step216Front_checked : compileHmrSourceFrontLog s2Step216EntryFBefore s2Step216FrontBank 162 122 ⟨162,161,123,122⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step216FrontLog=some s2Step216FrontPlan := by
  have pairEq : s2Step216FrontPair=⟨s2Step216HeadFRow,s2Step216HeadGRow,s2Step216HeadFvRow,s2Step216HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step216FrontHead=⟨s2Step216ExitFRow,s2Step216ExitGRow,s2Step216ExitFvRow,s2Step216ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step216Add0A=s2Step216FrontHead.f.wires := by decide +kernel
  have gEq : s2Step216Add0B=s2Step216FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step216Add1A=s2Step216FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step216Add1B=s2Step216FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step216EntryFBefore s2Step216FrontBank 162 122 ⟨162,161,123,122⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step216FrontLog s2Step216FrontPlan
  · exact s2Step216Front_entry
  · exact s2Step216EntryBank_checked
  · exact s2Step216Front_sigma
  · rfl
  · exact s2Step216Front_branch
  · rfl
  · simpa only [s2Step216FrontPlan,pairEq] using s2Step216HeadBank_checked
  · simpa only [s2Step216FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step216F4_checked
  · exact s2Step216Counter_checked
  · rfl
  · simpa only [s2Step216FrontPlan,headEq] using s2Step216ExitBank_checked

private theorem s2Step216Complete_explicit_checked : compileHmrEarlyStepLog s2Step216EntryFBefore s2Step216FrontBank 162 122 ⟨162,161,123,122⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step216CompleteLog=some s2Step216CompletePlan := by
  let Q := s2Step216EarlyControlPlan
  have hq := s2Step216EarlyControl_plan_checked
  have fv1 : s2Step216CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step216CompleteOut.fv.payload[2]?.getD s2Step216CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step216CompleteOut.fv.payload[3]?.getD s2Step216CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step216CompleteOut.fv.payload[4]?.getD s2Step216CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step216EntryFBefore s2Step216EarlyControlArena s2Step216FrontBank 162 122 ⟨162,161,123,122⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step216CompleteLog s2Step216FrontPlan Q
    s2Step216Front_checked s2Step216Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step216Complete_owned s2Step216Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step216EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 839 s2Step216CompleteOut.fv.second (s2Step216CompleteOut.fv.payload[2]?.getD s2Step216CompleteOut.fv.sign) (s2Step216CompleteOut.fv.payload[3]?.getD s2Step216CompleteOut.fv.sign) (s2Step216CompleteOut.fv.payload[4]?.getD s2Step216CompleteOut.fv.sign) 796 47 s2Step216EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep216Arena : Arena := s2Step216EntryFBefore
def s2PrivateStep216Bank : WindowBank := s2Step216FrontBank
def s2PrivateStep216Spec : HmrSourceWalkStepLog := ⟨162,122,⟨162,161,123,122⟩,47,.early s2Step216CompleteLog⟩
def s2PrivateStep216Plan : HmrSourceStepPlan := .early s2Step216CompletePlan
theorem s2PrivateStep216_source : s2PrivateStep216Spec=s2ObservedLogs208[8] := rfl
theorem s2PrivateStep216_checked : compileHmrSourceStepLog s2PrivateStep216Arena s2PrivateStep216Bank
    s2PrivateStep216Spec.fgWidth s2PrivateStep216Spec.vWidth s2PrivateStep216Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 216 s2PrivateStep216Spec.need none s2PrivateStep216Spec.log=some s2PrivateStep216Plan := by
  change compileHmrSourceStepLog s2Step216EntryFBefore s2Step216FrontBank 162 122 ⟨162,161,123,122⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 216 47 none (.early s2Step216CompleteLog)=some (.early s2Step216CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 216<498)]
  rw [s2Step216Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
