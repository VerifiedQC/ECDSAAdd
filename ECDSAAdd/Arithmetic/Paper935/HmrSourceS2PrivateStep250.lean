import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep248
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

private def s2Step250CompleteMoves : List (Wire × Wire) := [(782,657)]

private def s2Step250EarlyControlLog : HmrEarlyControlLog := ⟨[782, 835, 800, 842, 792],[814],[809],[885, 891, 894, 896, 901, 902],[]⟩

private def s2Step250FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [830, 842], [], [825]],[[792], [800], [835], [810]],[[], [], [], []]⟩,[784],[803],[814],[809],[885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 809, 885, 891]⟩

private def s2Step250CompleteLog : HmrEarlyStepLog := ⟨s2Step250FrontLog,s2Step250CompleteMoves,s2Step250EarlyControlLog⟩

private def s2Step250ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656],768⟩

private def s2Step250ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩

private def s2Step250ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],769⟩

private def s2Step250ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825],771⟩

private def s2Step250FrontOut : WindowBank := ⟨s2Step250ExitFOut,s2Step250ExitGOut,s2Step250ExitFvOut,s2Step250ExitGvOut⟩

private def s2Step250CompleteOut : WindowBank := s2Step250FrontOut.repacked s2Step250CompleteMoves

private def s2Step250EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step250EarlyControlPositiveArena,[814],s2Step250EarlyControlEqualityArena,[809],⟨⟨784,false⟩,[⟨⟨814,false⟩,809⟩]⟩⟩

private def s2Step250EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step250EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step250EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,782⟩,⟨⟨774,false⟩,835⟩,⟨⟨775,false⟩,800⟩,⟨⟨776,false⟩,842⟩,⟨⟨777,false⟩,792⟩]⟩

private def s2Step250EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step250EarlyControlZeroArena,s2Step250EarlyControlZeroPlan,s2Step250EarlyControlClassPlan,s2Step250EarlyControlFlagArena,s2Step250EarlyControlFittedArena,s2Step250EarlyControlHistoryArena,s2Step250EarlyControlSigmaArena,s2Step250EarlyControlOutputArena,s2Step250EarlyControlLog⟩

private def s2Step250CounterWork : List Wire := [814, 809, 885, 891]

private theorem s2Step250Counter_bounded : s2Step250CounterWork.toFinset⊆arenaWires := by norm_num [s2Step250CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step250HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250CounterDuring : Arena := ⟨s2Step250HeadFvAfter.live∪s2Step250CounterWork.toFinset,Finset.union_subset s2Step250HeadFvAfter.bounded s2Step250Counter_bounded⟩

private def s2Step250EntryFFresh : List Wire := []

private def s2Step250EntryFvFresh : List Wire := []

private def s2Step250EntryGFresh : List Wire := [830, 842]

private def s2Step250EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250EntryGvFresh : List Wire := [825]

private def s2Step250ExitFExtra : List Wire := [657, 800]

private def s2Step250ExitGExtra : List Wire := [842, 792]

private def s2Step250ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<657) ∨ (658≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250ExitGvExtra : List Wire := [835]

private def s2Step250Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250Add0Work : List Wire := [885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step250Add0_bounded : s2Step250Add0Work.toFinset⊆arenaWires := by
  have h : s2Step250Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step250Add0During : Arena := ⟨s2Step250Add0Arena.live∪s2Step250Add0Work.toFinset,Finset.union_subset s2Step250Add0Arena.bounded s2Step250Add0_bounded⟩

private def s2Step250Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250Add1Work : List Wire := [885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step250Add1_bounded : s2Step250Add1Work.toFinset⊆arenaWires := by
  have h : s2Step250Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step250Add1During : Arena := ⟨s2Step250Add1Arena.live∪s2Step250Add1Work.toFinset,Finset.union_subset s2Step250Add1Arena.bounded s2Step250Add1_bounded⟩

private def s2Step250F4FlagArena : Arena := ⟨s2Step250HeadFvAfter.live∪{814},Finset.union_subset s2Step250HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step250F4Plan : HmrHybridF4Plan := ⟨s2Step250F4FlagArena,[814],s2Step250Add0Arena,[809],s2Step250Add0During,s2Step250Add0Work,s2Step250Add1During,s2Step250Add1Work⟩

private def s2Step250HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 800],768⟩

private def s2Step250HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩

private def s2Step250HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 842, 792],769⟩

private def s2Step250HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 835],771⟩

private def s2Step250FrontHead : WindowBank := ⟨s2Step250HeadFOut,s2Step250HeadGOut,s2Step250HeadFvOut,s2Step250HeadGvOut⟩

private def s2Step250EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657],768⟩

private def s2Step250EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩

private def s2Step250EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 842],769⟩

private def s2Step250EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825],771⟩

private def s2Step250FrontPair : WindowBank := ⟨s2Step250EntryFOut,s2Step250EntryGOut,s2Step250EntryFvOut,s2Step250EntryGvOut⟩

private def s2Step250FrontSigmaArena : Arena := ⟨s2Step250EntryGvAfter.live∪{784},Finset.union_subset s2Step250EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step250HeadFFresh : List Wire := [800]

private def s2Step250HeadFvFresh : List Wire := [810]

private def s2Step250HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250HeadGFresh : List Wire := [792]

private def s2Step250HeadGvFresh : List Wire := [835]

private def s2Step250FrontPlan : HmrSourceFront := ⟨s2Step250EntryGvAfter,s2Step250FrontPair,(growRow 768 s2Step250EntryFFresh ++ (growRow 769 s2Step250EntryGFresh ++ (growRow 770 s2Step250EntryFvFresh ++ (growRow 771 s2Step250EntryGvFresh ++ [])))),s2Step250FrontSigmaArena,[784],s2Step250HeadGBefore,[803],
  s2Step250HeadFvAfter,s2Step250FrontHead,(growRow 769 s2Step250HeadGFresh ++ (growRow 768 s2Step250HeadFFresh ++ (growRow 771 s2Step250HeadGvFresh ++ (growRow 770 s2Step250HeadFvFresh ++ [])))),s2Step250F4Plan,s2Step250CounterDuring,s2Step250CounterWork,s2Step250ExitGvAfter,s2Step250FrontOut,(shrinkRow 769 s2Step250ExitGExtra ++ (shrinkRow 768 s2Step250ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step250ExitGvExtra ++ []))))⟩

private def s2Step250CompletePlan : HmrEarlyStepPlan := ⟨s2Step250FrontPlan,s2Step250EarlyControlArena,s2Step250EarlyControlPlan,s2Step250CompleteMoves⟩

private theorem s2Step250Complete_apart : List.Disjoint (s2Step250CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [784, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step250CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[784, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step250Complete_owned : (s2Step250CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step250EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step250EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private def s2Step250CompleteMoveArena : Arena := ⟨s2Step250ExitGvAfter.live∪{657},Finset.union_subset s2Step250ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step250Complete_repack : s2Step250ExitGvAfter.checkRepack s2Step250CompleteMoves=some s2Step250EarlyControlArena := by
  have owned : 782∈s2Step250ExitGvAfter.live := by norm_num [s2Step250ExitGvAfter,arenaWires]
  have reserve : s2Step250ExitGvAfter.reserve {657}=some s2Step250CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step250ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step250CompleteMoveArena.retireSet {782}=s2Step250EarlyControlArena := by
    unfold Arena.retireSet s2Step250EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step250CompleteMoveArena,s2Step250ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step250CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step250CompleteMoveArena.retireSet {782}).checkRepack []=some s2Step250EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step250EarlyControl_branchOwned : ([803] : List Wire).toFinset⊆s2Step250EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step250EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250EarlyControl_branch : compileHmrBranchRetirement s2Step250EarlyControlSigmaArena 803=some s2Step250EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step250EarlyControl_branchOwned
  · ext q
    simp [s2Step250EarlyControlOutputArena,s2Step250EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step250EarlyControl_classEqualityBorrow : s2Step250EarlyControlPositiveArena.checkBorrow (([784, 814] : List Wire).length-1) s2Step250EarlyControlLog.classWork=some s2Step250EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step250EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step250EarlyControlPositiveArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step250EarlyControlEqualityArena,s2Step250EarlyControlPositiveArena,s2Step250EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step250EarlyControl_classEqualityOwned : ([784, 814] : List Wire).toFinset⊆s2Step250EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step250EarlyControlPositiveArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250EarlyControl_classEquality : compileHmrEqualityLog s2Step250EarlyControlPositiveArena [784, 814] 0 s2Step250EarlyControlLog.classWork=some (s2Step250EarlyControlEqualityArena,s2Step250EarlyControlLog.classWork,s2Step250EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step250EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step250EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step250EarlyControl_classOwned : ([777, 792, 784] : List Wire).toFinset⊆s2Step250EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step250EarlyControlZeroArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250EarlyControl_positiveBorrow : s2Step250EarlyControlZeroArena.checkBorrow (1) s2Step250EarlyControlLog.positiveWork=some s2Step250EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step250EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step250EarlyControlZeroArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step250EarlyControlPositiveArena,s2Step250EarlyControlZeroArena,s2Step250EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step250EarlyControl_class : compileHmrSourceClassLog s2Step250EarlyControlZeroArena false 777 s2Step250EarlyControlZeroPlan.top 0 784 s2Step250EarlyControlLog.positiveWork s2Step250EarlyControlLog.classWork=some s2Step250EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step250EarlyControlClassPlan s2Step250EarlyControlZeroArena false 777 s2Step250EarlyControlZeroPlan.top 0 784
  constructor
  · decide +kernel
  · exact s2Step250EarlyControl_classOwned
  · exact s2Step250EarlyControl_positiveBorrow
  · exact s2Step250EarlyControl_classEquality

private theorem s2Step250EarlyControl_entryRecordOwned : ([803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step250EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step250EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250EarlyControl_entrySigmaOwned : ([784, 254] : List Wire).toFinset⊆s2Step250EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step250EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250EarlyControl_fitBorrow : s2Step250EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step250EarlyControlLog.recordFresh=some s2Step250EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step250EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step250EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step250EarlyControlFittedArena,s2Step250EarlyControlFlagArena,s2Step250EarlyControlLog,arenaWires]

private theorem s2Step250EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step250EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step250EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step250EarlyControl_fit : compileHmrRecordGrowLog s2Step250EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step250EarlyControlLog.recordFresh=some s2Step250EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step250EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step250EarlyControl_fitBorrow

private theorem s2Step250EarlyControl_flagsBorrow : s2Step250EarlyControlEqualityArena.checkBorrow (6) s2Step250EarlyControlLog.flagWork=some s2Step250EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step250EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step250EarlyControlEqualityArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step250EarlyControlFlagArena,s2Step250EarlyControlEqualityArena,s2Step250EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step250EarlyControl_flagsOwned : ([809, 253, 252, 251] : List Wire).toFinset⊆s2Step250EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step250EarlyControlEqualityArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250EarlyControl_flags : compileHmrFlagsLog s2Step250EarlyControlClassPlan.equalityArena s2Step250EarlyControlClassPlan.equality.top 253 252 251 s2Step250EarlyControlLog.flagWork=some s2Step250EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step250EarlyControl_flagsOwned⟩
  · exact s2Step250EarlyControl_flagsBorrow

private theorem s2Step250EarlyControl_historyBorrow : s2Step250EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step250EarlyControlLog.recordFresh=some s2Step250EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step250EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step250EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step250EarlyControlHistoryArena,s2Step250EarlyControlArena,s2Step250EarlyControlLog,arenaWires]

private theorem s2Step250EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step250EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step250EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250EarlyControl_history : compileHmrRecordGrowLog s2Step250EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step250EarlyControlLog.recordFresh=some s2Step250EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step250EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step250EarlyControl_historyBorrow

private theorem s2Step250EarlyControl_sigmaOwned : ([254, 784] : List Wire).toFinset⊆s2Step250EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step250EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250EarlyControl_sigmaReleaseOwned : ([784] : List Wire).toFinset⊆s2Step250EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step250EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250EarlyControl_sigmaRelease : s2Step250EarlyControlHistoryArena.release {784} (fun _ => false)=some s2Step250EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step250EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step250EarlyControlSigmaArena,s2Step250EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step250EarlyControl_sigma : compileHmrSigmaDropLog s2Step250EarlyControlHistoryArena false 0 0 254 784 []=some s2Step250EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step250EarlyControl_sigmaOwned⟩
  · exact s2Step250EarlyControl_sigmaRelease

private theorem s2Step250EarlyControl_zeroBorrow : s2Step250EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step250EarlyControlLog.zeroWork=some s2Step250EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step250EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step250EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step250EarlyControlZeroArena,s2Step250EarlyControlArena,s2Step250EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step250EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step250EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step250EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250EarlyControl_zero : compileHmrEqualityLog s2Step250EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step250EarlyControlLog.zeroWork=some (s2Step250EarlyControlZeroArena,s2Step250EarlyControlLog.zeroWork,s2Step250EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step250EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step250EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step250EarlyControl_logged : s2Step250EarlyControlPlan.Logged s2Step250EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 254 253 252 251 803 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step250EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step250EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step250EarlyControl_zero
  · exact s2Step250EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step250EarlyControl_flags
  · exact s2Step250EarlyControl_fit
  · exact s2Step250EarlyControl_history
  · exact s2Step250EarlyControl_sigma
  · exact s2Step250EarlyControl_branch

private theorem s2Step250EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step250EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 254 253 252 251 803 51 s2Step250EarlyControlLog=some s2Step250EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step250EarlyControlPlan s2Step250EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 254 253 252 251 803 51 s2Step250EarlyControl_logged

private def s2Step250EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657],768⟩

private def s2Step250EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩

private def s2Step250EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143],769⟩

private def s2Step250EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799],771⟩

private def s2Step250FrontBank : WindowBank := ⟨s2Step250EntryFRow,s2Step250EntryGRow,s2Step250EntryFvRow,s2Step250EntryGvRow⟩

private def s2Step250Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 800, 768]

private def s2Step250Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 842, 792, 769]

private def s2Step250Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 770]

private def s2Step250Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 835, 771]

private theorem s2Step250Counter_apart : Disjoint s2Step250HeadFvAfter.live s2Step250CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step250HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250Counter_borrowed : s2Step250HeadFvAfter.checkBorrow 4 s2Step250CounterWork=some s2Step250CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step250HeadFvAfter s2Step250CounterDuring s2Step250CounterWork.toFinset s2Step250Counter_bounded s2Step250Counter_apart rfl

private theorem s2Step250Counter_owned : (784::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step250HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step250HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250Counter_checked : compileHmrCounterStepLog s2Step250HeadFvAfter true 784 [772, 773, 774, 775, 776, 777] s2Step250CounterWork=some s2Step250CounterDuring := by
  have owned : ∀q∈784::[772, 773, 774, 775, 776, 777],q∈s2Step250HeadFvAfter.live := fun q hq => s2Step250Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step250Counter_borrowed

private def s2Step250EntryFAfter : Arena := s2Step250EntryFBefore

private theorem s2Step250EntryBank_incomingDistinct : ([s2Step250EntryFRow,s2Step250EntryGRow,s2Step250EntryFvRow,s2Step250EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250EntryF_Incoming : rowsOwned s2Step250EntryFBefore [s2Step250EntryFRow,s2Step250EntryGRow,s2Step250EntryFvRow,s2Step250EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step250EntryFRow,s2Step250EntryGRow,s2Step250EntryFvRow,s2Step250EntryGvRow] 0 s2Step250EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step250EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250EntryBank_outgoingOwned : rowsOwned s2Step250EntryGvAfter [s2Step250EntryFOut,s2Step250EntryGOut,s2Step250EntryFvOut,s2Step250EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step250EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250EntryF_Outgoing : rowsOwned s2Step250EntryGvAfter [s2Step250EntryFOut,s2Step250EntryGOut,s2Step250EntryFvOut,s2Step250EntryGvOut] :=
  hmrRows_owned_drop s2Step250EntryGvAfter [s2Step250EntryFOut,s2Step250EntryGOut,s2Step250EntryFvOut,s2Step250EntryGvOut] 0 s2Step250EntryBank_outgoingOwned

private theorem s2Step250EntryF_distinct : (s2Step250EntryFRow.sign::s2Step250EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250EntryF_owned : (s2Step250EntryFRow.sign::s2Step250EntryFRow.payload).toFinset⊆s2Step250EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step250EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250EntryF_reserved : s2Step250EntryFBefore.reserve s2Step250EntryFFresh.toFinset=some s2Step250EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step250EntryFFresh,arenaWires]
  · norm_num [s2Step250EntryFBefore,s2Step250EntryFFresh,arenaWires]
  · simp only [s2Step250EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step250EntryF_checked : planRowResizeLog s2Step250EntryFBefore s2Step250EntryFRow 146 s2Step250EntryFFresh=
    some (s2Step250EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657],768⟩,growRow 768 s2Step250EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step250EntryFBefore s2Step250EntryFAfter s2Step250EntryFRow 146 s2Step250EntryFFresh
    s2Step250EntryF_distinct s2Step250EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step250EntryF_reserved
  have rowEq : WindowRow.mk (s2Step250EntryFRow.payload++s2Step250EntryFFresh) s2Step250EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step250EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250EntryFvAfter : Arena := s2Step250EntryGAfter

private def s2Step250EntryFvBefore : Arena := s2Step250EntryGAfter

private theorem s2Step250EntryFv_Incoming : rowsOwned s2Step250EntryFvBefore [s2Step250EntryFvRow,s2Step250EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step250EntryFRow,s2Step250EntryGRow,s2Step250EntryFvRow,s2Step250EntryGvRow] 2 s2Step250EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step250EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250EntryFv_Outgoing : rowsOwned s2Step250EntryGvAfter [s2Step250EntryFvOut,s2Step250EntryGvOut] :=
  hmrRows_owned_drop s2Step250EntryGvAfter [s2Step250EntryFOut,s2Step250EntryGOut,s2Step250EntryFvOut,s2Step250EntryGvOut] 2 s2Step250EntryBank_outgoingOwned

private theorem s2Step250EntryFv_distinct : (s2Step250EntryFvRow.sign::s2Step250EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250EntryFv_owned : (s2Step250EntryFvRow.sign::s2Step250EntryFvRow.payload).toFinset⊆s2Step250EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step250EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250EntryFv_reserved : s2Step250EntryFvBefore.reserve s2Step250EntryFvFresh.toFinset=some s2Step250EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step250EntryFvFresh,arenaWires]
  · norm_num [s2Step250EntryFvBefore,s2Step250EntryGAfter,s2Step250EntryFvFresh,arenaWires]
  · simp only [s2Step250EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step250EntryFv_checked : planRowResizeLog s2Step250EntryFvBefore s2Step250EntryFvRow 140 s2Step250EntryFvFresh=
    some (s2Step250EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩,growRow 770 s2Step250EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step250EntryFvBefore s2Step250EntryFvAfter s2Step250EntryFvRow 140 s2Step250EntryFvFresh
    s2Step250EntryFv_distinct s2Step250EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step250EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step250EntryFvRow.payload++s2Step250EntryFvFresh) s2Step250EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step250EntryGBefore : Arena := s2Step250EntryFBefore

private theorem s2Step250EntryG_Incoming : rowsOwned s2Step250EntryGBefore [s2Step250EntryGRow,s2Step250EntryFvRow,s2Step250EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step250EntryFRow,s2Step250EntryGRow,s2Step250EntryFvRow,s2Step250EntryGvRow] 1 s2Step250EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step250EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250EntryG_Outgoing : rowsOwned s2Step250EntryGvAfter [s2Step250EntryGOut,s2Step250EntryFvOut,s2Step250EntryGvOut] :=
  hmrRows_owned_drop s2Step250EntryGvAfter [s2Step250EntryFOut,s2Step250EntryGOut,s2Step250EntryFvOut,s2Step250EntryGvOut] 1 s2Step250EntryBank_outgoingOwned

private theorem s2Step250EntryG_distinct : (s2Step250EntryGRow.sign::s2Step250EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250EntryG_owned : (s2Step250EntryGRow.sign::s2Step250EntryGRow.payload).toFinset⊆s2Step250EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step250EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250EntryG_reserved : s2Step250EntryGBefore.reserve s2Step250EntryGFresh.toFinset=some s2Step250EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step250EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step250EntryGBefore,s2Step250EntryFBefore,s2Step250EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step250EntryGAfter,s2Step250EntryGBefore,s2Step250EntryFBefore,s2Step250EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step250EntryG_checked : planRowResizeLog s2Step250EntryGBefore s2Step250EntryGRow 146 s2Step250EntryGFresh=
    some (s2Step250EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 842],769⟩,growRow 769 s2Step250EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step250EntryGBefore s2Step250EntryGAfter s2Step250EntryGRow 146 s2Step250EntryGFresh
    s2Step250EntryG_distinct s2Step250EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step250EntryG_reserved
  have rowEq : WindowRow.mk (s2Step250EntryGRow.payload++s2Step250EntryGFresh) s2Step250EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 842],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step250EntryGvBefore : Arena := s2Step250EntryGAfter

private theorem s2Step250EntryGv_Incoming : rowsOwned s2Step250EntryGvBefore [s2Step250EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step250EntryFRow,s2Step250EntryGRow,s2Step250EntryFvRow,s2Step250EntryGvRow] 3 s2Step250EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step250EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250EntryGv_Outgoing : rowsOwned s2Step250EntryGvAfter [s2Step250EntryGvOut] :=
  hmrRows_owned_drop s2Step250EntryGvAfter [s2Step250EntryFOut,s2Step250EntryGOut,s2Step250EntryFvOut,s2Step250EntryGvOut] 3 s2Step250EntryBank_outgoingOwned

private theorem s2Step250EntryGv_distinct : (s2Step250EntryGvRow.sign::s2Step250EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250EntryGv_owned : (s2Step250EntryGvRow.sign::s2Step250EntryGvRow.payload).toFinset⊆s2Step250EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step250EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250EntryGv_reserved : s2Step250EntryGvBefore.reserve s2Step250EntryGvFresh.toFinset=some s2Step250EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step250EntryGvFresh,arenaWires]
  · norm_num [s2Step250EntryGvBefore,s2Step250EntryGAfter,s2Step250EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step250EntryGvAfter,s2Step250EntryGvBefore,s2Step250EntryGAfter,s2Step250EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step250EntryGv_checked : planRowResizeLog s2Step250EntryGvBefore s2Step250EntryGvRow 140 s2Step250EntryGvFresh=
    some (s2Step250EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825],771⟩,growRow 771 s2Step250EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step250EntryGvBefore s2Step250EntryGvAfter s2Step250EntryGvRow 140 s2Step250EntryGvFresh
    s2Step250EntryGv_distinct s2Step250EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step250EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step250EntryGvRow.payload++s2Step250EntryGvFresh) s2Step250EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step250EntryBank_rows : planWindowRowsLog s2Step250EntryFBefore [(s2Step250EntryFRow,146),(s2Step250EntryGRow,146),(s2Step250EntryFvRow,140),(s2Step250EntryGvRow,140)] [s2Step250EntryFFresh,s2Step250EntryGFresh,s2Step250EntryFvFresh,s2Step250EntryGvFresh]=
    some (s2Step250EntryGvAfter,[s2Step250EntryFOut,s2Step250EntryGOut,s2Step250EntryFvOut,s2Step250EntryGvOut],(growRow 768 s2Step250EntryFFresh ++ (growRow 769 s2Step250EntryGFresh ++ (growRow 770 s2Step250EntryFvFresh ++ (growRow 771 s2Step250EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step250EntryGvAfter [] []=some (s2Step250EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step250EntryGvBefore s2Step250EntryGvAfter s2Step250EntryGvAfter
    s2Step250EntryGvRow s2Step250EntryGvOut 140 s2Step250EntryGvFresh [] [] []
    (growRow 771 s2Step250EntryGvFresh) ([]) s2Step250EntryGv_Incoming s2Step250EntryGv_checked h4 s2Step250EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step250EntryFvBefore s2Step250EntryFvAfter s2Step250EntryGvAfter
    s2Step250EntryFvRow s2Step250EntryFvOut 140 s2Step250EntryFvFresh [(s2Step250EntryGvRow,140)] [s2Step250EntryGvFresh] [s2Step250EntryGvOut]
    (growRow 770 s2Step250EntryFvFresh) ((growRow 771 s2Step250EntryGvFresh ++ [])) s2Step250EntryFv_Incoming s2Step250EntryFv_checked h3 s2Step250EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step250EntryGBefore s2Step250EntryGAfter s2Step250EntryGvAfter
    s2Step250EntryGRow s2Step250EntryGOut 146 s2Step250EntryGFresh [(s2Step250EntryFvRow,140),(s2Step250EntryGvRow,140)] [s2Step250EntryFvFresh,s2Step250EntryGvFresh] [s2Step250EntryFvOut,s2Step250EntryGvOut]
    (growRow 769 s2Step250EntryGFresh) ((growRow 770 s2Step250EntryFvFresh ++ (growRow 771 s2Step250EntryGvFresh ++ []))) s2Step250EntryG_Incoming s2Step250EntryG_checked h2 s2Step250EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step250EntryFBefore s2Step250EntryFAfter s2Step250EntryGvAfter
    s2Step250EntryFRow s2Step250EntryFOut 146 s2Step250EntryFFresh [(s2Step250EntryGRow,146),(s2Step250EntryFvRow,140),(s2Step250EntryGvRow,140)] [s2Step250EntryGFresh,s2Step250EntryFvFresh,s2Step250EntryGvFresh] [s2Step250EntryGOut,s2Step250EntryFvOut,s2Step250EntryGvOut]
    (growRow 768 s2Step250EntryFFresh) ((growRow 769 s2Step250EntryGFresh ++ (growRow 770 s2Step250EntryFvFresh ++ (growRow 771 s2Step250EntryGvFresh ++ [])))) s2Step250EntryF_Incoming s2Step250EntryF_checked h1 s2Step250EntryF_Outgoing
  exact h0

private theorem s2Step250EntryBank_checked : compileHmrBankResizeLog .entry s2Step250EntryFBefore ⟨s2Step250EntryFRow,s2Step250EntryGRow,s2Step250EntryFvRow,s2Step250EntryGvRow⟩ ⟨146,146,140,140⟩ [s2Step250EntryFFresh,s2Step250EntryGFresh,s2Step250EntryFvFresh,s2Step250EntryGvFresh]=
    some (s2Step250EntryGvAfter,⟨s2Step250EntryFOut,s2Step250EntryGOut,s2Step250EntryFvOut,s2Step250EntryGvOut⟩,(growRow 768 s2Step250EntryFFresh ++ (growRow 769 s2Step250EntryGFresh ++ (growRow 770 s2Step250EntryFvFresh ++ (growRow 771 s2Step250EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step250EntryBank_rows]
  rfl

private def s2Step250ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<657) ∨ (658≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250ExitFBefore : Arena := s2Step250ExitGAfter

private def s2Step250ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 800],768⟩

private def s2Step250ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩

private def s2Step250ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 842, 792],769⟩

private def s2Step250ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 835],771⟩

private theorem s2Step250ExitBank_incomingDistinct : ([s2Step250ExitGRow,s2Step250ExitFRow,s2Step250ExitFvRow,s2Step250ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250ExitF_Incoming : rowsOwned s2Step250ExitFBefore [s2Step250ExitFRow,s2Step250ExitFvRow,s2Step250ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step250ExitGRow,s2Step250ExitFRow,s2Step250ExitFvRow,s2Step250ExitGvRow] 1 s2Step250ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step250ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250ExitBank_outgoingOwned : rowsOwned s2Step250ExitGvAfter [s2Step250ExitGOut,s2Step250ExitFOut,s2Step250ExitFvOut,s2Step250ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step250ExitGvAfter (fun q => (0≤q ∧ q<657) ∨ (658≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250ExitF_Outgoing : rowsOwned s2Step250ExitGvAfter [s2Step250ExitFOut,s2Step250ExitFvOut,s2Step250ExitGvOut] :=
  hmrRows_owned_drop s2Step250ExitGvAfter [s2Step250ExitGOut,s2Step250ExitFOut,s2Step250ExitFvOut,s2Step250ExitGvOut] 1 s2Step250ExitBank_outgoingOwned

private theorem s2Step250ExitF_distinct : (s2Step250ExitFRow.sign::s2Step250ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250ExitF_owned : (s2Step250ExitFRow.sign::s2Step250ExitFRow.payload).toFinset⊆s2Step250ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step250ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250ExitF_retired : s2Step250ExitFBefore.retireSet s2Step250ExitFExtra.toFinset=s2Step250ExitFAfter := by
  unfold Arena.retireSet s2Step250ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step250ExitFBefore,s2Step250ExitGAfter,s2Step250ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step250ExitF_checked : planRowResizeLog s2Step250ExitFBefore s2Step250ExitFRow 145 []=
    some (s2Step250ExitFAfter,s2Step250ExitFOut,shrinkRow 768 s2Step250ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step250ExitFBefore s2Step250ExitFRow 145 s2Step250ExitF_distinct s2Step250ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step250ExitFRow.payload.take 145) s2Step250ExitFRow.sign=s2Step250ExitFOut := by decide +kernel
  have hi : s2Step250ExitFRow.payload.drop 145=s2Step250ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step250ExitF_retired] at result
  exact result

private def s2Step250ExitFvAfter : Arena := s2Step250ExitFAfter

private def s2Step250ExitFvBefore : Arena := s2Step250ExitFAfter

private theorem s2Step250ExitFv_Incoming : rowsOwned s2Step250ExitFvBefore [s2Step250ExitFvRow,s2Step250ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step250ExitGRow,s2Step250ExitFRow,s2Step250ExitFvRow,s2Step250ExitGvRow] 2 s2Step250ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step250ExitFvBefore (fun q => (0≤q ∧ q<657) ∨ (658≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250ExitFv_Outgoing : rowsOwned s2Step250ExitGvAfter [s2Step250ExitFvOut,s2Step250ExitGvOut] :=
  hmrRows_owned_drop s2Step250ExitGvAfter [s2Step250ExitGOut,s2Step250ExitFOut,s2Step250ExitFvOut,s2Step250ExitGvOut] 2 s2Step250ExitBank_outgoingOwned

private theorem s2Step250ExitFv_distinct : (s2Step250ExitFvRow.sign::s2Step250ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250ExitFv_owned : (s2Step250ExitFvRow.sign::s2Step250ExitFvRow.payload).toFinset⊆s2Step250ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step250ExitFvBefore (fun q => (0≤q ∧ q<657) ∨ (658≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250ExitFv_reserved : s2Step250ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step250ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step250ExitFv_checked : planRowResizeLog s2Step250ExitFvBefore s2Step250ExitFvRow 141 []=
    some (s2Step250ExitFvAfter,s2Step250ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step250ExitFvBefore s2Step250ExitFvAfter s2Step250ExitFvRow 141 []
    s2Step250ExitFv_distinct s2Step250ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step250ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step250ExitFvRow.payload++[]) s2Step250ExitFvRow.sign=s2Step250ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step250ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step250ExitG_Incoming : rowsOwned s2Step250ExitGBefore [s2Step250ExitGRow,s2Step250ExitFRow,s2Step250ExitFvRow,s2Step250ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step250ExitGRow,s2Step250ExitFRow,s2Step250ExitFvRow,s2Step250ExitGvRow] 0 s2Step250ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step250ExitGBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250ExitG_Outgoing : rowsOwned s2Step250ExitGvAfter [s2Step250ExitGOut,s2Step250ExitFOut,s2Step250ExitFvOut,s2Step250ExitGvOut] :=
  hmrRows_owned_drop s2Step250ExitGvAfter [s2Step250ExitGOut,s2Step250ExitFOut,s2Step250ExitFvOut,s2Step250ExitGvOut] 0 s2Step250ExitBank_outgoingOwned

private theorem s2Step250ExitG_distinct : (s2Step250ExitGRow.sign::s2Step250ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250ExitG_owned : (s2Step250ExitGRow.sign::s2Step250ExitGRow.payload).toFinset⊆s2Step250ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step250ExitGBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250ExitG_retired : s2Step250ExitGBefore.retireSet s2Step250ExitGExtra.toFinset=s2Step250ExitGAfter := by
  unfold Arena.retireSet s2Step250ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step250ExitGBefore,s2Step250ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step250ExitG_checked : planRowResizeLog s2Step250ExitGBefore s2Step250ExitGRow 145 []=
    some (s2Step250ExitGAfter,s2Step250ExitGOut,shrinkRow 769 s2Step250ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step250ExitGBefore s2Step250ExitGRow 145 s2Step250ExitG_distinct s2Step250ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step250ExitGRow.payload.take 145) s2Step250ExitGRow.sign=s2Step250ExitGOut := by decide +kernel
  have hi : s2Step250ExitGRow.payload.drop 145=s2Step250ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step250ExitG_retired] at result
  exact result

private def s2Step250ExitGvBefore : Arena := s2Step250ExitFAfter

private theorem s2Step250ExitGv_Incoming : rowsOwned s2Step250ExitGvBefore [s2Step250ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step250ExitGRow,s2Step250ExitFRow,s2Step250ExitFvRow,s2Step250ExitGvRow] 3 s2Step250ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step250ExitGvBefore (fun q => (0≤q ∧ q<657) ∨ (658≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250ExitGv_Outgoing : rowsOwned s2Step250ExitGvAfter [s2Step250ExitGvOut] :=
  hmrRows_owned_drop s2Step250ExitGvAfter [s2Step250ExitGOut,s2Step250ExitFOut,s2Step250ExitFvOut,s2Step250ExitGvOut] 3 s2Step250ExitBank_outgoingOwned

private theorem s2Step250ExitGv_distinct : (s2Step250ExitGvRow.sign::s2Step250ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250ExitGv_owned : (s2Step250ExitGvRow.sign::s2Step250ExitGvRow.payload).toFinset⊆s2Step250ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step250ExitGvBefore (fun q => (0≤q ∧ q<657) ∨ (658≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250ExitGv_retired : s2Step250ExitGvBefore.retireSet s2Step250ExitGvExtra.toFinset=s2Step250ExitGvAfter := by
  unfold Arena.retireSet s2Step250ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step250ExitGvBefore,s2Step250ExitFAfter,s2Step250ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step250ExitGv_checked : planRowResizeLog s2Step250ExitGvBefore s2Step250ExitGvRow 140 []=
    some (s2Step250ExitGvAfter,s2Step250ExitGvOut,shrinkRow 771 s2Step250ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step250ExitGvBefore s2Step250ExitGvRow 140 s2Step250ExitGv_distinct s2Step250ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step250ExitGvRow.payload.take 140) s2Step250ExitGvRow.sign=s2Step250ExitGvOut := by decide +kernel
  have hi : s2Step250ExitGvRow.payload.drop 140=s2Step250ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step250ExitGv_retired] at result
  exact result

private theorem s2Step250ExitBank_rows : planWindowRowsLog s2Step250ExitGBefore [(s2Step250ExitGRow,145),(s2Step250ExitFRow,145),(s2Step250ExitFvRow,141),(s2Step250ExitGvRow,140)] [[],[],[],[]]=
    some (s2Step250ExitGvAfter,[s2Step250ExitGOut,s2Step250ExitFOut,s2Step250ExitFvOut,s2Step250ExitGvOut],(shrinkRow 769 s2Step250ExitGExtra ++ (shrinkRow 768 s2Step250ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step250ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step250ExitGvAfter [] []=some (s2Step250ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step250ExitGvBefore s2Step250ExitGvAfter s2Step250ExitGvAfter
    s2Step250ExitGvRow s2Step250ExitGvOut 140 [] [] [] []
    (shrinkRow 771 s2Step250ExitGvExtra) ([]) s2Step250ExitGv_Incoming s2Step250ExitGv_checked h4 s2Step250ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step250ExitFvBefore s2Step250ExitFvAfter s2Step250ExitGvAfter
    s2Step250ExitFvRow s2Step250ExitFvOut 141 [] [(s2Step250ExitGvRow,140)] [[]] [s2Step250ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step250ExitGvExtra ++ [])) s2Step250ExitFv_Incoming s2Step250ExitFv_checked h3 s2Step250ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step250ExitFBefore s2Step250ExitFAfter s2Step250ExitGvAfter
    s2Step250ExitFRow s2Step250ExitFOut 145 [] [(s2Step250ExitFvRow,141),(s2Step250ExitGvRow,140)] [[],[]] [s2Step250ExitFvOut,s2Step250ExitGvOut]
    (shrinkRow 768 s2Step250ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step250ExitGvExtra ++ []))) s2Step250ExitF_Incoming s2Step250ExitF_checked h2 s2Step250ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step250ExitGBefore s2Step250ExitGAfter s2Step250ExitGvAfter
    s2Step250ExitGRow s2Step250ExitGOut 145 [] [(s2Step250ExitFRow,145),(s2Step250ExitFvRow,141),(s2Step250ExitGvRow,140)] [[],[],[]] [s2Step250ExitFOut,s2Step250ExitFvOut,s2Step250ExitGvOut]
    (shrinkRow 769 s2Step250ExitGExtra) ((shrinkRow 768 s2Step250ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step250ExitGvExtra ++ [])))) s2Step250ExitG_Incoming s2Step250ExitG_checked h1 s2Step250ExitG_Outgoing
  exact h0

private theorem s2Step250ExitBank_checked : compileHmrBankResizeLog .exit s2Step250ExitGBefore ⟨s2Step250ExitFRow,s2Step250ExitGRow,s2Step250ExitFvRow,s2Step250ExitGvRow⟩ ⟨145,145,141,140⟩ [[],[],[],[]]=
    some (s2Step250ExitGvAfter,⟨s2Step250ExitFOut,s2Step250ExitGOut,s2Step250ExitFvOut,s2Step250ExitGvOut⟩,(shrinkRow 769 s2Step250ExitGExtra ++ (shrinkRow 768 s2Step250ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step250ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step250ExitBank_rows]
  rfl

private theorem s2Step250Add0_apart : Disjoint s2Step250Add0Arena.live s2Step250Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step250Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250Add0_card : s2Step250Add0Arena.live.card=897 := by
  decide +kernel

private theorem s2Step250Add0_borrowed : s2Step250Add0Arena.checkBorrow (hmrHybridCount s2Step250Add0Arena s2Step250Add0B.length) s2Step250Add0Work=some s2Step250Add0During := by
  have len : s2Step250Add0Work.length=hmrHybridCount s2Step250Add0Arena s2Step250Add0B.length := by
    rw [hmrHybridCount,s2Step250Add0_card]
    decide +kernel
  have nd : s2Step250Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step250Add0Arena s2Step250Add0During s2Step250Add0Work.toFinset s2Step250Add0_bounded s2Step250Add0_apart rfl

private theorem s2Step250Add0_distinct : (814::803::809::(s2Step250Add0A++s2Step250Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250Add0_owned : (814::803::809::(s2Step250Add0A++s2Step250Add0B)).toFinset⊆s2Step250Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step250Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250Add0_checked : compileHmrHybridCinLog s2Step250Add0Arena 803 814 809 s2Step250Add0A s2Step250Add0B s2Step250Add0Work=some s2Step250Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step250Add0Arena s2Step250Add0During 803 814 809 s2Step250Add0A s2Step250Add0B s2Step250Add0Work
    (by decide +kernel) (by decide +kernel) s2Step250Add0_distinct
    (fun q hq => s2Step250Add0_owned (List.mem_toFinset.mpr hq)) s2Step250Add0_borrowed

private theorem s2Step250Add1_apart : Disjoint s2Step250Add1Arena.live s2Step250Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step250Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250Add1_card : s2Step250Add1Arena.live.card=897 := by
  decide +kernel

private theorem s2Step250Add1_borrowed : s2Step250Add1Arena.checkBorrow (hmrHybridCount s2Step250Add1Arena s2Step250Add1B.length) s2Step250Add1Work=some s2Step250Add1During := by
  have len : s2Step250Add1Work.length=hmrHybridCount s2Step250Add1Arena s2Step250Add1B.length := by
    rw [hmrHybridCount,s2Step250Add1_card]
    decide +kernel
  have nd : s2Step250Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step250Add1Arena s2Step250Add1During s2Step250Add1Work.toFinset s2Step250Add1_bounded s2Step250Add1_apart rfl

private theorem s2Step250Add1_distinct : (814::803::809::(s2Step250Add1A++s2Step250Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250Add1_owned : (814::803::809::(s2Step250Add1A++s2Step250Add1B)).toFinset⊆s2Step250Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step250Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250Add1_checked : compileHmrHybridCinLog s2Step250Add1Arena 803 814 809 s2Step250Add1A s2Step250Add1B s2Step250Add1Work=some s2Step250Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step250Add1Arena s2Step250Add1During 803 814 809 s2Step250Add1A s2Step250Add1B s2Step250Add1Work
    (by decide +kernel) (by decide +kernel) s2Step250Add1_distinct
    (fun q hq => s2Step250Add1_owned (List.mem_toFinset.mpr hq)) s2Step250Add1_borrowed

private theorem s2Step250F4_apart : Disjoint (s2Step250Add0A++s2Step250Add0B).toFinset (s2Step250Add1A++s2Step250Add1B).toFinset := by
  have nd : ((s2Step250Add0A++s2Step250Add0B)++(s2Step250Add1A++s2Step250Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step250F4_carry : s2Step250F4FlagArena.checkBorrow 1 [809]=some s2Step250Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step250F4FlagArena,s2Step250HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step250F4FlagArena,s2Step250HeadFvAfter,s2Step250Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step250F4_distinct : (784::803::814::809::((s2Step250Add0A++s2Step250Add1A)++(s2Step250Add0B++s2Step250Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250F4_flag : s2Step250HeadFvAfter.checkBorrow 1 [814]=some s2Step250F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step250HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step250F4_owned : (784::803::((s2Step250Add0A++s2Step250Add1A)++(s2Step250Add0B++s2Step250Add1B))).toFinset⊆s2Step250HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step250HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250F4_checked : compileHmrHybridF4Log s2Step250HeadFvAfter 784 803 s2Step250Add0A s2Step250Add0B s2Step250Add1A s2Step250Add1B [814] [809] s2Step250Add0Work s2Step250Add1Work=some s2Step250F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step250HeadFvAfter s2Step250F4FlagArena s2Step250Add0Arena s2Step250Add0During s2Step250Add1During 784 803
    s2Step250Add0A s2Step250Add0B s2Step250Add1A s2Step250Add1B [814] [809] s2Step250Add0Work s2Step250Add1Work
    (fun q hq => s2Step250F4_owned (List.mem_toFinset.mpr hq)) s2Step250F4_flag s2Step250F4_carry
    s2Step250F4_distinct s2Step250F4_apart s2Step250Add0_checked s2Step250Add1_checked

private theorem s2Step250Front_branch : s2Step250FrontSigmaArena.checkBorrow 1 [803]=some s2Step250HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step250FrontSigmaArena,s2Step250EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step250FrontSigmaArena,s2Step250EntryGvAfter,s2Step250HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step250Front_entry : HmrFrontEntryValid s2Step250EntryFBefore s2Step250FrontBank 146 140 ⟨145,145,141,140⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step250FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step250EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step250EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<825) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step250FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step250Front_sigma : s2Step250EntryGvAfter.checkBorrow 1 [784]=some s2Step250FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step250EntryGvAfter,arenaWires]
  · rfl

private def s2Step250HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250HeadFBefore : Arena := s2Step250HeadGAfter

private def s2Step250HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657],768⟩

private def s2Step250HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834],770⟩

private def s2Step250HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 842],769⟩

private def s2Step250HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825],771⟩

private theorem s2Step250HeadBank_incomingDistinct : ([s2Step250HeadGRow,s2Step250HeadFRow,s2Step250HeadGvRow,s2Step250HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250HeadF_Incoming : rowsOwned s2Step250HeadFBefore [s2Step250HeadFRow,s2Step250HeadGvRow,s2Step250HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step250HeadGRow,s2Step250HeadFRow,s2Step250HeadGvRow,s2Step250HeadFvRow] 1 s2Step250HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step250HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250HeadBank_outgoingOwned : rowsOwned s2Step250HeadFvAfter [s2Step250HeadGOut,s2Step250HeadFOut,s2Step250HeadGvOut,s2Step250HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step250HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250HeadF_Outgoing : rowsOwned s2Step250HeadFvAfter [s2Step250HeadFOut,s2Step250HeadGvOut,s2Step250HeadFvOut] :=
  hmrRows_owned_drop s2Step250HeadFvAfter [s2Step250HeadGOut,s2Step250HeadFOut,s2Step250HeadGvOut,s2Step250HeadFvOut] 1 s2Step250HeadBank_outgoingOwned

private theorem s2Step250HeadF_distinct : (s2Step250HeadFRow.sign::s2Step250HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250HeadF_owned : (s2Step250HeadFRow.sign::s2Step250HeadFRow.payload).toFinset⊆s2Step250HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step250HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250HeadF_reserved : s2Step250HeadFBefore.reserve s2Step250HeadFFresh.toFinset=some s2Step250HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step250HeadFFresh,arenaWires]
  · norm_num [s2Step250HeadFBefore,s2Step250HeadGAfter,s2Step250HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step250HeadFAfter,s2Step250HeadFBefore,s2Step250HeadGAfter,s2Step250HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step250HeadF_checked : planRowResizeLog s2Step250HeadFBefore s2Step250HeadFRow 147 s2Step250HeadFFresh=
    some (s2Step250HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 800],768⟩,growRow 768 s2Step250HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step250HeadFBefore s2Step250HeadFAfter s2Step250HeadFRow 147 s2Step250HeadFFresh
    s2Step250HeadF_distinct s2Step250HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step250HeadF_reserved
  have rowEq : WindowRow.mk (s2Step250HeadFRow.payload++s2Step250HeadFFresh) s2Step250HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 800],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step250HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step250HeadFvBefore : Arena := s2Step250HeadGvAfter

private theorem s2Step250HeadFv_Incoming : rowsOwned s2Step250HeadFvBefore [s2Step250HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step250HeadGRow,s2Step250HeadFRow,s2Step250HeadGvRow,s2Step250HeadFvRow] 3 s2Step250HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step250HeadFvBefore (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250HeadFv_Outgoing : rowsOwned s2Step250HeadFvAfter [s2Step250HeadFvOut] :=
  hmrRows_owned_drop s2Step250HeadFvAfter [s2Step250HeadGOut,s2Step250HeadFOut,s2Step250HeadGvOut,s2Step250HeadFvOut] 3 s2Step250HeadBank_outgoingOwned

private theorem s2Step250HeadFv_distinct : (s2Step250HeadFvRow.sign::s2Step250HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250HeadFv_owned : (s2Step250HeadFvRow.sign::s2Step250HeadFvRow.payload).toFinset⊆s2Step250HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step250HeadFvBefore (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250HeadFv_reserved : s2Step250HeadFvBefore.reserve s2Step250HeadFvFresh.toFinset=some s2Step250HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step250HeadFvFresh,arenaWires]
  · norm_num [s2Step250HeadFvBefore,s2Step250HeadGvAfter,s2Step250HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step250HeadFvAfter,s2Step250HeadFvBefore,s2Step250HeadGvAfter,s2Step250HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step250HeadFv_checked : planRowResizeLog s2Step250HeadFvBefore s2Step250HeadFvRow 141 s2Step250HeadFvFresh=
    some (s2Step250HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩,growRow 770 s2Step250HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step250HeadFvBefore s2Step250HeadFvAfter s2Step250HeadFvRow 141 s2Step250HeadFvFresh
    s2Step250HeadFv_distinct s2Step250HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step250HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step250HeadFvRow.payload++s2Step250HeadFvFresh) s2Step250HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step250HeadG_Incoming : rowsOwned s2Step250HeadGBefore [s2Step250HeadGRow,s2Step250HeadFRow,s2Step250HeadGvRow,s2Step250HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step250HeadGRow,s2Step250HeadFRow,s2Step250HeadGvRow,s2Step250HeadFvRow] 0 s2Step250HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step250HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250HeadG_Outgoing : rowsOwned s2Step250HeadFvAfter [s2Step250HeadGOut,s2Step250HeadFOut,s2Step250HeadGvOut,s2Step250HeadFvOut] :=
  hmrRows_owned_drop s2Step250HeadFvAfter [s2Step250HeadGOut,s2Step250HeadFOut,s2Step250HeadGvOut,s2Step250HeadFvOut] 0 s2Step250HeadBank_outgoingOwned

private theorem s2Step250HeadG_distinct : (s2Step250HeadGRow.sign::s2Step250HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250HeadG_owned : (s2Step250HeadGRow.sign::s2Step250HeadGRow.payload).toFinset⊆s2Step250HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step250HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250HeadG_reserved : s2Step250HeadGBefore.reserve s2Step250HeadGFresh.toFinset=some s2Step250HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step250HeadGFresh,arenaWires]
  · norm_num [s2Step250HeadGBefore,s2Step250HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step250HeadGAfter,s2Step250HeadGBefore,s2Step250HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step250HeadG_checked : planRowResizeLog s2Step250HeadGBefore s2Step250HeadGRow 147 s2Step250HeadGFresh=
    some (s2Step250HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 842, 792],769⟩,growRow 769 s2Step250HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step250HeadGBefore s2Step250HeadGAfter s2Step250HeadGRow 147 s2Step250HeadGFresh
    s2Step250HeadG_distinct s2Step250HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step250HeadG_reserved
  have rowEq : WindowRow.mk (s2Step250HeadGRow.payload++s2Step250HeadGFresh) s2Step250HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 842, 792],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step250HeadGvBefore : Arena := s2Step250HeadFAfter

private theorem s2Step250HeadGv_Incoming : rowsOwned s2Step250HeadGvBefore [s2Step250HeadGvRow,s2Step250HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step250HeadGRow,s2Step250HeadFRow,s2Step250HeadGvRow,s2Step250HeadFvRow] 2 s2Step250HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step250HeadGvBefore (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step250HeadGv_Outgoing : rowsOwned s2Step250HeadFvAfter [s2Step250HeadGvOut,s2Step250HeadFvOut] :=
  hmrRows_owned_drop s2Step250HeadFvAfter [s2Step250HeadGOut,s2Step250HeadFOut,s2Step250HeadGvOut,s2Step250HeadFvOut] 2 s2Step250HeadBank_outgoingOwned

private theorem s2Step250HeadGv_distinct : (s2Step250HeadGvRow.sign::s2Step250HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step250HeadGv_owned : (s2Step250HeadGvRow.sign::s2Step250HeadGvRow.payload).toFinset⊆s2Step250HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step250HeadGvBefore (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step250HeadGv_reserved : s2Step250HeadGvBefore.reserve s2Step250HeadGvFresh.toFinset=some s2Step250HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step250HeadGvFresh,arenaWires]
  · norm_num [s2Step250HeadGvBefore,s2Step250HeadFAfter,s2Step250HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step250HeadGvAfter,s2Step250HeadGvBefore,s2Step250HeadFAfter,s2Step250HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step250HeadGv_checked : planRowResizeLog s2Step250HeadGvBefore s2Step250HeadGvRow 141 s2Step250HeadGvFresh=
    some (s2Step250HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 835],771⟩,growRow 771 s2Step250HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step250HeadGvBefore s2Step250HeadGvAfter s2Step250HeadGvRow 141 s2Step250HeadGvFresh
    s2Step250HeadGv_distinct s2Step250HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step250HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step250HeadGvRow.payload++s2Step250HeadGvFresh) s2Step250HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 835],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step250HeadBank_rows : planWindowRowsLog s2Step250HeadGBefore [(s2Step250HeadGRow,147),(s2Step250HeadFRow,147),(s2Step250HeadGvRow,141),(s2Step250HeadFvRow,141)] [s2Step250HeadGFresh,s2Step250HeadFFresh,s2Step250HeadGvFresh,s2Step250HeadFvFresh]=
    some (s2Step250HeadFvAfter,[s2Step250HeadGOut,s2Step250HeadFOut,s2Step250HeadGvOut,s2Step250HeadFvOut],(growRow 769 s2Step250HeadGFresh ++ (growRow 768 s2Step250HeadFFresh ++ (growRow 771 s2Step250HeadGvFresh ++ (growRow 770 s2Step250HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step250HeadFvAfter [] []=some (s2Step250HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step250HeadFvBefore s2Step250HeadFvAfter s2Step250HeadFvAfter
    s2Step250HeadFvRow s2Step250HeadFvOut 141 s2Step250HeadFvFresh [] [] []
    (growRow 770 s2Step250HeadFvFresh) ([]) s2Step250HeadFv_Incoming s2Step250HeadFv_checked h4 s2Step250HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step250HeadGvBefore s2Step250HeadGvAfter s2Step250HeadFvAfter
    s2Step250HeadGvRow s2Step250HeadGvOut 141 s2Step250HeadGvFresh [(s2Step250HeadFvRow,141)] [s2Step250HeadFvFresh] [s2Step250HeadFvOut]
    (growRow 771 s2Step250HeadGvFresh) ((growRow 770 s2Step250HeadFvFresh ++ [])) s2Step250HeadGv_Incoming s2Step250HeadGv_checked h3 s2Step250HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step250HeadFBefore s2Step250HeadFAfter s2Step250HeadFvAfter
    s2Step250HeadFRow s2Step250HeadFOut 147 s2Step250HeadFFresh [(s2Step250HeadGvRow,141),(s2Step250HeadFvRow,141)] [s2Step250HeadGvFresh,s2Step250HeadFvFresh] [s2Step250HeadGvOut,s2Step250HeadFvOut]
    (growRow 768 s2Step250HeadFFresh) ((growRow 771 s2Step250HeadGvFresh ++ (growRow 770 s2Step250HeadFvFresh ++ []))) s2Step250HeadF_Incoming s2Step250HeadF_checked h2 s2Step250HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step250HeadGBefore s2Step250HeadGAfter s2Step250HeadFvAfter
    s2Step250HeadGRow s2Step250HeadGOut 147 s2Step250HeadGFresh [(s2Step250HeadFRow,147),(s2Step250HeadGvRow,141),(s2Step250HeadFvRow,141)] [s2Step250HeadFFresh,s2Step250HeadGvFresh,s2Step250HeadFvFresh] [s2Step250HeadFOut,s2Step250HeadGvOut,s2Step250HeadFvOut]
    (growRow 769 s2Step250HeadGFresh) ((growRow 768 s2Step250HeadFFresh ++ (growRow 771 s2Step250HeadGvFresh ++ (growRow 770 s2Step250HeadFvFresh ++ [])))) s2Step250HeadG_Incoming s2Step250HeadG_checked h1 s2Step250HeadG_Outgoing
  exact h0

private theorem s2Step250HeadBank_checked : compileHmrBankResizeLog .headroom s2Step250HeadGBefore ⟨s2Step250HeadFRow,s2Step250HeadGRow,s2Step250HeadFvRow,s2Step250HeadGvRow⟩ ⟨147,147,141,141⟩ [s2Step250HeadGFresh,s2Step250HeadFFresh,s2Step250HeadGvFresh,s2Step250HeadFvFresh]=
    some (s2Step250HeadFvAfter,⟨s2Step250HeadFOut,s2Step250HeadGOut,s2Step250HeadFvOut,s2Step250HeadGvOut⟩,(growRow 769 s2Step250HeadGFresh ++ (growRow 768 s2Step250HeadFFresh ++ (growRow 771 s2Step250HeadGvFresh ++ (growRow 770 s2Step250HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step250HeadBank_rows]
  rfl

private theorem s2Step250Front_checked : compileHmrSourceFrontLog s2Step250EntryFBefore s2Step250FrontBank 146 140 ⟨145,145,141,140⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step250FrontLog=some s2Step250FrontPlan := by
  have pairEq : s2Step250FrontPair=⟨s2Step250HeadFRow,s2Step250HeadGRow,s2Step250HeadFvRow,s2Step250HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step250FrontHead=⟨s2Step250ExitFRow,s2Step250ExitGRow,s2Step250ExitFvRow,s2Step250ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step250Add0A=s2Step250FrontHead.f.wires := by decide +kernel
  have gEq : s2Step250Add0B=s2Step250FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step250Add1A=s2Step250FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step250Add1B=s2Step250FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step250EntryFBefore s2Step250FrontBank 146 140 ⟨145,145,141,140⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step250FrontLog s2Step250FrontPlan
  · exact s2Step250Front_entry
  · exact s2Step250EntryBank_checked
  · exact s2Step250Front_sigma
  · rfl
  · exact s2Step250Front_branch
  · rfl
  · simpa only [s2Step250FrontPlan,pairEq] using s2Step250HeadBank_checked
  · simpa only [s2Step250FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step250F4_checked
  · exact s2Step250Counter_checked
  · rfl
  · simpa only [s2Step250FrontPlan,headEq] using s2Step250ExitBank_checked

private theorem s2Step250Complete_explicit_checked : compileHmrEarlyStepLog s2Step250EntryFBefore s2Step250FrontBank 146 140 ⟨145,145,141,140⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step250CompleteLog=some s2Step250CompletePlan := by
  let Q := s2Step250EarlyControlPlan
  have hq := s2Step250EarlyControl_plan_checked
  have fv1 : s2Step250CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step250CompleteOut.fv.payload[2]?.getD s2Step250CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step250CompleteOut.fv.payload[3]?.getD s2Step250CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step250CompleteOut.fv.payload[4]?.getD s2Step250CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step250EntryFBefore s2Step250EarlyControlArena s2Step250FrontBank 146 140 ⟨145,145,141,140⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step250CompleteLog s2Step250FrontPlan Q
    s2Step250Front_checked s2Step250Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step250Complete_owned s2Step250Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step250EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 s2Step250CompleteOut.fv.second (s2Step250CompleteOut.fv.payload[2]?.getD s2Step250CompleteOut.fv.sign) (s2Step250CompleteOut.fv.payload[3]?.getD s2Step250CompleteOut.fv.sign) (s2Step250CompleteOut.fv.payload[4]?.getD s2Step250CompleteOut.fv.sign) 803 51 s2Step250EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep250Arena : Arena := s2Step250EntryFBefore
def s2PrivateStep250Bank : WindowBank := s2Step250FrontBank
def s2PrivateStep250Spec : HmrSourceWalkStepLog := ⟨146,140,⟨145,145,141,140⟩,51,.early s2Step250CompleteLog⟩
def s2PrivateStep250Plan : HmrSourceStepPlan := .early s2Step250CompletePlan
theorem s2PrivateStep250_source : s2PrivateStep250Spec=s2ObservedLogs240[10] := rfl
theorem s2PrivateStep250_checked : compileHmrSourceStepLog s2PrivateStep250Arena s2PrivateStep250Bank
    s2PrivateStep250Spec.fgWidth s2PrivateStep250Spec.vWidth s2PrivateStep250Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 250 s2PrivateStep250Spec.need none s2PrivateStep250Spec.log=some s2PrivateStep250Plan := by
  change compileHmrSourceStepLog s2Step250EntryFBefore s2Step250FrontBank 146 140 ⟨145,145,141,140⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 250 51 none (.early s2Step250CompleteLog)=some (.early s2Step250CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 250<498)]
  rw [s2Step250Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
