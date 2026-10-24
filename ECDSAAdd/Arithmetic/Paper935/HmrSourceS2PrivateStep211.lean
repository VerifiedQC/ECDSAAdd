import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep209
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

private def s2Step211CompleteMoves : List (Wire × Wire) := [(801,163),(791,675),(839,676)]

private def s2Step211EarlyControlLog : HmrEarlyControlLog := ⟨[839, 791, 801, 781, 845],[789],[815],[783, 814, 882, 826, 842, 885],[]⟩

private def s2Step211FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [815], [786], []],[[783], [789], [781], [845]],[[], [], [], []]⟩,[796],[822],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step211CompleteLog : HmrEarlyStepLog := ⟨s2Step211FrontLog,s2Step211CompleteMoves,s2Step211EarlyControlLog⟩

private def s2Step211ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674],768⟩

private def s2Step211ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786],770⟩

private def s2Step211ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162],769⟩

private def s2Step211ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩

private def s2Step211FrontOut : WindowBank := ⟨s2Step211ExitFOut,s2Step211ExitGOut,s2Step211ExitFvOut,s2Step211ExitGvOut⟩

private def s2Step211CompleteOut : WindowBank := s2Step211FrontOut.repacked s2Step211CompleteMoves

private def s2Step211EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step211EarlyControlPositiveArena,[789],s2Step211EarlyControlEqualityArena,[815],⟨⟨796,false⟩,[⟨⟨789,false⟩,815⟩]⟩⟩

private def s2Step211EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,839⟩,⟨⟨774,false⟩,791⟩,⟨⟨775,false⟩,801⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,845⟩]⟩

private def s2Step211EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step211EarlyControlZeroArena,s2Step211EarlyControlZeroPlan,s2Step211EarlyControlClassPlan,s2Step211EarlyControlFlagArena,s2Step211EarlyControlFittedArena,s2Step211EarlyControlHistoryArena,s2Step211EarlyControlSigmaArena,s2Step211EarlyControlOutputArena,s2Step211EarlyControlLog⟩

private def s2Step211CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step211Counter_bounded : s2Step211CounterWork.toFinset⊆arenaWires := by norm_num [s2Step211CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step211HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211CounterDuring : Arena := ⟨s2Step211HeadFvAfter.live∪s2Step211CounterWork.toFinset,Finset.union_subset s2Step211HeadFvAfter.bounded s2Step211Counter_bounded⟩

private def s2Step211EntryFFresh : List Wire := []

private def s2Step211EntryFvFresh : List Wire := [786]

private def s2Step211EntryGFresh : List Wire := [815]

private def s2Step211EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211EntryGvAfter : Arena := s2Step211EntryFvAfter

private def s2Step211EntryGvFresh : List Wire := []

private def s2Step211ExitFExtra : List Wire := [675, 676, 789]

private def s2Step211ExitFvExtra : List Wire := [845]

private def s2Step211ExitGExtra : List Wire := [163, 815, 783]

private def s2Step211ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<675) ∨ (677≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211ExitGvExtra : List Wire := [781]

private def s2Step211Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step211Add0_bounded : s2Step211Add0Work.toFinset⊆arenaWires := by
  have h : s2Step211Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step211Add0During : Arena := ⟨s2Step211Add0Arena.live∪s2Step211Add0Work.toFinset,Finset.union_subset s2Step211Add0Arena.bounded s2Step211Add0_bounded⟩

private def s2Step211Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step211Add1_bounded : s2Step211Add1Work.toFinset⊆arenaWires := by
  have h : s2Step211Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step211Add1During : Arena := ⟨s2Step211Add1Arena.live∪s2Step211Add1Work.toFinset,Finset.union_subset s2Step211Add1Arena.bounded s2Step211Add1_bounded⟩

private def s2Step211F4FlagArena : Arena := ⟨s2Step211HeadFvAfter.live∪{814},Finset.union_subset s2Step211HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step211F4Plan : HmrHybridF4Plan := ⟨s2Step211F4FlagArena,[814],s2Step211Add0Arena,[882],s2Step211Add0During,s2Step211Add0Work,s2Step211Add1During,s2Step211Add1Work⟩

private def s2Step211HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 789],768⟩

private def s2Step211HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 845],770⟩

private def s2Step211HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 815, 783],769⟩

private def s2Step211HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 781],771⟩

private def s2Step211FrontHead : WindowBank := ⟨s2Step211HeadFOut,s2Step211HeadGOut,s2Step211HeadFvOut,s2Step211HeadGvOut⟩

private def s2Step211EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676],768⟩

private def s2Step211EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786],770⟩

private def s2Step211EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 815],769⟩

private def s2Step211EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩

private def s2Step211FrontPair : WindowBank := ⟨s2Step211EntryFOut,s2Step211EntryGOut,s2Step211EntryFvOut,s2Step211EntryGvOut⟩

private def s2Step211FrontSigmaArena : Arena := ⟨s2Step211EntryGvAfter.live∪{796},Finset.union_subset s2Step211EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step211HeadFFresh : List Wire := [789]

private def s2Step211HeadFvFresh : List Wire := [845]

private def s2Step211HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211HeadGFresh : List Wire := [783]

private def s2Step211HeadGvFresh : List Wire := [781]

private def s2Step211FrontPlan : HmrSourceFront := ⟨s2Step211EntryGvAfter,s2Step211FrontPair,(growRow 768 s2Step211EntryFFresh ++ (growRow 769 s2Step211EntryGFresh ++ (growRow 770 s2Step211EntryFvFresh ++ (growRow 771 s2Step211EntryGvFresh ++ [])))),s2Step211FrontSigmaArena,[796],s2Step211HeadGBefore,[822],
  s2Step211HeadFvAfter,s2Step211FrontHead,(growRow 769 s2Step211HeadGFresh ++ (growRow 768 s2Step211HeadFFresh ++ (growRow 771 s2Step211HeadGvFresh ++ (growRow 770 s2Step211HeadFvFresh ++ [])))),s2Step211F4Plan,s2Step211CounterDuring,s2Step211CounterWork,s2Step211ExitGvAfter,s2Step211FrontOut,(shrinkRow 769 s2Step211ExitGExtra ++ (shrinkRow 768 s2Step211ExitFExtra ++ (shrinkRow 770 s2Step211ExitFvExtra ++ (shrinkRow 771 s2Step211ExitGvExtra ++ []))))⟩

private def s2Step211CompletePlan : HmrEarlyStepPlan := ⟨s2Step211FrontPlan,s2Step211EarlyControlArena,s2Step211EarlyControlPlan,s2Step211CompleteMoves⟩

private theorem s2Step211Complete_apart : List.Disjoint (s2Step211CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [796, 822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step211CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[796, 822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step211Complete_owned : (s2Step211CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step211EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step211EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step211CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,675),(677,781),(782,783),(784,789),(790,801),(802,814),(816,826),(827,842),(843,845),(846,882),(883,885),(886,891),(892,894),(897,898)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step211CompleteRelocationMove0Borrowed : Arena := ⟨s2Step211ExitGvAfter.live∪{163},Finset.union_subset s2Step211ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step211CompleteRelocationMove1After : Arena := ⟨arenaWires.filter (fun q => ([(0,676),(677,781),(782,783),(784,789),(790,791),(792,801),(802,814),(816,826),(827,842),(843,845),(846,882),(883,885),(886,891),(892,894),(897,898)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step211CompleteRelocationMove1Borrowed : Arena := ⟨s2Step211CompleteRelocationMove0After.live∪{675},Finset.union_subset s2Step211CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private def s2Step211CompleteRelocationMove2Borrowed : Arena := ⟨s2Step211CompleteRelocationMove1After.live∪{676},Finset.union_subset s2Step211CompleteRelocationMove1After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step211CompleteRelocation_move0_owned : 801∈s2Step211ExitGvAfter.live := by norm_num [s2Step211ExitGvAfter,arenaWires]

private theorem s2Step211CompleteRelocation_move0_reserve : s2Step211ExitGvAfter.reserve {163}=some s2Step211CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step211ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step211CompleteRelocation_move0_retire : s2Step211CompleteRelocationMove0Borrowed.retireSet {801}=s2Step211CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step211CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step211CompleteRelocationMove0Borrowed,s2Step211ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step211CompleteRelocation_move1_owned : 791∈s2Step211CompleteRelocationMove0After.live := by norm_num [s2Step211CompleteRelocationMove0After,arenaWires]

private theorem s2Step211CompleteRelocation_move1_reserve : s2Step211CompleteRelocationMove0After.reserve {675}=some s2Step211CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step211CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step211CompleteRelocation_move1_retire : s2Step211CompleteRelocationMove1Borrowed.retireSet {791}=s2Step211CompleteRelocationMove1After := by
  unfold Arena.retireSet s2Step211CompleteRelocationMove1After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step211CompleteRelocationMove1Borrowed,s2Step211CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step211CompleteRelocation_move2_owned : 839∈s2Step211CompleteRelocationMove1After.live := by norm_num [s2Step211CompleteRelocationMove1After,arenaWires]

private theorem s2Step211CompleteRelocation_move2_reserve : s2Step211CompleteRelocationMove1After.reserve {676}=some s2Step211CompleteRelocationMove2Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step211CompleteRelocationMove1After,arenaWires]
  · rfl

private theorem s2Step211CompleteRelocation_move2_retire : s2Step211CompleteRelocationMove2Borrowed.retireSet {839}=s2Step211EarlyControlArena := by
  unfold Arena.retireSet s2Step211EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step211CompleteRelocationMove2Borrowed,s2Step211CompleteRelocationMove1After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step211CompleteRelocation_checked : s2Step211ExitGvAfter.checkRepack [(801,163),(791,675),(839,676)]=some s2Step211EarlyControlArena := by
  have tail3 : s2Step211EarlyControlArena.checkRepack []=some s2Step211EarlyControlArena := rfl
  have tail2 := Arena.checkRepack_cons_of_parts s2Step211CompleteRelocationMove1After s2Step211CompleteRelocationMove2Borrowed s2Step211EarlyControlArena s2Step211EarlyControlArena 839 676 []
    s2Step211CompleteRelocation_move2_owned s2Step211CompleteRelocation_move2_reserve s2Step211CompleteRelocation_move2_retire tail3
  have tail1 := Arena.checkRepack_cons_of_parts s2Step211CompleteRelocationMove0After s2Step211CompleteRelocationMove1Borrowed s2Step211CompleteRelocationMove1After s2Step211EarlyControlArena 791 675 [(839,676)]
    s2Step211CompleteRelocation_move1_owned s2Step211CompleteRelocation_move1_reserve s2Step211CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step211ExitGvAfter s2Step211CompleteRelocationMove0Borrowed s2Step211CompleteRelocationMove0After s2Step211EarlyControlArena 801 163 [(791,675),(839,676)]
    s2Step211CompleteRelocation_move0_owned s2Step211CompleteRelocation_move0_reserve s2Step211CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step211Complete_repack : s2Step211ExitGvAfter.checkRepack s2Step211CompleteMoves=some s2Step211EarlyControlArena := by
  simpa only [s2Step211CompleteMoves] using s2Step211CompleteRelocation_checked

private theorem s2Step211EarlyControl_branchOwned : ([822] : List Wire).toFinset⊆s2Step211EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step211EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<796) ∨ (797≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EarlyControl_branch : compileHmrBranchRetirement s2Step211EarlyControlSigmaArena 822=some s2Step211EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step211EarlyControl_branchOwned
  · ext q
    simp [s2Step211EarlyControlOutputArena,s2Step211EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step211EarlyControl_classEqualityBorrow : s2Step211EarlyControlPositiveArena.checkBorrow (([796, 789] : List Wire).length-1) s2Step211EarlyControlLog.classWork=some s2Step211EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step211EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step211EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step211EarlyControlEqualityArena,s2Step211EarlyControlPositiveArena,s2Step211EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step211EarlyControl_classEqualityOwned : ([796, 789] : List Wire).toFinset⊆s2Step211EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step211EarlyControlPositiveArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EarlyControl_classEquality : compileHmrEqualityLog s2Step211EarlyControlPositiveArena [796, 789] 0 s2Step211EarlyControlLog.classWork=some (s2Step211EarlyControlEqualityArena,s2Step211EarlyControlLog.classWork,s2Step211EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step211EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step211EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step211EarlyControl_classOwned : ([777, 845, 796] : List Wire).toFinset⊆s2Step211EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step211EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EarlyControl_positiveBorrow : s2Step211EarlyControlZeroArena.checkBorrow (1) s2Step211EarlyControlLog.positiveWork=some s2Step211EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step211EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step211EarlyControlZeroArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step211EarlyControlPositiveArena,s2Step211EarlyControlZeroArena,s2Step211EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step211EarlyControl_class : compileHmrSourceClassLog s2Step211EarlyControlZeroArena false 777 s2Step211EarlyControlZeroPlan.top 0 796 s2Step211EarlyControlLog.positiveWork s2Step211EarlyControlLog.classWork=some s2Step211EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step211EarlyControlClassPlan s2Step211EarlyControlZeroArena false 777 s2Step211EarlyControlZeroPlan.top 0 796
  constructor
  · decide +kernel
  · exact s2Step211EarlyControl_classOwned
  · exact s2Step211EarlyControl_positiveBorrow
  · exact s2Step211EarlyControl_classEquality

private theorem s2Step211EarlyControl_entryRecordOwned : ([822, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step211EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step211EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EarlyControl_entrySigmaOwned : ([796, 254] : List Wire).toFinset⊆s2Step211EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step211EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EarlyControl_fitBorrow : s2Step211EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step211EarlyControlLog.recordFresh=some s2Step211EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step211EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step211EarlyControlFlagArena (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step211EarlyControlFittedArena,s2Step211EarlyControlFlagArena,s2Step211EarlyControlLog,arenaWires]

private theorem s2Step211EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step211EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step211EarlyControlFlagArena (fun q => (0≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EarlyControl_fit : compileHmrRecordGrowLog s2Step211EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step211EarlyControlLog.recordFresh=some s2Step211EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step211EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step211EarlyControl_fitBorrow

private theorem s2Step211EarlyControl_flagsBorrow : s2Step211EarlyControlEqualityArena.checkBorrow (6) s2Step211EarlyControlLog.flagWork=some s2Step211EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step211EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step211EarlyControlEqualityArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step211EarlyControlFlagArena,s2Step211EarlyControlEqualityArena,s2Step211EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step211EarlyControl_flagsOwned : ([815, 253, 252, 251] : List Wire).toFinset⊆s2Step211EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step211EarlyControlEqualityArena (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EarlyControl_flags : compileHmrFlagsLog s2Step211EarlyControlClassPlan.equalityArena s2Step211EarlyControlClassPlan.equality.top 253 252 251 s2Step211EarlyControlLog.flagWork=some s2Step211EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step211EarlyControl_flagsOwned⟩
  · exact s2Step211EarlyControl_flagsBorrow

private theorem s2Step211EarlyControl_historyBorrow : s2Step211EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step211EarlyControlLog.recordFresh=some s2Step211EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step211EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step211EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step211EarlyControlHistoryArena,s2Step211EarlyControlArena,s2Step211EarlyControlLog,arenaWires]

private theorem s2Step211EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step211EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step211EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EarlyControl_history : compileHmrRecordGrowLog s2Step211EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step211EarlyControlLog.recordFresh=some s2Step211EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step211EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step211EarlyControl_historyBorrow

private theorem s2Step211EarlyControl_sigmaOwned : ([254, 796] : List Wire).toFinset⊆s2Step211EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step211EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EarlyControl_sigmaReleaseOwned : ([796] : List Wire).toFinset⊆s2Step211EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step211EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EarlyControl_sigmaRelease : s2Step211EarlyControlHistoryArena.release {796} (fun _ => false)=some s2Step211EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step211EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step211EarlyControlSigmaArena,s2Step211EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step211EarlyControl_sigma : compileHmrSigmaDropLog s2Step211EarlyControlHistoryArena false 0 0 254 796 []=some s2Step211EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step211EarlyControl_sigmaOwned⟩
  · exact s2Step211EarlyControl_sigmaRelease

private theorem s2Step211EarlyControl_zeroBorrow : s2Step211EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step211EarlyControlLog.zeroWork=some s2Step211EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step211EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step211EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step211EarlyControlZeroArena,s2Step211EarlyControlArena,s2Step211EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step211EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step211EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step211EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<791) ∨ (792≤q ∧ q<801) ∨ (802≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<839) ∨ (840≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EarlyControl_zero : compileHmrEqualityLog s2Step211EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step211EarlyControlLog.zeroWork=some (s2Step211EarlyControlZeroArena,s2Step211EarlyControlLog.zeroWork,s2Step211EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step211EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step211EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step211EarlyControl_logged : s2Step211EarlyControlPlan.Logged s2Step211EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 796 254 253 252 251 822 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step211EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step211EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step211EarlyControl_zero
  · exact s2Step211EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step211EarlyControl_flags
  · exact s2Step211EarlyControl_fit
  · exact s2Step211EarlyControl_history
  · exact s2Step211EarlyControl_sigma
  · exact s2Step211EarlyControl_branch

private theorem s2Step211EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step211EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 796 254 253 252 251 822 47 s2Step211EarlyControlLog=some s2Step211EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step211EarlyControlPlan s2Step211EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 796 254 253 252 251 822 47 s2Step211EarlyControl_logged

private def s2Step211EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676],768⟩

private def s2Step211EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779],770⟩

private def s2Step211EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163],769⟩

private def s2Step211EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩

private def s2Step211FrontBank : WindowBank := ⟨s2Step211EntryFRow,s2Step211EntryGRow,s2Step211EntryFvRow,s2Step211EntryGvRow⟩

private def s2Step211Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 789, 768]

private def s2Step211Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 815, 783, 769]

private def s2Step211Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 845, 770]

private def s2Step211Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 781, 771]

private theorem s2Step211Counter_apart : Disjoint s2Step211HeadFvAfter.live s2Step211CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step211HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211Counter_borrowed : s2Step211HeadFvAfter.checkBorrow 4 s2Step211CounterWork=some s2Step211CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step211HeadFvAfter s2Step211CounterDuring s2Step211CounterWork.toFinset s2Step211Counter_bounded s2Step211Counter_apart rfl

private theorem s2Step211Counter_owned : (796::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step211HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step211HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211Counter_checked : compileHmrCounterStepLog s2Step211HeadFvAfter true 796 [772, 773, 774, 775, 776, 777] s2Step211CounterWork=some s2Step211CounterDuring := by
  have owned : ∀q∈796::[772, 773, 774, 775, 776, 777],q∈s2Step211HeadFvAfter.live := fun q hq => s2Step211Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step211Counter_borrowed

private def s2Step211EntryFAfter : Arena := s2Step211EntryFBefore

private theorem s2Step211EntryBank_incomingDistinct : ([s2Step211EntryFRow,s2Step211EntryGRow,s2Step211EntryFvRow,s2Step211EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211EntryF_Incoming : rowsOwned s2Step211EntryFBefore [s2Step211EntryFRow,s2Step211EntryGRow,s2Step211EntryFvRow,s2Step211EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step211EntryFRow,s2Step211EntryGRow,s2Step211EntryFvRow,s2Step211EntryGvRow] 0 s2Step211EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step211EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211EntryBank_outgoingOwned : rowsOwned s2Step211EntryGvAfter [s2Step211EntryFOut,s2Step211EntryGOut,s2Step211EntryFvOut,s2Step211EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step211EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211EntryF_Outgoing : rowsOwned s2Step211EntryGvAfter [s2Step211EntryFOut,s2Step211EntryGOut,s2Step211EntryFvOut,s2Step211EntryGvOut] :=
  hmrRows_owned_drop s2Step211EntryGvAfter [s2Step211EntryFOut,s2Step211EntryGOut,s2Step211EntryFvOut,s2Step211EntryGvOut] 0 s2Step211EntryBank_outgoingOwned

private theorem s2Step211EntryF_distinct : (s2Step211EntryFRow.sign::s2Step211EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211EntryF_owned : (s2Step211EntryFRow.sign::s2Step211EntryFRow.payload).toFinset⊆s2Step211EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step211EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EntryF_reserved : s2Step211EntryFBefore.reserve s2Step211EntryFFresh.toFinset=some s2Step211EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step211EntryFFresh,arenaWires]
  · norm_num [s2Step211EntryFBefore,s2Step211EntryFFresh,arenaWires]
  · simp only [s2Step211EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step211EntryF_checked : planRowResizeLog s2Step211EntryFBefore s2Step211EntryFRow 165 s2Step211EntryFFresh=
    some (s2Step211EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676],768⟩,growRow 768 s2Step211EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step211EntryFBefore s2Step211EntryFAfter s2Step211EntryFRow 165 s2Step211EntryFFresh
    s2Step211EntryF_distinct s2Step211EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step211EntryF_reserved
  have rowEq : WindowRow.mk (s2Step211EntryFRow.payload++s2Step211EntryFFresh) s2Step211EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step211EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211EntryFvBefore : Arena := s2Step211EntryGAfter

private theorem s2Step211EntryFv_Incoming : rowsOwned s2Step211EntryFvBefore [s2Step211EntryFvRow,s2Step211EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step211EntryFRow,s2Step211EntryGRow,s2Step211EntryFvRow,s2Step211EntryGvRow] 2 s2Step211EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step211EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211EntryFv_Outgoing : rowsOwned s2Step211EntryGvAfter [s2Step211EntryFvOut,s2Step211EntryGvOut] :=
  hmrRows_owned_drop s2Step211EntryGvAfter [s2Step211EntryFOut,s2Step211EntryGOut,s2Step211EntryFvOut,s2Step211EntryGvOut] 2 s2Step211EntryBank_outgoingOwned

private theorem s2Step211EntryFv_distinct : (s2Step211EntryFvRow.sign::s2Step211EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211EntryFv_owned : (s2Step211EntryFvRow.sign::s2Step211EntryFvRow.payload).toFinset⊆s2Step211EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step211EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EntryFv_reserved : s2Step211EntryFvBefore.reserve s2Step211EntryFvFresh.toFinset=some s2Step211EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step211EntryFvFresh,arenaWires]
  · norm_num [s2Step211EntryFvBefore,s2Step211EntryGAfter,s2Step211EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step211EntryFvAfter,s2Step211EntryFvBefore,s2Step211EntryGAfter,s2Step211EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step211EntryFv_checked : planRowResizeLog s2Step211EntryFvBefore s2Step211EntryFvRow 120 s2Step211EntryFvFresh=
    some (s2Step211EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786],770⟩,growRow 770 s2Step211EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step211EntryFvBefore s2Step211EntryFvAfter s2Step211EntryFvRow 120 s2Step211EntryFvFresh
    s2Step211EntryFv_distinct s2Step211EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step211EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step211EntryFvRow.payload++s2Step211EntryFvFresh) s2Step211EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step211EntryGBefore : Arena := s2Step211EntryFBefore

private theorem s2Step211EntryG_Incoming : rowsOwned s2Step211EntryGBefore [s2Step211EntryGRow,s2Step211EntryFvRow,s2Step211EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step211EntryFRow,s2Step211EntryGRow,s2Step211EntryFvRow,s2Step211EntryGvRow] 1 s2Step211EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step211EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211EntryG_Outgoing : rowsOwned s2Step211EntryGvAfter [s2Step211EntryGOut,s2Step211EntryFvOut,s2Step211EntryGvOut] :=
  hmrRows_owned_drop s2Step211EntryGvAfter [s2Step211EntryFOut,s2Step211EntryGOut,s2Step211EntryFvOut,s2Step211EntryGvOut] 1 s2Step211EntryBank_outgoingOwned

private theorem s2Step211EntryG_distinct : (s2Step211EntryGRow.sign::s2Step211EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211EntryG_owned : (s2Step211EntryGRow.sign::s2Step211EntryGRow.payload).toFinset⊆s2Step211EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step211EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EntryG_reserved : s2Step211EntryGBefore.reserve s2Step211EntryGFresh.toFinset=some s2Step211EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step211EntryGFresh,arenaWires]
  · norm_num [s2Step211EntryGBefore,s2Step211EntryFBefore,s2Step211EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step211EntryGAfter,s2Step211EntryGBefore,s2Step211EntryFBefore,s2Step211EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step211EntryG_checked : planRowResizeLog s2Step211EntryGBefore s2Step211EntryGRow 165 s2Step211EntryGFresh=
    some (s2Step211EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 815],769⟩,growRow 769 s2Step211EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step211EntryGBefore s2Step211EntryGAfter s2Step211EntryGRow 165 s2Step211EntryGFresh
    s2Step211EntryG_distinct s2Step211EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step211EntryG_reserved
  have rowEq : WindowRow.mk (s2Step211EntryGRow.payload++s2Step211EntryGFresh) s2Step211EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 815],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step211EntryGvBefore : Arena := s2Step211EntryFvAfter

private theorem s2Step211EntryGv_Incoming : rowsOwned s2Step211EntryGvBefore [s2Step211EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step211EntryFRow,s2Step211EntryGRow,s2Step211EntryFvRow,s2Step211EntryGvRow] 3 s2Step211EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step211EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211EntryGv_Outgoing : rowsOwned s2Step211EntryGvAfter [s2Step211EntryGvOut] :=
  hmrRows_owned_drop s2Step211EntryGvAfter [s2Step211EntryFOut,s2Step211EntryGOut,s2Step211EntryFvOut,s2Step211EntryGvOut] 3 s2Step211EntryBank_outgoingOwned

private theorem s2Step211EntryGv_distinct : (s2Step211EntryGvRow.sign::s2Step211EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211EntryGv_owned : (s2Step211EntryGvRow.sign::s2Step211EntryGvRow.payload).toFinset⊆s2Step211EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step211EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211EntryGv_reserved : s2Step211EntryGvBefore.reserve s2Step211EntryGvFresh.toFinset=some s2Step211EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step211EntryGvFresh,arenaWires]
  · norm_num [s2Step211EntryGvBefore,s2Step211EntryFvAfter,s2Step211EntryGvFresh,arenaWires]
  · simp only [s2Step211EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step211EntryGv_checked : planRowResizeLog s2Step211EntryGvBefore s2Step211EntryGvRow 120 s2Step211EntryGvFresh=
    some (s2Step211EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩,growRow 771 s2Step211EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step211EntryGvBefore s2Step211EntryGvAfter s2Step211EntryGvRow 120 s2Step211EntryGvFresh
    s2Step211EntryGv_distinct s2Step211EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step211EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step211EntryGvRow.payload++s2Step211EntryGvFresh) s2Step211EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step211EntryBank_rows : planWindowRowsLog s2Step211EntryFBefore [(s2Step211EntryFRow,165),(s2Step211EntryGRow,165),(s2Step211EntryFvRow,120),(s2Step211EntryGvRow,120)] [s2Step211EntryFFresh,s2Step211EntryGFresh,s2Step211EntryFvFresh,s2Step211EntryGvFresh]=
    some (s2Step211EntryGvAfter,[s2Step211EntryFOut,s2Step211EntryGOut,s2Step211EntryFvOut,s2Step211EntryGvOut],(growRow 768 s2Step211EntryFFresh ++ (growRow 769 s2Step211EntryGFresh ++ (growRow 770 s2Step211EntryFvFresh ++ (growRow 771 s2Step211EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step211EntryGvAfter [] []=some (s2Step211EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step211EntryGvBefore s2Step211EntryGvAfter s2Step211EntryGvAfter
    s2Step211EntryGvRow s2Step211EntryGvOut 120 s2Step211EntryGvFresh [] [] []
    (growRow 771 s2Step211EntryGvFresh) ([]) s2Step211EntryGv_Incoming s2Step211EntryGv_checked h4 s2Step211EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step211EntryFvBefore s2Step211EntryFvAfter s2Step211EntryGvAfter
    s2Step211EntryFvRow s2Step211EntryFvOut 120 s2Step211EntryFvFresh [(s2Step211EntryGvRow,120)] [s2Step211EntryGvFresh] [s2Step211EntryGvOut]
    (growRow 770 s2Step211EntryFvFresh) ((growRow 771 s2Step211EntryGvFresh ++ [])) s2Step211EntryFv_Incoming s2Step211EntryFv_checked h3 s2Step211EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step211EntryGBefore s2Step211EntryGAfter s2Step211EntryGvAfter
    s2Step211EntryGRow s2Step211EntryGOut 165 s2Step211EntryGFresh [(s2Step211EntryFvRow,120),(s2Step211EntryGvRow,120)] [s2Step211EntryFvFresh,s2Step211EntryGvFresh] [s2Step211EntryFvOut,s2Step211EntryGvOut]
    (growRow 769 s2Step211EntryGFresh) ((growRow 770 s2Step211EntryFvFresh ++ (growRow 771 s2Step211EntryGvFresh ++ []))) s2Step211EntryG_Incoming s2Step211EntryG_checked h2 s2Step211EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step211EntryFBefore s2Step211EntryFAfter s2Step211EntryGvAfter
    s2Step211EntryFRow s2Step211EntryFOut 165 s2Step211EntryFFresh [(s2Step211EntryGRow,165),(s2Step211EntryFvRow,120),(s2Step211EntryGvRow,120)] [s2Step211EntryGFresh,s2Step211EntryFvFresh,s2Step211EntryGvFresh] [s2Step211EntryGOut,s2Step211EntryFvOut,s2Step211EntryGvOut]
    (growRow 768 s2Step211EntryFFresh) ((growRow 769 s2Step211EntryGFresh ++ (growRow 770 s2Step211EntryFvFresh ++ (growRow 771 s2Step211EntryGvFresh ++ [])))) s2Step211EntryF_Incoming s2Step211EntryF_checked h1 s2Step211EntryF_Outgoing
  exact h0

private theorem s2Step211EntryBank_checked : compileHmrBankResizeLog .entry s2Step211EntryFBefore ⟨s2Step211EntryFRow,s2Step211EntryGRow,s2Step211EntryFvRow,s2Step211EntryGvRow⟩ ⟨165,165,120,120⟩ [s2Step211EntryFFresh,s2Step211EntryGFresh,s2Step211EntryFvFresh,s2Step211EntryGvFresh]=
    some (s2Step211EntryGvAfter,⟨s2Step211EntryFOut,s2Step211EntryGOut,s2Step211EntryFvOut,s2Step211EntryGvOut⟩,(growRow 768 s2Step211EntryFFresh ++ (growRow 769 s2Step211EntryGFresh ++ (growRow 770 s2Step211EntryFvFresh ++ (growRow 771 s2Step211EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step211EntryBank_rows]
  rfl

private def s2Step211ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<675) ∨ (677≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211ExitFBefore : Arena := s2Step211ExitGAfter

private def s2Step211ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 789],768⟩

private def s2Step211ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 845],770⟩

private def s2Step211ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 815, 783],769⟩

private def s2Step211ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 781],771⟩

private theorem s2Step211ExitBank_incomingDistinct : ([s2Step211ExitGRow,s2Step211ExitFRow,s2Step211ExitFvRow,s2Step211ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211ExitF_Incoming : rowsOwned s2Step211ExitFBefore [s2Step211ExitFRow,s2Step211ExitFvRow,s2Step211ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step211ExitGRow,s2Step211ExitFRow,s2Step211ExitFvRow,s2Step211ExitGvRow] 1 s2Step211ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step211ExitFBefore (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211ExitBank_outgoingOwned : rowsOwned s2Step211ExitGvAfter [s2Step211ExitGOut,s2Step211ExitFOut,s2Step211ExitFvOut,s2Step211ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step211ExitGvAfter (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<675) ∨ (677≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211ExitF_Outgoing : rowsOwned s2Step211ExitGvAfter [s2Step211ExitFOut,s2Step211ExitFvOut,s2Step211ExitGvOut] :=
  hmrRows_owned_drop s2Step211ExitGvAfter [s2Step211ExitGOut,s2Step211ExitFOut,s2Step211ExitFvOut,s2Step211ExitGvOut] 1 s2Step211ExitBank_outgoingOwned

private theorem s2Step211ExitF_distinct : (s2Step211ExitFRow.sign::s2Step211ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211ExitF_owned : (s2Step211ExitFRow.sign::s2Step211ExitFRow.payload).toFinset⊆s2Step211ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step211ExitFBefore (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211ExitF_retired : s2Step211ExitFBefore.retireSet s2Step211ExitFExtra.toFinset=s2Step211ExitFAfter := by
  unfold Arena.retireSet s2Step211ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step211ExitFBefore,s2Step211ExitGAfter,s2Step211ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step211ExitF_checked : planRowResizeLog s2Step211ExitFBefore s2Step211ExitFRow 163 []=
    some (s2Step211ExitFAfter,s2Step211ExitFOut,shrinkRow 768 s2Step211ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step211ExitFBefore s2Step211ExitFRow 163 s2Step211ExitF_distinct s2Step211ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step211ExitFRow.payload.take 163) s2Step211ExitFRow.sign=s2Step211ExitFOut := by decide +kernel
  have hi : s2Step211ExitFRow.payload.drop 163=s2Step211ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step211ExitF_retired] at result
  exact result

private def s2Step211ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<675) ∨ (677≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211ExitFvBefore : Arena := s2Step211ExitFAfter

private theorem s2Step211ExitFv_Incoming : rowsOwned s2Step211ExitFvBefore [s2Step211ExitFvRow,s2Step211ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step211ExitGRow,s2Step211ExitFRow,s2Step211ExitFvRow,s2Step211ExitGvRow] 2 s2Step211ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step211ExitFvBefore (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<675) ∨ (677≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211ExitFv_Outgoing : rowsOwned s2Step211ExitGvAfter [s2Step211ExitFvOut,s2Step211ExitGvOut] :=
  hmrRows_owned_drop s2Step211ExitGvAfter [s2Step211ExitGOut,s2Step211ExitFOut,s2Step211ExitFvOut,s2Step211ExitGvOut] 2 s2Step211ExitBank_outgoingOwned

private theorem s2Step211ExitFv_distinct : (s2Step211ExitFvRow.sign::s2Step211ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211ExitFv_owned : (s2Step211ExitFvRow.sign::s2Step211ExitFvRow.payload).toFinset⊆s2Step211ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step211ExitFvBefore (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<675) ∨ (677≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211ExitFv_retired : s2Step211ExitFvBefore.retireSet s2Step211ExitFvExtra.toFinset=s2Step211ExitFvAfter := by
  unfold Arena.retireSet s2Step211ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step211ExitFvBefore,s2Step211ExitFAfter,s2Step211ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step211ExitFv_checked : planRowResizeLog s2Step211ExitFvBefore s2Step211ExitFvRow 120 []=
    some (s2Step211ExitFvAfter,s2Step211ExitFvOut,shrinkRow 770 s2Step211ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step211ExitFvBefore s2Step211ExitFvRow 120 s2Step211ExitFv_distinct s2Step211ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step211ExitFvRow.payload.take 120) s2Step211ExitFvRow.sign=s2Step211ExitFvOut := by decide +kernel
  have hi : s2Step211ExitFvRow.payload.drop 120=s2Step211ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step211ExitFv_retired] at result
  exact result

private def s2Step211ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step211ExitG_Incoming : rowsOwned s2Step211ExitGBefore [s2Step211ExitGRow,s2Step211ExitFRow,s2Step211ExitFvRow,s2Step211ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step211ExitGRow,s2Step211ExitFRow,s2Step211ExitFvRow,s2Step211ExitGvRow] 0 s2Step211ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step211ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211ExitG_Outgoing : rowsOwned s2Step211ExitGvAfter [s2Step211ExitGOut,s2Step211ExitFOut,s2Step211ExitFvOut,s2Step211ExitGvOut] :=
  hmrRows_owned_drop s2Step211ExitGvAfter [s2Step211ExitGOut,s2Step211ExitFOut,s2Step211ExitFvOut,s2Step211ExitGvOut] 0 s2Step211ExitBank_outgoingOwned

private theorem s2Step211ExitG_distinct : (s2Step211ExitGRow.sign::s2Step211ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211ExitG_owned : (s2Step211ExitGRow.sign::s2Step211ExitGRow.payload).toFinset⊆s2Step211ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step211ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211ExitG_retired : s2Step211ExitGBefore.retireSet s2Step211ExitGExtra.toFinset=s2Step211ExitGAfter := by
  unfold Arena.retireSet s2Step211ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step211ExitGBefore,s2Step211ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step211ExitG_checked : planRowResizeLog s2Step211ExitGBefore s2Step211ExitGRow 163 []=
    some (s2Step211ExitGAfter,s2Step211ExitGOut,shrinkRow 769 s2Step211ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step211ExitGBefore s2Step211ExitGRow 163 s2Step211ExitG_distinct s2Step211ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step211ExitGRow.payload.take 163) s2Step211ExitGRow.sign=s2Step211ExitGOut := by decide +kernel
  have hi : s2Step211ExitGRow.payload.drop 163=s2Step211ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step211ExitG_retired] at result
  exact result

private def s2Step211ExitGvBefore : Arena := s2Step211ExitFvAfter

private theorem s2Step211ExitGv_Incoming : rowsOwned s2Step211ExitGvBefore [s2Step211ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step211ExitGRow,s2Step211ExitFRow,s2Step211ExitFvRow,s2Step211ExitGvRow] 3 s2Step211ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step211ExitGvBefore (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<675) ∨ (677≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211ExitGv_Outgoing : rowsOwned s2Step211ExitGvAfter [s2Step211ExitGvOut] :=
  hmrRows_owned_drop s2Step211ExitGvAfter [s2Step211ExitGOut,s2Step211ExitFOut,s2Step211ExitFvOut,s2Step211ExitGvOut] 3 s2Step211ExitBank_outgoingOwned

private theorem s2Step211ExitGv_distinct : (s2Step211ExitGvRow.sign::s2Step211ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211ExitGv_owned : (s2Step211ExitGvRow.sign::s2Step211ExitGvRow.payload).toFinset⊆s2Step211ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step211ExitGvBefore (fun q => (0≤q ∧ q<163) ∨ (164≤q ∧ q<675) ∨ (677≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211ExitGv_retired : s2Step211ExitGvBefore.retireSet s2Step211ExitGvExtra.toFinset=s2Step211ExitGvAfter := by
  unfold Arena.retireSet s2Step211ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step211ExitGvBefore,s2Step211ExitFvAfter,s2Step211ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step211ExitGv_checked : planRowResizeLog s2Step211ExitGvBefore s2Step211ExitGvRow 120 []=
    some (s2Step211ExitGvAfter,s2Step211ExitGvOut,shrinkRow 771 s2Step211ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step211ExitGvBefore s2Step211ExitGvRow 120 s2Step211ExitGv_distinct s2Step211ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step211ExitGvRow.payload.take 120) s2Step211ExitGvRow.sign=s2Step211ExitGvOut := by decide +kernel
  have hi : s2Step211ExitGvRow.payload.drop 120=s2Step211ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step211ExitGv_retired] at result
  exact result

private theorem s2Step211ExitBank_rows : planWindowRowsLog s2Step211ExitGBefore [(s2Step211ExitGRow,163),(s2Step211ExitFRow,163),(s2Step211ExitFvRow,120),(s2Step211ExitGvRow,120)] [[],[],[],[]]=
    some (s2Step211ExitGvAfter,[s2Step211ExitGOut,s2Step211ExitFOut,s2Step211ExitFvOut,s2Step211ExitGvOut],(shrinkRow 769 s2Step211ExitGExtra ++ (shrinkRow 768 s2Step211ExitFExtra ++ (shrinkRow 770 s2Step211ExitFvExtra ++ (shrinkRow 771 s2Step211ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step211ExitGvAfter [] []=some (s2Step211ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step211ExitGvBefore s2Step211ExitGvAfter s2Step211ExitGvAfter
    s2Step211ExitGvRow s2Step211ExitGvOut 120 [] [] [] []
    (shrinkRow 771 s2Step211ExitGvExtra) ([]) s2Step211ExitGv_Incoming s2Step211ExitGv_checked h4 s2Step211ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step211ExitFvBefore s2Step211ExitFvAfter s2Step211ExitGvAfter
    s2Step211ExitFvRow s2Step211ExitFvOut 120 [] [(s2Step211ExitGvRow,120)] [[]] [s2Step211ExitGvOut]
    (shrinkRow 770 s2Step211ExitFvExtra) ((shrinkRow 771 s2Step211ExitGvExtra ++ [])) s2Step211ExitFv_Incoming s2Step211ExitFv_checked h3 s2Step211ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step211ExitFBefore s2Step211ExitFAfter s2Step211ExitGvAfter
    s2Step211ExitFRow s2Step211ExitFOut 163 [] [(s2Step211ExitFvRow,120),(s2Step211ExitGvRow,120)] [[],[]] [s2Step211ExitFvOut,s2Step211ExitGvOut]
    (shrinkRow 768 s2Step211ExitFExtra) ((shrinkRow 770 s2Step211ExitFvExtra ++ (shrinkRow 771 s2Step211ExitGvExtra ++ []))) s2Step211ExitF_Incoming s2Step211ExitF_checked h2 s2Step211ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step211ExitGBefore s2Step211ExitGAfter s2Step211ExitGvAfter
    s2Step211ExitGRow s2Step211ExitGOut 163 [] [(s2Step211ExitFRow,163),(s2Step211ExitFvRow,120),(s2Step211ExitGvRow,120)] [[],[],[]] [s2Step211ExitFOut,s2Step211ExitFvOut,s2Step211ExitGvOut]
    (shrinkRow 769 s2Step211ExitGExtra) ((shrinkRow 768 s2Step211ExitFExtra ++ (shrinkRow 770 s2Step211ExitFvExtra ++ (shrinkRow 771 s2Step211ExitGvExtra ++ [])))) s2Step211ExitG_Incoming s2Step211ExitG_checked h1 s2Step211ExitG_Outgoing
  exact h0

private theorem s2Step211ExitBank_checked : compileHmrBankResizeLog .exit s2Step211ExitGBefore ⟨s2Step211ExitFRow,s2Step211ExitGRow,s2Step211ExitFvRow,s2Step211ExitGvRow⟩ ⟨163,163,120,120⟩ [[],[],[],[]]=
    some (s2Step211ExitGvAfter,⟨s2Step211ExitFOut,s2Step211ExitGOut,s2Step211ExitFvOut,s2Step211ExitGvOut⟩,(shrinkRow 769 s2Step211ExitGExtra ++ (shrinkRow 768 s2Step211ExitFExtra ++ (shrinkRow 770 s2Step211ExitFvExtra ++ (shrinkRow 771 s2Step211ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step211ExitBank_rows]
  rfl

private theorem s2Step211Add0_apart : Disjoint s2Step211Add0Arena.live s2Step211Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step211Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211Add0_card : s2Step211Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step211Add0_borrowed : s2Step211Add0Arena.checkBorrow (hmrHybridCount s2Step211Add0Arena s2Step211Add0B.length) s2Step211Add0Work=some s2Step211Add0During := by
  have len : s2Step211Add0Work.length=hmrHybridCount s2Step211Add0Arena s2Step211Add0B.length := by
    rw [hmrHybridCount,s2Step211Add0_card]
    decide +kernel
  have nd : s2Step211Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step211Add0Arena s2Step211Add0During s2Step211Add0Work.toFinset s2Step211Add0_bounded s2Step211Add0_apart rfl

private theorem s2Step211Add0_distinct : (814::822::882::(s2Step211Add0A++s2Step211Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211Add0_owned : (814::822::882::(s2Step211Add0A++s2Step211Add0B)).toFinset⊆s2Step211Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step211Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211Add0_checked : compileHmrHybridCinLog s2Step211Add0Arena 822 814 882 s2Step211Add0A s2Step211Add0B s2Step211Add0Work=some s2Step211Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step211Add0Arena s2Step211Add0During 822 814 882 s2Step211Add0A s2Step211Add0B s2Step211Add0Work
    (by decide +kernel) (by decide +kernel) s2Step211Add0_distinct
    (fun q hq => s2Step211Add0_owned (List.mem_toFinset.mpr hq)) s2Step211Add0_borrowed

private theorem s2Step211Add1_apart : Disjoint s2Step211Add1Arena.live s2Step211Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step211Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211Add1_card : s2Step211Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step211Add1_borrowed : s2Step211Add1Arena.checkBorrow (hmrHybridCount s2Step211Add1Arena s2Step211Add1B.length) s2Step211Add1Work=some s2Step211Add1During := by
  have len : s2Step211Add1Work.length=hmrHybridCount s2Step211Add1Arena s2Step211Add1B.length := by
    rw [hmrHybridCount,s2Step211Add1_card]
    decide +kernel
  have nd : s2Step211Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step211Add1Arena s2Step211Add1During s2Step211Add1Work.toFinset s2Step211Add1_bounded s2Step211Add1_apart rfl

private theorem s2Step211Add1_distinct : (814::822::882::(s2Step211Add1A++s2Step211Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211Add1_owned : (814::822::882::(s2Step211Add1A++s2Step211Add1B)).toFinset⊆s2Step211Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step211Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211Add1_checked : compileHmrHybridCinLog s2Step211Add1Arena 822 814 882 s2Step211Add1A s2Step211Add1B s2Step211Add1Work=some s2Step211Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step211Add1Arena s2Step211Add1During 822 814 882 s2Step211Add1A s2Step211Add1B s2Step211Add1Work
    (by decide +kernel) (by decide +kernel) s2Step211Add1_distinct
    (fun q hq => s2Step211Add1_owned (List.mem_toFinset.mpr hq)) s2Step211Add1_borrowed

private theorem s2Step211F4_apart : Disjoint (s2Step211Add0A++s2Step211Add0B).toFinset (s2Step211Add1A++s2Step211Add1B).toFinset := by
  have nd : ((s2Step211Add0A++s2Step211Add0B)++(s2Step211Add1A++s2Step211Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step211F4_carry : s2Step211F4FlagArena.checkBorrow 1 [882]=some s2Step211Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step211F4FlagArena,s2Step211HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step211F4FlagArena,s2Step211HeadFvAfter,s2Step211Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step211F4_distinct : (796::822::814::882::((s2Step211Add0A++s2Step211Add1A)++(s2Step211Add0B++s2Step211Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211F4_flag : s2Step211HeadFvAfter.checkBorrow 1 [814]=some s2Step211F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step211HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step211F4_owned : (796::822::((s2Step211Add0A++s2Step211Add1A)++(s2Step211Add0B++s2Step211Add1B))).toFinset⊆s2Step211HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step211HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211F4_checked : compileHmrHybridF4Log s2Step211HeadFvAfter 796 822 s2Step211Add0A s2Step211Add0B s2Step211Add1A s2Step211Add1B [814] [882] s2Step211Add0Work s2Step211Add1Work=some s2Step211F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step211HeadFvAfter s2Step211F4FlagArena s2Step211Add0Arena s2Step211Add0During s2Step211Add1During 796 822
    s2Step211Add0A s2Step211Add0B s2Step211Add1A s2Step211Add1B [814] [882] s2Step211Add0Work s2Step211Add1Work
    (fun q hq => s2Step211F4_owned (List.mem_toFinset.mpr hq)) s2Step211F4_flag s2Step211F4_carry
    s2Step211F4_distinct s2Step211F4_apart s2Step211Add0_checked s2Step211Add1_checked

private theorem s2Step211Front_branch : s2Step211FrontSigmaArena.checkBorrow 1 [822]=some s2Step211HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step211FrontSigmaArena,s2Step211EntryGvAfter,s2Step211EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step211FrontSigmaArena,s2Step211EntryGvAfter,s2Step211EntryFvAfter,s2Step211HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step211Front_entry : HmrFrontEntryValid s2Step211EntryFBefore s2Step211FrontBank 165 120 ⟨163,163,120,120⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step211FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step211EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step211EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step211FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step211Front_sigma : s2Step211EntryGvAfter.checkBorrow 1 [796]=some s2Step211FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step211EntryGvAfter,s2Step211EntryFvAfter,arenaWires]
  · rfl

private def s2Step211HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211HeadFBefore : Arena := s2Step211HeadGAfter

private def s2Step211HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676],768⟩

private def s2Step211HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786],770⟩

private def s2Step211HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 815],769⟩

private def s2Step211HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩

private theorem s2Step211HeadBank_incomingDistinct : ([s2Step211HeadGRow,s2Step211HeadFRow,s2Step211HeadGvRow,s2Step211HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211HeadF_Incoming : rowsOwned s2Step211HeadFBefore [s2Step211HeadFRow,s2Step211HeadGvRow,s2Step211HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step211HeadGRow,s2Step211HeadFRow,s2Step211HeadGvRow,s2Step211HeadFvRow] 1 s2Step211HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step211HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211HeadBank_outgoingOwned : rowsOwned s2Step211HeadFvAfter [s2Step211HeadGOut,s2Step211HeadFOut,s2Step211HeadGvOut,s2Step211HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step211HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211HeadF_Outgoing : rowsOwned s2Step211HeadFvAfter [s2Step211HeadFOut,s2Step211HeadGvOut,s2Step211HeadFvOut] :=
  hmrRows_owned_drop s2Step211HeadFvAfter [s2Step211HeadGOut,s2Step211HeadFOut,s2Step211HeadGvOut,s2Step211HeadFvOut] 1 s2Step211HeadBank_outgoingOwned

private theorem s2Step211HeadF_distinct : (s2Step211HeadFRow.sign::s2Step211HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211HeadF_owned : (s2Step211HeadFRow.sign::s2Step211HeadFRow.payload).toFinset⊆s2Step211HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step211HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211HeadF_reserved : s2Step211HeadFBefore.reserve s2Step211HeadFFresh.toFinset=some s2Step211HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step211HeadFFresh,arenaWires]
  · norm_num [s2Step211HeadFBefore,s2Step211HeadGAfter,s2Step211HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step211HeadFAfter,s2Step211HeadFBefore,s2Step211HeadGAfter,s2Step211HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step211HeadF_checked : planRowResizeLog s2Step211HeadFBefore s2Step211HeadFRow 166 s2Step211HeadFFresh=
    some (s2Step211HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 789],768⟩,growRow 768 s2Step211HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step211HeadFBefore s2Step211HeadFAfter s2Step211HeadFRow 166 s2Step211HeadFFresh
    s2Step211HeadF_distinct s2Step211HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step211HeadF_reserved
  have rowEq : WindowRow.mk (s2Step211HeadFRow.payload++s2Step211HeadFFresh) s2Step211HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 789],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step211HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step211HeadFvBefore : Arena := s2Step211HeadGvAfter

private theorem s2Step211HeadFv_Incoming : rowsOwned s2Step211HeadFvBefore [s2Step211HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step211HeadGRow,s2Step211HeadFRow,s2Step211HeadGvRow,s2Step211HeadFvRow] 3 s2Step211HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step211HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211HeadFv_Outgoing : rowsOwned s2Step211HeadFvAfter [s2Step211HeadFvOut] :=
  hmrRows_owned_drop s2Step211HeadFvAfter [s2Step211HeadGOut,s2Step211HeadFOut,s2Step211HeadGvOut,s2Step211HeadFvOut] 3 s2Step211HeadBank_outgoingOwned

private theorem s2Step211HeadFv_distinct : (s2Step211HeadFvRow.sign::s2Step211HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211HeadFv_owned : (s2Step211HeadFvRow.sign::s2Step211HeadFvRow.payload).toFinset⊆s2Step211HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step211HeadFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211HeadFv_reserved : s2Step211HeadFvBefore.reserve s2Step211HeadFvFresh.toFinset=some s2Step211HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step211HeadFvFresh,arenaWires]
  · norm_num [s2Step211HeadFvBefore,s2Step211HeadGvAfter,s2Step211HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step211HeadFvAfter,s2Step211HeadFvBefore,s2Step211HeadGvAfter,s2Step211HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step211HeadFv_checked : planRowResizeLog s2Step211HeadFvBefore s2Step211HeadFvRow 121 s2Step211HeadFvFresh=
    some (s2Step211HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 845],770⟩,growRow 770 s2Step211HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step211HeadFvBefore s2Step211HeadFvAfter s2Step211HeadFvRow 121 s2Step211HeadFvFresh
    s2Step211HeadFv_distinct s2Step211HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step211HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step211HeadFvRow.payload++s2Step211HeadFvFresh) s2Step211HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step211HeadG_Incoming : rowsOwned s2Step211HeadGBefore [s2Step211HeadGRow,s2Step211HeadFRow,s2Step211HeadGvRow,s2Step211HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step211HeadGRow,s2Step211HeadFRow,s2Step211HeadGvRow,s2Step211HeadFvRow] 0 s2Step211HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step211HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211HeadG_Outgoing : rowsOwned s2Step211HeadFvAfter [s2Step211HeadGOut,s2Step211HeadFOut,s2Step211HeadGvOut,s2Step211HeadFvOut] :=
  hmrRows_owned_drop s2Step211HeadFvAfter [s2Step211HeadGOut,s2Step211HeadFOut,s2Step211HeadGvOut,s2Step211HeadFvOut] 0 s2Step211HeadBank_outgoingOwned

private theorem s2Step211HeadG_distinct : (s2Step211HeadGRow.sign::s2Step211HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211HeadG_owned : (s2Step211HeadGRow.sign::s2Step211HeadGRow.payload).toFinset⊆s2Step211HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step211HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211HeadG_reserved : s2Step211HeadGBefore.reserve s2Step211HeadGFresh.toFinset=some s2Step211HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step211HeadGFresh,arenaWires]
  · norm_num [s2Step211HeadGBefore,s2Step211HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step211HeadGAfter,s2Step211HeadGBefore,s2Step211HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step211HeadG_checked : planRowResizeLog s2Step211HeadGBefore s2Step211HeadGRow 166 s2Step211HeadGFresh=
    some (s2Step211HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 815, 783],769⟩,growRow 769 s2Step211HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step211HeadGBefore s2Step211HeadGAfter s2Step211HeadGRow 166 s2Step211HeadGFresh
    s2Step211HeadG_distinct s2Step211HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step211HeadG_reserved
  have rowEq : WindowRow.mk (s2Step211HeadGRow.payload++s2Step211HeadGFresh) s2Step211HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 815, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step211HeadGvBefore : Arena := s2Step211HeadFAfter

private theorem s2Step211HeadGv_Incoming : rowsOwned s2Step211HeadGvBefore [s2Step211HeadGvRow,s2Step211HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step211HeadGRow,s2Step211HeadFRow,s2Step211HeadGvRow,s2Step211HeadFvRow] 2 s2Step211HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step211HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step211HeadGv_Outgoing : rowsOwned s2Step211HeadFvAfter [s2Step211HeadGvOut,s2Step211HeadFvOut] :=
  hmrRows_owned_drop s2Step211HeadFvAfter [s2Step211HeadGOut,s2Step211HeadFOut,s2Step211HeadGvOut,s2Step211HeadFvOut] 2 s2Step211HeadBank_outgoingOwned

private theorem s2Step211HeadGv_distinct : (s2Step211HeadGvRow.sign::s2Step211HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step211HeadGv_owned : (s2Step211HeadGvRow.sign::s2Step211HeadGvRow.payload).toFinset⊆s2Step211HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step211HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step211HeadGv_reserved : s2Step211HeadGvBefore.reserve s2Step211HeadGvFresh.toFinset=some s2Step211HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step211HeadGvFresh,arenaWires]
  · norm_num [s2Step211HeadGvBefore,s2Step211HeadFAfter,s2Step211HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step211HeadGvAfter,s2Step211HeadGvBefore,s2Step211HeadFAfter,s2Step211HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step211HeadGv_checked : planRowResizeLog s2Step211HeadGvBefore s2Step211HeadGvRow 121 s2Step211HeadGvFresh=
    some (s2Step211HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 781],771⟩,growRow 771 s2Step211HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step211HeadGvBefore s2Step211HeadGvAfter s2Step211HeadGvRow 121 s2Step211HeadGvFresh
    s2Step211HeadGv_distinct s2Step211HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step211HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step211HeadGvRow.payload++s2Step211HeadGvFresh) s2Step211HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step211HeadBank_rows : planWindowRowsLog s2Step211HeadGBefore [(s2Step211HeadGRow,166),(s2Step211HeadFRow,166),(s2Step211HeadGvRow,121),(s2Step211HeadFvRow,121)] [s2Step211HeadGFresh,s2Step211HeadFFresh,s2Step211HeadGvFresh,s2Step211HeadFvFresh]=
    some (s2Step211HeadFvAfter,[s2Step211HeadGOut,s2Step211HeadFOut,s2Step211HeadGvOut,s2Step211HeadFvOut],(growRow 769 s2Step211HeadGFresh ++ (growRow 768 s2Step211HeadFFresh ++ (growRow 771 s2Step211HeadGvFresh ++ (growRow 770 s2Step211HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step211HeadFvAfter [] []=some (s2Step211HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step211HeadFvBefore s2Step211HeadFvAfter s2Step211HeadFvAfter
    s2Step211HeadFvRow s2Step211HeadFvOut 121 s2Step211HeadFvFresh [] [] []
    (growRow 770 s2Step211HeadFvFresh) ([]) s2Step211HeadFv_Incoming s2Step211HeadFv_checked h4 s2Step211HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step211HeadGvBefore s2Step211HeadGvAfter s2Step211HeadFvAfter
    s2Step211HeadGvRow s2Step211HeadGvOut 121 s2Step211HeadGvFresh [(s2Step211HeadFvRow,121)] [s2Step211HeadFvFresh] [s2Step211HeadFvOut]
    (growRow 771 s2Step211HeadGvFresh) ((growRow 770 s2Step211HeadFvFresh ++ [])) s2Step211HeadGv_Incoming s2Step211HeadGv_checked h3 s2Step211HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step211HeadFBefore s2Step211HeadFAfter s2Step211HeadFvAfter
    s2Step211HeadFRow s2Step211HeadFOut 166 s2Step211HeadFFresh [(s2Step211HeadGvRow,121),(s2Step211HeadFvRow,121)] [s2Step211HeadGvFresh,s2Step211HeadFvFresh] [s2Step211HeadGvOut,s2Step211HeadFvOut]
    (growRow 768 s2Step211HeadFFresh) ((growRow 771 s2Step211HeadGvFresh ++ (growRow 770 s2Step211HeadFvFresh ++ []))) s2Step211HeadF_Incoming s2Step211HeadF_checked h2 s2Step211HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step211HeadGBefore s2Step211HeadGAfter s2Step211HeadFvAfter
    s2Step211HeadGRow s2Step211HeadGOut 166 s2Step211HeadGFresh [(s2Step211HeadFRow,166),(s2Step211HeadGvRow,121),(s2Step211HeadFvRow,121)] [s2Step211HeadFFresh,s2Step211HeadGvFresh,s2Step211HeadFvFresh] [s2Step211HeadFOut,s2Step211HeadGvOut,s2Step211HeadFvOut]
    (growRow 769 s2Step211HeadGFresh) ((growRow 768 s2Step211HeadFFresh ++ (growRow 771 s2Step211HeadGvFresh ++ (growRow 770 s2Step211HeadFvFresh ++ [])))) s2Step211HeadG_Incoming s2Step211HeadG_checked h1 s2Step211HeadG_Outgoing
  exact h0

private theorem s2Step211HeadBank_checked : compileHmrBankResizeLog .headroom s2Step211HeadGBefore ⟨s2Step211HeadFRow,s2Step211HeadGRow,s2Step211HeadFvRow,s2Step211HeadGvRow⟩ ⟨166,166,121,121⟩ [s2Step211HeadGFresh,s2Step211HeadFFresh,s2Step211HeadGvFresh,s2Step211HeadFvFresh]=
    some (s2Step211HeadFvAfter,⟨s2Step211HeadFOut,s2Step211HeadGOut,s2Step211HeadFvOut,s2Step211HeadGvOut⟩,(growRow 769 s2Step211HeadGFresh ++ (growRow 768 s2Step211HeadFFresh ++ (growRow 771 s2Step211HeadGvFresh ++ (growRow 770 s2Step211HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step211HeadBank_rows]
  rfl

private theorem s2Step211Front_checked : compileHmrSourceFrontLog s2Step211EntryFBefore s2Step211FrontBank 165 120 ⟨163,163,120,120⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step211FrontLog=some s2Step211FrontPlan := by
  have pairEq : s2Step211FrontPair=⟨s2Step211HeadFRow,s2Step211HeadGRow,s2Step211HeadFvRow,s2Step211HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step211FrontHead=⟨s2Step211ExitFRow,s2Step211ExitGRow,s2Step211ExitFvRow,s2Step211ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step211Add0A=s2Step211FrontHead.f.wires := by decide +kernel
  have gEq : s2Step211Add0B=s2Step211FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step211Add1A=s2Step211FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step211Add1B=s2Step211FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step211EntryFBefore s2Step211FrontBank 165 120 ⟨163,163,120,120⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step211FrontLog s2Step211FrontPlan
  · exact s2Step211Front_entry
  · exact s2Step211EntryBank_checked
  · exact s2Step211Front_sigma
  · rfl
  · exact s2Step211Front_branch
  · rfl
  · simpa only [s2Step211FrontPlan,pairEq] using s2Step211HeadBank_checked
  · simpa only [s2Step211FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step211F4_checked
  · exact s2Step211Counter_checked
  · rfl
  · simpa only [s2Step211FrontPlan,headEq] using s2Step211ExitBank_checked

private theorem s2Step211Complete_explicit_checked : compileHmrEarlyStepLog s2Step211EntryFBefore s2Step211FrontBank 165 120 ⟨163,163,120,120⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step211CompleteLog=some s2Step211CompletePlan := by
  let Q := s2Step211EarlyControlPlan
  have hq := s2Step211EarlyControl_plan_checked
  have fv1 : s2Step211CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step211CompleteOut.fv.payload[2]?.getD s2Step211CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step211CompleteOut.fv.payload[3]?.getD s2Step211CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step211CompleteOut.fv.payload[4]?.getD s2Step211CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step211EntryFBefore s2Step211EarlyControlArena s2Step211FrontBank 165 120 ⟨163,163,120,120⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step211CompleteLog s2Step211FrontPlan Q
    s2Step211Front_checked s2Step211Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step211Complete_owned s2Step211Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step211EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 796 s2Step211CompleteOut.fv.second (s2Step211CompleteOut.fv.payload[2]?.getD s2Step211CompleteOut.fv.sign) (s2Step211CompleteOut.fv.payload[3]?.getD s2Step211CompleteOut.fv.sign) (s2Step211CompleteOut.fv.payload[4]?.getD s2Step211CompleteOut.fv.sign) 822 47 s2Step211EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep211Arena : Arena := s2Step211EntryFBefore
def s2PrivateStep211Bank : WindowBank := s2Step211FrontBank
def s2PrivateStep211Spec : HmrSourceWalkStepLog := ⟨165,120,⟨163,163,120,120⟩,47,.early s2Step211CompleteLog⟩
def s2PrivateStep211Plan : HmrSourceStepPlan := .early s2Step211CompletePlan
theorem s2PrivateStep211_source : s2PrivateStep211Spec=s2ObservedLogs208[3] := rfl
theorem s2PrivateStep211_checked : compileHmrSourceStepLog s2PrivateStep211Arena s2PrivateStep211Bank
    s2PrivateStep211Spec.fgWidth s2PrivateStep211Spec.vWidth s2PrivateStep211Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 211 s2PrivateStep211Spec.need none s2PrivateStep211Spec.log=some s2PrivateStep211Plan := by
  change compileHmrSourceStepLog s2Step211EntryFBefore s2Step211FrontBank 165 120 ⟨163,163,120,120⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 211 47 none (.early s2Step211CompleteLog)=some (.early s2Step211CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 211<498)]
  rw [s2Step211Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
