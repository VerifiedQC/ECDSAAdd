import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep210
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

private def s2Step212CompleteMoves : List (Wire × Wire) := [(851,162)]

private def s2Step212EarlyControlLog : HmrEarlyControlLog := ⟨[851, 801, 791, 839, 845],[789],[815],[783, 814, 882, 826, 842, 885],[]⟩

private def s2Step212FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[839], [791], [801], [781]],[[], [], [], []]⟩,[822],[796],[845],[789],[815, 783, 814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[815, 783, 814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[845, 789, 815, 783]⟩

private def s2Step212CompleteLog : HmrEarlyStepLog := ⟨s2Step212FrontLog,s2Step212CompleteMoves,s2Step212EarlyControlLog⟩

private def s2Step212ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step212ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩

private def s2Step212ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],769⟩

private def s2Step212ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩

private def s2Step212FrontOut : WindowBank := ⟨s2Step212ExitFOut,s2Step212ExitGOut,s2Step212ExitFvOut,s2Step212ExitGvOut⟩

private def s2Step212CompleteOut : WindowBank := s2Step212FrontOut.repacked s2Step212CompleteMoves

private def s2Step212EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step212EarlyControlPositiveArena,[789],s2Step212EarlyControlEqualityArena,[815],⟨⟨822,false⟩,[⟨⟨789,false⟩,815⟩]⟩⟩

private def s2Step212EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,851⟩,⟨⟨774,false⟩,801⟩,⟨⟨775,false⟩,791⟩,⟨⟨776,false⟩,839⟩,⟨⟨777,false⟩,845⟩]⟩

private def s2Step212EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step212EarlyControlZeroArena,s2Step212EarlyControlZeroPlan,s2Step212EarlyControlClassPlan,s2Step212EarlyControlFlagArena,s2Step212EarlyControlFittedArena,s2Step212EarlyControlHistoryArena,s2Step212EarlyControlSigmaArena,s2Step212EarlyControlOutputArena,s2Step212EarlyControlLog⟩

private def s2Step212CounterWork : List Wire := [845, 789, 815, 783]

private theorem s2Step212Counter_bounded : s2Step212CounterWork.toFinset⊆arenaWires := by norm_num [s2Step212CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step212HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212CounterDuring : Arena := ⟨s2Step212HeadFvAfter.live∪s2Step212CounterWork.toFinset,Finset.union_subset s2Step212HeadFvAfter.bounded s2Step212Counter_bounded⟩

private def s2Step212EntryFFresh : List Wire := []

private def s2Step212EntryFvFresh : List Wire := []

private def s2Step212EntryGFresh : List Wire := []

private def s2Step212EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212EntryGvAfter : Arena := s2Step212EntryFBefore

private def s2Step212EntryGvFresh : List Wire := []

private def s2Step212ExitFExtra : List Wire := [791]

private def s2Step212ExitGExtra : List Wire := [162, 839]

private def s2Step212ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212ExitGvExtra : List Wire := [801]

private def s2Step212Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212Add0Work : List Wire := [815, 783, 814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step212Add0_bounded : s2Step212Add0Work.toFinset⊆arenaWires := by
  have h : s2Step212Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step212Add0During : Arena := ⟨s2Step212Add0Arena.live∪s2Step212Add0Work.toFinset,Finset.union_subset s2Step212Add0Arena.bounded s2Step212Add0_bounded⟩

private def s2Step212Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212Add1Work : List Wire := [815, 783, 814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step212Add1_bounded : s2Step212Add1Work.toFinset⊆arenaWires := by
  have h : s2Step212Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step212Add1During : Arena := ⟨s2Step212Add1Arena.live∪s2Step212Add1Work.toFinset,Finset.union_subset s2Step212Add1Arena.bounded s2Step212Add1_bounded⟩

private def s2Step212F4FlagArena : Arena := ⟨s2Step212HeadFvAfter.live∪{845},Finset.union_subset s2Step212HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step212F4Plan : HmrHybridF4Plan := ⟨s2Step212F4FlagArena,[845],s2Step212Add0Arena,[789],s2Step212Add0During,s2Step212Add0Work,s2Step212Add1During,s2Step212Add1Work⟩

private def s2Step212HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 791],768⟩

private def s2Step212HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩

private def s2Step212HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 839],769⟩

private def s2Step212HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 801],771⟩

private def s2Step212FrontHead : WindowBank := ⟨s2Step212HeadFOut,s2Step212HeadGOut,s2Step212HeadFvOut,s2Step212HeadGvOut⟩

private def s2Step212EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step212EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786],770⟩

private def s2Step212EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162],769⟩

private def s2Step212EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩

private def s2Step212FrontPair : WindowBank := ⟨s2Step212EntryFOut,s2Step212EntryGOut,s2Step212EntryFvOut,s2Step212EntryGvOut⟩

private def s2Step212FrontSigmaArena : Arena := ⟨s2Step212EntryGvAfter.live∪{822},Finset.union_subset s2Step212EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step212HeadFFresh : List Wire := [791]

private def s2Step212HeadFvFresh : List Wire := [781]

private def s2Step212HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212HeadGFresh : List Wire := [839]

private def s2Step212HeadGvFresh : List Wire := [801]

private def s2Step212FrontPlan : HmrSourceFront := ⟨s2Step212EntryGvAfter,s2Step212FrontPair,(growRow 768 s2Step212EntryFFresh ++ (growRow 769 s2Step212EntryGFresh ++ (growRow 770 s2Step212EntryFvFresh ++ (growRow 771 s2Step212EntryGvFresh ++ [])))),s2Step212FrontSigmaArena,[822],s2Step212HeadGBefore,[796],
  s2Step212HeadFvAfter,s2Step212FrontHead,(growRow 769 s2Step212HeadGFresh ++ (growRow 768 s2Step212HeadFFresh ++ (growRow 771 s2Step212HeadGvFresh ++ (growRow 770 s2Step212HeadFvFresh ++ [])))),s2Step212F4Plan,s2Step212CounterDuring,s2Step212CounterWork,s2Step212ExitGvAfter,s2Step212FrontOut,(shrinkRow 769 s2Step212ExitGExtra ++ (shrinkRow 768 s2Step212ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step212ExitGvExtra ++ []))))⟩

private def s2Step212CompletePlan : HmrEarlyStepPlan := ⟨s2Step212FrontPlan,s2Step212EarlyControlArena,s2Step212EarlyControlPlan,s2Step212CompleteMoves⟩

private theorem s2Step212Complete_apart : List.Disjoint (s2Step212CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [822, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step212CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[822, 796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step212Complete_owned : (s2Step212CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step212EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step212EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step212CompleteMoveArena : Arena := ⟨s2Step212ExitGvAfter.live∪{162},Finset.union_subset s2Step212ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step212Complete_repack : s2Step212ExitGvAfter.checkRepack s2Step212CompleteMoves=some s2Step212EarlyControlArena := by
  have owned : 851∈s2Step212ExitGvAfter.live := by norm_num [s2Step212ExitGvAfter,arenaWires]
  have reserve : s2Step212ExitGvAfter.reserve {162}=some s2Step212CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step212ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step212CompleteMoveArena.retireSet {851}=s2Step212EarlyControlArena := by
    unfold Arena.retireSet s2Step212EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step212CompleteMoveArena,s2Step212ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step212CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step212CompleteMoveArena.retireSet {851}).checkRepack []=some s2Step212EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step212EarlyControl_branchOwned : ([796] : List Wire).toFinset⊆s2Step212EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step212EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EarlyControl_branch : compileHmrBranchRetirement s2Step212EarlyControlSigmaArena 796=some s2Step212EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step212EarlyControl_branchOwned
  · ext q
    simp [s2Step212EarlyControlOutputArena,s2Step212EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step212EarlyControl_classEqualityBorrow : s2Step212EarlyControlPositiveArena.checkBorrow (([822, 789] : List Wire).length-1) s2Step212EarlyControlLog.classWork=some s2Step212EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step212EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step212EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step212EarlyControlEqualityArena,s2Step212EarlyControlPositiveArena,s2Step212EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step212EarlyControl_classEqualityOwned : ([822, 789] : List Wire).toFinset⊆s2Step212EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step212EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EarlyControl_classEquality : compileHmrEqualityLog s2Step212EarlyControlPositiveArena [822, 789] 0 s2Step212EarlyControlLog.classWork=some (s2Step212EarlyControlEqualityArena,s2Step212EarlyControlLog.classWork,s2Step212EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step212EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step212EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step212EarlyControl_classOwned : ([777, 845, 822] : List Wire).toFinset⊆s2Step212EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step212EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EarlyControl_positiveBorrow : s2Step212EarlyControlZeroArena.checkBorrow (1) s2Step212EarlyControlLog.positiveWork=some s2Step212EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step212EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step212EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step212EarlyControlPositiveArena,s2Step212EarlyControlZeroArena,s2Step212EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step212EarlyControl_class : compileHmrSourceClassLog s2Step212EarlyControlZeroArena false 777 s2Step212EarlyControlZeroPlan.top 0 822 s2Step212EarlyControlLog.positiveWork s2Step212EarlyControlLog.classWork=some s2Step212EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step212EarlyControlClassPlan s2Step212EarlyControlZeroArena false 777 s2Step212EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s2Step212EarlyControl_classOwned
  · exact s2Step212EarlyControl_positiveBorrow
  · exact s2Step212EarlyControl_classEquality

private theorem s2Step212EarlyControl_entryRecordOwned : ([796, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step212EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step212EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s2Step212EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step212EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EarlyControl_fitBorrow : s2Step212EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step212EarlyControlLog.recordFresh=some s2Step212EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step212EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step212EarlyControlFlagArena (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step212EarlyControlFittedArena,s2Step212EarlyControlFlagArena,s2Step212EarlyControlLog,arenaWires]

private theorem s2Step212EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step212EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step212EarlyControlFlagArena (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EarlyControl_fit : compileHmrRecordGrowLog s2Step212EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step212EarlyControlLog.recordFresh=some s2Step212EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step212EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step212EarlyControl_fitBorrow

private theorem s2Step212EarlyControl_flagsBorrow : s2Step212EarlyControlEqualityArena.checkBorrow (6) s2Step212EarlyControlLog.flagWork=some s2Step212EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step212EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step212EarlyControlEqualityArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step212EarlyControlFlagArena,s2Step212EarlyControlEqualityArena,s2Step212EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step212EarlyControl_flagsOwned : ([815, 253, 252, 251] : List Wire).toFinset⊆s2Step212EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step212EarlyControlEqualityArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EarlyControl_flags : compileHmrFlagsLog s2Step212EarlyControlClassPlan.equalityArena s2Step212EarlyControlClassPlan.equality.top 253 252 251 s2Step212EarlyControlLog.flagWork=some s2Step212EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step212EarlyControl_flagsOwned⟩
  · exact s2Step212EarlyControl_flagsBorrow

private theorem s2Step212EarlyControl_historyBorrow : s2Step212EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step212EarlyControlLog.recordFresh=some s2Step212EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step212EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step212EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step212EarlyControlHistoryArena,s2Step212EarlyControlArena,s2Step212EarlyControlLog,arenaWires]

private theorem s2Step212EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step212EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step212EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EarlyControl_history : compileHmrRecordGrowLog s2Step212EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step212EarlyControlLog.recordFresh=some s2Step212EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step212EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step212EarlyControl_historyBorrow

private theorem s2Step212EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s2Step212EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step212EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s2Step212EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step212EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EarlyControl_sigmaRelease : s2Step212EarlyControlHistoryArena.release {822} (fun _ => false)=some s2Step212EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step212EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step212EarlyControlSigmaArena,s2Step212EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step212EarlyControl_sigma : compileHmrSigmaDropLog s2Step212EarlyControlHistoryArena false 0 0 254 822 []=some s2Step212EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step212EarlyControl_sigmaOwned⟩
  · exact s2Step212EarlyControl_sigmaRelease

private theorem s2Step212EarlyControl_zeroBorrow : s2Step212EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step212EarlyControlLog.zeroWork=some s2Step212EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step212EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step212EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step212EarlyControlZeroArena,s2Step212EarlyControlArena,s2Step212EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step212EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step212EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step212EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EarlyControl_zero : compileHmrEqualityLog s2Step212EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step212EarlyControlLog.zeroWork=some (s2Step212EarlyControlZeroArena,s2Step212EarlyControlLog.zeroWork,s2Step212EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step212EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step212EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step212EarlyControl_logged : s2Step212EarlyControlPlan.Logged s2Step212EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 822 254 253 252 251 796 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step212EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step212EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step212EarlyControl_zero
  · exact s2Step212EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step212EarlyControl_flags
  · exact s2Step212EarlyControl_fit
  · exact s2Step212EarlyControl_history
  · exact s2Step212EarlyControl_sigma
  · exact s2Step212EarlyControl_branch

private theorem s2Step212EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step212EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 822 254 253 252 251 796 47 s2Step212EarlyControlLog=some s2Step212EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step212EarlyControlPlan s2Step212EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 822 254 253 252 251 796 47 s2Step212EarlyControl_logged

private def s2Step212EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step212EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786],770⟩

private def s2Step212EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162],769⟩

private def s2Step212EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩

private def s2Step212FrontBank : WindowBank := ⟨s2Step212EntryFRow,s2Step212EntryGRow,s2Step212EntryFvRow,s2Step212EntryGvRow⟩

private def s2Step212Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 791, 768]

private def s2Step212Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 839, 769]

private def s2Step212Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 770]

private def s2Step212Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 801, 771]

private theorem s2Step212Counter_apart : Disjoint s2Step212HeadFvAfter.live s2Step212CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step212HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212Counter_borrowed : s2Step212HeadFvAfter.checkBorrow 4 s2Step212CounterWork=some s2Step212CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step212HeadFvAfter s2Step212CounterDuring s2Step212CounterWork.toFinset s2Step212Counter_bounded s2Step212Counter_apart rfl

private theorem s2Step212Counter_owned : (822::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step212HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step212HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212Counter_checked : compileHmrCounterStepLog s2Step212HeadFvAfter true 822 [772, 773, 774, 775, 776, 777] s2Step212CounterWork=some s2Step212CounterDuring := by
  have owned : ∀q∈822::[772, 773, 774, 775, 776, 777],q∈s2Step212HeadFvAfter.live := fun q hq => s2Step212Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step212Counter_borrowed

private def s2Step212EntryFAfter : Arena := s2Step212EntryFBefore

private theorem s2Step212EntryBank_incomingDistinct : ([s2Step212EntryFRow,s2Step212EntryGRow,s2Step212EntryFvRow,s2Step212EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212EntryF_Incoming : rowsOwned s2Step212EntryFBefore [s2Step212EntryFRow,s2Step212EntryGRow,s2Step212EntryFvRow,s2Step212EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step212EntryFRow,s2Step212EntryGRow,s2Step212EntryFvRow,s2Step212EntryGvRow] 0 s2Step212EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step212EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212EntryBank_outgoingOwned : rowsOwned s2Step212EntryGvAfter [s2Step212EntryFOut,s2Step212EntryGOut,s2Step212EntryFvOut,s2Step212EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step212EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212EntryF_Outgoing : rowsOwned s2Step212EntryGvAfter [s2Step212EntryFOut,s2Step212EntryGOut,s2Step212EntryFvOut,s2Step212EntryGvOut] :=
  hmrRows_owned_drop s2Step212EntryGvAfter [s2Step212EntryFOut,s2Step212EntryGOut,s2Step212EntryFvOut,s2Step212EntryGvOut] 0 s2Step212EntryBank_outgoingOwned

private theorem s2Step212EntryF_distinct : (s2Step212EntryFRow.sign::s2Step212EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212EntryF_owned : (s2Step212EntryFRow.sign::s2Step212EntryFRow.payload).toFinset⊆s2Step212EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step212EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EntryF_reserved : s2Step212EntryFBefore.reserve s2Step212EntryFFresh.toFinset=some s2Step212EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step212EntryFFresh,arenaWires]
  · norm_num [s2Step212EntryFBefore,s2Step212EntryFFresh,arenaWires]
  · simp only [s2Step212EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step212EntryF_checked : planRowResizeLog s2Step212EntryFBefore s2Step212EntryFRow 163 s2Step212EntryFFresh=
    some (s2Step212EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩,growRow 768 s2Step212EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step212EntryFBefore s2Step212EntryFAfter s2Step212EntryFRow 163 s2Step212EntryFFresh
    s2Step212EntryF_distinct s2Step212EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step212EntryF_reserved
  have rowEq : WindowRow.mk (s2Step212EntryFRow.payload++s2Step212EntryFFresh) s2Step212EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step212EntryFvAfter : Arena := s2Step212EntryFBefore

private def s2Step212EntryFvBefore : Arena := s2Step212EntryFBefore

private theorem s2Step212EntryFv_Incoming : rowsOwned s2Step212EntryFvBefore [s2Step212EntryFvRow,s2Step212EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step212EntryFRow,s2Step212EntryGRow,s2Step212EntryFvRow,s2Step212EntryGvRow] 2 s2Step212EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step212EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212EntryFv_Outgoing : rowsOwned s2Step212EntryGvAfter [s2Step212EntryFvOut,s2Step212EntryGvOut] :=
  hmrRows_owned_drop s2Step212EntryGvAfter [s2Step212EntryFOut,s2Step212EntryGOut,s2Step212EntryFvOut,s2Step212EntryGvOut] 2 s2Step212EntryBank_outgoingOwned

private theorem s2Step212EntryFv_distinct : (s2Step212EntryFvRow.sign::s2Step212EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212EntryFv_owned : (s2Step212EntryFvRow.sign::s2Step212EntryFvRow.payload).toFinset⊆s2Step212EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step212EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EntryFv_reserved : s2Step212EntryFvBefore.reserve s2Step212EntryFvFresh.toFinset=some s2Step212EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step212EntryFvFresh,arenaWires]
  · norm_num [s2Step212EntryFvBefore,s2Step212EntryFBefore,s2Step212EntryFvFresh,arenaWires]
  · simp only [s2Step212EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step212EntryFv_checked : planRowResizeLog s2Step212EntryFvBefore s2Step212EntryFvRow 120 s2Step212EntryFvFresh=
    some (s2Step212EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786],770⟩,growRow 770 s2Step212EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step212EntryFvBefore s2Step212EntryFvAfter s2Step212EntryFvRow 120 s2Step212EntryFvFresh
    s2Step212EntryFv_distinct s2Step212EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step212EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step212EntryFvRow.payload++s2Step212EntryFvFresh) s2Step212EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step212EntryGAfter : Arena := s2Step212EntryFBefore

private def s2Step212EntryGBefore : Arena := s2Step212EntryFBefore

private theorem s2Step212EntryG_Incoming : rowsOwned s2Step212EntryGBefore [s2Step212EntryGRow,s2Step212EntryFvRow,s2Step212EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step212EntryFRow,s2Step212EntryGRow,s2Step212EntryFvRow,s2Step212EntryGvRow] 1 s2Step212EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step212EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212EntryG_Outgoing : rowsOwned s2Step212EntryGvAfter [s2Step212EntryGOut,s2Step212EntryFvOut,s2Step212EntryGvOut] :=
  hmrRows_owned_drop s2Step212EntryGvAfter [s2Step212EntryFOut,s2Step212EntryGOut,s2Step212EntryFvOut,s2Step212EntryGvOut] 1 s2Step212EntryBank_outgoingOwned

private theorem s2Step212EntryG_distinct : (s2Step212EntryGRow.sign::s2Step212EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212EntryG_owned : (s2Step212EntryGRow.sign::s2Step212EntryGRow.payload).toFinset⊆s2Step212EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step212EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EntryG_reserved : s2Step212EntryGBefore.reserve s2Step212EntryGFresh.toFinset=some s2Step212EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step212EntryGFresh,arenaWires]
  · norm_num [s2Step212EntryGBefore,s2Step212EntryFBefore,s2Step212EntryGFresh,arenaWires]
  · simp only [s2Step212EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step212EntryG_checked : planRowResizeLog s2Step212EntryGBefore s2Step212EntryGRow 163 s2Step212EntryGFresh=
    some (s2Step212EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162],769⟩,growRow 769 s2Step212EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step212EntryGBefore s2Step212EntryGAfter s2Step212EntryGRow 163 s2Step212EntryGFresh
    s2Step212EntryG_distinct s2Step212EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step212EntryG_reserved
  have rowEq : WindowRow.mk (s2Step212EntryGRow.payload++s2Step212EntryGFresh) s2Step212EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step212EntryGvBefore : Arena := s2Step212EntryFBefore

private theorem s2Step212EntryGv_Incoming : rowsOwned s2Step212EntryGvBefore [s2Step212EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step212EntryFRow,s2Step212EntryGRow,s2Step212EntryFvRow,s2Step212EntryGvRow] 3 s2Step212EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step212EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212EntryGv_Outgoing : rowsOwned s2Step212EntryGvAfter [s2Step212EntryGvOut] :=
  hmrRows_owned_drop s2Step212EntryGvAfter [s2Step212EntryFOut,s2Step212EntryGOut,s2Step212EntryFvOut,s2Step212EntryGvOut] 3 s2Step212EntryBank_outgoingOwned

private theorem s2Step212EntryGv_distinct : (s2Step212EntryGvRow.sign::s2Step212EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212EntryGv_owned : (s2Step212EntryGvRow.sign::s2Step212EntryGvRow.payload).toFinset⊆s2Step212EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step212EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212EntryGv_reserved : s2Step212EntryGvBefore.reserve s2Step212EntryGvFresh.toFinset=some s2Step212EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step212EntryGvFresh,arenaWires]
  · norm_num [s2Step212EntryGvBefore,s2Step212EntryFBefore,s2Step212EntryGvFresh,arenaWires]
  · simp only [s2Step212EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step212EntryGv_checked : planRowResizeLog s2Step212EntryGvBefore s2Step212EntryGvRow 120 s2Step212EntryGvFresh=
    some (s2Step212EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩,growRow 771 s2Step212EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step212EntryGvBefore s2Step212EntryGvAfter s2Step212EntryGvRow 120 s2Step212EntryGvFresh
    s2Step212EntryGv_distinct s2Step212EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step212EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step212EntryGvRow.payload++s2Step212EntryGvFresh) s2Step212EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step212EntryBank_rows : planWindowRowsLog s2Step212EntryFBefore [(s2Step212EntryFRow,163),(s2Step212EntryGRow,163),(s2Step212EntryFvRow,120),(s2Step212EntryGvRow,120)] [s2Step212EntryFFresh,s2Step212EntryGFresh,s2Step212EntryFvFresh,s2Step212EntryGvFresh]=
    some (s2Step212EntryGvAfter,[s2Step212EntryFOut,s2Step212EntryGOut,s2Step212EntryFvOut,s2Step212EntryGvOut],(growRow 768 s2Step212EntryFFresh ++ (growRow 769 s2Step212EntryGFresh ++ (growRow 770 s2Step212EntryFvFresh ++ (growRow 771 s2Step212EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step212EntryGvAfter [] []=some (s2Step212EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step212EntryGvBefore s2Step212EntryGvAfter s2Step212EntryGvAfter
    s2Step212EntryGvRow s2Step212EntryGvOut 120 s2Step212EntryGvFresh [] [] []
    (growRow 771 s2Step212EntryGvFresh) ([]) s2Step212EntryGv_Incoming s2Step212EntryGv_checked h4 s2Step212EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step212EntryFvBefore s2Step212EntryFvAfter s2Step212EntryGvAfter
    s2Step212EntryFvRow s2Step212EntryFvOut 120 s2Step212EntryFvFresh [(s2Step212EntryGvRow,120)] [s2Step212EntryGvFresh] [s2Step212EntryGvOut]
    (growRow 770 s2Step212EntryFvFresh) ((growRow 771 s2Step212EntryGvFresh ++ [])) s2Step212EntryFv_Incoming s2Step212EntryFv_checked h3 s2Step212EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step212EntryGBefore s2Step212EntryGAfter s2Step212EntryGvAfter
    s2Step212EntryGRow s2Step212EntryGOut 163 s2Step212EntryGFresh [(s2Step212EntryFvRow,120),(s2Step212EntryGvRow,120)] [s2Step212EntryFvFresh,s2Step212EntryGvFresh] [s2Step212EntryFvOut,s2Step212EntryGvOut]
    (growRow 769 s2Step212EntryGFresh) ((growRow 770 s2Step212EntryFvFresh ++ (growRow 771 s2Step212EntryGvFresh ++ []))) s2Step212EntryG_Incoming s2Step212EntryG_checked h2 s2Step212EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step212EntryFBefore s2Step212EntryFAfter s2Step212EntryGvAfter
    s2Step212EntryFRow s2Step212EntryFOut 163 s2Step212EntryFFresh [(s2Step212EntryGRow,163),(s2Step212EntryFvRow,120),(s2Step212EntryGvRow,120)] [s2Step212EntryGFresh,s2Step212EntryFvFresh,s2Step212EntryGvFresh] [s2Step212EntryGOut,s2Step212EntryFvOut,s2Step212EntryGvOut]
    (growRow 768 s2Step212EntryFFresh) ((growRow 769 s2Step212EntryGFresh ++ (growRow 770 s2Step212EntryFvFresh ++ (growRow 771 s2Step212EntryGvFresh ++ [])))) s2Step212EntryF_Incoming s2Step212EntryF_checked h1 s2Step212EntryF_Outgoing
  exact h0

private theorem s2Step212EntryBank_checked : compileHmrBankResizeLog .entry s2Step212EntryFBefore ⟨s2Step212EntryFRow,s2Step212EntryGRow,s2Step212EntryFvRow,s2Step212EntryGvRow⟩ ⟨163,163,120,120⟩ [s2Step212EntryFFresh,s2Step212EntryGFresh,s2Step212EntryFvFresh,s2Step212EntryGvFresh]=
    some (s2Step212EntryGvAfter,⟨s2Step212EntryFOut,s2Step212EntryGOut,s2Step212EntryFvOut,s2Step212EntryGvOut⟩,(growRow 768 s2Step212EntryFFresh ++ (growRow 769 s2Step212EntryGFresh ++ (growRow 770 s2Step212EntryFvFresh ++ (growRow 771 s2Step212EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step212EntryBank_rows]
  rfl

private def s2Step212ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212ExitFBefore : Arena := s2Step212ExitGAfter

private def s2Step212ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 791],768⟩

private def s2Step212ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩

private def s2Step212ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 839],769⟩

private def s2Step212ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 801],771⟩

private theorem s2Step212ExitBank_incomingDistinct : ([s2Step212ExitGRow,s2Step212ExitFRow,s2Step212ExitFvRow,s2Step212ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212ExitF_Incoming : rowsOwned s2Step212ExitFBefore [s2Step212ExitFRow,s2Step212ExitFvRow,s2Step212ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step212ExitGRow,s2Step212ExitFRow,s2Step212ExitFvRow,s2Step212ExitGvRow] 1 s2Step212ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step212ExitFBefore (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212ExitBank_outgoingOwned : rowsOwned s2Step212ExitGvAfter [s2Step212ExitGOut,s2Step212ExitFOut,s2Step212ExitFvOut,s2Step212ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step212ExitGvAfter (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212ExitF_Outgoing : rowsOwned s2Step212ExitGvAfter [s2Step212ExitFOut,s2Step212ExitFvOut,s2Step212ExitGvOut] :=
  hmrRows_owned_drop s2Step212ExitGvAfter [s2Step212ExitGOut,s2Step212ExitFOut,s2Step212ExitFvOut,s2Step212ExitGvOut] 1 s2Step212ExitBank_outgoingOwned

private theorem s2Step212ExitF_distinct : (s2Step212ExitFRow.sign::s2Step212ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212ExitF_owned : (s2Step212ExitFRow.sign::s2Step212ExitFRow.payload).toFinset⊆s2Step212ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step212ExitFBefore (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212ExitF_retired : s2Step212ExitFBefore.retireSet s2Step212ExitFExtra.toFinset=s2Step212ExitFAfter := by
  unfold Arena.retireSet s2Step212ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step212ExitFBefore,s2Step212ExitGAfter,s2Step212ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step212ExitF_checked : planRowResizeLog s2Step212ExitFBefore s2Step212ExitFRow 163 []=
    some (s2Step212ExitFAfter,s2Step212ExitFOut,shrinkRow 768 s2Step212ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step212ExitFBefore s2Step212ExitFRow 163 s2Step212ExitF_distinct s2Step212ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step212ExitFRow.payload.take 163) s2Step212ExitFRow.sign=s2Step212ExitFOut := by decide +kernel
  have hi : s2Step212ExitFRow.payload.drop 163=s2Step212ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step212ExitF_retired] at result
  exact result

private def s2Step212ExitFvAfter : Arena := s2Step212ExitFAfter

private def s2Step212ExitFvBefore : Arena := s2Step212ExitFAfter

private theorem s2Step212ExitFv_Incoming : rowsOwned s2Step212ExitFvBefore [s2Step212ExitFvRow,s2Step212ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step212ExitGRow,s2Step212ExitFRow,s2Step212ExitFvRow,s2Step212ExitGvRow] 2 s2Step212ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step212ExitFvBefore (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212ExitFv_Outgoing : rowsOwned s2Step212ExitGvAfter [s2Step212ExitFvOut,s2Step212ExitGvOut] :=
  hmrRows_owned_drop s2Step212ExitGvAfter [s2Step212ExitGOut,s2Step212ExitFOut,s2Step212ExitFvOut,s2Step212ExitGvOut] 2 s2Step212ExitBank_outgoingOwned

private theorem s2Step212ExitFv_distinct : (s2Step212ExitFvRow.sign::s2Step212ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212ExitFv_owned : (s2Step212ExitFvRow.sign::s2Step212ExitFvRow.payload).toFinset⊆s2Step212ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step212ExitFvBefore (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212ExitFv_reserved : s2Step212ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step212ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step212ExitFv_checked : planRowResizeLog s2Step212ExitFvBefore s2Step212ExitFvRow 121 []=
    some (s2Step212ExitFvAfter,s2Step212ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step212ExitFvBefore s2Step212ExitFvAfter s2Step212ExitFvRow 121 []
    s2Step212ExitFv_distinct s2Step212ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step212ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step212ExitFvRow.payload++[]) s2Step212ExitFvRow.sign=s2Step212ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step212ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step212ExitG_Incoming : rowsOwned s2Step212ExitGBefore [s2Step212ExitGRow,s2Step212ExitFRow,s2Step212ExitFvRow,s2Step212ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step212ExitGRow,s2Step212ExitFRow,s2Step212ExitFvRow,s2Step212ExitGvRow] 0 s2Step212ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step212ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212ExitG_Outgoing : rowsOwned s2Step212ExitGvAfter [s2Step212ExitGOut,s2Step212ExitFOut,s2Step212ExitFvOut,s2Step212ExitGvOut] :=
  hmrRows_owned_drop s2Step212ExitGvAfter [s2Step212ExitGOut,s2Step212ExitFOut,s2Step212ExitFvOut,s2Step212ExitGvOut] 0 s2Step212ExitBank_outgoingOwned

private theorem s2Step212ExitG_distinct : (s2Step212ExitGRow.sign::s2Step212ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212ExitG_owned : (s2Step212ExitGRow.sign::s2Step212ExitGRow.payload).toFinset⊆s2Step212ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step212ExitGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212ExitG_retired : s2Step212ExitGBefore.retireSet s2Step212ExitGExtra.toFinset=s2Step212ExitGAfter := by
  unfold Arena.retireSet s2Step212ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step212ExitGBefore,s2Step212ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step212ExitG_checked : planRowResizeLog s2Step212ExitGBefore s2Step212ExitGRow 162 []=
    some (s2Step212ExitGAfter,s2Step212ExitGOut,shrinkRow 769 s2Step212ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step212ExitGBefore s2Step212ExitGRow 162 s2Step212ExitG_distinct s2Step212ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step212ExitGRow.payload.take 162) s2Step212ExitGRow.sign=s2Step212ExitGOut := by decide +kernel
  have hi : s2Step212ExitGRow.payload.drop 162=s2Step212ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step212ExitG_retired] at result
  exact result

private def s2Step212ExitGvBefore : Arena := s2Step212ExitFAfter

private theorem s2Step212ExitGv_Incoming : rowsOwned s2Step212ExitGvBefore [s2Step212ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step212ExitGRow,s2Step212ExitFRow,s2Step212ExitFvRow,s2Step212ExitGvRow] 3 s2Step212ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step212ExitGvBefore (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212ExitGv_Outgoing : rowsOwned s2Step212ExitGvAfter [s2Step212ExitGvOut] :=
  hmrRows_owned_drop s2Step212ExitGvAfter [s2Step212ExitGOut,s2Step212ExitFOut,s2Step212ExitFvOut,s2Step212ExitGvOut] 3 s2Step212ExitBank_outgoingOwned

private theorem s2Step212ExitGv_distinct : (s2Step212ExitGvRow.sign::s2Step212ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212ExitGv_owned : (s2Step212ExitGvRow.sign::s2Step212ExitGvRow.payload).toFinset⊆s2Step212ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step212ExitGvBefore (fun q => (0≤q ∧ q<162) ∨ (163≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212ExitGv_retired : s2Step212ExitGvBefore.retireSet s2Step212ExitGvExtra.toFinset=s2Step212ExitGvAfter := by
  unfold Arena.retireSet s2Step212ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step212ExitGvBefore,s2Step212ExitFAfter,s2Step212ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step212ExitGv_checked : planRowResizeLog s2Step212ExitGvBefore s2Step212ExitGvRow 120 []=
    some (s2Step212ExitGvAfter,s2Step212ExitGvOut,shrinkRow 771 s2Step212ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step212ExitGvBefore s2Step212ExitGvRow 120 s2Step212ExitGv_distinct s2Step212ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step212ExitGvRow.payload.take 120) s2Step212ExitGvRow.sign=s2Step212ExitGvOut := by decide +kernel
  have hi : s2Step212ExitGvRow.payload.drop 120=s2Step212ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step212ExitGv_retired] at result
  exact result

private theorem s2Step212ExitBank_rows : planWindowRowsLog s2Step212ExitGBefore [(s2Step212ExitGRow,162),(s2Step212ExitFRow,163),(s2Step212ExitFvRow,121),(s2Step212ExitGvRow,120)] [[],[],[],[]]=
    some (s2Step212ExitGvAfter,[s2Step212ExitGOut,s2Step212ExitFOut,s2Step212ExitFvOut,s2Step212ExitGvOut],(shrinkRow 769 s2Step212ExitGExtra ++ (shrinkRow 768 s2Step212ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step212ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step212ExitGvAfter [] []=some (s2Step212ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step212ExitGvBefore s2Step212ExitGvAfter s2Step212ExitGvAfter
    s2Step212ExitGvRow s2Step212ExitGvOut 120 [] [] [] []
    (shrinkRow 771 s2Step212ExitGvExtra) ([]) s2Step212ExitGv_Incoming s2Step212ExitGv_checked h4 s2Step212ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step212ExitFvBefore s2Step212ExitFvAfter s2Step212ExitGvAfter
    s2Step212ExitFvRow s2Step212ExitFvOut 121 [] [(s2Step212ExitGvRow,120)] [[]] [s2Step212ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step212ExitGvExtra ++ [])) s2Step212ExitFv_Incoming s2Step212ExitFv_checked h3 s2Step212ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step212ExitFBefore s2Step212ExitFAfter s2Step212ExitGvAfter
    s2Step212ExitFRow s2Step212ExitFOut 163 [] [(s2Step212ExitFvRow,121),(s2Step212ExitGvRow,120)] [[],[]] [s2Step212ExitFvOut,s2Step212ExitGvOut]
    (shrinkRow 768 s2Step212ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step212ExitGvExtra ++ []))) s2Step212ExitF_Incoming s2Step212ExitF_checked h2 s2Step212ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step212ExitGBefore s2Step212ExitGAfter s2Step212ExitGvAfter
    s2Step212ExitGRow s2Step212ExitGOut 162 [] [(s2Step212ExitFRow,163),(s2Step212ExitFvRow,121),(s2Step212ExitGvRow,120)] [[],[],[]] [s2Step212ExitFOut,s2Step212ExitFvOut,s2Step212ExitGvOut]
    (shrinkRow 769 s2Step212ExitGExtra) ((shrinkRow 768 s2Step212ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step212ExitGvExtra ++ [])))) s2Step212ExitG_Incoming s2Step212ExitG_checked h1 s2Step212ExitG_Outgoing
  exact h0

private theorem s2Step212ExitBank_checked : compileHmrBankResizeLog .exit s2Step212ExitGBefore ⟨s2Step212ExitFRow,s2Step212ExitGRow,s2Step212ExitFvRow,s2Step212ExitGvRow⟩ ⟨163,162,121,120⟩ [[],[],[],[]]=
    some (s2Step212ExitGvAfter,⟨s2Step212ExitFOut,s2Step212ExitGOut,s2Step212ExitFvOut,s2Step212ExitGvOut⟩,(shrinkRow 769 s2Step212ExitGExtra ++ (shrinkRow 768 s2Step212ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step212ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step212ExitBank_rows]
  rfl

private theorem s2Step212Add0_apart : Disjoint s2Step212Add0Arena.live s2Step212Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step212Add0Arena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212Add0_card : s2Step212Add0Arena.live.card=887 := by
  decide +kernel

private theorem s2Step212Add0_borrowed : s2Step212Add0Arena.checkBorrow (hmrHybridCount s2Step212Add0Arena s2Step212Add0B.length) s2Step212Add0Work=some s2Step212Add0During := by
  have len : s2Step212Add0Work.length=hmrHybridCount s2Step212Add0Arena s2Step212Add0B.length := by
    rw [hmrHybridCount,s2Step212Add0_card]
    decide +kernel
  have nd : s2Step212Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step212Add0Arena s2Step212Add0During s2Step212Add0Work.toFinset s2Step212Add0_bounded s2Step212Add0_apart rfl

private theorem s2Step212Add0_distinct : (845::796::789::(s2Step212Add0A++s2Step212Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212Add0_owned : (845::796::789::(s2Step212Add0A++s2Step212Add0B)).toFinset⊆s2Step212Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step212Add0Arena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212Add0_checked : compileHmrHybridCinLog s2Step212Add0Arena 796 845 789 s2Step212Add0A s2Step212Add0B s2Step212Add0Work=some s2Step212Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step212Add0Arena s2Step212Add0During 796 845 789 s2Step212Add0A s2Step212Add0B s2Step212Add0Work
    (by decide +kernel) (by decide +kernel) s2Step212Add0_distinct
    (fun q hq => s2Step212Add0_owned (List.mem_toFinset.mpr hq)) s2Step212Add0_borrowed

private theorem s2Step212Add1_apart : Disjoint s2Step212Add1Arena.live s2Step212Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step212Add1Arena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212Add1_card : s2Step212Add1Arena.live.card=887 := by
  decide +kernel

private theorem s2Step212Add1_borrowed : s2Step212Add1Arena.checkBorrow (hmrHybridCount s2Step212Add1Arena s2Step212Add1B.length) s2Step212Add1Work=some s2Step212Add1During := by
  have len : s2Step212Add1Work.length=hmrHybridCount s2Step212Add1Arena s2Step212Add1B.length := by
    rw [hmrHybridCount,s2Step212Add1_card]
    decide +kernel
  have nd : s2Step212Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step212Add1Arena s2Step212Add1During s2Step212Add1Work.toFinset s2Step212Add1_bounded s2Step212Add1_apart rfl

private theorem s2Step212Add1_distinct : (845::796::789::(s2Step212Add1A++s2Step212Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212Add1_owned : (845::796::789::(s2Step212Add1A++s2Step212Add1B)).toFinset⊆s2Step212Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step212Add1Arena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212Add1_checked : compileHmrHybridCinLog s2Step212Add1Arena 796 845 789 s2Step212Add1A s2Step212Add1B s2Step212Add1Work=some s2Step212Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step212Add1Arena s2Step212Add1During 796 845 789 s2Step212Add1A s2Step212Add1B s2Step212Add1Work
    (by decide +kernel) (by decide +kernel) s2Step212Add1_distinct
    (fun q hq => s2Step212Add1_owned (List.mem_toFinset.mpr hq)) s2Step212Add1_borrowed

private theorem s2Step212F4_apart : Disjoint (s2Step212Add0A++s2Step212Add0B).toFinset (s2Step212Add1A++s2Step212Add1B).toFinset := by
  have nd : ((s2Step212Add0A++s2Step212Add0B)++(s2Step212Add1A++s2Step212Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step212F4_carry : s2Step212F4FlagArena.checkBorrow 1 [789]=some s2Step212Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step212F4FlagArena,s2Step212HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step212F4FlagArena,s2Step212HeadFvAfter,s2Step212Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step212F4_distinct : (822::796::845::789::((s2Step212Add0A++s2Step212Add1A)++(s2Step212Add0B++s2Step212Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212F4_flag : s2Step212HeadFvAfter.checkBorrow 1 [845]=some s2Step212F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step212HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step212F4_owned : (822::796::((s2Step212Add0A++s2Step212Add1A)++(s2Step212Add0B++s2Step212Add1B))).toFinset⊆s2Step212HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step212HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212F4_checked : compileHmrHybridF4Log s2Step212HeadFvAfter 822 796 s2Step212Add0A s2Step212Add0B s2Step212Add1A s2Step212Add1B [845] [789] s2Step212Add0Work s2Step212Add1Work=some s2Step212F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step212HeadFvAfter s2Step212F4FlagArena s2Step212Add0Arena s2Step212Add0During s2Step212Add1During 822 796
    s2Step212Add0A s2Step212Add0B s2Step212Add1A s2Step212Add1B [845] [789] s2Step212Add0Work s2Step212Add1Work
    (fun q hq => s2Step212F4_owned (List.mem_toFinset.mpr hq)) s2Step212F4_flag s2Step212F4_carry
    s2Step212F4_distinct s2Step212F4_apart s2Step212Add0_checked s2Step212Add1_checked

private theorem s2Step212Front_branch : s2Step212FrontSigmaArena.checkBorrow 1 [796]=some s2Step212HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step212FrontSigmaArena,s2Step212EntryGvAfter,s2Step212EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step212FrontSigmaArena,s2Step212EntryGvAfter,s2Step212EntryFBefore,s2Step212HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step212Front_entry : HmrFrontEntryValid s2Step212EntryFBefore s2Step212FrontBank 163 120 ⟨163,162,121,120⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step212FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step212EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step212EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step212FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step212Front_sigma : s2Step212EntryGvAfter.checkBorrow 1 [822]=some s2Step212FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step212EntryGvAfter,s2Step212EntryFBefore,arenaWires]
  · rfl

private def s2Step212HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212HeadFBefore : Arena := s2Step212HeadGAfter

private def s2Step212HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step212HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786],770⟩

private def s2Step212HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162],769⟩

private def s2Step212HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩

private theorem s2Step212HeadBank_incomingDistinct : ([s2Step212HeadGRow,s2Step212HeadFRow,s2Step212HeadGvRow,s2Step212HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212HeadF_Incoming : rowsOwned s2Step212HeadFBefore [s2Step212HeadFRow,s2Step212HeadGvRow,s2Step212HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step212HeadGRow,s2Step212HeadFRow,s2Step212HeadGvRow,s2Step212HeadFvRow] 1 s2Step212HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step212HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212HeadBank_outgoingOwned : rowsOwned s2Step212HeadFvAfter [s2Step212HeadGOut,s2Step212HeadFOut,s2Step212HeadGvOut,s2Step212HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step212HeadFvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212HeadF_Outgoing : rowsOwned s2Step212HeadFvAfter [s2Step212HeadFOut,s2Step212HeadGvOut,s2Step212HeadFvOut] :=
  hmrRows_owned_drop s2Step212HeadFvAfter [s2Step212HeadGOut,s2Step212HeadFOut,s2Step212HeadGvOut,s2Step212HeadFvOut] 1 s2Step212HeadBank_outgoingOwned

private theorem s2Step212HeadF_distinct : (s2Step212HeadFRow.sign::s2Step212HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212HeadF_owned : (s2Step212HeadFRow.sign::s2Step212HeadFRow.payload).toFinset⊆s2Step212HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step212HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212HeadF_reserved : s2Step212HeadFBefore.reserve s2Step212HeadFFresh.toFinset=some s2Step212HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step212HeadFFresh,arenaWires]
  · norm_num [s2Step212HeadFBefore,s2Step212HeadGAfter,s2Step212HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step212HeadFAfter,s2Step212HeadFBefore,s2Step212HeadGAfter,s2Step212HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step212HeadF_checked : planRowResizeLog s2Step212HeadFBefore s2Step212HeadFRow 164 s2Step212HeadFFresh=
    some (s2Step212HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 791],768⟩,growRow 768 s2Step212HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step212HeadFBefore s2Step212HeadFAfter s2Step212HeadFRow 164 s2Step212HeadFFresh
    s2Step212HeadF_distinct s2Step212HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step212HeadF_reserved
  have rowEq : WindowRow.mk (s2Step212HeadFRow.payload++s2Step212HeadFFresh) s2Step212HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 791],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step212HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step212HeadFvBefore : Arena := s2Step212HeadGvAfter

private theorem s2Step212HeadFv_Incoming : rowsOwned s2Step212HeadFvBefore [s2Step212HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step212HeadGRow,s2Step212HeadFRow,s2Step212HeadGvRow,s2Step212HeadFvRow] 3 s2Step212HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step212HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212HeadFv_Outgoing : rowsOwned s2Step212HeadFvAfter [s2Step212HeadFvOut] :=
  hmrRows_owned_drop s2Step212HeadFvAfter [s2Step212HeadGOut,s2Step212HeadFOut,s2Step212HeadGvOut,s2Step212HeadFvOut] 3 s2Step212HeadBank_outgoingOwned

private theorem s2Step212HeadFv_distinct : (s2Step212HeadFvRow.sign::s2Step212HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212HeadFv_owned : (s2Step212HeadFvRow.sign::s2Step212HeadFvRow.payload).toFinset⊆s2Step212HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step212HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212HeadFv_reserved : s2Step212HeadFvBefore.reserve s2Step212HeadFvFresh.toFinset=some s2Step212HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step212HeadFvFresh,arenaWires]
  · norm_num [s2Step212HeadFvBefore,s2Step212HeadGvAfter,s2Step212HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step212HeadFvAfter,s2Step212HeadFvBefore,s2Step212HeadGvAfter,s2Step212HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step212HeadFv_checked : planRowResizeLog s2Step212HeadFvBefore s2Step212HeadFvRow 121 s2Step212HeadFvFresh=
    some (s2Step212HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩,growRow 770 s2Step212HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step212HeadFvBefore s2Step212HeadFvAfter s2Step212HeadFvRow 121 s2Step212HeadFvFresh
    s2Step212HeadFv_distinct s2Step212HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step212HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step212HeadFvRow.payload++s2Step212HeadFvFresh) s2Step212HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step212HeadG_Incoming : rowsOwned s2Step212HeadGBefore [s2Step212HeadGRow,s2Step212HeadFRow,s2Step212HeadGvRow,s2Step212HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step212HeadGRow,s2Step212HeadFRow,s2Step212HeadGvRow,s2Step212HeadFvRow] 0 s2Step212HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step212HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212HeadG_Outgoing : rowsOwned s2Step212HeadFvAfter [s2Step212HeadGOut,s2Step212HeadFOut,s2Step212HeadGvOut,s2Step212HeadFvOut] :=
  hmrRows_owned_drop s2Step212HeadFvAfter [s2Step212HeadGOut,s2Step212HeadFOut,s2Step212HeadGvOut,s2Step212HeadFvOut] 0 s2Step212HeadBank_outgoingOwned

private theorem s2Step212HeadG_distinct : (s2Step212HeadGRow.sign::s2Step212HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212HeadG_owned : (s2Step212HeadGRow.sign::s2Step212HeadGRow.payload).toFinset⊆s2Step212HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step212HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212HeadG_reserved : s2Step212HeadGBefore.reserve s2Step212HeadGFresh.toFinset=some s2Step212HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step212HeadGFresh,arenaWires]
  · norm_num [s2Step212HeadGBefore,s2Step212HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step212HeadGAfter,s2Step212HeadGBefore,s2Step212HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step212HeadG_checked : planRowResizeLog s2Step212HeadGBefore s2Step212HeadGRow 164 s2Step212HeadGFresh=
    some (s2Step212HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 839],769⟩,growRow 769 s2Step212HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step212HeadGBefore s2Step212HeadGAfter s2Step212HeadGRow 164 s2Step212HeadGFresh
    s2Step212HeadG_distinct s2Step212HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step212HeadG_reserved
  have rowEq : WindowRow.mk (s2Step212HeadGRow.payload++s2Step212HeadGFresh) s2Step212HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 839],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step212HeadGvBefore : Arena := s2Step212HeadFAfter

private theorem s2Step212HeadGv_Incoming : rowsOwned s2Step212HeadGvBefore [s2Step212HeadGvRow,s2Step212HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step212HeadGRow,s2Step212HeadFRow,s2Step212HeadGvRow,s2Step212HeadFvRow] 2 s2Step212HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step212HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step212HeadGv_Outgoing : rowsOwned s2Step212HeadFvAfter [s2Step212HeadGvOut,s2Step212HeadFvOut] :=
  hmrRows_owned_drop s2Step212HeadFvAfter [s2Step212HeadGOut,s2Step212HeadFOut,s2Step212HeadGvOut,s2Step212HeadFvOut] 2 s2Step212HeadBank_outgoingOwned

private theorem s2Step212HeadGv_distinct : (s2Step212HeadGvRow.sign::s2Step212HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step212HeadGv_owned : (s2Step212HeadGvRow.sign::s2Step212HeadGvRow.payload).toFinset⊆s2Step212HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step212HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step212HeadGv_reserved : s2Step212HeadGvBefore.reserve s2Step212HeadGvFresh.toFinset=some s2Step212HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step212HeadGvFresh,arenaWires]
  · norm_num [s2Step212HeadGvBefore,s2Step212HeadFAfter,s2Step212HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step212HeadGvAfter,s2Step212HeadGvBefore,s2Step212HeadFAfter,s2Step212HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step212HeadGv_checked : planRowResizeLog s2Step212HeadGvBefore s2Step212HeadGvRow 121 s2Step212HeadGvFresh=
    some (s2Step212HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 801],771⟩,growRow 771 s2Step212HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step212HeadGvBefore s2Step212HeadGvAfter s2Step212HeadGvRow 121 s2Step212HeadGvFresh
    s2Step212HeadGv_distinct s2Step212HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step212HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step212HeadGvRow.payload++s2Step212HeadGvFresh) s2Step212HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 801],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step212HeadBank_rows : planWindowRowsLog s2Step212HeadGBefore [(s2Step212HeadGRow,164),(s2Step212HeadFRow,164),(s2Step212HeadGvRow,121),(s2Step212HeadFvRow,121)] [s2Step212HeadGFresh,s2Step212HeadFFresh,s2Step212HeadGvFresh,s2Step212HeadFvFresh]=
    some (s2Step212HeadFvAfter,[s2Step212HeadGOut,s2Step212HeadFOut,s2Step212HeadGvOut,s2Step212HeadFvOut],(growRow 769 s2Step212HeadGFresh ++ (growRow 768 s2Step212HeadFFresh ++ (growRow 771 s2Step212HeadGvFresh ++ (growRow 770 s2Step212HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step212HeadFvAfter [] []=some (s2Step212HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step212HeadFvBefore s2Step212HeadFvAfter s2Step212HeadFvAfter
    s2Step212HeadFvRow s2Step212HeadFvOut 121 s2Step212HeadFvFresh [] [] []
    (growRow 770 s2Step212HeadFvFresh) ([]) s2Step212HeadFv_Incoming s2Step212HeadFv_checked h4 s2Step212HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step212HeadGvBefore s2Step212HeadGvAfter s2Step212HeadFvAfter
    s2Step212HeadGvRow s2Step212HeadGvOut 121 s2Step212HeadGvFresh [(s2Step212HeadFvRow,121)] [s2Step212HeadFvFresh] [s2Step212HeadFvOut]
    (growRow 771 s2Step212HeadGvFresh) ((growRow 770 s2Step212HeadFvFresh ++ [])) s2Step212HeadGv_Incoming s2Step212HeadGv_checked h3 s2Step212HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step212HeadFBefore s2Step212HeadFAfter s2Step212HeadFvAfter
    s2Step212HeadFRow s2Step212HeadFOut 164 s2Step212HeadFFresh [(s2Step212HeadGvRow,121),(s2Step212HeadFvRow,121)] [s2Step212HeadGvFresh,s2Step212HeadFvFresh] [s2Step212HeadGvOut,s2Step212HeadFvOut]
    (growRow 768 s2Step212HeadFFresh) ((growRow 771 s2Step212HeadGvFresh ++ (growRow 770 s2Step212HeadFvFresh ++ []))) s2Step212HeadF_Incoming s2Step212HeadF_checked h2 s2Step212HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step212HeadGBefore s2Step212HeadGAfter s2Step212HeadFvAfter
    s2Step212HeadGRow s2Step212HeadGOut 164 s2Step212HeadGFresh [(s2Step212HeadFRow,164),(s2Step212HeadGvRow,121),(s2Step212HeadFvRow,121)] [s2Step212HeadFFresh,s2Step212HeadGvFresh,s2Step212HeadFvFresh] [s2Step212HeadFOut,s2Step212HeadGvOut,s2Step212HeadFvOut]
    (growRow 769 s2Step212HeadGFresh) ((growRow 768 s2Step212HeadFFresh ++ (growRow 771 s2Step212HeadGvFresh ++ (growRow 770 s2Step212HeadFvFresh ++ [])))) s2Step212HeadG_Incoming s2Step212HeadG_checked h1 s2Step212HeadG_Outgoing
  exact h0

private theorem s2Step212HeadBank_checked : compileHmrBankResizeLog .headroom s2Step212HeadGBefore ⟨s2Step212HeadFRow,s2Step212HeadGRow,s2Step212HeadFvRow,s2Step212HeadGvRow⟩ ⟨164,164,121,121⟩ [s2Step212HeadGFresh,s2Step212HeadFFresh,s2Step212HeadGvFresh,s2Step212HeadFvFresh]=
    some (s2Step212HeadFvAfter,⟨s2Step212HeadFOut,s2Step212HeadGOut,s2Step212HeadFvOut,s2Step212HeadGvOut⟩,(growRow 769 s2Step212HeadGFresh ++ (growRow 768 s2Step212HeadFFresh ++ (growRow 771 s2Step212HeadGvFresh ++ (growRow 770 s2Step212HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step212HeadBank_rows]
  rfl

private theorem s2Step212Front_checked : compileHmrSourceFrontLog s2Step212EntryFBefore s2Step212FrontBank 163 120 ⟨163,162,121,120⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step212FrontLog=some s2Step212FrontPlan := by
  have pairEq : s2Step212FrontPair=⟨s2Step212HeadFRow,s2Step212HeadGRow,s2Step212HeadFvRow,s2Step212HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step212FrontHead=⟨s2Step212ExitFRow,s2Step212ExitGRow,s2Step212ExitFvRow,s2Step212ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step212Add0A=s2Step212FrontHead.f.wires := by decide +kernel
  have gEq : s2Step212Add0B=s2Step212FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step212Add1A=s2Step212FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step212Add1B=s2Step212FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step212EntryFBefore s2Step212FrontBank 163 120 ⟨163,162,121,120⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step212FrontLog s2Step212FrontPlan
  · exact s2Step212Front_entry
  · exact s2Step212EntryBank_checked
  · exact s2Step212Front_sigma
  · rfl
  · exact s2Step212Front_branch
  · rfl
  · simpa only [s2Step212FrontPlan,pairEq] using s2Step212HeadBank_checked
  · simpa only [s2Step212FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step212F4_checked
  · exact s2Step212Counter_checked
  · rfl
  · simpa only [s2Step212FrontPlan,headEq] using s2Step212ExitBank_checked

private theorem s2Step212Complete_explicit_checked : compileHmrEarlyStepLog s2Step212EntryFBefore s2Step212FrontBank 163 120 ⟨163,162,121,120⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step212CompleteLog=some s2Step212CompletePlan := by
  let Q := s2Step212EarlyControlPlan
  have hq := s2Step212EarlyControl_plan_checked
  have fv1 : s2Step212CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step212CompleteOut.fv.payload[2]?.getD s2Step212CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step212CompleteOut.fv.payload[3]?.getD s2Step212CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step212CompleteOut.fv.payload[4]?.getD s2Step212CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step212EntryFBefore s2Step212EarlyControlArena s2Step212FrontBank 163 120 ⟨163,162,121,120⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step212CompleteLog s2Step212FrontPlan Q
    s2Step212Front_checked s2Step212Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step212Complete_owned s2Step212Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step212EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 822 s2Step212CompleteOut.fv.second (s2Step212CompleteOut.fv.payload[2]?.getD s2Step212CompleteOut.fv.sign) (s2Step212CompleteOut.fv.payload[3]?.getD s2Step212CompleteOut.fv.sign) (s2Step212CompleteOut.fv.payload[4]?.getD s2Step212CompleteOut.fv.sign) 796 47 s2Step212EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep212Arena : Arena := s2Step212EntryFBefore
def s2PrivateStep212Bank : WindowBank := s2Step212FrontBank
def s2PrivateStep212Spec : HmrSourceWalkStepLog := ⟨163,120,⟨163,162,121,120⟩,47,.early s2Step212CompleteLog⟩
def s2PrivateStep212Plan : HmrSourceStepPlan := .early s2Step212CompletePlan
theorem s2PrivateStep212_source : s2PrivateStep212Spec=s2ObservedLogs208[4] := rfl
theorem s2PrivateStep212_checked : compileHmrSourceStepLog s2PrivateStep212Arena s2PrivateStep212Bank
    s2PrivateStep212Spec.fgWidth s2PrivateStep212Spec.vWidth s2PrivateStep212Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 212 s2PrivateStep212Spec.need none s2PrivateStep212Spec.log=some s2PrivateStep212Plan := by
  change compileHmrSourceStepLog s2Step212EntryFBefore s2Step212FrontBank 163 120 ⟨163,162,121,120⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 212 47 none (.early s2Step212CompleteLog)=some (.early s2Step212CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 212<498)]
  rw [s2Step212Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
