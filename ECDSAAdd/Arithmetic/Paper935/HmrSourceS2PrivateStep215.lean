import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep213
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

private def s2Step215CompleteMoves : List (Wire × Wire) := [(798,674)]

private def s2Step215EarlyControlLog : HmrEarlyControlLog := ⟨[798, 815, 783, 789, 845],[801],[814],[882, 826, 842, 885, 891, 894],[]⟩

private def s2Step215FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [845], [], [851]],[[801], [789], [815], [783]],[[], [], [], []]⟩,[796],[839],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step215CompleteLog : HmrEarlyStepLog := ⟨s2Step215FrontLog,s2Step215CompleteMoves,s2Step215EarlyControlLog⟩

private def s2Step215ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673],768⟩

private def s2Step215ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩

private def s2Step215ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],769⟩

private def s2Step215ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851],771⟩

private def s2Step215FrontOut : WindowBank := ⟨s2Step215ExitFOut,s2Step215ExitGOut,s2Step215ExitFvOut,s2Step215ExitGvOut⟩

private def s2Step215CompleteOut : WindowBank := s2Step215FrontOut.repacked s2Step215CompleteMoves

private def s2Step215EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step215EarlyControlPositiveArena,[801],s2Step215EarlyControlEqualityArena,[814],⟨⟨796,false⟩,[⟨⟨801,false⟩,814⟩]⟩⟩

private def s2Step215EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,798⟩,⟨⟨774,false⟩,815⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,789⟩,⟨⟨777,false⟩,845⟩]⟩

private def s2Step215EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step215EarlyControlZeroArena,s2Step215EarlyControlZeroPlan,s2Step215EarlyControlClassPlan,s2Step215EarlyControlFlagArena,s2Step215EarlyControlFittedArena,s2Step215EarlyControlHistoryArena,s2Step215EarlyControlSigmaArena,s2Step215EarlyControlOutputArena,s2Step215EarlyControlLog⟩

private def s2Step215CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step215Counter_bounded : s2Step215CounterWork.toFinset⊆arenaWires := by norm_num [s2Step215CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step215HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215CounterDuring : Arena := ⟨s2Step215HeadFvAfter.live∪s2Step215CounterWork.toFinset,Finset.union_subset s2Step215HeadFvAfter.bounded s2Step215Counter_bounded⟩

private def s2Step215EntryFFresh : List Wire := []

private def s2Step215EntryFvFresh : List Wire := []

private def s2Step215EntryGFresh : List Wire := [845]

private def s2Step215EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215EntryGvFresh : List Wire := [851]

private def s2Step215ExitFExtra : List Wire := [674, 789]

private def s2Step215ExitFvExtra : List Wire := [783]

private def s2Step215ExitGExtra : List Wire := [845, 801]

private def s2Step215ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<674) ∨ (675≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215ExitGvExtra : List Wire := [815]

private def s2Step215Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step215Add0_bounded : s2Step215Add0Work.toFinset⊆arenaWires := by
  have h : s2Step215Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step215Add0During : Arena := ⟨s2Step215Add0Arena.live∪s2Step215Add0Work.toFinset,Finset.union_subset s2Step215Add0Arena.bounded s2Step215Add0_bounded⟩

private def s2Step215Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step215Add1_bounded : s2Step215Add1Work.toFinset⊆arenaWires := by
  have h : s2Step215Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step215Add1During : Arena := ⟨s2Step215Add1Arena.live∪s2Step215Add1Work.toFinset,Finset.union_subset s2Step215Add1Arena.bounded s2Step215Add1_bounded⟩

private def s2Step215F4FlagArena : Arena := ⟨s2Step215HeadFvAfter.live∪{814},Finset.union_subset s2Step215HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step215F4Plan : HmrHybridF4Plan := ⟨s2Step215F4FlagArena,[814],s2Step215Add0Arena,[882],s2Step215Add0During,s2Step215Add0Work,s2Step215Add1During,s2Step215Add1Work⟩

private def s2Step215HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 789],768⟩

private def s2Step215HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 783],770⟩

private def s2Step215HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 845, 801],769⟩

private def s2Step215HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 815],771⟩

private def s2Step215FrontHead : WindowBank := ⟨s2Step215HeadFOut,s2Step215HeadGOut,s2Step215HeadFvOut,s2Step215HeadGvOut⟩

private def s2Step215EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step215EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩

private def s2Step215EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 845],769⟩

private def s2Step215EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851],771⟩

private def s2Step215FrontPair : WindowBank := ⟨s2Step215EntryFOut,s2Step215EntryGOut,s2Step215EntryFvOut,s2Step215EntryGvOut⟩

private def s2Step215FrontSigmaArena : Arena := ⟨s2Step215EntryGvAfter.live∪{796},Finset.union_subset s2Step215EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step215HeadFFresh : List Wire := [789]

private def s2Step215HeadFvFresh : List Wire := [783]

private def s2Step215HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215HeadGFresh : List Wire := [801]

private def s2Step215HeadGvFresh : List Wire := [815]

private def s2Step215FrontPlan : HmrSourceFront := ⟨s2Step215EntryGvAfter,s2Step215FrontPair,(growRow 768 s2Step215EntryFFresh ++ (growRow 769 s2Step215EntryGFresh ++ (growRow 770 s2Step215EntryFvFresh ++ (growRow 771 s2Step215EntryGvFresh ++ [])))),s2Step215FrontSigmaArena,[796],s2Step215HeadGBefore,[839],
  s2Step215HeadFvAfter,s2Step215FrontHead,(growRow 769 s2Step215HeadGFresh ++ (growRow 768 s2Step215HeadFFresh ++ (growRow 771 s2Step215HeadGvFresh ++ (growRow 770 s2Step215HeadFvFresh ++ [])))),s2Step215F4Plan,s2Step215CounterDuring,s2Step215CounterWork,s2Step215ExitGvAfter,s2Step215FrontOut,(shrinkRow 769 s2Step215ExitGExtra ++ (shrinkRow 768 s2Step215ExitFExtra ++ (shrinkRow 770 s2Step215ExitFvExtra ++ (shrinkRow 771 s2Step215ExitGvExtra ++ []))))⟩

private def s2Step215CompletePlan : HmrEarlyStepPlan := ⟨s2Step215FrontPlan,s2Step215EarlyControlArena,s2Step215EarlyControlPlan,s2Step215CompleteMoves⟩

private theorem s2Step215Complete_apart : List.Disjoint (s2Step215CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [796, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step215CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[796, 839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step215Complete_owned : (s2Step215CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step215EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step215EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step215CompleteMoveArena : Arena := ⟨s2Step215ExitGvAfter.live∪{674},Finset.union_subset s2Step215ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step215Complete_repack : s2Step215ExitGvAfter.checkRepack s2Step215CompleteMoves=some s2Step215EarlyControlArena := by
  have owned : 798∈s2Step215ExitGvAfter.live := by norm_num [s2Step215ExitGvAfter,arenaWires]
  have reserve : s2Step215ExitGvAfter.reserve {674}=some s2Step215CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step215ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step215CompleteMoveArena.retireSet {798}=s2Step215EarlyControlArena := by
    unfold Arena.retireSet s2Step215EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step215CompleteMoveArena,s2Step215ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step215CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step215CompleteMoveArena.retireSet {798}).checkRepack []=some s2Step215EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step215EarlyControl_branchOwned : ([839] : List Wire).toFinset⊆s2Step215EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step215EarlyControlSigmaArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EarlyControl_branch : compileHmrBranchRetirement s2Step215EarlyControlSigmaArena 839=some s2Step215EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step215EarlyControl_branchOwned
  · ext q
    simp [s2Step215EarlyControlOutputArena,s2Step215EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step215EarlyControl_classEqualityBorrow : s2Step215EarlyControlPositiveArena.checkBorrow (([796, 801] : List Wire).length-1) s2Step215EarlyControlLog.classWork=some s2Step215EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step215EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step215EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step215EarlyControlEqualityArena,s2Step215EarlyControlPositiveArena,s2Step215EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step215EarlyControl_classEqualityOwned : ([796, 801] : List Wire).toFinset⊆s2Step215EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step215EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EarlyControl_classEquality : compileHmrEqualityLog s2Step215EarlyControlPositiveArena [796, 801] 0 s2Step215EarlyControlLog.classWork=some (s2Step215EarlyControlEqualityArena,s2Step215EarlyControlLog.classWork,s2Step215EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step215EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step215EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step215EarlyControl_classOwned : ([777, 845, 796] : List Wire).toFinset⊆s2Step215EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step215EarlyControlZeroArena (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EarlyControl_positiveBorrow : s2Step215EarlyControlZeroArena.checkBorrow (1) s2Step215EarlyControlLog.positiveWork=some s2Step215EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step215EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step215EarlyControlZeroArena (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step215EarlyControlPositiveArena,s2Step215EarlyControlZeroArena,s2Step215EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step215EarlyControl_class : compileHmrSourceClassLog s2Step215EarlyControlZeroArena false 777 s2Step215EarlyControlZeroPlan.top 0 796 s2Step215EarlyControlLog.positiveWork s2Step215EarlyControlLog.classWork=some s2Step215EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step215EarlyControlClassPlan s2Step215EarlyControlZeroArena false 777 s2Step215EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s2Step215EarlyControl_classOwned
  · exact s2Step215EarlyControl_positiveBorrow
  · exact s2Step215EarlyControl_classEquality

private theorem s2Step215EarlyControl_entryRecordOwned : ([839, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step215EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step215EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s2Step215EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step215EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EarlyControl_fitBorrow : s2Step215EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step215EarlyControlLog.recordFresh=some s2Step215EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step215EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step215EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step215EarlyControlFittedArena,s2Step215EarlyControlFlagArena,s2Step215EarlyControlLog,arenaWires]

private theorem s2Step215EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step215EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step215EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EarlyControl_fit : compileHmrRecordGrowLog s2Step215EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step215EarlyControlLog.recordFresh=some s2Step215EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step215EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step215EarlyControl_fitBorrow

private theorem s2Step215EarlyControl_flagsBorrow : s2Step215EarlyControlEqualityArena.checkBorrow (6) s2Step215EarlyControlLog.flagWork=some s2Step215EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step215EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step215EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step215EarlyControlFlagArena,s2Step215EarlyControlEqualityArena,s2Step215EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step215EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step215EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step215EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EarlyControl_flags : compileHmrFlagsLog s2Step215EarlyControlClassPlan.equalityArena s2Step215EarlyControlClassPlan.equality.top 253 252 251 s2Step215EarlyControlLog.flagWork=some s2Step215EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step215EarlyControl_flagsOwned⟩
  · exact s2Step215EarlyControl_flagsBorrow

private theorem s2Step215EarlyControl_historyBorrow : s2Step215EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step215EarlyControlLog.recordFresh=some s2Step215EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step215EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step215EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step215EarlyControlHistoryArena,s2Step215EarlyControlArena,s2Step215EarlyControlLog,arenaWires]

private theorem s2Step215EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step215EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step215EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EarlyControl_history : compileHmrRecordGrowLog s2Step215EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step215EarlyControlLog.recordFresh=some s2Step215EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step215EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step215EarlyControl_historyBorrow

private theorem s2Step215EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s2Step215EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step215EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s2Step215EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step215EarlyControlHistoryArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EarlyControl_sigmaRelease : s2Step215EarlyControlHistoryArena.release {796} (fun _ => false)=some s2Step215EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step215EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step215EarlyControlSigmaArena,s2Step215EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step215EarlyControl_sigma : compileHmrSigmaDropLog s2Step215EarlyControlHistoryArena false 0 0 254 796 []=some s2Step215EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step215EarlyControl_sigmaOwned⟩
  · exact s2Step215EarlyControl_sigmaRelease

private theorem s2Step215EarlyControl_zeroBorrow : s2Step215EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step215EarlyControlLog.zeroWork=some s2Step215EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step215EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step215EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step215EarlyControlZeroArena,s2Step215EarlyControlArena,s2Step215EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step215EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step215EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step215EarlyControlArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<798) ∨ (799≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EarlyControl_zero : compileHmrEqualityLog s2Step215EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step215EarlyControlLog.zeroWork=some (s2Step215EarlyControlZeroArena,s2Step215EarlyControlLog.zeroWork,s2Step215EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step215EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step215EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step215EarlyControl_logged : s2Step215EarlyControlPlan.Logged s2Step215EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 796 254 253 252 251 839 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step215EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step215EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step215EarlyControl_zero
  · exact s2Step215EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step215EarlyControl_flags
  · exact s2Step215EarlyControl_fit
  · exact s2Step215EarlyControl_history
  · exact s2Step215EarlyControl_sigma
  · exact s2Step215EarlyControl_branch

private theorem s2Step215EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step215EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 796 254 253 252 251 839 47 s2Step215EarlyControlLog=some s2Step215EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step215EarlyControlPlan s2Step215EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 796 254 253 252 251 839 47 s2Step215EarlyControl_logged

private def s2Step215EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step215EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩

private def s2Step215EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161],769⟩

private def s2Step215EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822],771⟩

private def s2Step215FrontBank : WindowBank := ⟨s2Step215EntryFRow,s2Step215EntryGRow,s2Step215EntryFvRow,s2Step215EntryGvRow⟩

private def s2Step215Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 789, 768]

private def s2Step215Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 845, 801, 769]

private def s2Step215Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 783, 770]

private def s2Step215Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 815, 771]

private theorem s2Step215Counter_apart : Disjoint s2Step215HeadFvAfter.live s2Step215CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step215HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215Counter_borrowed : s2Step215HeadFvAfter.checkBorrow 4 s2Step215CounterWork=some s2Step215CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step215HeadFvAfter s2Step215CounterDuring s2Step215CounterWork.toFinset s2Step215Counter_bounded s2Step215Counter_apart rfl

private theorem s2Step215Counter_owned : (796::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step215HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step215HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215Counter_checked : compileHmrCounterStepLog s2Step215HeadFvAfter true 796 [772, 773, 774, 775, 776, 777] s2Step215CounterWork=some s2Step215CounterDuring := by
  have owned : ∀q∈796::[772, 773, 774, 775, 776, 777],q∈s2Step215HeadFvAfter.live := fun q hq => s2Step215Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step215Counter_borrowed

private def s2Step215EntryFAfter : Arena := s2Step215EntryFBefore

private theorem s2Step215EntryBank_incomingDistinct : ([s2Step215EntryFRow,s2Step215EntryGRow,s2Step215EntryFvRow,s2Step215EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215EntryF_Incoming : rowsOwned s2Step215EntryFBefore [s2Step215EntryFRow,s2Step215EntryGRow,s2Step215EntryFvRow,s2Step215EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step215EntryFRow,s2Step215EntryGRow,s2Step215EntryFvRow,s2Step215EntryGvRow] 0 s2Step215EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step215EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215EntryBank_outgoingOwned : rowsOwned s2Step215EntryGvAfter [s2Step215EntryFOut,s2Step215EntryGOut,s2Step215EntryFvOut,s2Step215EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step215EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215EntryF_Outgoing : rowsOwned s2Step215EntryGvAfter [s2Step215EntryFOut,s2Step215EntryGOut,s2Step215EntryFvOut,s2Step215EntryGvOut] :=
  hmrRows_owned_drop s2Step215EntryGvAfter [s2Step215EntryFOut,s2Step215EntryGOut,s2Step215EntryFvOut,s2Step215EntryGvOut] 0 s2Step215EntryBank_outgoingOwned

private theorem s2Step215EntryF_distinct : (s2Step215EntryFRow.sign::s2Step215EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215EntryF_owned : (s2Step215EntryFRow.sign::s2Step215EntryFRow.payload).toFinset⊆s2Step215EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step215EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EntryF_reserved : s2Step215EntryFBefore.reserve s2Step215EntryFFresh.toFinset=some s2Step215EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step215EntryFFresh,arenaWires]
  · norm_num [s2Step215EntryFBefore,s2Step215EntryFFresh,arenaWires]
  · simp only [s2Step215EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step215EntryF_checked : planRowResizeLog s2Step215EntryFBefore s2Step215EntryFRow 163 s2Step215EntryFFresh=
    some (s2Step215EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩,growRow 768 s2Step215EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step215EntryFBefore s2Step215EntryFAfter s2Step215EntryFRow 163 s2Step215EntryFFresh
    s2Step215EntryF_distinct s2Step215EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step215EntryF_reserved
  have rowEq : WindowRow.mk (s2Step215EntryFRow.payload++s2Step215EntryFFresh) s2Step215EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step215EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215EntryFvAfter : Arena := s2Step215EntryGAfter

private def s2Step215EntryFvBefore : Arena := s2Step215EntryGAfter

private theorem s2Step215EntryFv_Incoming : rowsOwned s2Step215EntryFvBefore [s2Step215EntryFvRow,s2Step215EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step215EntryFRow,s2Step215EntryGRow,s2Step215EntryFvRow,s2Step215EntryGvRow] 2 s2Step215EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step215EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215EntryFv_Outgoing : rowsOwned s2Step215EntryGvAfter [s2Step215EntryFvOut,s2Step215EntryGvOut] :=
  hmrRows_owned_drop s2Step215EntryGvAfter [s2Step215EntryFOut,s2Step215EntryGOut,s2Step215EntryFvOut,s2Step215EntryGvOut] 2 s2Step215EntryBank_outgoingOwned

private theorem s2Step215EntryFv_distinct : (s2Step215EntryFvRow.sign::s2Step215EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215EntryFv_owned : (s2Step215EntryFvRow.sign::s2Step215EntryFvRow.payload).toFinset⊆s2Step215EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step215EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EntryFv_reserved : s2Step215EntryFvBefore.reserve s2Step215EntryFvFresh.toFinset=some s2Step215EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step215EntryFvFresh,arenaWires]
  · norm_num [s2Step215EntryFvBefore,s2Step215EntryGAfter,s2Step215EntryFvFresh,arenaWires]
  · simp only [s2Step215EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step215EntryFv_checked : planRowResizeLog s2Step215EntryFvBefore s2Step215EntryFvRow 122 s2Step215EntryFvFresh=
    some (s2Step215EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩,growRow 770 s2Step215EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step215EntryFvBefore s2Step215EntryFvAfter s2Step215EntryFvRow 122 s2Step215EntryFvFresh
    s2Step215EntryFv_distinct s2Step215EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step215EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step215EntryFvRow.payload++s2Step215EntryFvFresh) s2Step215EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step215EntryGBefore : Arena := s2Step215EntryFBefore

private theorem s2Step215EntryG_Incoming : rowsOwned s2Step215EntryGBefore [s2Step215EntryGRow,s2Step215EntryFvRow,s2Step215EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step215EntryFRow,s2Step215EntryGRow,s2Step215EntryFvRow,s2Step215EntryGvRow] 1 s2Step215EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step215EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215EntryG_Outgoing : rowsOwned s2Step215EntryGvAfter [s2Step215EntryGOut,s2Step215EntryFvOut,s2Step215EntryGvOut] :=
  hmrRows_owned_drop s2Step215EntryGvAfter [s2Step215EntryFOut,s2Step215EntryGOut,s2Step215EntryFvOut,s2Step215EntryGvOut] 1 s2Step215EntryBank_outgoingOwned

private theorem s2Step215EntryG_distinct : (s2Step215EntryGRow.sign::s2Step215EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215EntryG_owned : (s2Step215EntryGRow.sign::s2Step215EntryGRow.payload).toFinset⊆s2Step215EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step215EntryGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EntryG_reserved : s2Step215EntryGBefore.reserve s2Step215EntryGFresh.toFinset=some s2Step215EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step215EntryGFresh,arenaWires]
  · norm_num [s2Step215EntryGBefore,s2Step215EntryFBefore,s2Step215EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step215EntryGAfter,s2Step215EntryGBefore,s2Step215EntryFBefore,s2Step215EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step215EntryG_checked : planRowResizeLog s2Step215EntryGBefore s2Step215EntryGRow 163 s2Step215EntryGFresh=
    some (s2Step215EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 845],769⟩,growRow 769 s2Step215EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step215EntryGBefore s2Step215EntryGAfter s2Step215EntryGRow 163 s2Step215EntryGFresh
    s2Step215EntryG_distinct s2Step215EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step215EntryG_reserved
  have rowEq : WindowRow.mk (s2Step215EntryGRow.payload++s2Step215EntryGFresh) s2Step215EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 845],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step215EntryGvBefore : Arena := s2Step215EntryGAfter

private theorem s2Step215EntryGv_Incoming : rowsOwned s2Step215EntryGvBefore [s2Step215EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step215EntryFRow,s2Step215EntryGRow,s2Step215EntryFvRow,s2Step215EntryGvRow] 3 s2Step215EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step215EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215EntryGv_Outgoing : rowsOwned s2Step215EntryGvAfter [s2Step215EntryGvOut] :=
  hmrRows_owned_drop s2Step215EntryGvAfter [s2Step215EntryFOut,s2Step215EntryGOut,s2Step215EntryFvOut,s2Step215EntryGvOut] 3 s2Step215EntryBank_outgoingOwned

private theorem s2Step215EntryGv_distinct : (s2Step215EntryGvRow.sign::s2Step215EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215EntryGv_owned : (s2Step215EntryGvRow.sign::s2Step215EntryGvRow.payload).toFinset⊆s2Step215EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step215EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215EntryGv_reserved : s2Step215EntryGvBefore.reserve s2Step215EntryGvFresh.toFinset=some s2Step215EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step215EntryGvFresh,arenaWires]
  · norm_num [s2Step215EntryGvBefore,s2Step215EntryGAfter,s2Step215EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step215EntryGvAfter,s2Step215EntryGvBefore,s2Step215EntryGAfter,s2Step215EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step215EntryGv_checked : planRowResizeLog s2Step215EntryGvBefore s2Step215EntryGvRow 122 s2Step215EntryGvFresh=
    some (s2Step215EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851],771⟩,growRow 771 s2Step215EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step215EntryGvBefore s2Step215EntryGvAfter s2Step215EntryGvRow 122 s2Step215EntryGvFresh
    s2Step215EntryGv_distinct s2Step215EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step215EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step215EntryGvRow.payload++s2Step215EntryGvFresh) s2Step215EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step215EntryBank_rows : planWindowRowsLog s2Step215EntryFBefore [(s2Step215EntryFRow,163),(s2Step215EntryGRow,163),(s2Step215EntryFvRow,122),(s2Step215EntryGvRow,122)] [s2Step215EntryFFresh,s2Step215EntryGFresh,s2Step215EntryFvFresh,s2Step215EntryGvFresh]=
    some (s2Step215EntryGvAfter,[s2Step215EntryFOut,s2Step215EntryGOut,s2Step215EntryFvOut,s2Step215EntryGvOut],(growRow 768 s2Step215EntryFFresh ++ (growRow 769 s2Step215EntryGFresh ++ (growRow 770 s2Step215EntryFvFresh ++ (growRow 771 s2Step215EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step215EntryGvAfter [] []=some (s2Step215EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step215EntryGvBefore s2Step215EntryGvAfter s2Step215EntryGvAfter
    s2Step215EntryGvRow s2Step215EntryGvOut 122 s2Step215EntryGvFresh [] [] []
    (growRow 771 s2Step215EntryGvFresh) ([]) s2Step215EntryGv_Incoming s2Step215EntryGv_checked h4 s2Step215EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step215EntryFvBefore s2Step215EntryFvAfter s2Step215EntryGvAfter
    s2Step215EntryFvRow s2Step215EntryFvOut 122 s2Step215EntryFvFresh [(s2Step215EntryGvRow,122)] [s2Step215EntryGvFresh] [s2Step215EntryGvOut]
    (growRow 770 s2Step215EntryFvFresh) ((growRow 771 s2Step215EntryGvFresh ++ [])) s2Step215EntryFv_Incoming s2Step215EntryFv_checked h3 s2Step215EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step215EntryGBefore s2Step215EntryGAfter s2Step215EntryGvAfter
    s2Step215EntryGRow s2Step215EntryGOut 163 s2Step215EntryGFresh [(s2Step215EntryFvRow,122),(s2Step215EntryGvRow,122)] [s2Step215EntryFvFresh,s2Step215EntryGvFresh] [s2Step215EntryFvOut,s2Step215EntryGvOut]
    (growRow 769 s2Step215EntryGFresh) ((growRow 770 s2Step215EntryFvFresh ++ (growRow 771 s2Step215EntryGvFresh ++ []))) s2Step215EntryG_Incoming s2Step215EntryG_checked h2 s2Step215EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step215EntryFBefore s2Step215EntryFAfter s2Step215EntryGvAfter
    s2Step215EntryFRow s2Step215EntryFOut 163 s2Step215EntryFFresh [(s2Step215EntryGRow,163),(s2Step215EntryFvRow,122),(s2Step215EntryGvRow,122)] [s2Step215EntryGFresh,s2Step215EntryFvFresh,s2Step215EntryGvFresh] [s2Step215EntryGOut,s2Step215EntryFvOut,s2Step215EntryGvOut]
    (growRow 768 s2Step215EntryFFresh) ((growRow 769 s2Step215EntryGFresh ++ (growRow 770 s2Step215EntryFvFresh ++ (growRow 771 s2Step215EntryGvFresh ++ [])))) s2Step215EntryF_Incoming s2Step215EntryF_checked h1 s2Step215EntryF_Outgoing
  exact h0

private theorem s2Step215EntryBank_checked : compileHmrBankResizeLog .entry s2Step215EntryFBefore ⟨s2Step215EntryFRow,s2Step215EntryGRow,s2Step215EntryFvRow,s2Step215EntryGvRow⟩ ⟨163,163,122,122⟩ [s2Step215EntryFFresh,s2Step215EntryGFresh,s2Step215EntryFvFresh,s2Step215EntryGvFresh]=
    some (s2Step215EntryGvAfter,⟨s2Step215EntryFOut,s2Step215EntryGOut,s2Step215EntryFvOut,s2Step215EntryGvOut⟩,(growRow 768 s2Step215EntryFFresh ++ (growRow 769 s2Step215EntryGFresh ++ (growRow 770 s2Step215EntryFvFresh ++ (growRow 771 s2Step215EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step215EntryBank_rows]
  rfl

private def s2Step215ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<674) ∨ (675≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215ExitFBefore : Arena := s2Step215ExitGAfter

private def s2Step215ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 789],768⟩

private def s2Step215ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 783],770⟩

private def s2Step215ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 845, 801],769⟩

private def s2Step215ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 815],771⟩

private theorem s2Step215ExitBank_incomingDistinct : ([s2Step215ExitGRow,s2Step215ExitFRow,s2Step215ExitFvRow,s2Step215ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215ExitF_Incoming : rowsOwned s2Step215ExitFBefore [s2Step215ExitFRow,s2Step215ExitFvRow,s2Step215ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step215ExitGRow,s2Step215ExitFRow,s2Step215ExitFvRow,s2Step215ExitGvRow] 1 s2Step215ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step215ExitFBefore (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215ExitBank_outgoingOwned : rowsOwned s2Step215ExitGvAfter [s2Step215ExitGOut,s2Step215ExitFOut,s2Step215ExitFvOut,s2Step215ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step215ExitGvAfter (fun q => (0≤q ∧ q<674) ∨ (675≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215ExitF_Outgoing : rowsOwned s2Step215ExitGvAfter [s2Step215ExitFOut,s2Step215ExitFvOut,s2Step215ExitGvOut] :=
  hmrRows_owned_drop s2Step215ExitGvAfter [s2Step215ExitGOut,s2Step215ExitFOut,s2Step215ExitFvOut,s2Step215ExitGvOut] 1 s2Step215ExitBank_outgoingOwned

private theorem s2Step215ExitF_distinct : (s2Step215ExitFRow.sign::s2Step215ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215ExitF_owned : (s2Step215ExitFRow.sign::s2Step215ExitFRow.payload).toFinset⊆s2Step215ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step215ExitFBefore (fun q => (0≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215ExitF_retired : s2Step215ExitFBefore.retireSet s2Step215ExitFExtra.toFinset=s2Step215ExitFAfter := by
  unfold Arena.retireSet s2Step215ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step215ExitFBefore,s2Step215ExitGAfter,s2Step215ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step215ExitF_checked : planRowResizeLog s2Step215ExitFBefore s2Step215ExitFRow 162 []=
    some (s2Step215ExitFAfter,s2Step215ExitFOut,shrinkRow 768 s2Step215ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step215ExitFBefore s2Step215ExitFRow 162 s2Step215ExitF_distinct s2Step215ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step215ExitFRow.payload.take 162) s2Step215ExitFRow.sign=s2Step215ExitFOut := by decide +kernel
  have hi : s2Step215ExitFRow.payload.drop 162=s2Step215ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step215ExitF_retired] at result
  exact result

private def s2Step215ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<674) ∨ (675≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215ExitFvBefore : Arena := s2Step215ExitFAfter

private theorem s2Step215ExitFv_Incoming : rowsOwned s2Step215ExitFvBefore [s2Step215ExitFvRow,s2Step215ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step215ExitGRow,s2Step215ExitFRow,s2Step215ExitFvRow,s2Step215ExitGvRow] 2 s2Step215ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step215ExitFvBefore (fun q => (0≤q ∧ q<674) ∨ (675≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215ExitFv_Outgoing : rowsOwned s2Step215ExitGvAfter [s2Step215ExitFvOut,s2Step215ExitGvOut] :=
  hmrRows_owned_drop s2Step215ExitGvAfter [s2Step215ExitGOut,s2Step215ExitFOut,s2Step215ExitFvOut,s2Step215ExitGvOut] 2 s2Step215ExitBank_outgoingOwned

private theorem s2Step215ExitFv_distinct : (s2Step215ExitFvRow.sign::s2Step215ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215ExitFv_owned : (s2Step215ExitFvRow.sign::s2Step215ExitFvRow.payload).toFinset⊆s2Step215ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step215ExitFvBefore (fun q => (0≤q ∧ q<674) ∨ (675≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215ExitFv_retired : s2Step215ExitFvBefore.retireSet s2Step215ExitFvExtra.toFinset=s2Step215ExitFvAfter := by
  unfold Arena.retireSet s2Step215ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step215ExitFvBefore,s2Step215ExitFAfter,s2Step215ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step215ExitFv_checked : planRowResizeLog s2Step215ExitFvBefore s2Step215ExitFvRow 122 []=
    some (s2Step215ExitFvAfter,s2Step215ExitFvOut,shrinkRow 770 s2Step215ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step215ExitFvBefore s2Step215ExitFvRow 122 s2Step215ExitFv_distinct s2Step215ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step215ExitFvRow.payload.take 122) s2Step215ExitFvRow.sign=s2Step215ExitFvOut := by decide +kernel
  have hi : s2Step215ExitFvRow.payload.drop 122=s2Step215ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step215ExitFv_retired] at result
  exact result

private def s2Step215ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step215ExitG_Incoming : rowsOwned s2Step215ExitGBefore [s2Step215ExitGRow,s2Step215ExitFRow,s2Step215ExitFvRow,s2Step215ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step215ExitGRow,s2Step215ExitFRow,s2Step215ExitFvRow,s2Step215ExitGvRow] 0 s2Step215ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step215ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215ExitG_Outgoing : rowsOwned s2Step215ExitGvAfter [s2Step215ExitGOut,s2Step215ExitFOut,s2Step215ExitFvOut,s2Step215ExitGvOut] :=
  hmrRows_owned_drop s2Step215ExitGvAfter [s2Step215ExitGOut,s2Step215ExitFOut,s2Step215ExitFvOut,s2Step215ExitGvOut] 0 s2Step215ExitBank_outgoingOwned

private theorem s2Step215ExitG_distinct : (s2Step215ExitGRow.sign::s2Step215ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215ExitG_owned : (s2Step215ExitGRow.sign::s2Step215ExitGRow.payload).toFinset⊆s2Step215ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step215ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215ExitG_retired : s2Step215ExitGBefore.retireSet s2Step215ExitGExtra.toFinset=s2Step215ExitGAfter := by
  unfold Arena.retireSet s2Step215ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step215ExitGBefore,s2Step215ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step215ExitG_checked : planRowResizeLog s2Step215ExitGBefore s2Step215ExitGRow 162 []=
    some (s2Step215ExitGAfter,s2Step215ExitGOut,shrinkRow 769 s2Step215ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step215ExitGBefore s2Step215ExitGRow 162 s2Step215ExitG_distinct s2Step215ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step215ExitGRow.payload.take 162) s2Step215ExitGRow.sign=s2Step215ExitGOut := by decide +kernel
  have hi : s2Step215ExitGRow.payload.drop 162=s2Step215ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step215ExitG_retired] at result
  exact result

private def s2Step215ExitGvBefore : Arena := s2Step215ExitFvAfter

private theorem s2Step215ExitGv_Incoming : rowsOwned s2Step215ExitGvBefore [s2Step215ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step215ExitGRow,s2Step215ExitFRow,s2Step215ExitFvRow,s2Step215ExitGvRow] 3 s2Step215ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step215ExitGvBefore (fun q => (0≤q ∧ q<674) ∨ (675≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215ExitGv_Outgoing : rowsOwned s2Step215ExitGvAfter [s2Step215ExitGvOut] :=
  hmrRows_owned_drop s2Step215ExitGvAfter [s2Step215ExitGOut,s2Step215ExitFOut,s2Step215ExitFvOut,s2Step215ExitGvOut] 3 s2Step215ExitBank_outgoingOwned

private theorem s2Step215ExitGv_distinct : (s2Step215ExitGvRow.sign::s2Step215ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215ExitGv_owned : (s2Step215ExitGvRow.sign::s2Step215ExitGvRow.payload).toFinset⊆s2Step215ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step215ExitGvBefore (fun q => (0≤q ∧ q<674) ∨ (675≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215ExitGv_retired : s2Step215ExitGvBefore.retireSet s2Step215ExitGvExtra.toFinset=s2Step215ExitGvAfter := by
  unfold Arena.retireSet s2Step215ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step215ExitGvBefore,s2Step215ExitFvAfter,s2Step215ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step215ExitGv_checked : planRowResizeLog s2Step215ExitGvBefore s2Step215ExitGvRow 122 []=
    some (s2Step215ExitGvAfter,s2Step215ExitGvOut,shrinkRow 771 s2Step215ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step215ExitGvBefore s2Step215ExitGvRow 122 s2Step215ExitGv_distinct s2Step215ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step215ExitGvRow.payload.take 122) s2Step215ExitGvRow.sign=s2Step215ExitGvOut := by decide +kernel
  have hi : s2Step215ExitGvRow.payload.drop 122=s2Step215ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step215ExitGv_retired] at result
  exact result

private theorem s2Step215ExitBank_rows : planWindowRowsLog s2Step215ExitGBefore [(s2Step215ExitGRow,162),(s2Step215ExitFRow,162),(s2Step215ExitFvRow,122),(s2Step215ExitGvRow,122)] [[],[],[],[]]=
    some (s2Step215ExitGvAfter,[s2Step215ExitGOut,s2Step215ExitFOut,s2Step215ExitFvOut,s2Step215ExitGvOut],(shrinkRow 769 s2Step215ExitGExtra ++ (shrinkRow 768 s2Step215ExitFExtra ++ (shrinkRow 770 s2Step215ExitFvExtra ++ (shrinkRow 771 s2Step215ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step215ExitGvAfter [] []=some (s2Step215ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step215ExitGvBefore s2Step215ExitGvAfter s2Step215ExitGvAfter
    s2Step215ExitGvRow s2Step215ExitGvOut 122 [] [] [] []
    (shrinkRow 771 s2Step215ExitGvExtra) ([]) s2Step215ExitGv_Incoming s2Step215ExitGv_checked h4 s2Step215ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step215ExitFvBefore s2Step215ExitFvAfter s2Step215ExitGvAfter
    s2Step215ExitFvRow s2Step215ExitFvOut 122 [] [(s2Step215ExitGvRow,122)] [[]] [s2Step215ExitGvOut]
    (shrinkRow 770 s2Step215ExitFvExtra) ((shrinkRow 771 s2Step215ExitGvExtra ++ [])) s2Step215ExitFv_Incoming s2Step215ExitFv_checked h3 s2Step215ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step215ExitFBefore s2Step215ExitFAfter s2Step215ExitGvAfter
    s2Step215ExitFRow s2Step215ExitFOut 162 [] [(s2Step215ExitFvRow,122),(s2Step215ExitGvRow,122)] [[],[]] [s2Step215ExitFvOut,s2Step215ExitGvOut]
    (shrinkRow 768 s2Step215ExitFExtra) ((shrinkRow 770 s2Step215ExitFvExtra ++ (shrinkRow 771 s2Step215ExitGvExtra ++ []))) s2Step215ExitF_Incoming s2Step215ExitF_checked h2 s2Step215ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step215ExitGBefore s2Step215ExitGAfter s2Step215ExitGvAfter
    s2Step215ExitGRow s2Step215ExitGOut 162 [] [(s2Step215ExitFRow,162),(s2Step215ExitFvRow,122),(s2Step215ExitGvRow,122)] [[],[],[]] [s2Step215ExitFOut,s2Step215ExitFvOut,s2Step215ExitGvOut]
    (shrinkRow 769 s2Step215ExitGExtra) ((shrinkRow 768 s2Step215ExitFExtra ++ (shrinkRow 770 s2Step215ExitFvExtra ++ (shrinkRow 771 s2Step215ExitGvExtra ++ [])))) s2Step215ExitG_Incoming s2Step215ExitG_checked h1 s2Step215ExitG_Outgoing
  exact h0

private theorem s2Step215ExitBank_checked : compileHmrBankResizeLog .exit s2Step215ExitGBefore ⟨s2Step215ExitFRow,s2Step215ExitGRow,s2Step215ExitFvRow,s2Step215ExitGvRow⟩ ⟨162,162,122,122⟩ [[],[],[],[]]=
    some (s2Step215ExitGvAfter,⟨s2Step215ExitFOut,s2Step215ExitGOut,s2Step215ExitFvOut,s2Step215ExitGvOut⟩,(shrinkRow 769 s2Step215ExitGExtra ++ (shrinkRow 768 s2Step215ExitFExtra ++ (shrinkRow 770 s2Step215ExitFvExtra ++ (shrinkRow 771 s2Step215ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step215ExitBank_rows]
  rfl

private theorem s2Step215Add0_apart : Disjoint s2Step215Add0Arena.live s2Step215Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step215Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215Add0_card : s2Step215Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step215Add0_borrowed : s2Step215Add0Arena.checkBorrow (hmrHybridCount s2Step215Add0Arena s2Step215Add0B.length) s2Step215Add0Work=some s2Step215Add0During := by
  have len : s2Step215Add0Work.length=hmrHybridCount s2Step215Add0Arena s2Step215Add0B.length := by
    rw [hmrHybridCount,s2Step215Add0_card]
    decide +kernel
  have nd : s2Step215Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step215Add0Arena s2Step215Add0During s2Step215Add0Work.toFinset s2Step215Add0_bounded s2Step215Add0_apart rfl

private theorem s2Step215Add0_distinct : (814::839::882::(s2Step215Add0A++s2Step215Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215Add0_owned : (814::839::882::(s2Step215Add0A++s2Step215Add0B)).toFinset⊆s2Step215Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step215Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215Add0_checked : compileHmrHybridCinLog s2Step215Add0Arena 839 814 882 s2Step215Add0A s2Step215Add0B s2Step215Add0Work=some s2Step215Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step215Add0Arena s2Step215Add0During 839 814 882 s2Step215Add0A s2Step215Add0B s2Step215Add0Work
    (by decide +kernel) (by decide +kernel) s2Step215Add0_distinct
    (fun q hq => s2Step215Add0_owned (List.mem_toFinset.mpr hq)) s2Step215Add0_borrowed

private theorem s2Step215Add1_apart : Disjoint s2Step215Add1Arena.live s2Step215Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step215Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215Add1_card : s2Step215Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step215Add1_borrowed : s2Step215Add1Arena.checkBorrow (hmrHybridCount s2Step215Add1Arena s2Step215Add1B.length) s2Step215Add1Work=some s2Step215Add1During := by
  have len : s2Step215Add1Work.length=hmrHybridCount s2Step215Add1Arena s2Step215Add1B.length := by
    rw [hmrHybridCount,s2Step215Add1_card]
    decide +kernel
  have nd : s2Step215Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step215Add1Arena s2Step215Add1During s2Step215Add1Work.toFinset s2Step215Add1_bounded s2Step215Add1_apart rfl

private theorem s2Step215Add1_distinct : (814::839::882::(s2Step215Add1A++s2Step215Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215Add1_owned : (814::839::882::(s2Step215Add1A++s2Step215Add1B)).toFinset⊆s2Step215Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step215Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215Add1_checked : compileHmrHybridCinLog s2Step215Add1Arena 839 814 882 s2Step215Add1A s2Step215Add1B s2Step215Add1Work=some s2Step215Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step215Add1Arena s2Step215Add1During 839 814 882 s2Step215Add1A s2Step215Add1B s2Step215Add1Work
    (by decide +kernel) (by decide +kernel) s2Step215Add1_distinct
    (fun q hq => s2Step215Add1_owned (List.mem_toFinset.mpr hq)) s2Step215Add1_borrowed

private theorem s2Step215F4_apart : Disjoint (s2Step215Add0A++s2Step215Add0B).toFinset (s2Step215Add1A++s2Step215Add1B).toFinset := by
  have nd : ((s2Step215Add0A++s2Step215Add0B)++(s2Step215Add1A++s2Step215Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step215F4_carry : s2Step215F4FlagArena.checkBorrow 1 [882]=some s2Step215Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step215F4FlagArena,s2Step215HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step215F4FlagArena,s2Step215HeadFvAfter,s2Step215Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step215F4_distinct : (796::839::814::882::((s2Step215Add0A++s2Step215Add1A)++(s2Step215Add0B++s2Step215Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215F4_flag : s2Step215HeadFvAfter.checkBorrow 1 [814]=some s2Step215F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step215HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step215F4_owned : (796::839::((s2Step215Add0A++s2Step215Add1A)++(s2Step215Add0B++s2Step215Add1B))).toFinset⊆s2Step215HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step215HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215F4_checked : compileHmrHybridF4Log s2Step215HeadFvAfter 796 839 s2Step215Add0A s2Step215Add0B s2Step215Add1A s2Step215Add1B [814] [882] s2Step215Add0Work s2Step215Add1Work=some s2Step215F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step215HeadFvAfter s2Step215F4FlagArena s2Step215Add0Arena s2Step215Add0During s2Step215Add1During 796 839
    s2Step215Add0A s2Step215Add0B s2Step215Add1A s2Step215Add1B [814] [882] s2Step215Add0Work s2Step215Add1Work
    (fun q hq => s2Step215F4_owned (List.mem_toFinset.mpr hq)) s2Step215F4_flag s2Step215F4_carry
    s2Step215F4_distinct s2Step215F4_apart s2Step215Add0_checked s2Step215Add1_checked

private theorem s2Step215Front_branch : s2Step215FrontSigmaArena.checkBorrow 1 [839]=some s2Step215HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step215FrontSigmaArena,s2Step215EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step215FrontSigmaArena,s2Step215EntryGvAfter,s2Step215HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step215Front_entry : HmrFrontEntryValid s2Step215EntryFBefore s2Step215FrontBank 163 122 ⟨162,162,122,122⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step215FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step215EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step215EntryFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<851) ∨ (852≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step215FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step215Front_sigma : s2Step215EntryGvAfter.checkBorrow 1 [796]=some s2Step215FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step215EntryGvAfter,arenaWires]
  · rfl

private def s2Step215HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215HeadFBefore : Arena := s2Step215HeadGAfter

private def s2Step215HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step215HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791],770⟩

private def s2Step215HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 845],769⟩

private def s2Step215HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851],771⟩

private theorem s2Step215HeadBank_incomingDistinct : ([s2Step215HeadGRow,s2Step215HeadFRow,s2Step215HeadGvRow,s2Step215HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215HeadF_Incoming : rowsOwned s2Step215HeadFBefore [s2Step215HeadFRow,s2Step215HeadGvRow,s2Step215HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step215HeadGRow,s2Step215HeadFRow,s2Step215HeadGvRow,s2Step215HeadFvRow] 1 s2Step215HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step215HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215HeadBank_outgoingOwned : rowsOwned s2Step215HeadFvAfter [s2Step215HeadGOut,s2Step215HeadFOut,s2Step215HeadGvOut,s2Step215HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step215HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215HeadF_Outgoing : rowsOwned s2Step215HeadFvAfter [s2Step215HeadFOut,s2Step215HeadGvOut,s2Step215HeadFvOut] :=
  hmrRows_owned_drop s2Step215HeadFvAfter [s2Step215HeadGOut,s2Step215HeadFOut,s2Step215HeadGvOut,s2Step215HeadFvOut] 1 s2Step215HeadBank_outgoingOwned

private theorem s2Step215HeadF_distinct : (s2Step215HeadFRow.sign::s2Step215HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215HeadF_owned : (s2Step215HeadFRow.sign::s2Step215HeadFRow.payload).toFinset⊆s2Step215HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step215HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215HeadF_reserved : s2Step215HeadFBefore.reserve s2Step215HeadFFresh.toFinset=some s2Step215HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step215HeadFFresh,arenaWires]
  · norm_num [s2Step215HeadFBefore,s2Step215HeadGAfter,s2Step215HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step215HeadFAfter,s2Step215HeadFBefore,s2Step215HeadGAfter,s2Step215HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step215HeadF_checked : planRowResizeLog s2Step215HeadFBefore s2Step215HeadFRow 164 s2Step215HeadFFresh=
    some (s2Step215HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 789],768⟩,growRow 768 s2Step215HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step215HeadFBefore s2Step215HeadFAfter s2Step215HeadFRow 164 s2Step215HeadFFresh
    s2Step215HeadF_distinct s2Step215HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step215HeadF_reserved
  have rowEq : WindowRow.mk (s2Step215HeadFRow.payload++s2Step215HeadFFresh) s2Step215HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 789],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step215HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step215HeadFvBefore : Arena := s2Step215HeadGvAfter

private theorem s2Step215HeadFv_Incoming : rowsOwned s2Step215HeadFvBefore [s2Step215HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step215HeadGRow,s2Step215HeadFRow,s2Step215HeadGvRow,s2Step215HeadFvRow] 3 s2Step215HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step215HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215HeadFv_Outgoing : rowsOwned s2Step215HeadFvAfter [s2Step215HeadFvOut] :=
  hmrRows_owned_drop s2Step215HeadFvAfter [s2Step215HeadGOut,s2Step215HeadFOut,s2Step215HeadGvOut,s2Step215HeadFvOut] 3 s2Step215HeadBank_outgoingOwned

private theorem s2Step215HeadFv_distinct : (s2Step215HeadFvRow.sign::s2Step215HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215HeadFv_owned : (s2Step215HeadFvRow.sign::s2Step215HeadFvRow.payload).toFinset⊆s2Step215HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step215HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215HeadFv_reserved : s2Step215HeadFvBefore.reserve s2Step215HeadFvFresh.toFinset=some s2Step215HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step215HeadFvFresh,arenaWires]
  · norm_num [s2Step215HeadFvBefore,s2Step215HeadGvAfter,s2Step215HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step215HeadFvAfter,s2Step215HeadFvBefore,s2Step215HeadGvAfter,s2Step215HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step215HeadFv_checked : planRowResizeLog s2Step215HeadFvBefore s2Step215HeadFvRow 123 s2Step215HeadFvFresh=
    some (s2Step215HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 783],770⟩,growRow 770 s2Step215HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step215HeadFvBefore s2Step215HeadFvAfter s2Step215HeadFvRow 123 s2Step215HeadFvFresh
    s2Step215HeadFv_distinct s2Step215HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step215HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step215HeadFvRow.payload++s2Step215HeadFvFresh) s2Step215HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step215HeadG_Incoming : rowsOwned s2Step215HeadGBefore [s2Step215HeadGRow,s2Step215HeadFRow,s2Step215HeadGvRow,s2Step215HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step215HeadGRow,s2Step215HeadFRow,s2Step215HeadGvRow,s2Step215HeadFvRow] 0 s2Step215HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step215HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215HeadG_Outgoing : rowsOwned s2Step215HeadFvAfter [s2Step215HeadGOut,s2Step215HeadFOut,s2Step215HeadGvOut,s2Step215HeadFvOut] :=
  hmrRows_owned_drop s2Step215HeadFvAfter [s2Step215HeadGOut,s2Step215HeadFOut,s2Step215HeadGvOut,s2Step215HeadFvOut] 0 s2Step215HeadBank_outgoingOwned

private theorem s2Step215HeadG_distinct : (s2Step215HeadGRow.sign::s2Step215HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215HeadG_owned : (s2Step215HeadGRow.sign::s2Step215HeadGRow.payload).toFinset⊆s2Step215HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step215HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215HeadG_reserved : s2Step215HeadGBefore.reserve s2Step215HeadGFresh.toFinset=some s2Step215HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step215HeadGFresh,arenaWires]
  · norm_num [s2Step215HeadGBefore,s2Step215HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step215HeadGAfter,s2Step215HeadGBefore,s2Step215HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step215HeadG_checked : planRowResizeLog s2Step215HeadGBefore s2Step215HeadGRow 164 s2Step215HeadGFresh=
    some (s2Step215HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 845, 801],769⟩,growRow 769 s2Step215HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step215HeadGBefore s2Step215HeadGAfter s2Step215HeadGRow 164 s2Step215HeadGFresh
    s2Step215HeadG_distinct s2Step215HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step215HeadG_reserved
  have rowEq : WindowRow.mk (s2Step215HeadGRow.payload++s2Step215HeadGFresh) s2Step215HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 845, 801],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step215HeadGvBefore : Arena := s2Step215HeadFAfter

private theorem s2Step215HeadGv_Incoming : rowsOwned s2Step215HeadGvBefore [s2Step215HeadGvRow,s2Step215HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step215HeadGRow,s2Step215HeadFRow,s2Step215HeadGvRow,s2Step215HeadFvRow] 2 s2Step215HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step215HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step215HeadGv_Outgoing : rowsOwned s2Step215HeadFvAfter [s2Step215HeadGvOut,s2Step215HeadFvOut] :=
  hmrRows_owned_drop s2Step215HeadFvAfter [s2Step215HeadGOut,s2Step215HeadFOut,s2Step215HeadGvOut,s2Step215HeadFvOut] 2 s2Step215HeadBank_outgoingOwned

private theorem s2Step215HeadGv_distinct : (s2Step215HeadGvRow.sign::s2Step215HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step215HeadGv_owned : (s2Step215HeadGvRow.sign::s2Step215HeadGvRow.payload).toFinset⊆s2Step215HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step215HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step215HeadGv_reserved : s2Step215HeadGvBefore.reserve s2Step215HeadGvFresh.toFinset=some s2Step215HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step215HeadGvFresh,arenaWires]
  · norm_num [s2Step215HeadGvBefore,s2Step215HeadFAfter,s2Step215HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step215HeadGvAfter,s2Step215HeadGvBefore,s2Step215HeadFAfter,s2Step215HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step215HeadGv_checked : planRowResizeLog s2Step215HeadGvBefore s2Step215HeadGvRow 123 s2Step215HeadGvFresh=
    some (s2Step215HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 815],771⟩,growRow 771 s2Step215HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step215HeadGvBefore s2Step215HeadGvAfter s2Step215HeadGvRow 123 s2Step215HeadGvFresh
    s2Step215HeadGv_distinct s2Step215HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step215HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step215HeadGvRow.payload++s2Step215HeadGvFresh) s2Step215HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 815],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step215HeadBank_rows : planWindowRowsLog s2Step215HeadGBefore [(s2Step215HeadGRow,164),(s2Step215HeadFRow,164),(s2Step215HeadGvRow,123),(s2Step215HeadFvRow,123)] [s2Step215HeadGFresh,s2Step215HeadFFresh,s2Step215HeadGvFresh,s2Step215HeadFvFresh]=
    some (s2Step215HeadFvAfter,[s2Step215HeadGOut,s2Step215HeadFOut,s2Step215HeadGvOut,s2Step215HeadFvOut],(growRow 769 s2Step215HeadGFresh ++ (growRow 768 s2Step215HeadFFresh ++ (growRow 771 s2Step215HeadGvFresh ++ (growRow 770 s2Step215HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step215HeadFvAfter [] []=some (s2Step215HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step215HeadFvBefore s2Step215HeadFvAfter s2Step215HeadFvAfter
    s2Step215HeadFvRow s2Step215HeadFvOut 123 s2Step215HeadFvFresh [] [] []
    (growRow 770 s2Step215HeadFvFresh) ([]) s2Step215HeadFv_Incoming s2Step215HeadFv_checked h4 s2Step215HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step215HeadGvBefore s2Step215HeadGvAfter s2Step215HeadFvAfter
    s2Step215HeadGvRow s2Step215HeadGvOut 123 s2Step215HeadGvFresh [(s2Step215HeadFvRow,123)] [s2Step215HeadFvFresh] [s2Step215HeadFvOut]
    (growRow 771 s2Step215HeadGvFresh) ((growRow 770 s2Step215HeadFvFresh ++ [])) s2Step215HeadGv_Incoming s2Step215HeadGv_checked h3 s2Step215HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step215HeadFBefore s2Step215HeadFAfter s2Step215HeadFvAfter
    s2Step215HeadFRow s2Step215HeadFOut 164 s2Step215HeadFFresh [(s2Step215HeadGvRow,123),(s2Step215HeadFvRow,123)] [s2Step215HeadGvFresh,s2Step215HeadFvFresh] [s2Step215HeadGvOut,s2Step215HeadFvOut]
    (growRow 768 s2Step215HeadFFresh) ((growRow 771 s2Step215HeadGvFresh ++ (growRow 770 s2Step215HeadFvFresh ++ []))) s2Step215HeadF_Incoming s2Step215HeadF_checked h2 s2Step215HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step215HeadGBefore s2Step215HeadGAfter s2Step215HeadFvAfter
    s2Step215HeadGRow s2Step215HeadGOut 164 s2Step215HeadGFresh [(s2Step215HeadFRow,164),(s2Step215HeadGvRow,123),(s2Step215HeadFvRow,123)] [s2Step215HeadFFresh,s2Step215HeadGvFresh,s2Step215HeadFvFresh] [s2Step215HeadFOut,s2Step215HeadGvOut,s2Step215HeadFvOut]
    (growRow 769 s2Step215HeadGFresh) ((growRow 768 s2Step215HeadFFresh ++ (growRow 771 s2Step215HeadGvFresh ++ (growRow 770 s2Step215HeadFvFresh ++ [])))) s2Step215HeadG_Incoming s2Step215HeadG_checked h1 s2Step215HeadG_Outgoing
  exact h0

private theorem s2Step215HeadBank_checked : compileHmrBankResizeLog .headroom s2Step215HeadGBefore ⟨s2Step215HeadFRow,s2Step215HeadGRow,s2Step215HeadFvRow,s2Step215HeadGvRow⟩ ⟨164,164,123,123⟩ [s2Step215HeadGFresh,s2Step215HeadFFresh,s2Step215HeadGvFresh,s2Step215HeadFvFresh]=
    some (s2Step215HeadFvAfter,⟨s2Step215HeadFOut,s2Step215HeadGOut,s2Step215HeadFvOut,s2Step215HeadGvOut⟩,(growRow 769 s2Step215HeadGFresh ++ (growRow 768 s2Step215HeadFFresh ++ (growRow 771 s2Step215HeadGvFresh ++ (growRow 770 s2Step215HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step215HeadBank_rows]
  rfl

private theorem s2Step215Front_checked : compileHmrSourceFrontLog s2Step215EntryFBefore s2Step215FrontBank 163 122 ⟨162,162,122,122⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step215FrontLog=some s2Step215FrontPlan := by
  have pairEq : s2Step215FrontPair=⟨s2Step215HeadFRow,s2Step215HeadGRow,s2Step215HeadFvRow,s2Step215HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step215FrontHead=⟨s2Step215ExitFRow,s2Step215ExitGRow,s2Step215ExitFvRow,s2Step215ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step215Add0A=s2Step215FrontHead.f.wires := by decide +kernel
  have gEq : s2Step215Add0B=s2Step215FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step215Add1A=s2Step215FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step215Add1B=s2Step215FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step215EntryFBefore s2Step215FrontBank 163 122 ⟨162,162,122,122⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step215FrontLog s2Step215FrontPlan
  · exact s2Step215Front_entry
  · exact s2Step215EntryBank_checked
  · exact s2Step215Front_sigma
  · rfl
  · exact s2Step215Front_branch
  · rfl
  · simpa only [s2Step215FrontPlan,pairEq] using s2Step215HeadBank_checked
  · simpa only [s2Step215FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step215F4_checked
  · exact s2Step215Counter_checked
  · rfl
  · simpa only [s2Step215FrontPlan,headEq] using s2Step215ExitBank_checked

private theorem s2Step215Complete_explicit_checked : compileHmrEarlyStepLog s2Step215EntryFBefore s2Step215FrontBank 163 122 ⟨162,162,122,122⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step215CompleteLog=some s2Step215CompletePlan := by
  let Q := s2Step215EarlyControlPlan
  have hq := s2Step215EarlyControl_plan_checked
  have fv1 : s2Step215CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step215CompleteOut.fv.payload[2]?.getD s2Step215CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step215CompleteOut.fv.payload[3]?.getD s2Step215CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step215CompleteOut.fv.payload[4]?.getD s2Step215CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step215EntryFBefore s2Step215EarlyControlArena s2Step215FrontBank 163 122 ⟨162,162,122,122⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step215CompleteLog s2Step215FrontPlan Q
    s2Step215Front_checked s2Step215Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step215Complete_owned s2Step215Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step215EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 796 s2Step215CompleteOut.fv.second (s2Step215CompleteOut.fv.payload[2]?.getD s2Step215CompleteOut.fv.sign) (s2Step215CompleteOut.fv.payload[3]?.getD s2Step215CompleteOut.fv.sign) (s2Step215CompleteOut.fv.payload[4]?.getD s2Step215CompleteOut.fv.sign) 839 47 s2Step215EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep215Arena : Arena := s2Step215EntryFBefore
def s2PrivateStep215Bank : WindowBank := s2Step215FrontBank
def s2PrivateStep215Spec : HmrSourceWalkStepLog := ⟨163,122,⟨162,162,122,122⟩,47,.early s2Step215CompleteLog⟩
def s2PrivateStep215Plan : HmrSourceStepPlan := .early s2Step215CompletePlan
theorem s2PrivateStep215_source : s2PrivateStep215Spec=s2ObservedLogs208[7] := rfl
theorem s2PrivateStep215_checked : compileHmrSourceStepLog s2PrivateStep215Arena s2PrivateStep215Bank
    s2PrivateStep215Spec.fgWidth s2PrivateStep215Spec.vWidth s2PrivateStep215Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 215 s2PrivateStep215Spec.need none s2PrivateStep215Spec.log=some s2PrivateStep215Plan := by
  change compileHmrSourceStepLog s2Step215EntryFBefore s2Step215FrontBank 163 122 ⟨162,162,122,122⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 215 47 none (.early s2Step215CompleteLog)=some (.early s2Step215CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 215<498)]
  rw [s2Step215Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
