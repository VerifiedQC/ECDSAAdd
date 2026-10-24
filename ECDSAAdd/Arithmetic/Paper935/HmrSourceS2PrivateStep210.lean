import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep208
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

private def s2Step210CompleteMoves : List (Wire × Wire) := []

private def s2Step210EarlyControlLog : HmrEarlyControlLog := ⟨[796, 822, 783, 789, 781],[845],[814],[882, 826, 842, 885, 891, 894],[]⟩

private def s2Step210FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [781], [], [841]],[[845], [789], [796], [783]],[[], [], [], []]⟩,[786],[815],[814],[882],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step210CompleteLog : HmrEarlyStepLog := ⟨s2Step210FrontLog,s2Step210CompleteMoves,s2Step210EarlyControlLog⟩

private def s2Step210ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676],768⟩

private def s2Step210ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779],770⟩

private def s2Step210ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163],769⟩

private def s2Step210ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩

private def s2Step210FrontOut : WindowBank := ⟨s2Step210ExitFOut,s2Step210ExitGOut,s2Step210ExitFvOut,s2Step210ExitGvOut⟩

private def s2Step210CompleteOut : WindowBank := s2Step210FrontOut.repacked s2Step210CompleteMoves

private def s2Step210EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step210EarlyControlPositiveArena,[845],s2Step210EarlyControlEqualityArena,[814],⟨⟨786,false⟩,[⟨⟨845,false⟩,814⟩]⟩⟩

private def s2Step210EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,796⟩,⟨⟨774,false⟩,822⟩,⟨⟨775,false⟩,783⟩,⟨⟨776,false⟩,789⟩,⟨⟨777,false⟩,781⟩]⟩

private def s2Step210EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step210EarlyControlZeroArena,s2Step210EarlyControlZeroPlan,s2Step210EarlyControlClassPlan,s2Step210EarlyControlFlagArena,s2Step210EarlyControlFittedArena,s2Step210EarlyControlHistoryArena,s2Step210EarlyControlSigmaArena,s2Step210EarlyControlOutputArena,s2Step210EarlyControlLog⟩

private def s2Step210CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step210Counter_bounded : s2Step210CounterWork.toFinset⊆arenaWires := by norm_num [s2Step210CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step210HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210CounterDuring : Arena := ⟨s2Step210HeadFvAfter.live∪s2Step210CounterWork.toFinset,Finset.union_subset s2Step210HeadFvAfter.bounded s2Step210Counter_bounded⟩

private def s2Step210EntryFFresh : List Wire := []

private def s2Step210EntryFvFresh : List Wire := []

private def s2Step210EntryGFresh : List Wire := [781]

private def s2Step210EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210EntryGvFresh : List Wire := [841]

private def s2Step210ExitFExtra : List Wire := [789]

private def s2Step210ExitFvExtra : List Wire := [822, 783]

private def s2Step210ExitGExtra : List Wire := [781, 845]

private def s2Step210ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210ExitGvExtra : List Wire := [796]

private def s2Step210Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210Add0Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step210Add0_bounded : s2Step210Add0Work.toFinset⊆arenaWires := by
  have h : s2Step210Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step210Add0During : Arena := ⟨s2Step210Add0Arena.live∪s2Step210Add0Work.toFinset,Finset.union_subset s2Step210Add0Arena.bounded s2Step210Add0_bounded⟩

private def s2Step210Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210Add1Work : List Wire := [826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step210Add1_bounded : s2Step210Add1Work.toFinset⊆arenaWires := by
  have h : s2Step210Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step210Add1During : Arena := ⟨s2Step210Add1Arena.live∪s2Step210Add1Work.toFinset,Finset.union_subset s2Step210Add1Arena.bounded s2Step210Add1_bounded⟩

private def s2Step210F4FlagArena : Arena := ⟨s2Step210HeadFvAfter.live∪{814},Finset.union_subset s2Step210HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step210F4Plan : HmrHybridF4Plan := ⟨s2Step210F4FlagArena,[814],s2Step210Add0Arena,[882],s2Step210Add0During,s2Step210Add0Work,s2Step210Add1During,s2Step210Add1Work⟩

private def s2Step210HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 789],768⟩

private def s2Step210HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822, 783],770⟩

private def s2Step210HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 781, 845],769⟩

private def s2Step210HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 796],771⟩

private def s2Step210FrontHead : WindowBank := ⟨s2Step210HeadFOut,s2Step210HeadGOut,s2Step210HeadFvOut,s2Step210HeadGvOut⟩

private def s2Step210EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676],768⟩

private def s2Step210EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822],770⟩

private def s2Step210EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 781],769⟩

private def s2Step210EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩

private def s2Step210FrontPair : WindowBank := ⟨s2Step210EntryFOut,s2Step210EntryGOut,s2Step210EntryFvOut,s2Step210EntryGvOut⟩

private def s2Step210FrontSigmaArena : Arena := ⟨s2Step210EntryGvAfter.live∪{786},Finset.union_subset s2Step210EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step210HeadFFresh : List Wire := [789]

private def s2Step210HeadFvFresh : List Wire := [783]

private def s2Step210HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210HeadGFresh : List Wire := [845]

private def s2Step210HeadGvFresh : List Wire := [796]

private def s2Step210FrontPlan : HmrSourceFront := ⟨s2Step210EntryGvAfter,s2Step210FrontPair,(growRow 768 s2Step210EntryFFresh ++ (growRow 769 s2Step210EntryGFresh ++ (growRow 770 s2Step210EntryFvFresh ++ (growRow 771 s2Step210EntryGvFresh ++ [])))),s2Step210FrontSigmaArena,[786],s2Step210HeadGBefore,[815],
  s2Step210HeadFvAfter,s2Step210FrontHead,(growRow 769 s2Step210HeadGFresh ++ (growRow 768 s2Step210HeadFFresh ++ (growRow 771 s2Step210HeadGvFresh ++ (growRow 770 s2Step210HeadFvFresh ++ [])))),s2Step210F4Plan,s2Step210CounterDuring,s2Step210CounterWork,s2Step210ExitGvAfter,s2Step210FrontOut,(shrinkRow 769 s2Step210ExitGExtra ++ (shrinkRow 768 s2Step210ExitFExtra ++ (shrinkRow 770 s2Step210ExitFvExtra ++ (shrinkRow 771 s2Step210ExitGvExtra ++ []))))⟩

private def s2Step210CompletePlan : HmrEarlyStepPlan := ⟨s2Step210FrontPlan,s2Step210EarlyControlArena,s2Step210EarlyControlPlan,s2Step210CompleteMoves⟩

private theorem s2Step210Complete_apart : List.Disjoint (s2Step210CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [786, 815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step210CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[786, 815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step210Complete_owned : (s2Step210CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step210EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step210EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210Complete_repack : s2Step210ExitGvAfter.checkRepack s2Step210CompleteMoves=some s2Step210EarlyControlArena := by rfl

private theorem s2Step210EarlyControl_branchOwned : ([815] : List Wire).toFinset⊆s2Step210EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step210EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EarlyControl_branch : compileHmrBranchRetirement s2Step210EarlyControlSigmaArena 815=some s2Step210EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step210EarlyControl_branchOwned
  · ext q
    simp [s2Step210EarlyControlOutputArena,s2Step210EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step210EarlyControl_classEqualityBorrow : s2Step210EarlyControlPositiveArena.checkBorrow (([786, 845] : List Wire).length-1) s2Step210EarlyControlLog.classWork=some s2Step210EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step210EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step210EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step210EarlyControlEqualityArena,s2Step210EarlyControlPositiveArena,s2Step210EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step210EarlyControl_classEqualityOwned : ([786, 845] : List Wire).toFinset⊆s2Step210EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step210EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EarlyControl_classEquality : compileHmrEqualityLog s2Step210EarlyControlPositiveArena [786, 845] 0 s2Step210EarlyControlLog.classWork=some (s2Step210EarlyControlEqualityArena,s2Step210EarlyControlLog.classWork,s2Step210EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step210EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step210EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step210EarlyControl_classOwned : ([777, 781, 786] : List Wire).toFinset⊆s2Step210EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step210EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EarlyControl_positiveBorrow : s2Step210EarlyControlZeroArena.checkBorrow (1) s2Step210EarlyControlLog.positiveWork=some s2Step210EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step210EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step210EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step210EarlyControlPositiveArena,s2Step210EarlyControlZeroArena,s2Step210EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step210EarlyControl_class : compileHmrSourceClassLog s2Step210EarlyControlZeroArena false 777 s2Step210EarlyControlZeroPlan.top 0 786 s2Step210EarlyControlLog.positiveWork s2Step210EarlyControlLog.classWork=some s2Step210EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step210EarlyControlClassPlan s2Step210EarlyControlZeroArena false 777 s2Step210EarlyControlZeroPlan.top 0 786
  constructor
  · decide +kernel
  · exact s2Step210EarlyControl_classOwned
  · exact s2Step210EarlyControl_positiveBorrow
  · exact s2Step210EarlyControl_classEquality

private theorem s2Step210EarlyControl_entryRecordOwned : ([815, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step210EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step210EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EarlyControl_entrySigmaOwned : ([786, 254] : List Wire).toFinset⊆s2Step210EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step210EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EarlyControl_fitBorrow : s2Step210EarlyControlFlagArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step210EarlyControlLog.recordFresh=some s2Step210EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step210EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step210EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step210EarlyControlFittedArena,s2Step210EarlyControlFlagArena,s2Step210EarlyControlLog,arenaWires]

private theorem s2Step210EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step210EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step210EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EarlyControl_fit : compileHmrRecordGrowLog s2Step210EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step210EarlyControlLog.recordFresh=some s2Step210EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step210EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step210EarlyControl_fitBorrow

private theorem s2Step210EarlyControl_flagsBorrow : s2Step210EarlyControlEqualityArena.checkBorrow (6) s2Step210EarlyControlLog.flagWork=some s2Step210EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step210EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step210EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step210EarlyControlFlagArena,s2Step210EarlyControlEqualityArena,s2Step210EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step210EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step210EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step210EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EarlyControl_flags : compileHmrFlagsLog s2Step210EarlyControlClassPlan.equalityArena s2Step210EarlyControlClassPlan.equality.top 253 252 251 s2Step210EarlyControlLog.flagWork=some s2Step210EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step210EarlyControl_flagsOwned⟩
  · exact s2Step210EarlyControl_flagsBorrow

private theorem s2Step210EarlyControl_historyBorrow : s2Step210EarlyControlArena.checkBorrow ((47-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step210EarlyControlLog.recordFresh=some s2Step210EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step210EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step210EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step210EarlyControlHistoryArena,s2Step210EarlyControlArena,s2Step210EarlyControlLog,arenaWires]

private theorem s2Step210EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step210EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step210EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EarlyControl_history : compileHmrRecordGrowLog s2Step210EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step210EarlyControlLog.recordFresh=some s2Step210EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step210EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step210EarlyControl_historyBorrow

private theorem s2Step210EarlyControl_sigmaOwned : ([254, 786] : List Wire).toFinset⊆s2Step210EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step210EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EarlyControl_sigmaReleaseOwned : ([786] : List Wire).toFinset⊆s2Step210EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step210EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EarlyControl_sigmaRelease : s2Step210EarlyControlHistoryArena.release {786} (fun _ => false)=some s2Step210EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step210EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step210EarlyControlSigmaArena,s2Step210EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step210EarlyControl_sigma : compileHmrSigmaDropLog s2Step210EarlyControlHistoryArena false 0 0 254 786 []=some s2Step210EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step210EarlyControl_sigmaOwned⟩
  · exact s2Step210EarlyControl_sigmaRelease

private theorem s2Step210EarlyControl_zeroBorrow : s2Step210EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step210EarlyControlLog.zeroWork=some s2Step210EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step210EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step210EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step210EarlyControlZeroArena,s2Step210EarlyControlArena,s2Step210EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step210EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step210EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step210EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EarlyControl_zero : compileHmrEqualityLog s2Step210EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step210EarlyControlLog.zeroWork=some (s2Step210EarlyControlZeroArena,s2Step210EarlyControlLog.zeroWork,s2Step210EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step210EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step210EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step210EarlyControl_logged : s2Step210EarlyControlPlan.Logged s2Step210EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 786 254 253 252 251 815 47 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step210EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step210EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step210EarlyControl_zero
  · exact s2Step210EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step210EarlyControl_flags
  · exact s2Step210EarlyControl_fit
  · exact s2Step210EarlyControl_history
  · exact s2Step210EarlyControl_sigma
  · exact s2Step210EarlyControl_branch

private theorem s2Step210EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step210EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 786 254 253 252 251 815 47 s2Step210EarlyControlLog=some s2Step210EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step210EarlyControlPlan s2Step210EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 786 254 253 252 251 815 47 s2Step210EarlyControl_logged

private def s2Step210EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676],768⟩

private def s2Step210EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822],770⟩

private def s2Step210EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163],769⟩

private def s2Step210EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816],771⟩

private def s2Step210FrontBank : WindowBank := ⟨s2Step210EntryFRow,s2Step210EntryGRow,s2Step210EntryFvRow,s2Step210EntryGvRow⟩

private def s2Step210Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 789, 768]

private def s2Step210Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 781, 845, 769]

private def s2Step210Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822, 783, 770]

private def s2Step210Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 796, 771]

private theorem s2Step210Counter_apart : Disjoint s2Step210HeadFvAfter.live s2Step210CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step210HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210Counter_borrowed : s2Step210HeadFvAfter.checkBorrow 4 s2Step210CounterWork=some s2Step210CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step210HeadFvAfter s2Step210CounterDuring s2Step210CounterWork.toFinset s2Step210Counter_bounded s2Step210Counter_apart rfl

private theorem s2Step210Counter_owned : (786::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step210HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step210HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210Counter_checked : compileHmrCounterStepLog s2Step210HeadFvAfter true 786 [772, 773, 774, 775, 776, 777] s2Step210CounterWork=some s2Step210CounterDuring := by
  have owned : ∀q∈786::[772, 773, 774, 775, 776, 777],q∈s2Step210HeadFvAfter.live := fun q hq => s2Step210Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step210Counter_borrowed

private def s2Step210EntryFAfter : Arena := s2Step210EntryFBefore

private theorem s2Step210EntryBank_incomingDistinct : ([s2Step210EntryFRow,s2Step210EntryGRow,s2Step210EntryFvRow,s2Step210EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210EntryF_Incoming : rowsOwned s2Step210EntryFBefore [s2Step210EntryFRow,s2Step210EntryGRow,s2Step210EntryFvRow,s2Step210EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step210EntryFRow,s2Step210EntryGRow,s2Step210EntryFvRow,s2Step210EntryGvRow] 0 s2Step210EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step210EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210EntryBank_outgoingOwned : rowsOwned s2Step210EntryGvAfter [s2Step210EntryFOut,s2Step210EntryGOut,s2Step210EntryFvOut,s2Step210EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step210EntryGvAfter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210EntryF_Outgoing : rowsOwned s2Step210EntryGvAfter [s2Step210EntryFOut,s2Step210EntryGOut,s2Step210EntryFvOut,s2Step210EntryGvOut] :=
  hmrRows_owned_drop s2Step210EntryGvAfter [s2Step210EntryFOut,s2Step210EntryGOut,s2Step210EntryFvOut,s2Step210EntryGvOut] 0 s2Step210EntryBank_outgoingOwned

private theorem s2Step210EntryF_distinct : (s2Step210EntryFRow.sign::s2Step210EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210EntryF_owned : (s2Step210EntryFRow.sign::s2Step210EntryFRow.payload).toFinset⊆s2Step210EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step210EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EntryF_reserved : s2Step210EntryFBefore.reserve s2Step210EntryFFresh.toFinset=some s2Step210EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step210EntryFFresh,arenaWires]
  · norm_num [s2Step210EntryFBefore,s2Step210EntryFFresh,arenaWires]
  · simp only [s2Step210EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step210EntryF_checked : planRowResizeLog s2Step210EntryFBefore s2Step210EntryFRow 165 s2Step210EntryFFresh=
    some (s2Step210EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676],768⟩,growRow 768 s2Step210EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step210EntryFBefore s2Step210EntryFAfter s2Step210EntryFRow 165 s2Step210EntryFFresh
    s2Step210EntryF_distinct s2Step210EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step210EntryF_reserved
  have rowEq : WindowRow.mk (s2Step210EntryFRow.payload++s2Step210EntryFFresh) s2Step210EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step210EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210EntryFvAfter : Arena := s2Step210EntryGAfter

private def s2Step210EntryFvBefore : Arena := s2Step210EntryGAfter

private theorem s2Step210EntryFv_Incoming : rowsOwned s2Step210EntryFvBefore [s2Step210EntryFvRow,s2Step210EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step210EntryFRow,s2Step210EntryGRow,s2Step210EntryFvRow,s2Step210EntryGvRow] 2 s2Step210EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step210EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210EntryFv_Outgoing : rowsOwned s2Step210EntryGvAfter [s2Step210EntryFvOut,s2Step210EntryGvOut] :=
  hmrRows_owned_drop s2Step210EntryGvAfter [s2Step210EntryFOut,s2Step210EntryGOut,s2Step210EntryFvOut,s2Step210EntryGvOut] 2 s2Step210EntryBank_outgoingOwned

private theorem s2Step210EntryFv_distinct : (s2Step210EntryFvRow.sign::s2Step210EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210EntryFv_owned : (s2Step210EntryFvRow.sign::s2Step210EntryFvRow.payload).toFinset⊆s2Step210EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step210EntryFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EntryFv_reserved : s2Step210EntryFvBefore.reserve s2Step210EntryFvFresh.toFinset=some s2Step210EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step210EntryFvFresh,arenaWires]
  · norm_num [s2Step210EntryFvBefore,s2Step210EntryGAfter,s2Step210EntryFvFresh,arenaWires]
  · simp only [s2Step210EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step210EntryFv_checked : planRowResizeLog s2Step210EntryFvBefore s2Step210EntryFvRow 120 s2Step210EntryFvFresh=
    some (s2Step210EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822],770⟩,growRow 770 s2Step210EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step210EntryFvBefore s2Step210EntryFvAfter s2Step210EntryFvRow 120 s2Step210EntryFvFresh
    s2Step210EntryFv_distinct s2Step210EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step210EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step210EntryFvRow.payload++s2Step210EntryFvFresh) s2Step210EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step210EntryGBefore : Arena := s2Step210EntryFBefore

private theorem s2Step210EntryG_Incoming : rowsOwned s2Step210EntryGBefore [s2Step210EntryGRow,s2Step210EntryFvRow,s2Step210EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step210EntryFRow,s2Step210EntryGRow,s2Step210EntryFvRow,s2Step210EntryGvRow] 1 s2Step210EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step210EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210EntryG_Outgoing : rowsOwned s2Step210EntryGvAfter [s2Step210EntryGOut,s2Step210EntryFvOut,s2Step210EntryGvOut] :=
  hmrRows_owned_drop s2Step210EntryGvAfter [s2Step210EntryFOut,s2Step210EntryGOut,s2Step210EntryFvOut,s2Step210EntryGvOut] 1 s2Step210EntryBank_outgoingOwned

private theorem s2Step210EntryG_distinct : (s2Step210EntryGRow.sign::s2Step210EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210EntryG_owned : (s2Step210EntryGRow.sign::s2Step210EntryGRow.payload).toFinset⊆s2Step210EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step210EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EntryG_reserved : s2Step210EntryGBefore.reserve s2Step210EntryGFresh.toFinset=some s2Step210EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step210EntryGFresh,arenaWires]
  · norm_num [s2Step210EntryGBefore,s2Step210EntryFBefore,s2Step210EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step210EntryGAfter,s2Step210EntryGBefore,s2Step210EntryFBefore,s2Step210EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step210EntryG_checked : planRowResizeLog s2Step210EntryGBefore s2Step210EntryGRow 165 s2Step210EntryGFresh=
    some (s2Step210EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 781],769⟩,growRow 769 s2Step210EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step210EntryGBefore s2Step210EntryGAfter s2Step210EntryGRow 165 s2Step210EntryGFresh
    s2Step210EntryG_distinct s2Step210EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step210EntryG_reserved
  have rowEq : WindowRow.mk (s2Step210EntryGRow.payload++s2Step210EntryGFresh) s2Step210EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step210EntryGvBefore : Arena := s2Step210EntryGAfter

private theorem s2Step210EntryGv_Incoming : rowsOwned s2Step210EntryGvBefore [s2Step210EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step210EntryFRow,s2Step210EntryGRow,s2Step210EntryFvRow,s2Step210EntryGvRow] 3 s2Step210EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step210EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210EntryGv_Outgoing : rowsOwned s2Step210EntryGvAfter [s2Step210EntryGvOut] :=
  hmrRows_owned_drop s2Step210EntryGvAfter [s2Step210EntryFOut,s2Step210EntryGOut,s2Step210EntryFvOut,s2Step210EntryGvOut] 3 s2Step210EntryBank_outgoingOwned

private theorem s2Step210EntryGv_distinct : (s2Step210EntryGvRow.sign::s2Step210EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210EntryGv_owned : (s2Step210EntryGvRow.sign::s2Step210EntryGvRow.payload).toFinset⊆s2Step210EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step210EntryGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210EntryGv_reserved : s2Step210EntryGvBefore.reserve s2Step210EntryGvFresh.toFinset=some s2Step210EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step210EntryGvFresh,arenaWires]
  · norm_num [s2Step210EntryGvBefore,s2Step210EntryGAfter,s2Step210EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step210EntryGvAfter,s2Step210EntryGvBefore,s2Step210EntryGAfter,s2Step210EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step210EntryGv_checked : planRowResizeLog s2Step210EntryGvBefore s2Step210EntryGvRow 120 s2Step210EntryGvFresh=
    some (s2Step210EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩,growRow 771 s2Step210EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step210EntryGvBefore s2Step210EntryGvAfter s2Step210EntryGvRow 120 s2Step210EntryGvFresh
    s2Step210EntryGv_distinct s2Step210EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step210EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step210EntryGvRow.payload++s2Step210EntryGvFresh) s2Step210EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step210EntryBank_rows : planWindowRowsLog s2Step210EntryFBefore [(s2Step210EntryFRow,165),(s2Step210EntryGRow,165),(s2Step210EntryFvRow,120),(s2Step210EntryGvRow,120)] [s2Step210EntryFFresh,s2Step210EntryGFresh,s2Step210EntryFvFresh,s2Step210EntryGvFresh]=
    some (s2Step210EntryGvAfter,[s2Step210EntryFOut,s2Step210EntryGOut,s2Step210EntryFvOut,s2Step210EntryGvOut],(growRow 768 s2Step210EntryFFresh ++ (growRow 769 s2Step210EntryGFresh ++ (growRow 770 s2Step210EntryFvFresh ++ (growRow 771 s2Step210EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step210EntryGvAfter [] []=some (s2Step210EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step210EntryGvBefore s2Step210EntryGvAfter s2Step210EntryGvAfter
    s2Step210EntryGvRow s2Step210EntryGvOut 120 s2Step210EntryGvFresh [] [] []
    (growRow 771 s2Step210EntryGvFresh) ([]) s2Step210EntryGv_Incoming s2Step210EntryGv_checked h4 s2Step210EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step210EntryFvBefore s2Step210EntryFvAfter s2Step210EntryGvAfter
    s2Step210EntryFvRow s2Step210EntryFvOut 120 s2Step210EntryFvFresh [(s2Step210EntryGvRow,120)] [s2Step210EntryGvFresh] [s2Step210EntryGvOut]
    (growRow 770 s2Step210EntryFvFresh) ((growRow 771 s2Step210EntryGvFresh ++ [])) s2Step210EntryFv_Incoming s2Step210EntryFv_checked h3 s2Step210EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step210EntryGBefore s2Step210EntryGAfter s2Step210EntryGvAfter
    s2Step210EntryGRow s2Step210EntryGOut 165 s2Step210EntryGFresh [(s2Step210EntryFvRow,120),(s2Step210EntryGvRow,120)] [s2Step210EntryFvFresh,s2Step210EntryGvFresh] [s2Step210EntryFvOut,s2Step210EntryGvOut]
    (growRow 769 s2Step210EntryGFresh) ((growRow 770 s2Step210EntryFvFresh ++ (growRow 771 s2Step210EntryGvFresh ++ []))) s2Step210EntryG_Incoming s2Step210EntryG_checked h2 s2Step210EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step210EntryFBefore s2Step210EntryFAfter s2Step210EntryGvAfter
    s2Step210EntryFRow s2Step210EntryFOut 165 s2Step210EntryFFresh [(s2Step210EntryGRow,165),(s2Step210EntryFvRow,120),(s2Step210EntryGvRow,120)] [s2Step210EntryGFresh,s2Step210EntryFvFresh,s2Step210EntryGvFresh] [s2Step210EntryGOut,s2Step210EntryFvOut,s2Step210EntryGvOut]
    (growRow 768 s2Step210EntryFFresh) ((growRow 769 s2Step210EntryGFresh ++ (growRow 770 s2Step210EntryFvFresh ++ (growRow 771 s2Step210EntryGvFresh ++ [])))) s2Step210EntryF_Incoming s2Step210EntryF_checked h1 s2Step210EntryF_Outgoing
  exact h0

private theorem s2Step210EntryBank_checked : compileHmrBankResizeLog .entry s2Step210EntryFBefore ⟨s2Step210EntryFRow,s2Step210EntryGRow,s2Step210EntryFvRow,s2Step210EntryGvRow⟩ ⟨165,165,120,120⟩ [s2Step210EntryFFresh,s2Step210EntryGFresh,s2Step210EntryFvFresh,s2Step210EntryGvFresh]=
    some (s2Step210EntryGvAfter,⟨s2Step210EntryFOut,s2Step210EntryGOut,s2Step210EntryFvOut,s2Step210EntryGvOut⟩,(growRow 768 s2Step210EntryFFresh ++ (growRow 769 s2Step210EntryGFresh ++ (growRow 770 s2Step210EntryFvFresh ++ (growRow 771 s2Step210EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step210EntryBank_rows]
  rfl

private def s2Step210ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210ExitFBefore : Arena := s2Step210ExitGAfter

private def s2Step210ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 789],768⟩

private def s2Step210ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822, 783],770⟩

private def s2Step210ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 781, 845],769⟩

private def s2Step210ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 796],771⟩

private theorem s2Step210ExitBank_incomingDistinct : ([s2Step210ExitGRow,s2Step210ExitFRow,s2Step210ExitFvRow,s2Step210ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210ExitF_Incoming : rowsOwned s2Step210ExitFBefore [s2Step210ExitFRow,s2Step210ExitFvRow,s2Step210ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step210ExitGRow,s2Step210ExitFRow,s2Step210ExitFvRow,s2Step210ExitGvRow] 1 s2Step210ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step210ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210ExitBank_outgoingOwned : rowsOwned s2Step210ExitGvAfter [s2Step210ExitGOut,s2Step210ExitFOut,s2Step210ExitFvOut,s2Step210ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step210ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210ExitF_Outgoing : rowsOwned s2Step210ExitGvAfter [s2Step210ExitFOut,s2Step210ExitFvOut,s2Step210ExitGvOut] :=
  hmrRows_owned_drop s2Step210ExitGvAfter [s2Step210ExitGOut,s2Step210ExitFOut,s2Step210ExitFvOut,s2Step210ExitGvOut] 1 s2Step210ExitBank_outgoingOwned

private theorem s2Step210ExitF_distinct : (s2Step210ExitFRow.sign::s2Step210ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210ExitF_owned : (s2Step210ExitFRow.sign::s2Step210ExitFRow.payload).toFinset⊆s2Step210ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step210ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210ExitF_retired : s2Step210ExitFBefore.retireSet s2Step210ExitFExtra.toFinset=s2Step210ExitFAfter := by
  unfold Arena.retireSet s2Step210ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step210ExitFBefore,s2Step210ExitGAfter,s2Step210ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step210ExitF_checked : planRowResizeLog s2Step210ExitFBefore s2Step210ExitFRow 165 []=
    some (s2Step210ExitFAfter,s2Step210ExitFOut,shrinkRow 768 s2Step210ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step210ExitFBefore s2Step210ExitFRow 165 s2Step210ExitF_distinct s2Step210ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step210ExitFRow.payload.take 165) s2Step210ExitFRow.sign=s2Step210ExitFOut := by decide +kernel
  have hi : s2Step210ExitFRow.payload.drop 165=s2Step210ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step210ExitF_retired] at result
  exact result

private def s2Step210ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210ExitFvBefore : Arena := s2Step210ExitFAfter

private theorem s2Step210ExitFv_Incoming : rowsOwned s2Step210ExitFvBefore [s2Step210ExitFvRow,s2Step210ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step210ExitGRow,s2Step210ExitFRow,s2Step210ExitFvRow,s2Step210ExitGvRow] 2 s2Step210ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step210ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210ExitFv_Outgoing : rowsOwned s2Step210ExitGvAfter [s2Step210ExitFvOut,s2Step210ExitGvOut] :=
  hmrRows_owned_drop s2Step210ExitGvAfter [s2Step210ExitGOut,s2Step210ExitFOut,s2Step210ExitFvOut,s2Step210ExitGvOut] 2 s2Step210ExitBank_outgoingOwned

private theorem s2Step210ExitFv_distinct : (s2Step210ExitFvRow.sign::s2Step210ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210ExitFv_owned : (s2Step210ExitFvRow.sign::s2Step210ExitFvRow.payload).toFinset⊆s2Step210ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step210ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210ExitFv_retired : s2Step210ExitFvBefore.retireSet s2Step210ExitFvExtra.toFinset=s2Step210ExitFvAfter := by
  unfold Arena.retireSet s2Step210ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step210ExitFvBefore,s2Step210ExitFAfter,s2Step210ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step210ExitFv_checked : planRowResizeLog s2Step210ExitFvBefore s2Step210ExitFvRow 119 []=
    some (s2Step210ExitFvAfter,s2Step210ExitFvOut,shrinkRow 770 s2Step210ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step210ExitFvBefore s2Step210ExitFvRow 119 s2Step210ExitFv_distinct s2Step210ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step210ExitFvRow.payload.take 119) s2Step210ExitFvRow.sign=s2Step210ExitFvOut := by decide +kernel
  have hi : s2Step210ExitFvRow.payload.drop 119=s2Step210ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step210ExitFv_retired] at result
  exact result

private def s2Step210ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step210ExitG_Incoming : rowsOwned s2Step210ExitGBefore [s2Step210ExitGRow,s2Step210ExitFRow,s2Step210ExitFvRow,s2Step210ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step210ExitGRow,s2Step210ExitFRow,s2Step210ExitFvRow,s2Step210ExitGvRow] 0 s2Step210ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step210ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210ExitG_Outgoing : rowsOwned s2Step210ExitGvAfter [s2Step210ExitGOut,s2Step210ExitFOut,s2Step210ExitFvOut,s2Step210ExitGvOut] :=
  hmrRows_owned_drop s2Step210ExitGvAfter [s2Step210ExitGOut,s2Step210ExitFOut,s2Step210ExitFvOut,s2Step210ExitGvOut] 0 s2Step210ExitBank_outgoingOwned

private theorem s2Step210ExitG_distinct : (s2Step210ExitGRow.sign::s2Step210ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210ExitG_owned : (s2Step210ExitGRow.sign::s2Step210ExitGRow.payload).toFinset⊆s2Step210ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step210ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210ExitG_retired : s2Step210ExitGBefore.retireSet s2Step210ExitGExtra.toFinset=s2Step210ExitGAfter := by
  unfold Arena.retireSet s2Step210ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step210ExitGBefore,s2Step210ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step210ExitG_checked : planRowResizeLog s2Step210ExitGBefore s2Step210ExitGRow 164 []=
    some (s2Step210ExitGAfter,s2Step210ExitGOut,shrinkRow 769 s2Step210ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step210ExitGBefore s2Step210ExitGRow 164 s2Step210ExitG_distinct s2Step210ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step210ExitGRow.payload.take 164) s2Step210ExitGRow.sign=s2Step210ExitGOut := by decide +kernel
  have hi : s2Step210ExitGRow.payload.drop 164=s2Step210ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step210ExitG_retired] at result
  exact result

private def s2Step210ExitGvBefore : Arena := s2Step210ExitFvAfter

private theorem s2Step210ExitGv_Incoming : rowsOwned s2Step210ExitGvBefore [s2Step210ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step210ExitGRow,s2Step210ExitFRow,s2Step210ExitFvRow,s2Step210ExitGvRow] 3 s2Step210ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step210ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210ExitGv_Outgoing : rowsOwned s2Step210ExitGvAfter [s2Step210ExitGvOut] :=
  hmrRows_owned_drop s2Step210ExitGvAfter [s2Step210ExitGOut,s2Step210ExitFOut,s2Step210ExitFvOut,s2Step210ExitGvOut] 3 s2Step210ExitBank_outgoingOwned

private theorem s2Step210ExitGv_distinct : (s2Step210ExitGvRow.sign::s2Step210ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210ExitGv_owned : (s2Step210ExitGvRow.sign::s2Step210ExitGvRow.payload).toFinset⊆s2Step210ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step210ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<814) ∨ (815≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210ExitGv_retired : s2Step210ExitGvBefore.retireSet s2Step210ExitGvExtra.toFinset=s2Step210ExitGvAfter := by
  unfold Arena.retireSet s2Step210ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step210ExitGvBefore,s2Step210ExitFvAfter,s2Step210ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step210ExitGv_checked : planRowResizeLog s2Step210ExitGvBefore s2Step210ExitGvRow 120 []=
    some (s2Step210ExitGvAfter,s2Step210ExitGvOut,shrinkRow 771 s2Step210ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step210ExitGvBefore s2Step210ExitGvRow 120 s2Step210ExitGv_distinct s2Step210ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step210ExitGvRow.payload.take 120) s2Step210ExitGvRow.sign=s2Step210ExitGvOut := by decide +kernel
  have hi : s2Step210ExitGvRow.payload.drop 120=s2Step210ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step210ExitGv_retired] at result
  exact result

private theorem s2Step210ExitBank_rows : planWindowRowsLog s2Step210ExitGBefore [(s2Step210ExitGRow,164),(s2Step210ExitFRow,165),(s2Step210ExitFvRow,119),(s2Step210ExitGvRow,120)] [[],[],[],[]]=
    some (s2Step210ExitGvAfter,[s2Step210ExitGOut,s2Step210ExitFOut,s2Step210ExitFvOut,s2Step210ExitGvOut],(shrinkRow 769 s2Step210ExitGExtra ++ (shrinkRow 768 s2Step210ExitFExtra ++ (shrinkRow 770 s2Step210ExitFvExtra ++ (shrinkRow 771 s2Step210ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step210ExitGvAfter [] []=some (s2Step210ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step210ExitGvBefore s2Step210ExitGvAfter s2Step210ExitGvAfter
    s2Step210ExitGvRow s2Step210ExitGvOut 120 [] [] [] []
    (shrinkRow 771 s2Step210ExitGvExtra) ([]) s2Step210ExitGv_Incoming s2Step210ExitGv_checked h4 s2Step210ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step210ExitFvBefore s2Step210ExitFvAfter s2Step210ExitGvAfter
    s2Step210ExitFvRow s2Step210ExitFvOut 119 [] [(s2Step210ExitGvRow,120)] [[]] [s2Step210ExitGvOut]
    (shrinkRow 770 s2Step210ExitFvExtra) ((shrinkRow 771 s2Step210ExitGvExtra ++ [])) s2Step210ExitFv_Incoming s2Step210ExitFv_checked h3 s2Step210ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step210ExitFBefore s2Step210ExitFAfter s2Step210ExitGvAfter
    s2Step210ExitFRow s2Step210ExitFOut 165 [] [(s2Step210ExitFvRow,119),(s2Step210ExitGvRow,120)] [[],[]] [s2Step210ExitFvOut,s2Step210ExitGvOut]
    (shrinkRow 768 s2Step210ExitFExtra) ((shrinkRow 770 s2Step210ExitFvExtra ++ (shrinkRow 771 s2Step210ExitGvExtra ++ []))) s2Step210ExitF_Incoming s2Step210ExitF_checked h2 s2Step210ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step210ExitGBefore s2Step210ExitGAfter s2Step210ExitGvAfter
    s2Step210ExitGRow s2Step210ExitGOut 164 [] [(s2Step210ExitFRow,165),(s2Step210ExitFvRow,119),(s2Step210ExitGvRow,120)] [[],[],[]] [s2Step210ExitFOut,s2Step210ExitFvOut,s2Step210ExitGvOut]
    (shrinkRow 769 s2Step210ExitGExtra) ((shrinkRow 768 s2Step210ExitFExtra ++ (shrinkRow 770 s2Step210ExitFvExtra ++ (shrinkRow 771 s2Step210ExitGvExtra ++ [])))) s2Step210ExitG_Incoming s2Step210ExitG_checked h1 s2Step210ExitG_Outgoing
  exact h0

private theorem s2Step210ExitBank_checked : compileHmrBankResizeLog .exit s2Step210ExitGBefore ⟨s2Step210ExitFRow,s2Step210ExitGRow,s2Step210ExitFvRow,s2Step210ExitGvRow⟩ ⟨165,164,119,120⟩ [[],[],[],[]]=
    some (s2Step210ExitGvAfter,⟨s2Step210ExitFOut,s2Step210ExitGOut,s2Step210ExitFvOut,s2Step210ExitGvOut⟩,(shrinkRow 769 s2Step210ExitGExtra ++ (shrinkRow 768 s2Step210ExitFExtra ++ (shrinkRow 770 s2Step210ExitFvExtra ++ (shrinkRow 771 s2Step210ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step210ExitBank_rows]
  rfl

private theorem s2Step210Add0_apart : Disjoint s2Step210Add0Arena.live s2Step210Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step210Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210Add0_card : s2Step210Add0Arena.live.card=891 := by
  decide +kernel

private theorem s2Step210Add0_borrowed : s2Step210Add0Arena.checkBorrow (hmrHybridCount s2Step210Add0Arena s2Step210Add0B.length) s2Step210Add0Work=some s2Step210Add0During := by
  have len : s2Step210Add0Work.length=hmrHybridCount s2Step210Add0Arena s2Step210Add0B.length := by
    rw [hmrHybridCount,s2Step210Add0_card]
    decide +kernel
  have nd : s2Step210Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step210Add0Arena s2Step210Add0During s2Step210Add0Work.toFinset s2Step210Add0_bounded s2Step210Add0_apart rfl

private theorem s2Step210Add0_distinct : (814::815::882::(s2Step210Add0A++s2Step210Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210Add0_owned : (814::815::882::(s2Step210Add0A++s2Step210Add0B)).toFinset⊆s2Step210Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step210Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210Add0_checked : compileHmrHybridCinLog s2Step210Add0Arena 815 814 882 s2Step210Add0A s2Step210Add0B s2Step210Add0Work=some s2Step210Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step210Add0Arena s2Step210Add0During 815 814 882 s2Step210Add0A s2Step210Add0B s2Step210Add0Work
    (by decide +kernel) (by decide +kernel) s2Step210Add0_distinct
    (fun q hq => s2Step210Add0_owned (List.mem_toFinset.mpr hq)) s2Step210Add0_borrowed

private theorem s2Step210Add1_apart : Disjoint s2Step210Add1Arena.live s2Step210Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step210Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210Add1_card : s2Step210Add1Arena.live.card=891 := by
  decide +kernel

private theorem s2Step210Add1_borrowed : s2Step210Add1Arena.checkBorrow (hmrHybridCount s2Step210Add1Arena s2Step210Add1B.length) s2Step210Add1Work=some s2Step210Add1During := by
  have len : s2Step210Add1Work.length=hmrHybridCount s2Step210Add1Arena s2Step210Add1B.length := by
    rw [hmrHybridCount,s2Step210Add1_card]
    decide +kernel
  have nd : s2Step210Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step210Add1Arena s2Step210Add1During s2Step210Add1Work.toFinset s2Step210Add1_bounded s2Step210Add1_apart rfl

private theorem s2Step210Add1_distinct : (814::815::882::(s2Step210Add1A++s2Step210Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210Add1_owned : (814::815::882::(s2Step210Add1A++s2Step210Add1B)).toFinset⊆s2Step210Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step210Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210Add1_checked : compileHmrHybridCinLog s2Step210Add1Arena 815 814 882 s2Step210Add1A s2Step210Add1B s2Step210Add1Work=some s2Step210Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step210Add1Arena s2Step210Add1During 815 814 882 s2Step210Add1A s2Step210Add1B s2Step210Add1Work
    (by decide +kernel) (by decide +kernel) s2Step210Add1_distinct
    (fun q hq => s2Step210Add1_owned (List.mem_toFinset.mpr hq)) s2Step210Add1_borrowed

private theorem s2Step210F4_apart : Disjoint (s2Step210Add0A++s2Step210Add0B).toFinset (s2Step210Add1A++s2Step210Add1B).toFinset := by
  have nd : ((s2Step210Add0A++s2Step210Add0B)++(s2Step210Add1A++s2Step210Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step210F4_carry : s2Step210F4FlagArena.checkBorrow 1 [882]=some s2Step210Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step210F4FlagArena,s2Step210HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step210F4FlagArena,s2Step210HeadFvAfter,s2Step210Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step210F4_distinct : (786::815::814::882::((s2Step210Add0A++s2Step210Add1A)++(s2Step210Add0B++s2Step210Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210F4_flag : s2Step210HeadFvAfter.checkBorrow 1 [814]=some s2Step210F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step210HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step210F4_owned : (786::815::((s2Step210Add0A++s2Step210Add1A)++(s2Step210Add0B++s2Step210Add1B))).toFinset⊆s2Step210HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step210HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210F4_checked : compileHmrHybridF4Log s2Step210HeadFvAfter 786 815 s2Step210Add0A s2Step210Add0B s2Step210Add1A s2Step210Add1B [814] [882] s2Step210Add0Work s2Step210Add1Work=some s2Step210F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step210HeadFvAfter s2Step210F4FlagArena s2Step210Add0Arena s2Step210Add0During s2Step210Add1During 786 815
    s2Step210Add0A s2Step210Add0B s2Step210Add1A s2Step210Add1B [814] [882] s2Step210Add0Work s2Step210Add1Work
    (fun q hq => s2Step210F4_owned (List.mem_toFinset.mpr hq)) s2Step210F4_flag s2Step210F4_carry
    s2Step210F4_distinct s2Step210F4_apart s2Step210Add0_checked s2Step210Add1_checked

private theorem s2Step210Front_branch : s2Step210FrontSigmaArena.checkBorrow 1 [815]=some s2Step210HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step210FrontSigmaArena,s2Step210EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step210FrontSigmaArena,s2Step210EntryGvAfter,s2Step210HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step210Front_entry : HmrFrontEntryValid s2Step210EntryFBefore s2Step210FrontBank 165 120 ⟨165,164,119,120⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step210FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step210EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step210EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<786) ∨ (787≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (816≤q ∧ q<826) ∨ (827≤q ∧ q<841) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step210FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step210Front_sigma : s2Step210EntryGvAfter.checkBorrow 1 [786]=some s2Step210FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step210EntryGvAfter,arenaWires]
  · rfl

private def s2Step210HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210HeadFBefore : Arena := s2Step210HeadGAfter

private def s2Step210HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676],768⟩

private def s2Step210HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822],770⟩

private def s2Step210HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 781],769⟩

private def s2Step210HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841],771⟩

private theorem s2Step210HeadBank_incomingDistinct : ([s2Step210HeadGRow,s2Step210HeadFRow,s2Step210HeadGvRow,s2Step210HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210HeadF_Incoming : rowsOwned s2Step210HeadFBefore [s2Step210HeadFRow,s2Step210HeadGvRow,s2Step210HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step210HeadGRow,s2Step210HeadFRow,s2Step210HeadGvRow,s2Step210HeadFvRow] 1 s2Step210HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step210HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210HeadBank_outgoingOwned : rowsOwned s2Step210HeadFvAfter [s2Step210HeadGOut,s2Step210HeadFOut,s2Step210HeadGvOut,s2Step210HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step210HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210HeadF_Outgoing : rowsOwned s2Step210HeadFvAfter [s2Step210HeadFOut,s2Step210HeadGvOut,s2Step210HeadFvOut] :=
  hmrRows_owned_drop s2Step210HeadFvAfter [s2Step210HeadGOut,s2Step210HeadFOut,s2Step210HeadGvOut,s2Step210HeadFvOut] 1 s2Step210HeadBank_outgoingOwned

private theorem s2Step210HeadF_distinct : (s2Step210HeadFRow.sign::s2Step210HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210HeadF_owned : (s2Step210HeadFRow.sign::s2Step210HeadFRow.payload).toFinset⊆s2Step210HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step210HeadFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210HeadF_reserved : s2Step210HeadFBefore.reserve s2Step210HeadFFresh.toFinset=some s2Step210HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step210HeadFFresh,arenaWires]
  · norm_num [s2Step210HeadFBefore,s2Step210HeadGAfter,s2Step210HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step210HeadFAfter,s2Step210HeadFBefore,s2Step210HeadGAfter,s2Step210HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step210HeadF_checked : planRowResizeLog s2Step210HeadFBefore s2Step210HeadFRow 166 s2Step210HeadFFresh=
    some (s2Step210HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 789],768⟩,growRow 768 s2Step210HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step210HeadFBefore s2Step210HeadFAfter s2Step210HeadFRow 166 s2Step210HeadFFresh
    s2Step210HeadF_distinct s2Step210HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step210HeadF_reserved
  have rowEq : WindowRow.mk (s2Step210HeadFRow.payload++s2Step210HeadFFresh) s2Step210HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 789],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step210HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step210HeadFvBefore : Arena := s2Step210HeadGvAfter

private theorem s2Step210HeadFv_Incoming : rowsOwned s2Step210HeadFvBefore [s2Step210HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step210HeadGRow,s2Step210HeadFRow,s2Step210HeadGvRow,s2Step210HeadFvRow] 3 s2Step210HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step210HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210HeadFv_Outgoing : rowsOwned s2Step210HeadFvAfter [s2Step210HeadFvOut] :=
  hmrRows_owned_drop s2Step210HeadFvAfter [s2Step210HeadGOut,s2Step210HeadFOut,s2Step210HeadGvOut,s2Step210HeadFvOut] 3 s2Step210HeadBank_outgoingOwned

private theorem s2Step210HeadFv_distinct : (s2Step210HeadFvRow.sign::s2Step210HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210HeadFv_owned : (s2Step210HeadFvRow.sign::s2Step210HeadFvRow.payload).toFinset⊆s2Step210HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step210HeadFvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210HeadFv_reserved : s2Step210HeadFvBefore.reserve s2Step210HeadFvFresh.toFinset=some s2Step210HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step210HeadFvFresh,arenaWires]
  · norm_num [s2Step210HeadFvBefore,s2Step210HeadGvAfter,s2Step210HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step210HeadFvAfter,s2Step210HeadFvBefore,s2Step210HeadGvAfter,s2Step210HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step210HeadFv_checked : planRowResizeLog s2Step210HeadFvBefore s2Step210HeadFvRow 121 s2Step210HeadFvFresh=
    some (s2Step210HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822, 783],770⟩,growRow 770 s2Step210HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step210HeadFvBefore s2Step210HeadFvAfter s2Step210HeadFvRow 121 s2Step210HeadFvFresh
    s2Step210HeadFv_distinct s2Step210HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step210HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step210HeadFvRow.payload++s2Step210HeadFvFresh) s2Step210HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 801, 851, 790, 804, 797, 780, 812, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 822, 783],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step210HeadG_Incoming : rowsOwned s2Step210HeadGBefore [s2Step210HeadGRow,s2Step210HeadFRow,s2Step210HeadGvRow,s2Step210HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step210HeadGRow,s2Step210HeadFRow,s2Step210HeadGvRow,s2Step210HeadFvRow] 0 s2Step210HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step210HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210HeadG_Outgoing : rowsOwned s2Step210HeadFvAfter [s2Step210HeadGOut,s2Step210HeadFOut,s2Step210HeadGvOut,s2Step210HeadFvOut] :=
  hmrRows_owned_drop s2Step210HeadFvAfter [s2Step210HeadGOut,s2Step210HeadFOut,s2Step210HeadGvOut,s2Step210HeadFvOut] 0 s2Step210HeadBank_outgoingOwned

private theorem s2Step210HeadG_distinct : (s2Step210HeadGRow.sign::s2Step210HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210HeadG_owned : (s2Step210HeadGRow.sign::s2Step210HeadGRow.payload).toFinset⊆s2Step210HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step210HeadGBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<789) ∨ (790≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<845) ∨ (846≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210HeadG_reserved : s2Step210HeadGBefore.reserve s2Step210HeadGFresh.toFinset=some s2Step210HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step210HeadGFresh,arenaWires]
  · norm_num [s2Step210HeadGBefore,s2Step210HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step210HeadGAfter,s2Step210HeadGBefore,s2Step210HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step210HeadG_checked : planRowResizeLog s2Step210HeadGBefore s2Step210HeadGRow 166 s2Step210HeadGFresh=
    some (s2Step210HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 781, 845],769⟩,growRow 769 s2Step210HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step210HeadGBefore s2Step210HeadGAfter s2Step210HeadGRow 166 s2Step210HeadGFresh
    s2Step210HeadG_distinct s2Step210HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step210HeadG_reserved
  have rowEq : WindowRow.mk (s2Step210HeadGRow.payload++s2Step210HeadGFresh) s2Step210HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 781, 845],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step210HeadGvBefore : Arena := s2Step210HeadFAfter

private theorem s2Step210HeadGv_Incoming : rowsOwned s2Step210HeadGvBefore [s2Step210HeadGvRow,s2Step210HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step210HeadGRow,s2Step210HeadFRow,s2Step210HeadGvRow,s2Step210HeadFvRow] 2 s2Step210HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step210HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step210HeadGv_Outgoing : rowsOwned s2Step210HeadFvAfter [s2Step210HeadGvOut,s2Step210HeadFvOut] :=
  hmrRows_owned_drop s2Step210HeadFvAfter [s2Step210HeadGOut,s2Step210HeadFOut,s2Step210HeadGvOut,s2Step210HeadFvOut] 2 s2Step210HeadBank_outgoingOwned

private theorem s2Step210HeadGv_distinct : (s2Step210HeadGvRow.sign::s2Step210HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step210HeadGv_owned : (s2Step210HeadGvRow.sign::s2Step210HeadGvRow.payload).toFinset⊆s2Step210HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step210HeadGvBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<796) ∨ (797≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step210HeadGv_reserved : s2Step210HeadGvBefore.reserve s2Step210HeadGvFresh.toFinset=some s2Step210HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step210HeadGvFresh,arenaWires]
  · norm_num [s2Step210HeadGvBefore,s2Step210HeadFAfter,s2Step210HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step210HeadGvAfter,s2Step210HeadGvBefore,s2Step210HeadFAfter,s2Step210HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step210HeadGv_checked : planRowResizeLog s2Step210HeadGvBefore s2Step210HeadGvRow 121 s2Step210HeadGvFresh=
    some (s2Step210HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 796],771⟩,growRow 771 s2Step210HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step210HeadGvBefore s2Step210HeadGvAfter s2Step210HeadGvRow 121 s2Step210HeadGvFresh
    s2Step210HeadGv_distinct s2Step210HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step210HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step210HeadGvRow.payload++s2Step210HeadGvFresh) s2Step210HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 791, 839, 798, 778, 808, 811, 849, 800, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 796],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step210HeadBank_rows : planWindowRowsLog s2Step210HeadGBefore [(s2Step210HeadGRow,166),(s2Step210HeadFRow,166),(s2Step210HeadGvRow,121),(s2Step210HeadFvRow,121)] [s2Step210HeadGFresh,s2Step210HeadFFresh,s2Step210HeadGvFresh,s2Step210HeadFvFresh]=
    some (s2Step210HeadFvAfter,[s2Step210HeadGOut,s2Step210HeadFOut,s2Step210HeadGvOut,s2Step210HeadFvOut],(growRow 769 s2Step210HeadGFresh ++ (growRow 768 s2Step210HeadFFresh ++ (growRow 771 s2Step210HeadGvFresh ++ (growRow 770 s2Step210HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step210HeadFvAfter [] []=some (s2Step210HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step210HeadFvBefore s2Step210HeadFvAfter s2Step210HeadFvAfter
    s2Step210HeadFvRow s2Step210HeadFvOut 121 s2Step210HeadFvFresh [] [] []
    (growRow 770 s2Step210HeadFvFresh) ([]) s2Step210HeadFv_Incoming s2Step210HeadFv_checked h4 s2Step210HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step210HeadGvBefore s2Step210HeadGvAfter s2Step210HeadFvAfter
    s2Step210HeadGvRow s2Step210HeadGvOut 121 s2Step210HeadGvFresh [(s2Step210HeadFvRow,121)] [s2Step210HeadFvFresh] [s2Step210HeadFvOut]
    (growRow 771 s2Step210HeadGvFresh) ((growRow 770 s2Step210HeadFvFresh ++ [])) s2Step210HeadGv_Incoming s2Step210HeadGv_checked h3 s2Step210HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step210HeadFBefore s2Step210HeadFAfter s2Step210HeadFvAfter
    s2Step210HeadFRow s2Step210HeadFOut 166 s2Step210HeadFFresh [(s2Step210HeadGvRow,121),(s2Step210HeadFvRow,121)] [s2Step210HeadGvFresh,s2Step210HeadFvFresh] [s2Step210HeadGvOut,s2Step210HeadFvOut]
    (growRow 768 s2Step210HeadFFresh) ((growRow 771 s2Step210HeadGvFresh ++ (growRow 770 s2Step210HeadFvFresh ++ []))) s2Step210HeadF_Incoming s2Step210HeadF_checked h2 s2Step210HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step210HeadGBefore s2Step210HeadGAfter s2Step210HeadFvAfter
    s2Step210HeadGRow s2Step210HeadGOut 166 s2Step210HeadGFresh [(s2Step210HeadFRow,166),(s2Step210HeadGvRow,121),(s2Step210HeadFvRow,121)] [s2Step210HeadFFresh,s2Step210HeadGvFresh,s2Step210HeadFvFresh] [s2Step210HeadFOut,s2Step210HeadGvOut,s2Step210HeadFvOut]
    (growRow 769 s2Step210HeadGFresh) ((growRow 768 s2Step210HeadFFresh ++ (growRow 771 s2Step210HeadGvFresh ++ (growRow 770 s2Step210HeadFvFresh ++ [])))) s2Step210HeadG_Incoming s2Step210HeadG_checked h1 s2Step210HeadG_Outgoing
  exact h0

private theorem s2Step210HeadBank_checked : compileHmrBankResizeLog .headroom s2Step210HeadGBefore ⟨s2Step210HeadFRow,s2Step210HeadGRow,s2Step210HeadFvRow,s2Step210HeadGvRow⟩ ⟨166,166,121,121⟩ [s2Step210HeadGFresh,s2Step210HeadFFresh,s2Step210HeadGvFresh,s2Step210HeadFvFresh]=
    some (s2Step210HeadFvAfter,⟨s2Step210HeadFOut,s2Step210HeadGOut,s2Step210HeadFvOut,s2Step210HeadGvOut⟩,(growRow 769 s2Step210HeadGFresh ++ (growRow 768 s2Step210HeadFFresh ++ (growRow 771 s2Step210HeadGvFresh ++ (growRow 770 s2Step210HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step210HeadBank_rows]
  rfl

private theorem s2Step210Front_checked : compileHmrSourceFrontLog s2Step210EntryFBefore s2Step210FrontBank 165 120 ⟨165,164,119,120⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step210FrontLog=some s2Step210FrontPlan := by
  have pairEq : s2Step210FrontPair=⟨s2Step210HeadFRow,s2Step210HeadGRow,s2Step210HeadFvRow,s2Step210HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step210FrontHead=⟨s2Step210ExitFRow,s2Step210ExitGRow,s2Step210ExitFvRow,s2Step210ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step210Add0A=s2Step210FrontHead.f.wires := by decide +kernel
  have gEq : s2Step210Add0B=s2Step210FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step210Add1A=s2Step210FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step210Add1B=s2Step210FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step210EntryFBefore s2Step210FrontBank 165 120 ⟨165,164,119,120⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step210FrontLog s2Step210FrontPlan
  · exact s2Step210Front_entry
  · exact s2Step210EntryBank_checked
  · exact s2Step210Front_sigma
  · rfl
  · exact s2Step210Front_branch
  · rfl
  · simpa only [s2Step210FrontPlan,pairEq] using s2Step210HeadBank_checked
  · simpa only [s2Step210FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step210F4_checked
  · exact s2Step210Counter_checked
  · rfl
  · simpa only [s2Step210FrontPlan,headEq] using s2Step210ExitBank_checked

private theorem s2Step210Complete_explicit_checked : compileHmrEarlyStepLog s2Step210EntryFBefore s2Step210FrontBank 165 120 ⟨165,164,119,120⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step210CompleteLog=some s2Step210CompletePlan := by
  let Q := s2Step210EarlyControlPlan
  have hq := s2Step210EarlyControl_plan_checked
  have fv1 : s2Step210CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step210CompleteOut.fv.payload[2]?.getD s2Step210CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step210CompleteOut.fv.payload[3]?.getD s2Step210CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step210CompleteOut.fv.payload[4]?.getD s2Step210CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step210EntryFBefore s2Step210EarlyControlArena s2Step210FrontBank 165 120 ⟨165,164,119,120⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 47 s2Step210CompleteLog s2Step210FrontPlan Q
    s2Step210Front_checked s2Step210Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step210Complete_owned s2Step210Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step210EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 786 s2Step210CompleteOut.fv.second (s2Step210CompleteOut.fv.payload[2]?.getD s2Step210CompleteOut.fv.sign) (s2Step210CompleteOut.fv.payload[3]?.getD s2Step210CompleteOut.fv.sign) (s2Step210CompleteOut.fv.payload[4]?.getD s2Step210CompleteOut.fv.sign) 815 47 s2Step210EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep210Arena : Arena := s2Step210EntryFBefore
def s2PrivateStep210Bank : WindowBank := s2Step210FrontBank
def s2PrivateStep210Spec : HmrSourceWalkStepLog := ⟨165,120,⟨165,164,119,120⟩,47,.early s2Step210CompleteLog⟩
def s2PrivateStep210Plan : HmrSourceStepPlan := .early s2Step210CompletePlan
theorem s2PrivateStep210_source : s2PrivateStep210Spec=s2ObservedLogs208[2] := rfl
theorem s2PrivateStep210_checked : compileHmrSourceStepLog s2PrivateStep210Arena s2PrivateStep210Bank
    s2PrivateStep210Spec.fgWidth s2PrivateStep210Spec.vWidth s2PrivateStep210Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 210 s2PrivateStep210Spec.need none s2PrivateStep210Spec.log=some s2PrivateStep210Plan := by
  change compileHmrSourceStepLog s2Step210EntryFBefore s2Step210FrontBank 165 120 ⟨165,164,119,120⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 210 47 none (.early s2Step210CompleteLog)=some (.early s2Step210CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 210<498)]
  rw [s2Step210Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
