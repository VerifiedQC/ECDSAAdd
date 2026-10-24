import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep249
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

private def s2Step251CompleteMoves : List (Wire × Wire) := [(837,656)]

private def s2Step251EarlyControlLog : HmrEarlyControlLog := ⟨[837, 842, 792, 800, 835],[814],[809],[885, 891, 894, 896, 901, 902],[]⟩

private def s2Step251FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [803]],[[835], [800], [842], [792]],[[], [], [], []]⟩,[784],[782],[814],[809],[885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 809, 885, 891]⟩

private def s2Step251CompleteLog : HmrEarlyStepLog := ⟨s2Step251FrontLog,s2Step251CompleteMoves,s2Step251EarlyControlLog⟩

private def s2Step251ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655],768⟩

private def s2Step251ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩

private def s2Step251ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],769⟩

private def s2Step251ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803],771⟩

private def s2Step251FrontOut : WindowBank := ⟨s2Step251ExitFOut,s2Step251ExitGOut,s2Step251ExitFvOut,s2Step251ExitGvOut⟩

private def s2Step251CompleteOut : WindowBank := s2Step251FrontOut.repacked s2Step251CompleteMoves

private def s2Step251EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step251EarlyControlPositiveArena,[814],s2Step251EarlyControlEqualityArena,[809],⟨⟨784,false⟩,[⟨⟨814,false⟩,809⟩]⟩⟩

private def s2Step251EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step251EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step251EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,837⟩,⟨⟨774,false⟩,842⟩,⟨⟨775,false⟩,792⟩,⟨⟨776,false⟩,800⟩,⟨⟨777,false⟩,835⟩]⟩

private def s2Step251EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step251EarlyControlZeroArena,s2Step251EarlyControlZeroPlan,s2Step251EarlyControlClassPlan,s2Step251EarlyControlFlagArena,s2Step251EarlyControlFittedArena,s2Step251EarlyControlHistoryArena,s2Step251EarlyControlSigmaArena,s2Step251EarlyControlOutputArena,s2Step251EarlyControlLog⟩

private def s2Step251CounterWork : List Wire := [814, 809, 885, 891]

private theorem s2Step251Counter_bounded : s2Step251CounterWork.toFinset⊆arenaWires := by norm_num [s2Step251CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step251HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251CounterDuring : Arena := ⟨s2Step251HeadFvAfter.live∪s2Step251CounterWork.toFinset,Finset.union_subset s2Step251HeadFvAfter.bounded s2Step251Counter_bounded⟩

private def s2Step251EntryFFresh : List Wire := []

private def s2Step251EntryFvFresh : List Wire := []

private def s2Step251EntryGFresh : List Wire := []

private def s2Step251EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251EntryGvFresh : List Wire := [803]

private def s2Step251ExitFExtra : List Wire := [656, 800]

private def s2Step251ExitFvExtra : List Wire := [792]

private def s2Step251ExitGExtra : List Wire := [835]

private def s2Step251ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<656) ∨ (657≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251ExitGvExtra : List Wire := [842]

private def s2Step251Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251Add0Work : List Wire := [885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step251Add0_bounded : s2Step251Add0Work.toFinset⊆arenaWires := by
  have h : s2Step251Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step251Add0During : Arena := ⟨s2Step251Add0Arena.live∪s2Step251Add0Work.toFinset,Finset.union_subset s2Step251Add0Arena.bounded s2Step251Add0_bounded⟩

private def s2Step251Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251Add1Work : List Wire := [885, 891, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step251Add1_bounded : s2Step251Add1Work.toFinset⊆arenaWires := by
  have h : s2Step251Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step251Add1During : Arena := ⟨s2Step251Add1Arena.live∪s2Step251Add1Work.toFinset,Finset.union_subset s2Step251Add1Arena.bounded s2Step251Add1_bounded⟩

private def s2Step251F4FlagArena : Arena := ⟨s2Step251HeadFvAfter.live∪{814},Finset.union_subset s2Step251HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step251F4Plan : HmrHybridF4Plan := ⟨s2Step251F4FlagArena,[814],s2Step251Add0Arena,[809],s2Step251Add0During,s2Step251Add0Work,s2Step251Add1During,s2Step251Add1Work⟩

private def s2Step251HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 800],768⟩

private def s2Step251HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 792],770⟩

private def s2Step251HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 835],769⟩

private def s2Step251HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 842],771⟩

private def s2Step251FrontHead : WindowBank := ⟨s2Step251HeadFOut,s2Step251HeadGOut,s2Step251HeadFvOut,s2Step251HeadGvOut⟩

private def s2Step251EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656],768⟩

private def s2Step251EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩

private def s2Step251EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],769⟩

private def s2Step251EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803],771⟩

private def s2Step251FrontPair : WindowBank := ⟨s2Step251EntryFOut,s2Step251EntryGOut,s2Step251EntryFvOut,s2Step251EntryGvOut⟩

private def s2Step251FrontSigmaArena : Arena := ⟨s2Step251EntryGvAfter.live∪{784},Finset.union_subset s2Step251EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step251HeadFFresh : List Wire := [800]

private def s2Step251HeadFvFresh : List Wire := [792]

private def s2Step251HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251HeadGFresh : List Wire := [835]

private def s2Step251HeadGvFresh : List Wire := [842]

private def s2Step251FrontPlan : HmrSourceFront := ⟨s2Step251EntryGvAfter,s2Step251FrontPair,(growRow 768 s2Step251EntryFFresh ++ (growRow 769 s2Step251EntryGFresh ++ (growRow 770 s2Step251EntryFvFresh ++ (growRow 771 s2Step251EntryGvFresh ++ [])))),s2Step251FrontSigmaArena,[784],s2Step251HeadGBefore,[782],
  s2Step251HeadFvAfter,s2Step251FrontHead,(growRow 769 s2Step251HeadGFresh ++ (growRow 768 s2Step251HeadFFresh ++ (growRow 771 s2Step251HeadGvFresh ++ (growRow 770 s2Step251HeadFvFresh ++ [])))),s2Step251F4Plan,s2Step251CounterDuring,s2Step251CounterWork,s2Step251ExitGvAfter,s2Step251FrontOut,(shrinkRow 769 s2Step251ExitGExtra ++ (shrinkRow 768 s2Step251ExitFExtra ++ (shrinkRow 770 s2Step251ExitFvExtra ++ (shrinkRow 771 s2Step251ExitGvExtra ++ []))))⟩

private def s2Step251CompletePlan : HmrEarlyStepPlan := ⟨s2Step251FrontPlan,s2Step251EarlyControlArena,s2Step251EarlyControlPlan,s2Step251CompleteMoves⟩

private theorem s2Step251Complete_apart : List.Disjoint (s2Step251CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [784, 782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step251CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[784, 782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step251Complete_owned : (s2Step251CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step251EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step251EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private def s2Step251CompleteMoveArena : Arena := ⟨s2Step251ExitGvAfter.live∪{656},Finset.union_subset s2Step251ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step251Complete_repack : s2Step251ExitGvAfter.checkRepack s2Step251CompleteMoves=some s2Step251EarlyControlArena := by
  have owned : 837∈s2Step251ExitGvAfter.live := by norm_num [s2Step251ExitGvAfter,arenaWires]
  have reserve : s2Step251ExitGvAfter.reserve {656}=some s2Step251CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step251ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step251CompleteMoveArena.retireSet {837}=s2Step251EarlyControlArena := by
    unfold Arena.retireSet s2Step251EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step251CompleteMoveArena,s2Step251ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step251CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step251CompleteMoveArena.retireSet {837}).checkRepack []=some s2Step251EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step251EarlyControl_branchOwned : ([782] : List Wire).toFinset⊆s2Step251EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step251EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251EarlyControl_branch : compileHmrBranchRetirement s2Step251EarlyControlSigmaArena 782=some s2Step251EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step251EarlyControl_branchOwned
  · ext q
    simp [s2Step251EarlyControlOutputArena,s2Step251EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step251EarlyControl_classEqualityBorrow : s2Step251EarlyControlPositiveArena.checkBorrow (([784, 814] : List Wire).length-1) s2Step251EarlyControlLog.classWork=some s2Step251EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step251EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step251EarlyControlPositiveArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step251EarlyControlEqualityArena,s2Step251EarlyControlPositiveArena,s2Step251EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step251EarlyControl_classEqualityOwned : ([784, 814] : List Wire).toFinset⊆s2Step251EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step251EarlyControlPositiveArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251EarlyControl_classEquality : compileHmrEqualityLog s2Step251EarlyControlPositiveArena [784, 814] 0 s2Step251EarlyControlLog.classWork=some (s2Step251EarlyControlEqualityArena,s2Step251EarlyControlLog.classWork,s2Step251EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step251EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step251EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step251EarlyControl_classOwned : ([777, 835, 784] : List Wire).toFinset⊆s2Step251EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step251EarlyControlZeroArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251EarlyControl_positiveBorrow : s2Step251EarlyControlZeroArena.checkBorrow (1) s2Step251EarlyControlLog.positiveWork=some s2Step251EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step251EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step251EarlyControlZeroArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step251EarlyControlPositiveArena,s2Step251EarlyControlZeroArena,s2Step251EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step251EarlyControl_class : compileHmrSourceClassLog s2Step251EarlyControlZeroArena false 777 s2Step251EarlyControlZeroPlan.top 0 784 s2Step251EarlyControlLog.positiveWork s2Step251EarlyControlLog.classWork=some s2Step251EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step251EarlyControlClassPlan s2Step251EarlyControlZeroArena false 777 s2Step251EarlyControlZeroPlan.top 0 784
  constructor
  · decide +kernel
  · exact s2Step251EarlyControl_classOwned
  · exact s2Step251EarlyControl_positiveBorrow
  · exact s2Step251EarlyControl_classEquality

private theorem s2Step251EarlyControl_entryRecordOwned : ([782, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step251EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step251EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251EarlyControl_entrySigmaOwned : ([784, 254] : List Wire).toFinset⊆s2Step251EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step251EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251EarlyControl_fitBorrow : s2Step251EarlyControlFlagArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step251EarlyControlLog.recordFresh=some s2Step251EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step251EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step251EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step251EarlyControlFittedArena,s2Step251EarlyControlFlagArena,s2Step251EarlyControlLog,arenaWires]

private theorem s2Step251EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step251EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step251EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step251EarlyControl_fit : compileHmrRecordGrowLog s2Step251EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step251EarlyControlLog.recordFresh=some s2Step251EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step251EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step251EarlyControl_fitBorrow

private theorem s2Step251EarlyControl_flagsBorrow : s2Step251EarlyControlEqualityArena.checkBorrow (6) s2Step251EarlyControlLog.flagWork=some s2Step251EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step251EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step251EarlyControlEqualityArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step251EarlyControlFlagArena,s2Step251EarlyControlEqualityArena,s2Step251EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step251EarlyControl_flagsOwned : ([809, 253, 252, 251] : List Wire).toFinset⊆s2Step251EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step251EarlyControlEqualityArena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251EarlyControl_flags : compileHmrFlagsLog s2Step251EarlyControlClassPlan.equalityArena s2Step251EarlyControlClassPlan.equality.top 253 252 251 s2Step251EarlyControlLog.flagWork=some s2Step251EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step251EarlyControl_flagsOwned⟩
  · exact s2Step251EarlyControl_flagsBorrow

private theorem s2Step251EarlyControl_historyBorrow : s2Step251EarlyControlArena.checkBorrow ((51-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step251EarlyControlLog.recordFresh=some s2Step251EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step251EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step251EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step251EarlyControlHistoryArena,s2Step251EarlyControlArena,s2Step251EarlyControlLog,arenaWires]

private theorem s2Step251EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step251EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step251EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251EarlyControl_history : compileHmrRecordGrowLog s2Step251EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step251EarlyControlLog.recordFresh=some s2Step251EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step251EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step251EarlyControl_historyBorrow

private theorem s2Step251EarlyControl_sigmaOwned : ([254, 784] : List Wire).toFinset⊆s2Step251EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step251EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251EarlyControl_sigmaReleaseOwned : ([784] : List Wire).toFinset⊆s2Step251EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step251EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251EarlyControl_sigmaRelease : s2Step251EarlyControlHistoryArena.release {784} (fun _ => false)=some s2Step251EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step251EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step251EarlyControlSigmaArena,s2Step251EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step251EarlyControl_sigma : compileHmrSigmaDropLog s2Step251EarlyControlHistoryArena false 0 0 254 784 []=some s2Step251EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step251EarlyControl_sigmaOwned⟩
  · exact s2Step251EarlyControl_sigmaRelease

private theorem s2Step251EarlyControl_zeroBorrow : s2Step251EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step251EarlyControlLog.zeroWork=some s2Step251EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step251EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step251EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step251EarlyControlZeroArena,s2Step251EarlyControlArena,s2Step251EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step251EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step251EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step251EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251EarlyControl_zero : compileHmrEqualityLog s2Step251EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step251EarlyControlLog.zeroWork=some (s2Step251EarlyControlZeroArena,s2Step251EarlyControlLog.zeroWork,s2Step251EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step251EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step251EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step251EarlyControl_logged : s2Step251EarlyControlPlan.Logged s2Step251EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 254 253 252 251 782 51 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step251EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step251EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step251EarlyControl_zero
  · exact s2Step251EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step251EarlyControl_flags
  · exact s2Step251EarlyControl_fit
  · exact s2Step251EarlyControl_history
  · exact s2Step251EarlyControl_sigma
  · exact s2Step251EarlyControl_branch

private theorem s2Step251EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step251EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 254 253 252 251 782 51 s2Step251EarlyControlLog=some s2Step251EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step251EarlyControlPlan s2Step251EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 254 253 252 251 782 51 s2Step251EarlyControl_logged

private def s2Step251EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656],768⟩

private def s2Step251EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩

private def s2Step251EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],769⟩

private def s2Step251EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825],771⟩

private def s2Step251FrontBank : WindowBank := ⟨s2Step251EntryFRow,s2Step251EntryGRow,s2Step251EntryFvRow,s2Step251EntryGvRow⟩

private def s2Step251Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 800, 768]

private def s2Step251Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 835, 769]

private def s2Step251Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 792, 770]

private def s2Step251Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 842, 771]

private theorem s2Step251Counter_apart : Disjoint s2Step251HeadFvAfter.live s2Step251CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step251HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251Counter_borrowed : s2Step251HeadFvAfter.checkBorrow 4 s2Step251CounterWork=some s2Step251CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step251HeadFvAfter s2Step251CounterDuring s2Step251CounterWork.toFinset s2Step251Counter_bounded s2Step251Counter_apart rfl

private theorem s2Step251Counter_owned : (784::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step251HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step251HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251Counter_checked : compileHmrCounterStepLog s2Step251HeadFvAfter true 784 [772, 773, 774, 775, 776, 777] s2Step251CounterWork=some s2Step251CounterDuring := by
  have owned : ∀q∈784::[772, 773, 774, 775, 776, 777],q∈s2Step251HeadFvAfter.live := fun q hq => s2Step251Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step251Counter_borrowed

private def s2Step251EntryFAfter : Arena := s2Step251EntryFBefore

private theorem s2Step251EntryBank_incomingDistinct : ([s2Step251EntryFRow,s2Step251EntryGRow,s2Step251EntryFvRow,s2Step251EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251EntryF_Incoming : rowsOwned s2Step251EntryFBefore [s2Step251EntryFRow,s2Step251EntryGRow,s2Step251EntryFvRow,s2Step251EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step251EntryFRow,s2Step251EntryGRow,s2Step251EntryFvRow,s2Step251EntryGvRow] 0 s2Step251EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step251EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251EntryBank_outgoingOwned : rowsOwned s2Step251EntryGvAfter [s2Step251EntryFOut,s2Step251EntryGOut,s2Step251EntryFvOut,s2Step251EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step251EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251EntryF_Outgoing : rowsOwned s2Step251EntryGvAfter [s2Step251EntryFOut,s2Step251EntryGOut,s2Step251EntryFvOut,s2Step251EntryGvOut] :=
  hmrRows_owned_drop s2Step251EntryGvAfter [s2Step251EntryFOut,s2Step251EntryGOut,s2Step251EntryFvOut,s2Step251EntryGvOut] 0 s2Step251EntryBank_outgoingOwned

private theorem s2Step251EntryF_distinct : (s2Step251EntryFRow.sign::s2Step251EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251EntryF_owned : (s2Step251EntryFRow.sign::s2Step251EntryFRow.payload).toFinset⊆s2Step251EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step251EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251EntryF_reserved : s2Step251EntryFBefore.reserve s2Step251EntryFFresh.toFinset=some s2Step251EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step251EntryFFresh,arenaWires]
  · norm_num [s2Step251EntryFBefore,s2Step251EntryFFresh,arenaWires]
  · simp only [s2Step251EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step251EntryF_checked : planRowResizeLog s2Step251EntryFBefore s2Step251EntryFRow 145 s2Step251EntryFFresh=
    some (s2Step251EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656],768⟩,growRow 768 s2Step251EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step251EntryFBefore s2Step251EntryFAfter s2Step251EntryFRow 145 s2Step251EntryFFresh
    s2Step251EntryF_distinct s2Step251EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step251EntryF_reserved
  have rowEq : WindowRow.mk (s2Step251EntryFRow.payload++s2Step251EntryFFresh) s2Step251EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step251EntryFvAfter : Arena := s2Step251EntryFBefore

private def s2Step251EntryFvBefore : Arena := s2Step251EntryFBefore

private theorem s2Step251EntryFv_Incoming : rowsOwned s2Step251EntryFvBefore [s2Step251EntryFvRow,s2Step251EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step251EntryFRow,s2Step251EntryGRow,s2Step251EntryFvRow,s2Step251EntryGvRow] 2 s2Step251EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step251EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251EntryFv_Outgoing : rowsOwned s2Step251EntryGvAfter [s2Step251EntryFvOut,s2Step251EntryGvOut] :=
  hmrRows_owned_drop s2Step251EntryGvAfter [s2Step251EntryFOut,s2Step251EntryGOut,s2Step251EntryFvOut,s2Step251EntryGvOut] 2 s2Step251EntryBank_outgoingOwned

private theorem s2Step251EntryFv_distinct : (s2Step251EntryFvRow.sign::s2Step251EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251EntryFv_owned : (s2Step251EntryFvRow.sign::s2Step251EntryFvRow.payload).toFinset⊆s2Step251EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step251EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251EntryFv_reserved : s2Step251EntryFvBefore.reserve s2Step251EntryFvFresh.toFinset=some s2Step251EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step251EntryFvFresh,arenaWires]
  · norm_num [s2Step251EntryFvBefore,s2Step251EntryFBefore,s2Step251EntryFvFresh,arenaWires]
  · simp only [s2Step251EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step251EntryFv_checked : planRowResizeLog s2Step251EntryFvBefore s2Step251EntryFvRow 141 s2Step251EntryFvFresh=
    some (s2Step251EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩,growRow 770 s2Step251EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step251EntryFvBefore s2Step251EntryFvAfter s2Step251EntryFvRow 141 s2Step251EntryFvFresh
    s2Step251EntryFv_distinct s2Step251EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step251EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step251EntryFvRow.payload++s2Step251EntryFvFresh) s2Step251EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step251EntryGAfter : Arena := s2Step251EntryFBefore

private def s2Step251EntryGBefore : Arena := s2Step251EntryFBefore

private theorem s2Step251EntryG_Incoming : rowsOwned s2Step251EntryGBefore [s2Step251EntryGRow,s2Step251EntryFvRow,s2Step251EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step251EntryFRow,s2Step251EntryGRow,s2Step251EntryFvRow,s2Step251EntryGvRow] 1 s2Step251EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step251EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251EntryG_Outgoing : rowsOwned s2Step251EntryGvAfter [s2Step251EntryGOut,s2Step251EntryFvOut,s2Step251EntryGvOut] :=
  hmrRows_owned_drop s2Step251EntryGvAfter [s2Step251EntryFOut,s2Step251EntryGOut,s2Step251EntryFvOut,s2Step251EntryGvOut] 1 s2Step251EntryBank_outgoingOwned

private theorem s2Step251EntryG_distinct : (s2Step251EntryGRow.sign::s2Step251EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251EntryG_owned : (s2Step251EntryGRow.sign::s2Step251EntryGRow.payload).toFinset⊆s2Step251EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step251EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251EntryG_reserved : s2Step251EntryGBefore.reserve s2Step251EntryGFresh.toFinset=some s2Step251EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step251EntryGFresh,arenaWires]
  · norm_num [s2Step251EntryGBefore,s2Step251EntryFBefore,s2Step251EntryGFresh,arenaWires]
  · simp only [s2Step251EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step251EntryG_checked : planRowResizeLog s2Step251EntryGBefore s2Step251EntryGRow 145 s2Step251EntryGFresh=
    some (s2Step251EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],769⟩,growRow 769 s2Step251EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step251EntryGBefore s2Step251EntryGAfter s2Step251EntryGRow 145 s2Step251EntryGFresh
    s2Step251EntryG_distinct s2Step251EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step251EntryG_reserved
  have rowEq : WindowRow.mk (s2Step251EntryGRow.payload++s2Step251EntryGFresh) s2Step251EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step251EntryGvBefore : Arena := s2Step251EntryFBefore

private theorem s2Step251EntryGv_Incoming : rowsOwned s2Step251EntryGvBefore [s2Step251EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step251EntryFRow,s2Step251EntryGRow,s2Step251EntryFvRow,s2Step251EntryGvRow] 3 s2Step251EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step251EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251EntryGv_Outgoing : rowsOwned s2Step251EntryGvAfter [s2Step251EntryGvOut] :=
  hmrRows_owned_drop s2Step251EntryGvAfter [s2Step251EntryFOut,s2Step251EntryGOut,s2Step251EntryFvOut,s2Step251EntryGvOut] 3 s2Step251EntryBank_outgoingOwned

private theorem s2Step251EntryGv_distinct : (s2Step251EntryGvRow.sign::s2Step251EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251EntryGv_owned : (s2Step251EntryGvRow.sign::s2Step251EntryGvRow.payload).toFinset⊆s2Step251EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step251EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251EntryGv_reserved : s2Step251EntryGvBefore.reserve s2Step251EntryGvFresh.toFinset=some s2Step251EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step251EntryGvFresh,arenaWires]
  · norm_num [s2Step251EntryGvBefore,s2Step251EntryFBefore,s2Step251EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step251EntryGvAfter,s2Step251EntryGvBefore,s2Step251EntryFBefore,s2Step251EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step251EntryGv_checked : planRowResizeLog s2Step251EntryGvBefore s2Step251EntryGvRow 141 s2Step251EntryGvFresh=
    some (s2Step251EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803],771⟩,growRow 771 s2Step251EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step251EntryGvBefore s2Step251EntryGvAfter s2Step251EntryGvRow 141 s2Step251EntryGvFresh
    s2Step251EntryGv_distinct s2Step251EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step251EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step251EntryGvRow.payload++s2Step251EntryGvFresh) s2Step251EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step251EntryBank_rows : planWindowRowsLog s2Step251EntryFBefore [(s2Step251EntryFRow,145),(s2Step251EntryGRow,145),(s2Step251EntryFvRow,141),(s2Step251EntryGvRow,141)] [s2Step251EntryFFresh,s2Step251EntryGFresh,s2Step251EntryFvFresh,s2Step251EntryGvFresh]=
    some (s2Step251EntryGvAfter,[s2Step251EntryFOut,s2Step251EntryGOut,s2Step251EntryFvOut,s2Step251EntryGvOut],(growRow 768 s2Step251EntryFFresh ++ (growRow 769 s2Step251EntryGFresh ++ (growRow 770 s2Step251EntryFvFresh ++ (growRow 771 s2Step251EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step251EntryGvAfter [] []=some (s2Step251EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step251EntryGvBefore s2Step251EntryGvAfter s2Step251EntryGvAfter
    s2Step251EntryGvRow s2Step251EntryGvOut 141 s2Step251EntryGvFresh [] [] []
    (growRow 771 s2Step251EntryGvFresh) ([]) s2Step251EntryGv_Incoming s2Step251EntryGv_checked h4 s2Step251EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step251EntryFvBefore s2Step251EntryFvAfter s2Step251EntryGvAfter
    s2Step251EntryFvRow s2Step251EntryFvOut 141 s2Step251EntryFvFresh [(s2Step251EntryGvRow,141)] [s2Step251EntryGvFresh] [s2Step251EntryGvOut]
    (growRow 770 s2Step251EntryFvFresh) ((growRow 771 s2Step251EntryGvFresh ++ [])) s2Step251EntryFv_Incoming s2Step251EntryFv_checked h3 s2Step251EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step251EntryGBefore s2Step251EntryGAfter s2Step251EntryGvAfter
    s2Step251EntryGRow s2Step251EntryGOut 145 s2Step251EntryGFresh [(s2Step251EntryFvRow,141),(s2Step251EntryGvRow,141)] [s2Step251EntryFvFresh,s2Step251EntryGvFresh] [s2Step251EntryFvOut,s2Step251EntryGvOut]
    (growRow 769 s2Step251EntryGFresh) ((growRow 770 s2Step251EntryFvFresh ++ (growRow 771 s2Step251EntryGvFresh ++ []))) s2Step251EntryG_Incoming s2Step251EntryG_checked h2 s2Step251EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step251EntryFBefore s2Step251EntryFAfter s2Step251EntryGvAfter
    s2Step251EntryFRow s2Step251EntryFOut 145 s2Step251EntryFFresh [(s2Step251EntryGRow,145),(s2Step251EntryFvRow,141),(s2Step251EntryGvRow,141)] [s2Step251EntryGFresh,s2Step251EntryFvFresh,s2Step251EntryGvFresh] [s2Step251EntryGOut,s2Step251EntryFvOut,s2Step251EntryGvOut]
    (growRow 768 s2Step251EntryFFresh) ((growRow 769 s2Step251EntryGFresh ++ (growRow 770 s2Step251EntryFvFresh ++ (growRow 771 s2Step251EntryGvFresh ++ [])))) s2Step251EntryF_Incoming s2Step251EntryF_checked h1 s2Step251EntryF_Outgoing
  exact h0

private theorem s2Step251EntryBank_checked : compileHmrBankResizeLog .entry s2Step251EntryFBefore ⟨s2Step251EntryFRow,s2Step251EntryGRow,s2Step251EntryFvRow,s2Step251EntryGvRow⟩ ⟨145,145,141,141⟩ [s2Step251EntryFFresh,s2Step251EntryGFresh,s2Step251EntryFvFresh,s2Step251EntryGvFresh]=
    some (s2Step251EntryGvAfter,⟨s2Step251EntryFOut,s2Step251EntryGOut,s2Step251EntryFvOut,s2Step251EntryGvOut⟩,(growRow 768 s2Step251EntryFFresh ++ (growRow 769 s2Step251EntryGFresh ++ (growRow 770 s2Step251EntryFvFresh ++ (growRow 771 s2Step251EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step251EntryBank_rows]
  rfl

private def s2Step251ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<656) ∨ (657≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251ExitFBefore : Arena := s2Step251ExitGAfter

private def s2Step251ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 800],768⟩

private def s2Step251ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 792],770⟩

private def s2Step251ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 835],769⟩

private def s2Step251ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 842],771⟩

private theorem s2Step251ExitBank_incomingDistinct : ([s2Step251ExitGRow,s2Step251ExitFRow,s2Step251ExitFvRow,s2Step251ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251ExitF_Incoming : rowsOwned s2Step251ExitFBefore [s2Step251ExitFRow,s2Step251ExitFvRow,s2Step251ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step251ExitGRow,s2Step251ExitFRow,s2Step251ExitFvRow,s2Step251ExitGvRow] 1 s2Step251ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step251ExitFBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251ExitBank_outgoingOwned : rowsOwned s2Step251ExitGvAfter [s2Step251ExitGOut,s2Step251ExitFOut,s2Step251ExitFvOut,s2Step251ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step251ExitGvAfter (fun q => (0≤q ∧ q<656) ∨ (657≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251ExitF_Outgoing : rowsOwned s2Step251ExitGvAfter [s2Step251ExitFOut,s2Step251ExitFvOut,s2Step251ExitGvOut] :=
  hmrRows_owned_drop s2Step251ExitGvAfter [s2Step251ExitGOut,s2Step251ExitFOut,s2Step251ExitFvOut,s2Step251ExitGvOut] 1 s2Step251ExitBank_outgoingOwned

private theorem s2Step251ExitF_distinct : (s2Step251ExitFRow.sign::s2Step251ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251ExitF_owned : (s2Step251ExitFRow.sign::s2Step251ExitFRow.payload).toFinset⊆s2Step251ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step251ExitFBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251ExitF_retired : s2Step251ExitFBefore.retireSet s2Step251ExitFExtra.toFinset=s2Step251ExitFAfter := by
  unfold Arena.retireSet s2Step251ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step251ExitFBefore,s2Step251ExitGAfter,s2Step251ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step251ExitF_checked : planRowResizeLog s2Step251ExitFBefore s2Step251ExitFRow 144 []=
    some (s2Step251ExitFAfter,s2Step251ExitFOut,shrinkRow 768 s2Step251ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step251ExitFBefore s2Step251ExitFRow 144 s2Step251ExitF_distinct s2Step251ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step251ExitFRow.payload.take 144) s2Step251ExitFRow.sign=s2Step251ExitFOut := by decide +kernel
  have hi : s2Step251ExitFRow.payload.drop 144=s2Step251ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step251ExitF_retired] at result
  exact result

private def s2Step251ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<656) ∨ (657≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251ExitFvBefore : Arena := s2Step251ExitFAfter

private theorem s2Step251ExitFv_Incoming : rowsOwned s2Step251ExitFvBefore [s2Step251ExitFvRow,s2Step251ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step251ExitGRow,s2Step251ExitFRow,s2Step251ExitFvRow,s2Step251ExitGvRow] 2 s2Step251ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step251ExitFvBefore (fun q => (0≤q ∧ q<656) ∨ (657≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251ExitFv_Outgoing : rowsOwned s2Step251ExitGvAfter [s2Step251ExitFvOut,s2Step251ExitGvOut] :=
  hmrRows_owned_drop s2Step251ExitGvAfter [s2Step251ExitGOut,s2Step251ExitFOut,s2Step251ExitFvOut,s2Step251ExitGvOut] 2 s2Step251ExitBank_outgoingOwned

private theorem s2Step251ExitFv_distinct : (s2Step251ExitFvRow.sign::s2Step251ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251ExitFv_owned : (s2Step251ExitFvRow.sign::s2Step251ExitFvRow.payload).toFinset⊆s2Step251ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step251ExitFvBefore (fun q => (0≤q ∧ q<656) ∨ (657≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251ExitFv_retired : s2Step251ExitFvBefore.retireSet s2Step251ExitFvExtra.toFinset=s2Step251ExitFvAfter := by
  unfold Arena.retireSet s2Step251ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step251ExitFvBefore,s2Step251ExitFAfter,s2Step251ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step251ExitFv_checked : planRowResizeLog s2Step251ExitFvBefore s2Step251ExitFvRow 141 []=
    some (s2Step251ExitFvAfter,s2Step251ExitFvOut,shrinkRow 770 s2Step251ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step251ExitFvBefore s2Step251ExitFvRow 141 s2Step251ExitFv_distinct s2Step251ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step251ExitFvRow.payload.take 141) s2Step251ExitFvRow.sign=s2Step251ExitFvOut := by decide +kernel
  have hi : s2Step251ExitFvRow.payload.drop 141=s2Step251ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step251ExitFv_retired] at result
  exact result

private def s2Step251ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step251ExitG_Incoming : rowsOwned s2Step251ExitGBefore [s2Step251ExitGRow,s2Step251ExitFRow,s2Step251ExitFvRow,s2Step251ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step251ExitGRow,s2Step251ExitFRow,s2Step251ExitFvRow,s2Step251ExitGvRow] 0 s2Step251ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step251ExitGBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251ExitG_Outgoing : rowsOwned s2Step251ExitGvAfter [s2Step251ExitGOut,s2Step251ExitFOut,s2Step251ExitFvOut,s2Step251ExitGvOut] :=
  hmrRows_owned_drop s2Step251ExitGvAfter [s2Step251ExitGOut,s2Step251ExitFOut,s2Step251ExitFvOut,s2Step251ExitGvOut] 0 s2Step251ExitBank_outgoingOwned

private theorem s2Step251ExitG_distinct : (s2Step251ExitGRow.sign::s2Step251ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251ExitG_owned : (s2Step251ExitGRow.sign::s2Step251ExitGRow.payload).toFinset⊆s2Step251ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step251ExitGBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251ExitG_retired : s2Step251ExitGBefore.retireSet s2Step251ExitGExtra.toFinset=s2Step251ExitGAfter := by
  unfold Arena.retireSet s2Step251ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step251ExitGBefore,s2Step251ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step251ExitG_checked : planRowResizeLog s2Step251ExitGBefore s2Step251ExitGRow 145 []=
    some (s2Step251ExitGAfter,s2Step251ExitGOut,shrinkRow 769 s2Step251ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step251ExitGBefore s2Step251ExitGRow 145 s2Step251ExitG_distinct s2Step251ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step251ExitGRow.payload.take 145) s2Step251ExitGRow.sign=s2Step251ExitGOut := by decide +kernel
  have hi : s2Step251ExitGRow.payload.drop 145=s2Step251ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step251ExitG_retired] at result
  exact result

private def s2Step251ExitGvBefore : Arena := s2Step251ExitFvAfter

private theorem s2Step251ExitGv_Incoming : rowsOwned s2Step251ExitGvBefore [s2Step251ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step251ExitGRow,s2Step251ExitFRow,s2Step251ExitFvRow,s2Step251ExitGvRow] 3 s2Step251ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step251ExitGvBefore (fun q => (0≤q ∧ q<656) ∨ (657≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251ExitGv_Outgoing : rowsOwned s2Step251ExitGvAfter [s2Step251ExitGvOut] :=
  hmrRows_owned_drop s2Step251ExitGvAfter [s2Step251ExitGOut,s2Step251ExitFOut,s2Step251ExitFvOut,s2Step251ExitGvOut] 3 s2Step251ExitBank_outgoingOwned

private theorem s2Step251ExitGv_distinct : (s2Step251ExitGvRow.sign::s2Step251ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251ExitGv_owned : (s2Step251ExitGvRow.sign::s2Step251ExitGvRow.payload).toFinset⊆s2Step251ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step251ExitGvBefore (fun q => (0≤q ∧ q<656) ∨ (657≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251ExitGv_retired : s2Step251ExitGvBefore.retireSet s2Step251ExitGvExtra.toFinset=s2Step251ExitGvAfter := by
  unfold Arena.retireSet s2Step251ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step251ExitGvBefore,s2Step251ExitFvAfter,s2Step251ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step251ExitGv_checked : planRowResizeLog s2Step251ExitGvBefore s2Step251ExitGvRow 141 []=
    some (s2Step251ExitGvAfter,s2Step251ExitGvOut,shrinkRow 771 s2Step251ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step251ExitGvBefore s2Step251ExitGvRow 141 s2Step251ExitGv_distinct s2Step251ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step251ExitGvRow.payload.take 141) s2Step251ExitGvRow.sign=s2Step251ExitGvOut := by decide +kernel
  have hi : s2Step251ExitGvRow.payload.drop 141=s2Step251ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step251ExitGv_retired] at result
  exact result

private theorem s2Step251ExitBank_rows : planWindowRowsLog s2Step251ExitGBefore [(s2Step251ExitGRow,145),(s2Step251ExitFRow,144),(s2Step251ExitFvRow,141),(s2Step251ExitGvRow,141)] [[],[],[],[]]=
    some (s2Step251ExitGvAfter,[s2Step251ExitGOut,s2Step251ExitFOut,s2Step251ExitFvOut,s2Step251ExitGvOut],(shrinkRow 769 s2Step251ExitGExtra ++ (shrinkRow 768 s2Step251ExitFExtra ++ (shrinkRow 770 s2Step251ExitFvExtra ++ (shrinkRow 771 s2Step251ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step251ExitGvAfter [] []=some (s2Step251ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step251ExitGvBefore s2Step251ExitGvAfter s2Step251ExitGvAfter
    s2Step251ExitGvRow s2Step251ExitGvOut 141 [] [] [] []
    (shrinkRow 771 s2Step251ExitGvExtra) ([]) s2Step251ExitGv_Incoming s2Step251ExitGv_checked h4 s2Step251ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step251ExitFvBefore s2Step251ExitFvAfter s2Step251ExitGvAfter
    s2Step251ExitFvRow s2Step251ExitFvOut 141 [] [(s2Step251ExitGvRow,141)] [[]] [s2Step251ExitGvOut]
    (shrinkRow 770 s2Step251ExitFvExtra) ((shrinkRow 771 s2Step251ExitGvExtra ++ [])) s2Step251ExitFv_Incoming s2Step251ExitFv_checked h3 s2Step251ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step251ExitFBefore s2Step251ExitFAfter s2Step251ExitGvAfter
    s2Step251ExitFRow s2Step251ExitFOut 144 [] [(s2Step251ExitFvRow,141),(s2Step251ExitGvRow,141)] [[],[]] [s2Step251ExitFvOut,s2Step251ExitGvOut]
    (shrinkRow 768 s2Step251ExitFExtra) ((shrinkRow 770 s2Step251ExitFvExtra ++ (shrinkRow 771 s2Step251ExitGvExtra ++ []))) s2Step251ExitF_Incoming s2Step251ExitF_checked h2 s2Step251ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step251ExitGBefore s2Step251ExitGAfter s2Step251ExitGvAfter
    s2Step251ExitGRow s2Step251ExitGOut 145 [] [(s2Step251ExitFRow,144),(s2Step251ExitFvRow,141),(s2Step251ExitGvRow,141)] [[],[],[]] [s2Step251ExitFOut,s2Step251ExitFvOut,s2Step251ExitGvOut]
    (shrinkRow 769 s2Step251ExitGExtra) ((shrinkRow 768 s2Step251ExitFExtra ++ (shrinkRow 770 s2Step251ExitFvExtra ++ (shrinkRow 771 s2Step251ExitGvExtra ++ [])))) s2Step251ExitG_Incoming s2Step251ExitG_checked h1 s2Step251ExitG_Outgoing
  exact h0

private theorem s2Step251ExitBank_checked : compileHmrBankResizeLog .exit s2Step251ExitGBefore ⟨s2Step251ExitFRow,s2Step251ExitGRow,s2Step251ExitFvRow,s2Step251ExitGvRow⟩ ⟨144,145,141,141⟩ [[],[],[],[]]=
    some (s2Step251ExitGvAfter,⟨s2Step251ExitFOut,s2Step251ExitGOut,s2Step251ExitFvOut,s2Step251ExitGvOut⟩,(shrinkRow 769 s2Step251ExitGExtra ++ (shrinkRow 768 s2Step251ExitFExtra ++ (shrinkRow 770 s2Step251ExitFvExtra ++ (shrinkRow 771 s2Step251ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step251ExitBank_rows]
  rfl

private theorem s2Step251Add0_apart : Disjoint s2Step251Add0Arena.live s2Step251Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step251Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251Add0_card : s2Step251Add0Arena.live.card=897 := by
  decide +kernel

private theorem s2Step251Add0_borrowed : s2Step251Add0Arena.checkBorrow (hmrHybridCount s2Step251Add0Arena s2Step251Add0B.length) s2Step251Add0Work=some s2Step251Add0During := by
  have len : s2Step251Add0Work.length=hmrHybridCount s2Step251Add0Arena s2Step251Add0B.length := by
    rw [hmrHybridCount,s2Step251Add0_card]
    decide +kernel
  have nd : s2Step251Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step251Add0Arena s2Step251Add0During s2Step251Add0Work.toFinset s2Step251Add0_bounded s2Step251Add0_apart rfl

private theorem s2Step251Add0_distinct : (814::782::809::(s2Step251Add0A++s2Step251Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251Add0_owned : (814::782::809::(s2Step251Add0A++s2Step251Add0B)).toFinset⊆s2Step251Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step251Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251Add0_checked : compileHmrHybridCinLog s2Step251Add0Arena 782 814 809 s2Step251Add0A s2Step251Add0B s2Step251Add0Work=some s2Step251Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step251Add0Arena s2Step251Add0During 782 814 809 s2Step251Add0A s2Step251Add0B s2Step251Add0Work
    (by decide +kernel) (by decide +kernel) s2Step251Add0_distinct
    (fun q hq => s2Step251Add0_owned (List.mem_toFinset.mpr hq)) s2Step251Add0_borrowed

private theorem s2Step251Add1_apart : Disjoint s2Step251Add1Arena.live s2Step251Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step251Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251Add1_card : s2Step251Add1Arena.live.card=897 := by
  decide +kernel

private theorem s2Step251Add1_borrowed : s2Step251Add1Arena.checkBorrow (hmrHybridCount s2Step251Add1Arena s2Step251Add1B.length) s2Step251Add1Work=some s2Step251Add1During := by
  have len : s2Step251Add1Work.length=hmrHybridCount s2Step251Add1Arena s2Step251Add1B.length := by
    rw [hmrHybridCount,s2Step251Add1_card]
    decide +kernel
  have nd : s2Step251Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step251Add1Arena s2Step251Add1During s2Step251Add1Work.toFinset s2Step251Add1_bounded s2Step251Add1_apart rfl

private theorem s2Step251Add1_distinct : (814::782::809::(s2Step251Add1A++s2Step251Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251Add1_owned : (814::782::809::(s2Step251Add1A++s2Step251Add1B)).toFinset⊆s2Step251Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step251Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251Add1_checked : compileHmrHybridCinLog s2Step251Add1Arena 782 814 809 s2Step251Add1A s2Step251Add1B s2Step251Add1Work=some s2Step251Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step251Add1Arena s2Step251Add1During 782 814 809 s2Step251Add1A s2Step251Add1B s2Step251Add1Work
    (by decide +kernel) (by decide +kernel) s2Step251Add1_distinct
    (fun q hq => s2Step251Add1_owned (List.mem_toFinset.mpr hq)) s2Step251Add1_borrowed

private theorem s2Step251F4_apart : Disjoint (s2Step251Add0A++s2Step251Add0B).toFinset (s2Step251Add1A++s2Step251Add1B).toFinset := by
  have nd : ((s2Step251Add0A++s2Step251Add0B)++(s2Step251Add1A++s2Step251Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step251F4_carry : s2Step251F4FlagArena.checkBorrow 1 [809]=some s2Step251Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step251F4FlagArena,s2Step251HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step251F4FlagArena,s2Step251HeadFvAfter,s2Step251Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step251F4_distinct : (784::782::814::809::((s2Step251Add0A++s2Step251Add1A)++(s2Step251Add0B++s2Step251Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251F4_flag : s2Step251HeadFvAfter.checkBorrow 1 [814]=some s2Step251F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step251HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step251F4_owned : (784::782::((s2Step251Add0A++s2Step251Add1A)++(s2Step251Add0B++s2Step251Add1B))).toFinset⊆s2Step251HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step251HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251F4_checked : compileHmrHybridF4Log s2Step251HeadFvAfter 784 782 s2Step251Add0A s2Step251Add0B s2Step251Add1A s2Step251Add1B [814] [809] s2Step251Add0Work s2Step251Add1Work=some s2Step251F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step251HeadFvAfter s2Step251F4FlagArena s2Step251Add0Arena s2Step251Add0During s2Step251Add1During 784 782
    s2Step251Add0A s2Step251Add0B s2Step251Add1A s2Step251Add1B [814] [809] s2Step251Add0Work s2Step251Add1Work
    (fun q hq => s2Step251F4_owned (List.mem_toFinset.mpr hq)) s2Step251F4_flag s2Step251F4_carry
    s2Step251F4_distinct s2Step251F4_apart s2Step251Add0_checked s2Step251Add1_checked

private theorem s2Step251Front_branch : s2Step251FrontSigmaArena.checkBorrow 1 [782]=some s2Step251HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step251FrontSigmaArena,s2Step251EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step251FrontSigmaArena,s2Step251EntryGvAfter,s2Step251HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step251Front_entry : HmrFrontEntryValid s2Step251EntryFBefore s2Step251FrontBank 145 141 ⟨144,145,141,141⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step251FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step251EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step251EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<784) ∨ (785≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step251FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step251Front_sigma : s2Step251EntryGvAfter.checkBorrow 1 [784]=some s2Step251FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step251EntryGvAfter,arenaWires]
  · rfl

private def s2Step251HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251HeadFBefore : Arena := s2Step251HeadGAfter

private def s2Step251HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656],768⟩

private def s2Step251HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810],770⟩

private def s2Step251HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830],769⟩

private def s2Step251HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803],771⟩

private theorem s2Step251HeadBank_incomingDistinct : ([s2Step251HeadGRow,s2Step251HeadFRow,s2Step251HeadGvRow,s2Step251HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251HeadF_Incoming : rowsOwned s2Step251HeadFBefore [s2Step251HeadFRow,s2Step251HeadGvRow,s2Step251HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step251HeadGRow,s2Step251HeadFRow,s2Step251HeadGvRow,s2Step251HeadFvRow] 1 s2Step251HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step251HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251HeadBank_outgoingOwned : rowsOwned s2Step251HeadFvAfter [s2Step251HeadGOut,s2Step251HeadFOut,s2Step251HeadGvOut,s2Step251HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step251HeadFvAfter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251HeadF_Outgoing : rowsOwned s2Step251HeadFvAfter [s2Step251HeadFOut,s2Step251HeadGvOut,s2Step251HeadFvOut] :=
  hmrRows_owned_drop s2Step251HeadFvAfter [s2Step251HeadGOut,s2Step251HeadFOut,s2Step251HeadGvOut,s2Step251HeadFvOut] 1 s2Step251HeadBank_outgoingOwned

private theorem s2Step251HeadF_distinct : (s2Step251HeadFRow.sign::s2Step251HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251HeadF_owned : (s2Step251HeadFRow.sign::s2Step251HeadFRow.payload).toFinset⊆s2Step251HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step251HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251HeadF_reserved : s2Step251HeadFBefore.reserve s2Step251HeadFFresh.toFinset=some s2Step251HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step251HeadFFresh,arenaWires]
  · norm_num [s2Step251HeadFBefore,s2Step251HeadGAfter,s2Step251HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step251HeadFAfter,s2Step251HeadFBefore,s2Step251HeadGAfter,s2Step251HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step251HeadF_checked : planRowResizeLog s2Step251HeadFBefore s2Step251HeadFRow 146 s2Step251HeadFFresh=
    some (s2Step251HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 800],768⟩,growRow 768 s2Step251HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step251HeadFBefore s2Step251HeadFAfter s2Step251HeadFRow 146 s2Step251HeadFFresh
    s2Step251HeadF_distinct s2Step251HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step251HeadF_reserved
  have rowEq : WindowRow.mk (s2Step251HeadFRow.payload++s2Step251HeadFFresh) s2Step251HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 800],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step251HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step251HeadFvBefore : Arena := s2Step251HeadGvAfter

private theorem s2Step251HeadFv_Incoming : rowsOwned s2Step251HeadFvBefore [s2Step251HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step251HeadGRow,s2Step251HeadFRow,s2Step251HeadGvRow,s2Step251HeadFvRow] 3 s2Step251HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step251HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251HeadFv_Outgoing : rowsOwned s2Step251HeadFvAfter [s2Step251HeadFvOut] :=
  hmrRows_owned_drop s2Step251HeadFvAfter [s2Step251HeadGOut,s2Step251HeadFOut,s2Step251HeadGvOut,s2Step251HeadFvOut] 3 s2Step251HeadBank_outgoingOwned

private theorem s2Step251HeadFv_distinct : (s2Step251HeadFvRow.sign::s2Step251HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251HeadFv_owned : (s2Step251HeadFvRow.sign::s2Step251HeadFvRow.payload).toFinset⊆s2Step251HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step251HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251HeadFv_reserved : s2Step251HeadFvBefore.reserve s2Step251HeadFvFresh.toFinset=some s2Step251HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step251HeadFvFresh,arenaWires]
  · norm_num [s2Step251HeadFvBefore,s2Step251HeadGvAfter,s2Step251HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step251HeadFvAfter,s2Step251HeadFvBefore,s2Step251HeadGvAfter,s2Step251HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step251HeadFv_checked : planRowResizeLog s2Step251HeadFvBefore s2Step251HeadFvRow 142 s2Step251HeadFvFresh=
    some (s2Step251HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 792],770⟩,growRow 770 s2Step251HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step251HeadFvBefore s2Step251HeadFvAfter s2Step251HeadFvRow 142 s2Step251HeadFvFresh
    s2Step251HeadFv_distinct s2Step251HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step251HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step251HeadFvRow.payload++s2Step251HeadFvFresh) s2Step251HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 792],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step251HeadG_Incoming : rowsOwned s2Step251HeadGBefore [s2Step251HeadGRow,s2Step251HeadFRow,s2Step251HeadGvRow,s2Step251HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step251HeadGRow,s2Step251HeadFRow,s2Step251HeadGvRow,s2Step251HeadFvRow] 0 s2Step251HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step251HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251HeadG_Outgoing : rowsOwned s2Step251HeadFvAfter [s2Step251HeadGOut,s2Step251HeadFOut,s2Step251HeadGvOut,s2Step251HeadFvOut] :=
  hmrRows_owned_drop s2Step251HeadFvAfter [s2Step251HeadGOut,s2Step251HeadFOut,s2Step251HeadGvOut,s2Step251HeadFvOut] 0 s2Step251HeadBank_outgoingOwned

private theorem s2Step251HeadG_distinct : (s2Step251HeadGRow.sign::s2Step251HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251HeadG_owned : (s2Step251HeadGRow.sign::s2Step251HeadGRow.payload).toFinset⊆s2Step251HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step251HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<835) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251HeadG_reserved : s2Step251HeadGBefore.reserve s2Step251HeadGFresh.toFinset=some s2Step251HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step251HeadGFresh,arenaWires]
  · norm_num [s2Step251HeadGBefore,s2Step251HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step251HeadGAfter,s2Step251HeadGBefore,s2Step251HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step251HeadG_checked : planRowResizeLog s2Step251HeadGBefore s2Step251HeadGRow 146 s2Step251HeadGFresh=
    some (s2Step251HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 835],769⟩,growRow 769 s2Step251HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step251HeadGBefore s2Step251HeadGAfter s2Step251HeadGRow 146 s2Step251HeadGFresh
    s2Step251HeadG_distinct s2Step251HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step251HeadG_reserved
  have rowEq : WindowRow.mk (s2Step251HeadGRow.payload++s2Step251HeadGFresh) s2Step251HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 830, 835],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step251HeadGvBefore : Arena := s2Step251HeadFAfter

private theorem s2Step251HeadGv_Incoming : rowsOwned s2Step251HeadGvBefore [s2Step251HeadGvRow,s2Step251HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step251HeadGRow,s2Step251HeadFRow,s2Step251HeadGvRow,s2Step251HeadFvRow] 2 s2Step251HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step251HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step251HeadGv_Outgoing : rowsOwned s2Step251HeadFvAfter [s2Step251HeadGvOut,s2Step251HeadFvOut] :=
  hmrRows_owned_drop s2Step251HeadFvAfter [s2Step251HeadGOut,s2Step251HeadFOut,s2Step251HeadGvOut,s2Step251HeadFvOut] 2 s2Step251HeadBank_outgoingOwned

private theorem s2Step251HeadGv_distinct : (s2Step251HeadGvRow.sign::s2Step251HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step251HeadGv_owned : (s2Step251HeadGvRow.sign::s2Step251HeadGvRow.payload).toFinset⊆s2Step251HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step251HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step251HeadGv_reserved : s2Step251HeadGvBefore.reserve s2Step251HeadGvFresh.toFinset=some s2Step251HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step251HeadGvFresh,arenaWires]
  · norm_num [s2Step251HeadGvBefore,s2Step251HeadFAfter,s2Step251HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step251HeadGvAfter,s2Step251HeadGvBefore,s2Step251HeadFAfter,s2Step251HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step251HeadGv_checked : planRowResizeLog s2Step251HeadGvBefore s2Step251HeadGvRow 142 s2Step251HeadGvFresh=
    some (s2Step251HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 842],771⟩,growRow 771 s2Step251HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step251HeadGvBefore s2Step251HeadGvAfter s2Step251HeadGvRow 142 s2Step251HeadGvFresh
    s2Step251HeadGv_distinct s2Step251HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step251HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step251HeadGvRow.payload++s2Step251HeadGvFresh) s2Step251HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 842],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step251HeadBank_rows : planWindowRowsLog s2Step251HeadGBefore [(s2Step251HeadGRow,146),(s2Step251HeadFRow,146),(s2Step251HeadGvRow,142),(s2Step251HeadFvRow,142)] [s2Step251HeadGFresh,s2Step251HeadFFresh,s2Step251HeadGvFresh,s2Step251HeadFvFresh]=
    some (s2Step251HeadFvAfter,[s2Step251HeadGOut,s2Step251HeadFOut,s2Step251HeadGvOut,s2Step251HeadFvOut],(growRow 769 s2Step251HeadGFresh ++ (growRow 768 s2Step251HeadFFresh ++ (growRow 771 s2Step251HeadGvFresh ++ (growRow 770 s2Step251HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step251HeadFvAfter [] []=some (s2Step251HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step251HeadFvBefore s2Step251HeadFvAfter s2Step251HeadFvAfter
    s2Step251HeadFvRow s2Step251HeadFvOut 142 s2Step251HeadFvFresh [] [] []
    (growRow 770 s2Step251HeadFvFresh) ([]) s2Step251HeadFv_Incoming s2Step251HeadFv_checked h4 s2Step251HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step251HeadGvBefore s2Step251HeadGvAfter s2Step251HeadFvAfter
    s2Step251HeadGvRow s2Step251HeadGvOut 142 s2Step251HeadGvFresh [(s2Step251HeadFvRow,142)] [s2Step251HeadFvFresh] [s2Step251HeadFvOut]
    (growRow 771 s2Step251HeadGvFresh) ((growRow 770 s2Step251HeadFvFresh ++ [])) s2Step251HeadGv_Incoming s2Step251HeadGv_checked h3 s2Step251HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step251HeadFBefore s2Step251HeadFAfter s2Step251HeadFvAfter
    s2Step251HeadFRow s2Step251HeadFOut 146 s2Step251HeadFFresh [(s2Step251HeadGvRow,142),(s2Step251HeadFvRow,142)] [s2Step251HeadGvFresh,s2Step251HeadFvFresh] [s2Step251HeadGvOut,s2Step251HeadFvOut]
    (growRow 768 s2Step251HeadFFresh) ((growRow 771 s2Step251HeadGvFresh ++ (growRow 770 s2Step251HeadFvFresh ++ []))) s2Step251HeadF_Incoming s2Step251HeadF_checked h2 s2Step251HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step251HeadGBefore s2Step251HeadGAfter s2Step251HeadFvAfter
    s2Step251HeadGRow s2Step251HeadGOut 146 s2Step251HeadGFresh [(s2Step251HeadFRow,146),(s2Step251HeadGvRow,142),(s2Step251HeadFvRow,142)] [s2Step251HeadFFresh,s2Step251HeadGvFresh,s2Step251HeadFvFresh] [s2Step251HeadFOut,s2Step251HeadGvOut,s2Step251HeadFvOut]
    (growRow 769 s2Step251HeadGFresh) ((growRow 768 s2Step251HeadFFresh ++ (growRow 771 s2Step251HeadGvFresh ++ (growRow 770 s2Step251HeadFvFresh ++ [])))) s2Step251HeadG_Incoming s2Step251HeadG_checked h1 s2Step251HeadG_Outgoing
  exact h0

private theorem s2Step251HeadBank_checked : compileHmrBankResizeLog .headroom s2Step251HeadGBefore ⟨s2Step251HeadFRow,s2Step251HeadGRow,s2Step251HeadFvRow,s2Step251HeadGvRow⟩ ⟨146,146,142,142⟩ [s2Step251HeadGFresh,s2Step251HeadFFresh,s2Step251HeadGvFresh,s2Step251HeadFvFresh]=
    some (s2Step251HeadFvAfter,⟨s2Step251HeadFOut,s2Step251HeadGOut,s2Step251HeadFvOut,s2Step251HeadGvOut⟩,(growRow 769 s2Step251HeadGFresh ++ (growRow 768 s2Step251HeadFFresh ++ (growRow 771 s2Step251HeadGvFresh ++ (growRow 770 s2Step251HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step251HeadBank_rows]
  rfl

private theorem s2Step251Front_checked : compileHmrSourceFrontLog s2Step251EntryFBefore s2Step251FrontBank 145 141 ⟨144,145,141,141⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step251FrontLog=some s2Step251FrontPlan := by
  have pairEq : s2Step251FrontPair=⟨s2Step251HeadFRow,s2Step251HeadGRow,s2Step251HeadFvRow,s2Step251HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step251FrontHead=⟨s2Step251ExitFRow,s2Step251ExitGRow,s2Step251ExitFvRow,s2Step251ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step251Add0A=s2Step251FrontHead.f.wires := by decide +kernel
  have gEq : s2Step251Add0B=s2Step251FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step251Add1A=s2Step251FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step251Add1B=s2Step251FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step251EntryFBefore s2Step251FrontBank 145 141 ⟨144,145,141,141⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step251FrontLog s2Step251FrontPlan
  · exact s2Step251Front_entry
  · exact s2Step251EntryBank_checked
  · exact s2Step251Front_sigma
  · rfl
  · exact s2Step251Front_branch
  · rfl
  · simpa only [s2Step251FrontPlan,pairEq] using s2Step251HeadBank_checked
  · simpa only [s2Step251FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step251F4_checked
  · exact s2Step251Counter_checked
  · rfl
  · simpa only [s2Step251FrontPlan,headEq] using s2Step251ExitBank_checked

private theorem s2Step251Complete_explicit_checked : compileHmrEarlyStepLog s2Step251EntryFBefore s2Step251FrontBank 145 141 ⟨144,145,141,141⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step251CompleteLog=some s2Step251CompletePlan := by
  let Q := s2Step251EarlyControlPlan
  have hq := s2Step251EarlyControl_plan_checked
  have fv1 : s2Step251CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step251CompleteOut.fv.payload[2]?.getD s2Step251CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step251CompleteOut.fv.payload[3]?.getD s2Step251CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step251CompleteOut.fv.payload[4]?.getD s2Step251CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step251EntryFBefore s2Step251EarlyControlArena s2Step251FrontBank 145 141 ⟨144,145,141,141⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 51 s2Step251CompleteLog s2Step251FrontPlan Q
    s2Step251Front_checked s2Step251Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step251Complete_owned s2Step251Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step251EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 784 s2Step251CompleteOut.fv.second (s2Step251CompleteOut.fv.payload[2]?.getD s2Step251CompleteOut.fv.sign) (s2Step251CompleteOut.fv.payload[3]?.getD s2Step251CompleteOut.fv.sign) (s2Step251CompleteOut.fv.payload[4]?.getD s2Step251CompleteOut.fv.sign) 782 51 s2Step251EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep251Arena : Arena := s2Step251EntryFBefore
def s2PrivateStep251Bank : WindowBank := s2Step251FrontBank
def s2PrivateStep251Spec : HmrSourceWalkStepLog := ⟨145,141,⟨144,145,141,141⟩,51,.early s2Step251CompleteLog⟩
def s2PrivateStep251Plan : HmrSourceStepPlan := .early s2Step251CompletePlan
theorem s2PrivateStep251_source : s2PrivateStep251Spec=s2ObservedLogs240[11] := rfl
theorem s2PrivateStep251_checked : compileHmrSourceStepLog s2PrivateStep251Arena s2PrivateStep251Bank
    s2PrivateStep251Spec.fgWidth s2PrivateStep251Spec.vWidth s2PrivateStep251Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 251 s2PrivateStep251Spec.need none s2PrivateStep251Spec.log=some s2PrivateStep251Plan := by
  change compileHmrSourceStepLog s2Step251EntryFBefore s2Step251FrontBank 145 141 ⟨144,145,141,141⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 251 51 none (.early s2Step251CompleteLog)=some (.early s2Step251CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 251<498)]
  rw [s2Step251Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
