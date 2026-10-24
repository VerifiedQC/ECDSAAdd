import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep233
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

private def s2Step235CompleteMoves : List (Wire × Wire) := [(785,151)]

private def s2Step235EarlyControlLog : HmrEarlyControlLog := ⟨[785, 797, 800, 809, 810],[814],[882],[826, 842, 885, 891, 894, 896],[]⟩

private def s2Step235FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [809], [], [820]],[[810], [800], [797], [787]],[[], [], [], []]⟩,[819],[793],[814],[882],[826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step235CompleteLog : HmrEarlyStepLog := ⟨s2Step235FrontLog,s2Step235CompleteMoves,s2Step235EarlyControlLog⟩

private def s2Step235ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step235ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787],770⟩

private def s2Step235ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150],769⟩

private def s2Step235ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820],771⟩

private def s2Step235FrontOut : WindowBank := ⟨s2Step235ExitFOut,s2Step235ExitGOut,s2Step235ExitFvOut,s2Step235ExitGvOut⟩

private def s2Step235CompleteOut : WindowBank := s2Step235FrontOut.repacked s2Step235CompleteMoves

private def s2Step235EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step235EarlyControlPositiveArena,[814],s2Step235EarlyControlEqualityArena,[882],⟨⟨819,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step235EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,785⟩,⟨⟨774,false⟩,797⟩,⟨⟨775,false⟩,800⟩,⟨⟨776,false⟩,809⟩,⟨⟨777,false⟩,810⟩]⟩

private def s2Step235EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step235EarlyControlZeroArena,s2Step235EarlyControlZeroPlan,s2Step235EarlyControlClassPlan,s2Step235EarlyControlFlagArena,s2Step235EarlyControlFittedArena,s2Step235EarlyControlHistoryArena,s2Step235EarlyControlSigmaArena,s2Step235EarlyControlOutputArena,s2Step235EarlyControlLog⟩

private def s2Step235CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step235Counter_bounded : s2Step235CounterWork.toFinset⊆arenaWires := by norm_num [s2Step235CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step235HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235CounterDuring : Arena := ⟨s2Step235HeadFvAfter.live∪s2Step235CounterWork.toFinset,Finset.union_subset s2Step235HeadFvAfter.bounded s2Step235Counter_bounded⟩

private def s2Step235EntryFFresh : List Wire := []

private def s2Step235EntryFvFresh : List Wire := []

private def s2Step235EntryGFresh : List Wire := [809]

private def s2Step235EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235EntryGvFresh : List Wire := [820]

private def s2Step235ExitFExtra : List Wire := [800]

private def s2Step235ExitGExtra : List Wire := [151, 809, 810]

private def s2Step235ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<151) ∨ (152≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235ExitGvExtra : List Wire := [797]

private def s2Step235Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235Add0Work : List Wire := [826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step235Add0_bounded : s2Step235Add0Work.toFinset⊆arenaWires := by
  have h : s2Step235Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step235Add0During : Arena := ⟨s2Step235Add0Arena.live∪s2Step235Add0Work.toFinset,Finset.union_subset s2Step235Add0Arena.bounded s2Step235Add0_bounded⟩

private def s2Step235Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235Add1Work : List Wire := [826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step235Add1_bounded : s2Step235Add1Work.toFinset⊆arenaWires := by
  have h : s2Step235Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step235Add1During : Arena := ⟨s2Step235Add1Arena.live∪s2Step235Add1Work.toFinset,Finset.union_subset s2Step235Add1Arena.bounded s2Step235Add1_bounded⟩

private def s2Step235F4FlagArena : Arena := ⟨s2Step235HeadFvAfter.live∪{814},Finset.union_subset s2Step235HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step235F4Plan : HmrHybridF4Plan := ⟨s2Step235F4FlagArena,[814],s2Step235Add0Arena,[882],s2Step235Add0During,s2Step235Add0Work,s2Step235Add1During,s2Step235Add1Work⟩

private def s2Step235HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 800],768⟩

private def s2Step235HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787],770⟩

private def s2Step235HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 809, 810],769⟩

private def s2Step235HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 797],771⟩

private def s2Step235FrontHead : WindowBank := ⟨s2Step235HeadFOut,s2Step235HeadGOut,s2Step235HeadFvOut,s2Step235HeadGvOut⟩

private def s2Step235EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step235EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩

private def s2Step235EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 809],769⟩

private def s2Step235EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820],771⟩

private def s2Step235FrontPair : WindowBank := ⟨s2Step235EntryFOut,s2Step235EntryGOut,s2Step235EntryFvOut,s2Step235EntryGvOut⟩

private def s2Step235FrontSigmaArena : Arena := ⟨s2Step235EntryGvAfter.live∪{819},Finset.union_subset s2Step235EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step235HeadFFresh : List Wire := [800]

private def s2Step235HeadFvFresh : List Wire := [787]

private def s2Step235HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235HeadGFresh : List Wire := [810]

private def s2Step235HeadGvFresh : List Wire := [797]

private def s2Step235FrontPlan : HmrSourceFront := ⟨s2Step235EntryGvAfter,s2Step235FrontPair,(growRow 768 s2Step235EntryFFresh ++ (growRow 769 s2Step235EntryGFresh ++ (growRow 770 s2Step235EntryFvFresh ++ (growRow 771 s2Step235EntryGvFresh ++ [])))),s2Step235FrontSigmaArena,[819],s2Step235HeadGBefore,[793],
  s2Step235HeadFvAfter,s2Step235FrontHead,(growRow 769 s2Step235HeadGFresh ++ (growRow 768 s2Step235HeadFFresh ++ (growRow 771 s2Step235HeadGvFresh ++ (growRow 770 s2Step235HeadFvFresh ++ [])))),s2Step235F4Plan,s2Step235CounterDuring,s2Step235CounterWork,s2Step235ExitGvAfter,s2Step235FrontOut,(shrinkRow 769 s2Step235ExitGExtra ++ (shrinkRow 768 s2Step235ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step235ExitGvExtra ++ []))))⟩

private def s2Step235CompletePlan : HmrEarlyStepPlan := ⟨s2Step235FrontPlan,s2Step235EarlyControlArena,s2Step235EarlyControlPlan,s2Step235CompleteMoves⟩

private theorem s2Step235Complete_apart : List.Disjoint (s2Step235CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [819, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  have nd : ((s2Step235CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[819, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step235Complete_owned : (s2Step235CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step235EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step235EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private def s2Step235CompleteMoveArena : Arena := ⟨s2Step235ExitGvAfter.live∪{151},Finset.union_subset s2Step235ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step235Complete_repack : s2Step235ExitGvAfter.checkRepack s2Step235CompleteMoves=some s2Step235EarlyControlArena := by
  have owned : 785∈s2Step235ExitGvAfter.live := by norm_num [s2Step235ExitGvAfter,arenaWires]
  have reserve : s2Step235ExitGvAfter.reserve {151}=some s2Step235CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step235ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step235CompleteMoveArena.retireSet {785}=s2Step235EarlyControlArena := by
    unfold Arena.retireSet s2Step235EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step235CompleteMoveArena,s2Step235ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step235CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step235CompleteMoveArena.retireSet {785}).checkRepack []=some s2Step235EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step235EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s2Step235EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step235EarlyControlSigmaArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EarlyControl_branch : compileHmrBranchRetirement s2Step235EarlyControlSigmaArena 793=some s2Step235EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step235EarlyControl_branchOwned
  · ext q
    simp [s2Step235EarlyControlOutputArena,s2Step235EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step235EarlyControl_classEqualityBorrow : s2Step235EarlyControlPositiveArena.checkBorrow (([819, 814] : List Wire).length-1) s2Step235EarlyControlLog.classWork=some s2Step235EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step235EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step235EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step235EarlyControlEqualityArena,s2Step235EarlyControlPositiveArena,s2Step235EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step235EarlyControl_classEqualityOwned : ([819, 814] : List Wire).toFinset⊆s2Step235EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step235EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EarlyControl_classEquality : compileHmrEqualityLog s2Step235EarlyControlPositiveArena [819, 814] 0 s2Step235EarlyControlLog.classWork=some (s2Step235EarlyControlEqualityArena,s2Step235EarlyControlLog.classWork,s2Step235EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step235EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step235EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step235EarlyControl_classOwned : ([777, 810, 819] : List Wire).toFinset⊆s2Step235EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step235EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EarlyControl_positiveBorrow : s2Step235EarlyControlZeroArena.checkBorrow (1) s2Step235EarlyControlLog.positiveWork=some s2Step235EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step235EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step235EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step235EarlyControlPositiveArena,s2Step235EarlyControlZeroArena,s2Step235EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step235EarlyControl_class : compileHmrSourceClassLog s2Step235EarlyControlZeroArena false 777 s2Step235EarlyControlZeroPlan.top 0 819 s2Step235EarlyControlLog.positiveWork s2Step235EarlyControlLog.classWork=some s2Step235EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step235EarlyControlClassPlan s2Step235EarlyControlZeroArena false 777 s2Step235EarlyControlZeroPlan.top 0 819
  constructor
  · decide +kernel
  · exact s2Step235EarlyControl_classOwned
  · exact s2Step235EarlyControl_positiveBorrow
  · exact s2Step235EarlyControl_classEquality

private theorem s2Step235EarlyControl_entryRecordOwned : ([793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step235EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step235EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EarlyControl_entrySigmaOwned : ([819, 254] : List Wire).toFinset⊆s2Step235EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step235EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EarlyControl_fitBorrow : s2Step235EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step235EarlyControlLog.recordFresh=some s2Step235EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step235EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step235EarlyControlFlagArena (fun q => (0≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step235EarlyControlFittedArena,s2Step235EarlyControlFlagArena,s2Step235EarlyControlLog,arenaWires]

private theorem s2Step235EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step235EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step235EarlyControlFlagArena (fun q => (0≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EarlyControl_fit : compileHmrRecordGrowLog s2Step235EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step235EarlyControlLog.recordFresh=some s2Step235EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step235EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step235EarlyControl_fitBorrow

private theorem s2Step235EarlyControl_flagsBorrow : s2Step235EarlyControlEqualityArena.checkBorrow (6) s2Step235EarlyControlLog.flagWork=some s2Step235EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step235EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step235EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step235EarlyControlFlagArena,s2Step235EarlyControlEqualityArena,s2Step235EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step235EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step235EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step235EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EarlyControl_flags : compileHmrFlagsLog s2Step235EarlyControlClassPlan.equalityArena s2Step235EarlyControlClassPlan.equality.top 253 252 251 s2Step235EarlyControlLog.flagWork=some s2Step235EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step235EarlyControl_flagsOwned⟩
  · exact s2Step235EarlyControl_flagsBorrow

private theorem s2Step235EarlyControl_historyBorrow : s2Step235EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step235EarlyControlLog.recordFresh=some s2Step235EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step235EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step235EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step235EarlyControlHistoryArena,s2Step235EarlyControlArena,s2Step235EarlyControlLog,arenaWires]

private theorem s2Step235EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step235EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step235EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EarlyControl_history : compileHmrRecordGrowLog s2Step235EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step235EarlyControlLog.recordFresh=some s2Step235EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step235EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step235EarlyControl_historyBorrow

private theorem s2Step235EarlyControl_sigmaOwned : ([254, 819] : List Wire).toFinset⊆s2Step235EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step235EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EarlyControl_sigmaReleaseOwned : ([819] : List Wire).toFinset⊆s2Step235EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step235EarlyControlHistoryArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EarlyControl_sigmaRelease : s2Step235EarlyControlHistoryArena.release {819} (fun _ => false)=some s2Step235EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step235EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step235EarlyControlSigmaArena,s2Step235EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step235EarlyControl_sigma : compileHmrSigmaDropLog s2Step235EarlyControlHistoryArena false 0 0 254 819 []=some s2Step235EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step235EarlyControl_sigmaOwned⟩
  · exact s2Step235EarlyControl_sigmaRelease

private theorem s2Step235EarlyControl_zeroBorrow : s2Step235EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step235EarlyControlLog.zeroWork=some s2Step235EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step235EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step235EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step235EarlyControlZeroArena,s2Step235EarlyControlArena,s2Step235EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step235EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step235EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step235EarlyControlArena (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EarlyControl_zero : compileHmrEqualityLog s2Step235EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step235EarlyControlLog.zeroWork=some (s2Step235EarlyControlZeroArena,s2Step235EarlyControlLog.zeroWork,s2Step235EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step235EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step235EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step235EarlyControl_logged : s2Step235EarlyControlPlan.Logged s2Step235EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 819 254 253 252 251 793 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step235EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step235EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step235EarlyControl_zero
  · exact s2Step235EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step235EarlyControl_flags
  · exact s2Step235EarlyControl_fit
  · exact s2Step235EarlyControl_history
  · exact s2Step235EarlyControl_sigma
  · exact s2Step235EarlyControl_branch

private theorem s2Step235EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step235EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 819 254 253 252 251 793 49 s2Step235EarlyControlLog=some s2Step235EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step235EarlyControlPlan s2Step235EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 819 254 253 252 251 793 49 s2Step235EarlyControl_logged

private def s2Step235EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step235EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩

private def s2Step235EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151],769⟩

private def s2Step235EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847],771⟩

private def s2Step235FrontBank : WindowBank := ⟨s2Step235EntryFRow,s2Step235EntryGRow,s2Step235EntryFvRow,s2Step235EntryGvRow⟩

private def s2Step235Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 800, 768]

private def s2Step235Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 809, 810, 769]

private def s2Step235Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 770]

private def s2Step235Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 797, 771]

private theorem s2Step235Counter_apart : Disjoint s2Step235HeadFvAfter.live s2Step235CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step235HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235Counter_borrowed : s2Step235HeadFvAfter.checkBorrow 4 s2Step235CounterWork=some s2Step235CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step235HeadFvAfter s2Step235CounterDuring s2Step235CounterWork.toFinset s2Step235Counter_bounded s2Step235Counter_apart rfl

private theorem s2Step235Counter_owned : (819::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step235HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step235HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235Counter_checked : compileHmrCounterStepLog s2Step235HeadFvAfter true 819 [772, 773, 774, 775, 776, 777] s2Step235CounterWork=some s2Step235CounterDuring := by
  have owned : ∀q∈819::[772, 773, 774, 775, 776, 777],q∈s2Step235HeadFvAfter.live := fun q hq => s2Step235Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step235Counter_borrowed

private def s2Step235EntryFAfter : Arena := s2Step235EntryFBefore

private theorem s2Step235EntryBank_incomingDistinct : ([s2Step235EntryFRow,s2Step235EntryGRow,s2Step235EntryFvRow,s2Step235EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235EntryF_Incoming : rowsOwned s2Step235EntryFBefore [s2Step235EntryFRow,s2Step235EntryGRow,s2Step235EntryFvRow,s2Step235EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step235EntryFRow,s2Step235EntryGRow,s2Step235EntryFvRow,s2Step235EntryGvRow] 0 s2Step235EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step235EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235EntryBank_outgoingOwned : rowsOwned s2Step235EntryGvAfter [s2Step235EntryFOut,s2Step235EntryGOut,s2Step235EntryFvOut,s2Step235EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step235EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235EntryF_Outgoing : rowsOwned s2Step235EntryGvAfter [s2Step235EntryFOut,s2Step235EntryGOut,s2Step235EntryFvOut,s2Step235EntryGvOut] :=
  hmrRows_owned_drop s2Step235EntryGvAfter [s2Step235EntryFOut,s2Step235EntryGOut,s2Step235EntryFvOut,s2Step235EntryGvOut] 0 s2Step235EntryBank_outgoingOwned

private theorem s2Step235EntryF_distinct : (s2Step235EntryFRow.sign::s2Step235EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235EntryF_owned : (s2Step235EntryFRow.sign::s2Step235EntryFRow.payload).toFinset⊆s2Step235EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step235EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EntryF_reserved : s2Step235EntryFBefore.reserve s2Step235EntryFFresh.toFinset=some s2Step235EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step235EntryFFresh,arenaWires]
  · norm_num [s2Step235EntryFBefore,s2Step235EntryFFresh,arenaWires]
  · simp only [s2Step235EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step235EntryF_checked : planRowResizeLog s2Step235EntryFBefore s2Step235EntryFRow 153 s2Step235EntryFFresh=
    some (s2Step235EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩,growRow 768 s2Step235EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step235EntryFBefore s2Step235EntryFAfter s2Step235EntryFRow 153 s2Step235EntryFFresh
    s2Step235EntryF_distinct s2Step235EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step235EntryF_reserved
  have rowEq : WindowRow.mk (s2Step235EntryFRow.payload++s2Step235EntryFFresh) s2Step235EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step235EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235EntryFvAfter : Arena := s2Step235EntryGAfter

private def s2Step235EntryFvBefore : Arena := s2Step235EntryGAfter

private theorem s2Step235EntryFv_Incoming : rowsOwned s2Step235EntryFvBefore [s2Step235EntryFvRow,s2Step235EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step235EntryFRow,s2Step235EntryGRow,s2Step235EntryFvRow,s2Step235EntryGvRow] 2 s2Step235EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step235EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235EntryFv_Outgoing : rowsOwned s2Step235EntryGvAfter [s2Step235EntryFvOut,s2Step235EntryGvOut] :=
  hmrRows_owned_drop s2Step235EntryGvAfter [s2Step235EntryFOut,s2Step235EntryGOut,s2Step235EntryFvOut,s2Step235EntryGvOut] 2 s2Step235EntryBank_outgoingOwned

private theorem s2Step235EntryFv_distinct : (s2Step235EntryFvRow.sign::s2Step235EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235EntryFv_owned : (s2Step235EntryFvRow.sign::s2Step235EntryFvRow.payload).toFinset⊆s2Step235EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step235EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EntryFv_reserved : s2Step235EntryFvBefore.reserve s2Step235EntryFvFresh.toFinset=some s2Step235EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step235EntryFvFresh,arenaWires]
  · norm_num [s2Step235EntryFvBefore,s2Step235EntryGAfter,s2Step235EntryFvFresh,arenaWires]
  · simp only [s2Step235EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step235EntryFv_checked : planRowResizeLog s2Step235EntryFvBefore s2Step235EntryFvRow 132 s2Step235EntryFvFresh=
    some (s2Step235EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩,growRow 770 s2Step235EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step235EntryFvBefore s2Step235EntryFvAfter s2Step235EntryFvRow 132 s2Step235EntryFvFresh
    s2Step235EntryFv_distinct s2Step235EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step235EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step235EntryFvRow.payload++s2Step235EntryFvFresh) s2Step235EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step235EntryGBefore : Arena := s2Step235EntryFBefore

private theorem s2Step235EntryG_Incoming : rowsOwned s2Step235EntryGBefore [s2Step235EntryGRow,s2Step235EntryFvRow,s2Step235EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step235EntryFRow,s2Step235EntryGRow,s2Step235EntryFvRow,s2Step235EntryGvRow] 1 s2Step235EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step235EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235EntryG_Outgoing : rowsOwned s2Step235EntryGvAfter [s2Step235EntryGOut,s2Step235EntryFvOut,s2Step235EntryGvOut] :=
  hmrRows_owned_drop s2Step235EntryGvAfter [s2Step235EntryFOut,s2Step235EntryGOut,s2Step235EntryFvOut,s2Step235EntryGvOut] 1 s2Step235EntryBank_outgoingOwned

private theorem s2Step235EntryG_distinct : (s2Step235EntryGRow.sign::s2Step235EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235EntryG_owned : (s2Step235EntryGRow.sign::s2Step235EntryGRow.payload).toFinset⊆s2Step235EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step235EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EntryG_reserved : s2Step235EntryGBefore.reserve s2Step235EntryGFresh.toFinset=some s2Step235EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step235EntryGFresh,arenaWires]
  · norm_num [s2Step235EntryGBefore,s2Step235EntryFBefore,s2Step235EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step235EntryGAfter,s2Step235EntryGBefore,s2Step235EntryFBefore,s2Step235EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step235EntryG_checked : planRowResizeLog s2Step235EntryGBefore s2Step235EntryGRow 153 s2Step235EntryGFresh=
    some (s2Step235EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 809],769⟩,growRow 769 s2Step235EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step235EntryGBefore s2Step235EntryGAfter s2Step235EntryGRow 153 s2Step235EntryGFresh
    s2Step235EntryG_distinct s2Step235EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step235EntryG_reserved
  have rowEq : WindowRow.mk (s2Step235EntryGRow.payload++s2Step235EntryGFresh) s2Step235EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 809],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step235EntryGvBefore : Arena := s2Step235EntryGAfter

private theorem s2Step235EntryGv_Incoming : rowsOwned s2Step235EntryGvBefore [s2Step235EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step235EntryFRow,s2Step235EntryGRow,s2Step235EntryFvRow,s2Step235EntryGvRow] 3 s2Step235EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step235EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235EntryGv_Outgoing : rowsOwned s2Step235EntryGvAfter [s2Step235EntryGvOut] :=
  hmrRows_owned_drop s2Step235EntryGvAfter [s2Step235EntryFOut,s2Step235EntryGOut,s2Step235EntryFvOut,s2Step235EntryGvOut] 3 s2Step235EntryBank_outgoingOwned

private theorem s2Step235EntryGv_distinct : (s2Step235EntryGvRow.sign::s2Step235EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235EntryGv_owned : (s2Step235EntryGvRow.sign::s2Step235EntryGvRow.payload).toFinset⊆s2Step235EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step235EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235EntryGv_reserved : s2Step235EntryGvBefore.reserve s2Step235EntryGvFresh.toFinset=some s2Step235EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step235EntryGvFresh,arenaWires]
  · norm_num [s2Step235EntryGvBefore,s2Step235EntryGAfter,s2Step235EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step235EntryGvAfter,s2Step235EntryGvBefore,s2Step235EntryGAfter,s2Step235EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step235EntryGv_checked : planRowResizeLog s2Step235EntryGvBefore s2Step235EntryGvRow 132 s2Step235EntryGvFresh=
    some (s2Step235EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820],771⟩,growRow 771 s2Step235EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step235EntryGvBefore s2Step235EntryGvAfter s2Step235EntryGvRow 132 s2Step235EntryGvFresh
    s2Step235EntryGv_distinct s2Step235EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step235EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step235EntryGvRow.payload++s2Step235EntryGvFresh) s2Step235EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step235EntryBank_rows : planWindowRowsLog s2Step235EntryFBefore [(s2Step235EntryFRow,153),(s2Step235EntryGRow,153),(s2Step235EntryFvRow,132),(s2Step235EntryGvRow,132)] [s2Step235EntryFFresh,s2Step235EntryGFresh,s2Step235EntryFvFresh,s2Step235EntryGvFresh]=
    some (s2Step235EntryGvAfter,[s2Step235EntryFOut,s2Step235EntryGOut,s2Step235EntryFvOut,s2Step235EntryGvOut],(growRow 768 s2Step235EntryFFresh ++ (growRow 769 s2Step235EntryGFresh ++ (growRow 770 s2Step235EntryFvFresh ++ (growRow 771 s2Step235EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step235EntryGvAfter [] []=some (s2Step235EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step235EntryGvBefore s2Step235EntryGvAfter s2Step235EntryGvAfter
    s2Step235EntryGvRow s2Step235EntryGvOut 132 s2Step235EntryGvFresh [] [] []
    (growRow 771 s2Step235EntryGvFresh) ([]) s2Step235EntryGv_Incoming s2Step235EntryGv_checked h4 s2Step235EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step235EntryFvBefore s2Step235EntryFvAfter s2Step235EntryGvAfter
    s2Step235EntryFvRow s2Step235EntryFvOut 132 s2Step235EntryFvFresh [(s2Step235EntryGvRow,132)] [s2Step235EntryGvFresh] [s2Step235EntryGvOut]
    (growRow 770 s2Step235EntryFvFresh) ((growRow 771 s2Step235EntryGvFresh ++ [])) s2Step235EntryFv_Incoming s2Step235EntryFv_checked h3 s2Step235EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step235EntryGBefore s2Step235EntryGAfter s2Step235EntryGvAfter
    s2Step235EntryGRow s2Step235EntryGOut 153 s2Step235EntryGFresh [(s2Step235EntryFvRow,132),(s2Step235EntryGvRow,132)] [s2Step235EntryFvFresh,s2Step235EntryGvFresh] [s2Step235EntryFvOut,s2Step235EntryGvOut]
    (growRow 769 s2Step235EntryGFresh) ((growRow 770 s2Step235EntryFvFresh ++ (growRow 771 s2Step235EntryGvFresh ++ []))) s2Step235EntryG_Incoming s2Step235EntryG_checked h2 s2Step235EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step235EntryFBefore s2Step235EntryFAfter s2Step235EntryGvAfter
    s2Step235EntryFRow s2Step235EntryFOut 153 s2Step235EntryFFresh [(s2Step235EntryGRow,153),(s2Step235EntryFvRow,132),(s2Step235EntryGvRow,132)] [s2Step235EntryGFresh,s2Step235EntryFvFresh,s2Step235EntryGvFresh] [s2Step235EntryGOut,s2Step235EntryFvOut,s2Step235EntryGvOut]
    (growRow 768 s2Step235EntryFFresh) ((growRow 769 s2Step235EntryGFresh ++ (growRow 770 s2Step235EntryFvFresh ++ (growRow 771 s2Step235EntryGvFresh ++ [])))) s2Step235EntryF_Incoming s2Step235EntryF_checked h1 s2Step235EntryF_Outgoing
  exact h0

private theorem s2Step235EntryBank_checked : compileHmrBankResizeLog .entry s2Step235EntryFBefore ⟨s2Step235EntryFRow,s2Step235EntryGRow,s2Step235EntryFvRow,s2Step235EntryGvRow⟩ ⟨153,153,132,132⟩ [s2Step235EntryFFresh,s2Step235EntryGFresh,s2Step235EntryFvFresh,s2Step235EntryGvFresh]=
    some (s2Step235EntryGvAfter,⟨s2Step235EntryFOut,s2Step235EntryGOut,s2Step235EntryFvOut,s2Step235EntryGvOut⟩,(growRow 768 s2Step235EntryFFresh ++ (growRow 769 s2Step235EntryGFresh ++ (growRow 770 s2Step235EntryFvFresh ++ (growRow 771 s2Step235EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step235EntryBank_rows]
  rfl

private def s2Step235ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<151) ∨ (152≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<151) ∨ (152≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235ExitFBefore : Arena := s2Step235ExitGAfter

private def s2Step235ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 800],768⟩

private def s2Step235ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787],770⟩

private def s2Step235ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 809, 810],769⟩

private def s2Step235ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 797],771⟩

private theorem s2Step235ExitBank_incomingDistinct : ([s2Step235ExitGRow,s2Step235ExitFRow,s2Step235ExitFvRow,s2Step235ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235ExitF_Incoming : rowsOwned s2Step235ExitFBefore [s2Step235ExitFRow,s2Step235ExitFvRow,s2Step235ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step235ExitGRow,s2Step235ExitFRow,s2Step235ExitFvRow,s2Step235ExitGvRow] 1 s2Step235ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step235ExitFBefore (fun q => (0≤q ∧ q<151) ∨ (152≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235ExitBank_outgoingOwned : rowsOwned s2Step235ExitGvAfter [s2Step235ExitGOut,s2Step235ExitFOut,s2Step235ExitFvOut,s2Step235ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step235ExitGvAfter (fun q => (0≤q ∧ q<151) ∨ (152≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235ExitF_Outgoing : rowsOwned s2Step235ExitGvAfter [s2Step235ExitFOut,s2Step235ExitFvOut,s2Step235ExitGvOut] :=
  hmrRows_owned_drop s2Step235ExitGvAfter [s2Step235ExitGOut,s2Step235ExitFOut,s2Step235ExitFvOut,s2Step235ExitGvOut] 1 s2Step235ExitBank_outgoingOwned

private theorem s2Step235ExitF_distinct : (s2Step235ExitFRow.sign::s2Step235ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235ExitF_owned : (s2Step235ExitFRow.sign::s2Step235ExitFRow.payload).toFinset⊆s2Step235ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step235ExitFBefore (fun q => (0≤q ∧ q<151) ∨ (152≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235ExitF_retired : s2Step235ExitFBefore.retireSet s2Step235ExitFExtra.toFinset=s2Step235ExitFAfter := by
  unfold Arena.retireSet s2Step235ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step235ExitFBefore,s2Step235ExitGAfter,s2Step235ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step235ExitF_checked : planRowResizeLog s2Step235ExitFBefore s2Step235ExitFRow 153 []=
    some (s2Step235ExitFAfter,s2Step235ExitFOut,shrinkRow 768 s2Step235ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step235ExitFBefore s2Step235ExitFRow 153 s2Step235ExitF_distinct s2Step235ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step235ExitFRow.payload.take 153) s2Step235ExitFRow.sign=s2Step235ExitFOut := by decide +kernel
  have hi : s2Step235ExitFRow.payload.drop 153=s2Step235ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step235ExitF_retired] at result
  exact result

private def s2Step235ExitFvAfter : Arena := s2Step235ExitFAfter

private def s2Step235ExitFvBefore : Arena := s2Step235ExitFAfter

private theorem s2Step235ExitFv_Incoming : rowsOwned s2Step235ExitFvBefore [s2Step235ExitFvRow,s2Step235ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step235ExitGRow,s2Step235ExitFRow,s2Step235ExitFvRow,s2Step235ExitGvRow] 2 s2Step235ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step235ExitFvBefore (fun q => (0≤q ∧ q<151) ∨ (152≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235ExitFv_Outgoing : rowsOwned s2Step235ExitGvAfter [s2Step235ExitFvOut,s2Step235ExitGvOut] :=
  hmrRows_owned_drop s2Step235ExitGvAfter [s2Step235ExitGOut,s2Step235ExitFOut,s2Step235ExitFvOut,s2Step235ExitGvOut] 2 s2Step235ExitBank_outgoingOwned

private theorem s2Step235ExitFv_distinct : (s2Step235ExitFvRow.sign::s2Step235ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235ExitFv_owned : (s2Step235ExitFvRow.sign::s2Step235ExitFvRow.payload).toFinset⊆s2Step235ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step235ExitFvBefore (fun q => (0≤q ∧ q<151) ∨ (152≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235ExitFv_reserved : s2Step235ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step235ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step235ExitFv_checked : planRowResizeLog s2Step235ExitFvBefore s2Step235ExitFvRow 133 []=
    some (s2Step235ExitFvAfter,s2Step235ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step235ExitFvBefore s2Step235ExitFvAfter s2Step235ExitFvRow 133 []
    s2Step235ExitFv_distinct s2Step235ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step235ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step235ExitFvRow.payload++[]) s2Step235ExitFvRow.sign=s2Step235ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step235ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step235ExitG_Incoming : rowsOwned s2Step235ExitGBefore [s2Step235ExitGRow,s2Step235ExitFRow,s2Step235ExitFvRow,s2Step235ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step235ExitGRow,s2Step235ExitFRow,s2Step235ExitFvRow,s2Step235ExitGvRow] 0 s2Step235ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step235ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235ExitG_Outgoing : rowsOwned s2Step235ExitGvAfter [s2Step235ExitGOut,s2Step235ExitFOut,s2Step235ExitFvOut,s2Step235ExitGvOut] :=
  hmrRows_owned_drop s2Step235ExitGvAfter [s2Step235ExitGOut,s2Step235ExitFOut,s2Step235ExitFvOut,s2Step235ExitGvOut] 0 s2Step235ExitBank_outgoingOwned

private theorem s2Step235ExitG_distinct : (s2Step235ExitGRow.sign::s2Step235ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235ExitG_owned : (s2Step235ExitGRow.sign::s2Step235ExitGRow.payload).toFinset⊆s2Step235ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step235ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235ExitG_retired : s2Step235ExitGBefore.retireSet s2Step235ExitGExtra.toFinset=s2Step235ExitGAfter := by
  unfold Arena.retireSet s2Step235ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step235ExitGBefore,s2Step235ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step235ExitG_checked : planRowResizeLog s2Step235ExitGBefore s2Step235ExitGRow 151 []=
    some (s2Step235ExitGAfter,s2Step235ExitGOut,shrinkRow 769 s2Step235ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step235ExitGBefore s2Step235ExitGRow 151 s2Step235ExitG_distinct s2Step235ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step235ExitGRow.payload.take 151) s2Step235ExitGRow.sign=s2Step235ExitGOut := by decide +kernel
  have hi : s2Step235ExitGRow.payload.drop 151=s2Step235ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step235ExitG_retired] at result
  exact result

private def s2Step235ExitGvBefore : Arena := s2Step235ExitFAfter

private theorem s2Step235ExitGv_Incoming : rowsOwned s2Step235ExitGvBefore [s2Step235ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step235ExitGRow,s2Step235ExitFRow,s2Step235ExitFvRow,s2Step235ExitGvRow] 3 s2Step235ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step235ExitGvBefore (fun q => (0≤q ∧ q<151) ∨ (152≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235ExitGv_Outgoing : rowsOwned s2Step235ExitGvAfter [s2Step235ExitGvOut] :=
  hmrRows_owned_drop s2Step235ExitGvAfter [s2Step235ExitGOut,s2Step235ExitFOut,s2Step235ExitFvOut,s2Step235ExitGvOut] 3 s2Step235ExitBank_outgoingOwned

private theorem s2Step235ExitGv_distinct : (s2Step235ExitGvRow.sign::s2Step235ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235ExitGv_owned : (s2Step235ExitGvRow.sign::s2Step235ExitGvRow.payload).toFinset⊆s2Step235ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step235ExitGvBefore (fun q => (0≤q ∧ q<151) ∨ (152≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235ExitGv_retired : s2Step235ExitGvBefore.retireSet s2Step235ExitGvExtra.toFinset=s2Step235ExitGvAfter := by
  unfold Arena.retireSet s2Step235ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step235ExitGvBefore,s2Step235ExitFAfter,s2Step235ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step235ExitGv_checked : planRowResizeLog s2Step235ExitGvBefore s2Step235ExitGvRow 132 []=
    some (s2Step235ExitGvAfter,s2Step235ExitGvOut,shrinkRow 771 s2Step235ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step235ExitGvBefore s2Step235ExitGvRow 132 s2Step235ExitGv_distinct s2Step235ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step235ExitGvRow.payload.take 132) s2Step235ExitGvRow.sign=s2Step235ExitGvOut := by decide +kernel
  have hi : s2Step235ExitGvRow.payload.drop 132=s2Step235ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step235ExitGv_retired] at result
  exact result

private theorem s2Step235ExitBank_rows : planWindowRowsLog s2Step235ExitGBefore [(s2Step235ExitGRow,151),(s2Step235ExitFRow,153),(s2Step235ExitFvRow,133),(s2Step235ExitGvRow,132)] [[],[],[],[]]=
    some (s2Step235ExitGvAfter,[s2Step235ExitGOut,s2Step235ExitFOut,s2Step235ExitFvOut,s2Step235ExitGvOut],(shrinkRow 769 s2Step235ExitGExtra ++ (shrinkRow 768 s2Step235ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step235ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step235ExitGvAfter [] []=some (s2Step235ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step235ExitGvBefore s2Step235ExitGvAfter s2Step235ExitGvAfter
    s2Step235ExitGvRow s2Step235ExitGvOut 132 [] [] [] []
    (shrinkRow 771 s2Step235ExitGvExtra) ([]) s2Step235ExitGv_Incoming s2Step235ExitGv_checked h4 s2Step235ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step235ExitFvBefore s2Step235ExitFvAfter s2Step235ExitGvAfter
    s2Step235ExitFvRow s2Step235ExitFvOut 133 [] [(s2Step235ExitGvRow,132)] [[]] [s2Step235ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step235ExitGvExtra ++ [])) s2Step235ExitFv_Incoming s2Step235ExitFv_checked h3 s2Step235ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step235ExitFBefore s2Step235ExitFAfter s2Step235ExitGvAfter
    s2Step235ExitFRow s2Step235ExitFOut 153 [] [(s2Step235ExitFvRow,133),(s2Step235ExitGvRow,132)] [[],[]] [s2Step235ExitFvOut,s2Step235ExitGvOut]
    (shrinkRow 768 s2Step235ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step235ExitGvExtra ++ []))) s2Step235ExitF_Incoming s2Step235ExitF_checked h2 s2Step235ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step235ExitGBefore s2Step235ExitGAfter s2Step235ExitGvAfter
    s2Step235ExitGRow s2Step235ExitGOut 151 [] [(s2Step235ExitFRow,153),(s2Step235ExitFvRow,133),(s2Step235ExitGvRow,132)] [[],[],[]] [s2Step235ExitFOut,s2Step235ExitFvOut,s2Step235ExitGvOut]
    (shrinkRow 769 s2Step235ExitGExtra) ((shrinkRow 768 s2Step235ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step235ExitGvExtra ++ [])))) s2Step235ExitG_Incoming s2Step235ExitG_checked h1 s2Step235ExitG_Outgoing
  exact h0

private theorem s2Step235ExitBank_checked : compileHmrBankResizeLog .exit s2Step235ExitGBefore ⟨s2Step235ExitFRow,s2Step235ExitGRow,s2Step235ExitFvRow,s2Step235ExitGvRow⟩ ⟨153,151,133,132⟩ [[],[],[],[]]=
    some (s2Step235ExitGvAfter,⟨s2Step235ExitFOut,s2Step235ExitGOut,s2Step235ExitFvOut,s2Step235ExitGvOut⟩,(shrinkRow 769 s2Step235ExitGExtra ++ (shrinkRow 768 s2Step235ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step235ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step235ExitBank_rows]
  rfl

private theorem s2Step235Add0_apart : Disjoint s2Step235Add0Arena.live s2Step235Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step235Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235Add0_card : s2Step235Add0Arena.live.card=893 := by
  decide +kernel

private theorem s2Step235Add0_borrowed : s2Step235Add0Arena.checkBorrow (hmrHybridCount s2Step235Add0Arena s2Step235Add0B.length) s2Step235Add0Work=some s2Step235Add0During := by
  have len : s2Step235Add0Work.length=hmrHybridCount s2Step235Add0Arena s2Step235Add0B.length := by
    rw [hmrHybridCount,s2Step235Add0_card]
    decide +kernel
  have nd : s2Step235Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step235Add0Arena s2Step235Add0During s2Step235Add0Work.toFinset s2Step235Add0_bounded s2Step235Add0_apart rfl

private theorem s2Step235Add0_distinct : (814::793::882::(s2Step235Add0A++s2Step235Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235Add0_owned : (814::793::882::(s2Step235Add0A++s2Step235Add0B)).toFinset⊆s2Step235Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step235Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235Add0_checked : compileHmrHybridCinLog s2Step235Add0Arena 793 814 882 s2Step235Add0A s2Step235Add0B s2Step235Add0Work=some s2Step235Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step235Add0Arena s2Step235Add0During 793 814 882 s2Step235Add0A s2Step235Add0B s2Step235Add0Work
    (by decide +kernel) (by decide +kernel) s2Step235Add0_distinct
    (fun q hq => s2Step235Add0_owned (List.mem_toFinset.mpr hq)) s2Step235Add0_borrowed

private theorem s2Step235Add1_apart : Disjoint s2Step235Add1Arena.live s2Step235Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step235Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235Add1_card : s2Step235Add1Arena.live.card=893 := by
  decide +kernel

private theorem s2Step235Add1_borrowed : s2Step235Add1Arena.checkBorrow (hmrHybridCount s2Step235Add1Arena s2Step235Add1B.length) s2Step235Add1Work=some s2Step235Add1During := by
  have len : s2Step235Add1Work.length=hmrHybridCount s2Step235Add1Arena s2Step235Add1B.length := by
    rw [hmrHybridCount,s2Step235Add1_card]
    decide +kernel
  have nd : s2Step235Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step235Add1Arena s2Step235Add1During s2Step235Add1Work.toFinset s2Step235Add1_bounded s2Step235Add1_apart rfl

private theorem s2Step235Add1_distinct : (814::793::882::(s2Step235Add1A++s2Step235Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235Add1_owned : (814::793::882::(s2Step235Add1A++s2Step235Add1B)).toFinset⊆s2Step235Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step235Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235Add1_checked : compileHmrHybridCinLog s2Step235Add1Arena 793 814 882 s2Step235Add1A s2Step235Add1B s2Step235Add1Work=some s2Step235Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step235Add1Arena s2Step235Add1During 793 814 882 s2Step235Add1A s2Step235Add1B s2Step235Add1Work
    (by decide +kernel) (by decide +kernel) s2Step235Add1_distinct
    (fun q hq => s2Step235Add1_owned (List.mem_toFinset.mpr hq)) s2Step235Add1_borrowed

private theorem s2Step235F4_apart : Disjoint (s2Step235Add0A++s2Step235Add0B).toFinset (s2Step235Add1A++s2Step235Add1B).toFinset := by
  have nd : ((s2Step235Add0A++s2Step235Add0B)++(s2Step235Add1A++s2Step235Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step235F4_carry : s2Step235F4FlagArena.checkBorrow 1 [882]=some s2Step235Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step235F4FlagArena,s2Step235HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step235F4FlagArena,s2Step235HeadFvAfter,s2Step235Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step235F4_distinct : (819::793::814::882::((s2Step235Add0A++s2Step235Add1A)++(s2Step235Add0B++s2Step235Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235F4_flag : s2Step235HeadFvAfter.checkBorrow 1 [814]=some s2Step235F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step235HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step235F4_owned : (819::793::((s2Step235Add0A++s2Step235Add1A)++(s2Step235Add0B++s2Step235Add1B))).toFinset⊆s2Step235HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step235HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235F4_checked : compileHmrHybridF4Log s2Step235HeadFvAfter 819 793 s2Step235Add0A s2Step235Add0B s2Step235Add1A s2Step235Add1B [814] [882] s2Step235Add0Work s2Step235Add1Work=some s2Step235F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step235HeadFvAfter s2Step235F4FlagArena s2Step235Add0Arena s2Step235Add0During s2Step235Add1During 819 793
    s2Step235Add0A s2Step235Add0B s2Step235Add1A s2Step235Add1B [814] [882] s2Step235Add0Work s2Step235Add1Work
    (fun q hq => s2Step235F4_owned (List.mem_toFinset.mpr hq)) s2Step235F4_flag s2Step235F4_carry
    s2Step235F4_distinct s2Step235F4_apart s2Step235Add0_checked s2Step235Add1_checked

private theorem s2Step235Front_branch : s2Step235FrontSigmaArena.checkBorrow 1 [793]=some s2Step235HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step235FrontSigmaArena,s2Step235EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step235FrontSigmaArena,s2Step235EntryGvAfter,s2Step235HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step235Front_entry : HmrFrontEntryValid s2Step235EntryFBefore s2Step235FrontBank 153 132 ⟨153,151,133,132⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step235FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step235EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step235EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step235FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step235Front_sigma : s2Step235EntryGvAfter.checkBorrow 1 [819]=some s2Step235FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step235EntryGvAfter,arenaWires]
  · rfl

private def s2Step235HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235HeadFBefore : Arena := s2Step235HeadGAfter

private def s2Step235HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step235HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821],770⟩

private def s2Step235HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 809],769⟩

private def s2Step235HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820],771⟩

private theorem s2Step235HeadBank_incomingDistinct : ([s2Step235HeadGRow,s2Step235HeadFRow,s2Step235HeadGvRow,s2Step235HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235HeadF_Incoming : rowsOwned s2Step235HeadFBefore [s2Step235HeadFRow,s2Step235HeadGvRow,s2Step235HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step235HeadGRow,s2Step235HeadFRow,s2Step235HeadGvRow,s2Step235HeadFvRow] 1 s2Step235HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step235HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235HeadBank_outgoingOwned : rowsOwned s2Step235HeadFvAfter [s2Step235HeadGOut,s2Step235HeadFOut,s2Step235HeadGvOut,s2Step235HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step235HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235HeadF_Outgoing : rowsOwned s2Step235HeadFvAfter [s2Step235HeadFOut,s2Step235HeadGvOut,s2Step235HeadFvOut] :=
  hmrRows_owned_drop s2Step235HeadFvAfter [s2Step235HeadGOut,s2Step235HeadFOut,s2Step235HeadGvOut,s2Step235HeadFvOut] 1 s2Step235HeadBank_outgoingOwned

private theorem s2Step235HeadF_distinct : (s2Step235HeadFRow.sign::s2Step235HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235HeadF_owned : (s2Step235HeadFRow.sign::s2Step235HeadFRow.payload).toFinset⊆s2Step235HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step235HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235HeadF_reserved : s2Step235HeadFBefore.reserve s2Step235HeadFFresh.toFinset=some s2Step235HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step235HeadFFresh,arenaWires]
  · norm_num [s2Step235HeadFBefore,s2Step235HeadGAfter,s2Step235HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step235HeadFAfter,s2Step235HeadFBefore,s2Step235HeadGAfter,s2Step235HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step235HeadF_checked : planRowResizeLog s2Step235HeadFBefore s2Step235HeadFRow 154 s2Step235HeadFFresh=
    some (s2Step235HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 800],768⟩,growRow 768 s2Step235HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step235HeadFBefore s2Step235HeadFAfter s2Step235HeadFRow 154 s2Step235HeadFFresh
    s2Step235HeadF_distinct s2Step235HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step235HeadF_reserved
  have rowEq : WindowRow.mk (s2Step235HeadFRow.payload++s2Step235HeadFFresh) s2Step235HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 800],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step235HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step235HeadFvBefore : Arena := s2Step235HeadGvAfter

private theorem s2Step235HeadFv_Incoming : rowsOwned s2Step235HeadFvBefore [s2Step235HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step235HeadGRow,s2Step235HeadFRow,s2Step235HeadGvRow,s2Step235HeadFvRow] 3 s2Step235HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step235HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235HeadFv_Outgoing : rowsOwned s2Step235HeadFvAfter [s2Step235HeadFvOut] :=
  hmrRows_owned_drop s2Step235HeadFvAfter [s2Step235HeadGOut,s2Step235HeadFOut,s2Step235HeadGvOut,s2Step235HeadFvOut] 3 s2Step235HeadBank_outgoingOwned

private theorem s2Step235HeadFv_distinct : (s2Step235HeadFvRow.sign::s2Step235HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235HeadFv_owned : (s2Step235HeadFvRow.sign::s2Step235HeadFvRow.payload).toFinset⊆s2Step235HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step235HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235HeadFv_reserved : s2Step235HeadFvBefore.reserve s2Step235HeadFvFresh.toFinset=some s2Step235HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step235HeadFvFresh,arenaWires]
  · norm_num [s2Step235HeadFvBefore,s2Step235HeadGvAfter,s2Step235HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step235HeadFvAfter,s2Step235HeadFvBefore,s2Step235HeadGvAfter,s2Step235HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step235HeadFv_checked : planRowResizeLog s2Step235HeadFvBefore s2Step235HeadFvRow 133 s2Step235HeadFvFresh=
    some (s2Step235HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787],770⟩,growRow 770 s2Step235HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step235HeadFvBefore s2Step235HeadFvAfter s2Step235HeadFvRow 133 s2Step235HeadFvFresh
    s2Step235HeadFv_distinct s2Step235HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step235HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step235HeadFvRow.payload++s2Step235HeadFvFresh) s2Step235HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step235HeadG_Incoming : rowsOwned s2Step235HeadGBefore [s2Step235HeadGRow,s2Step235HeadFRow,s2Step235HeadGvRow,s2Step235HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step235HeadGRow,s2Step235HeadFRow,s2Step235HeadGvRow,s2Step235HeadFvRow] 0 s2Step235HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step235HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235HeadG_Outgoing : rowsOwned s2Step235HeadFvAfter [s2Step235HeadGOut,s2Step235HeadFOut,s2Step235HeadGvOut,s2Step235HeadFvOut] :=
  hmrRows_owned_drop s2Step235HeadFvAfter [s2Step235HeadGOut,s2Step235HeadFOut,s2Step235HeadGvOut,s2Step235HeadFvOut] 0 s2Step235HeadBank_outgoingOwned

private theorem s2Step235HeadG_distinct : (s2Step235HeadGRow.sign::s2Step235HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235HeadG_owned : (s2Step235HeadGRow.sign::s2Step235HeadGRow.payload).toFinset⊆s2Step235HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step235HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235HeadG_reserved : s2Step235HeadGBefore.reserve s2Step235HeadGFresh.toFinset=some s2Step235HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step235HeadGFresh,arenaWires]
  · norm_num [s2Step235HeadGBefore,s2Step235HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step235HeadGAfter,s2Step235HeadGBefore,s2Step235HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step235HeadG_checked : planRowResizeLog s2Step235HeadGBefore s2Step235HeadGRow 154 s2Step235HeadGFresh=
    some (s2Step235HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 809, 810],769⟩,growRow 769 s2Step235HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step235HeadGBefore s2Step235HeadGAfter s2Step235HeadGRow 154 s2Step235HeadGFresh
    s2Step235HeadG_distinct s2Step235HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step235HeadG_reserved
  have rowEq : WindowRow.mk (s2Step235HeadGRow.payload++s2Step235HeadGFresh) s2Step235HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 809, 810],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step235HeadGvBefore : Arena := s2Step235HeadFAfter

private theorem s2Step235HeadGv_Incoming : rowsOwned s2Step235HeadGvBefore [s2Step235HeadGvRow,s2Step235HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step235HeadGRow,s2Step235HeadFRow,s2Step235HeadGvRow,s2Step235HeadFvRow] 2 s2Step235HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step235HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step235HeadGv_Outgoing : rowsOwned s2Step235HeadFvAfter [s2Step235HeadGvOut,s2Step235HeadFvOut] :=
  hmrRows_owned_drop s2Step235HeadFvAfter [s2Step235HeadGOut,s2Step235HeadFOut,s2Step235HeadGvOut,s2Step235HeadFvOut] 2 s2Step235HeadBank_outgoingOwned

private theorem s2Step235HeadGv_distinct : (s2Step235HeadGvRow.sign::s2Step235HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step235HeadGv_owned : (s2Step235HeadGvRow.sign::s2Step235HeadGvRow.payload).toFinset⊆s2Step235HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step235HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step235HeadGv_reserved : s2Step235HeadGvBefore.reserve s2Step235HeadGvFresh.toFinset=some s2Step235HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step235HeadGvFresh,arenaWires]
  · norm_num [s2Step235HeadGvBefore,s2Step235HeadFAfter,s2Step235HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step235HeadGvAfter,s2Step235HeadGvBefore,s2Step235HeadFAfter,s2Step235HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step235HeadGv_checked : planRowResizeLog s2Step235HeadGvBefore s2Step235HeadGvRow 133 s2Step235HeadGvFresh=
    some (s2Step235HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 797],771⟩,growRow 771 s2Step235HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step235HeadGvBefore s2Step235HeadGvAfter s2Step235HeadGvRow 133 s2Step235HeadGvFresh
    s2Step235HeadGv_distinct s2Step235HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step235HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step235HeadGvRow.payload++s2Step235HeadGvFresh) s2Step235HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step235HeadBank_rows : planWindowRowsLog s2Step235HeadGBefore [(s2Step235HeadGRow,154),(s2Step235HeadFRow,154),(s2Step235HeadGvRow,133),(s2Step235HeadFvRow,133)] [s2Step235HeadGFresh,s2Step235HeadFFresh,s2Step235HeadGvFresh,s2Step235HeadFvFresh]=
    some (s2Step235HeadFvAfter,[s2Step235HeadGOut,s2Step235HeadFOut,s2Step235HeadGvOut,s2Step235HeadFvOut],(growRow 769 s2Step235HeadGFresh ++ (growRow 768 s2Step235HeadFFresh ++ (growRow 771 s2Step235HeadGvFresh ++ (growRow 770 s2Step235HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step235HeadFvAfter [] []=some (s2Step235HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step235HeadFvBefore s2Step235HeadFvAfter s2Step235HeadFvAfter
    s2Step235HeadFvRow s2Step235HeadFvOut 133 s2Step235HeadFvFresh [] [] []
    (growRow 770 s2Step235HeadFvFresh) ([]) s2Step235HeadFv_Incoming s2Step235HeadFv_checked h4 s2Step235HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step235HeadGvBefore s2Step235HeadGvAfter s2Step235HeadFvAfter
    s2Step235HeadGvRow s2Step235HeadGvOut 133 s2Step235HeadGvFresh [(s2Step235HeadFvRow,133)] [s2Step235HeadFvFresh] [s2Step235HeadFvOut]
    (growRow 771 s2Step235HeadGvFresh) ((growRow 770 s2Step235HeadFvFresh ++ [])) s2Step235HeadGv_Incoming s2Step235HeadGv_checked h3 s2Step235HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step235HeadFBefore s2Step235HeadFAfter s2Step235HeadFvAfter
    s2Step235HeadFRow s2Step235HeadFOut 154 s2Step235HeadFFresh [(s2Step235HeadGvRow,133),(s2Step235HeadFvRow,133)] [s2Step235HeadGvFresh,s2Step235HeadFvFresh] [s2Step235HeadGvOut,s2Step235HeadFvOut]
    (growRow 768 s2Step235HeadFFresh) ((growRow 771 s2Step235HeadGvFresh ++ (growRow 770 s2Step235HeadFvFresh ++ []))) s2Step235HeadF_Incoming s2Step235HeadF_checked h2 s2Step235HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step235HeadGBefore s2Step235HeadGAfter s2Step235HeadFvAfter
    s2Step235HeadGRow s2Step235HeadGOut 154 s2Step235HeadGFresh [(s2Step235HeadFRow,154),(s2Step235HeadGvRow,133),(s2Step235HeadFvRow,133)] [s2Step235HeadFFresh,s2Step235HeadGvFresh,s2Step235HeadFvFresh] [s2Step235HeadFOut,s2Step235HeadGvOut,s2Step235HeadFvOut]
    (growRow 769 s2Step235HeadGFresh) ((growRow 768 s2Step235HeadFFresh ++ (growRow 771 s2Step235HeadGvFresh ++ (growRow 770 s2Step235HeadFvFresh ++ [])))) s2Step235HeadG_Incoming s2Step235HeadG_checked h1 s2Step235HeadG_Outgoing
  exact h0

private theorem s2Step235HeadBank_checked : compileHmrBankResizeLog .headroom s2Step235HeadGBefore ⟨s2Step235HeadFRow,s2Step235HeadGRow,s2Step235HeadFvRow,s2Step235HeadGvRow⟩ ⟨154,154,133,133⟩ [s2Step235HeadGFresh,s2Step235HeadFFresh,s2Step235HeadGvFresh,s2Step235HeadFvFresh]=
    some (s2Step235HeadFvAfter,⟨s2Step235HeadFOut,s2Step235HeadGOut,s2Step235HeadFvOut,s2Step235HeadGvOut⟩,(growRow 769 s2Step235HeadGFresh ++ (growRow 768 s2Step235HeadFFresh ++ (growRow 771 s2Step235HeadGvFresh ++ (growRow 770 s2Step235HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step235HeadBank_rows]
  rfl

private theorem s2Step235Front_checked : compileHmrSourceFrontLog s2Step235EntryFBefore s2Step235FrontBank 153 132 ⟨153,151,133,132⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step235FrontLog=some s2Step235FrontPlan := by
  have pairEq : s2Step235FrontPair=⟨s2Step235HeadFRow,s2Step235HeadGRow,s2Step235HeadFvRow,s2Step235HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step235FrontHead=⟨s2Step235ExitFRow,s2Step235ExitGRow,s2Step235ExitFvRow,s2Step235ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step235Add0A=s2Step235FrontHead.f.wires := by decide +kernel
  have gEq : s2Step235Add0B=s2Step235FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step235Add1A=s2Step235FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step235Add1B=s2Step235FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step235EntryFBefore s2Step235FrontBank 153 132 ⟨153,151,133,132⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step235FrontLog s2Step235FrontPlan
  · exact s2Step235Front_entry
  · exact s2Step235EntryBank_checked
  · exact s2Step235Front_sigma
  · rfl
  · exact s2Step235Front_branch
  · rfl
  · simpa only [s2Step235FrontPlan,pairEq] using s2Step235HeadBank_checked
  · simpa only [s2Step235FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step235F4_checked
  · exact s2Step235Counter_checked
  · rfl
  · simpa only [s2Step235FrontPlan,headEq] using s2Step235ExitBank_checked

private theorem s2Step235Complete_explicit_checked : compileHmrEarlyStepLog s2Step235EntryFBefore s2Step235FrontBank 153 132 ⟨153,151,133,132⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step235CompleteLog=some s2Step235CompletePlan := by
  let Q := s2Step235EarlyControlPlan
  have hq := s2Step235EarlyControl_plan_checked
  have fv1 : s2Step235CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step235CompleteOut.fv.payload[2]?.getD s2Step235CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step235CompleteOut.fv.payload[3]?.getD s2Step235CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step235CompleteOut.fv.payload[4]?.getD s2Step235CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step235EntryFBefore s2Step235EarlyControlArena s2Step235FrontBank 153 132 ⟨153,151,133,132⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step235CompleteLog s2Step235FrontPlan Q
    s2Step235Front_checked s2Step235Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step235Complete_owned s2Step235Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step235EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 819 s2Step235CompleteOut.fv.second (s2Step235CompleteOut.fv.payload[2]?.getD s2Step235CompleteOut.fv.sign) (s2Step235CompleteOut.fv.payload[3]?.getD s2Step235CompleteOut.fv.sign) (s2Step235CompleteOut.fv.payload[4]?.getD s2Step235CompleteOut.fv.sign) 793 49 s2Step235EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep235Arena : Arena := s2Step235EntryFBefore
def s2PrivateStep235Bank : WindowBank := s2Step235FrontBank
def s2PrivateStep235Spec : HmrSourceWalkStepLog := ⟨153,132,⟨153,151,133,132⟩,49,.early s2Step235CompleteLog⟩
def s2PrivateStep235Plan : HmrSourceStepPlan := .early s2Step235CompletePlan
theorem s2PrivateStep235_source : s2PrivateStep235Spec=s2ObservedLogs224[11] := rfl
theorem s2PrivateStep235_checked : compileHmrSourceStepLog s2PrivateStep235Arena s2PrivateStep235Bank
    s2PrivateStep235Spec.fgWidth s2PrivateStep235Spec.vWidth s2PrivateStep235Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]
    6 498 235 s2PrivateStep235Spec.need none s2PrivateStep235Spec.log=some s2PrivateStep235Plan := by
  change compileHmrSourceStepLog s2Step235EntryFBefore s2Step235FrontBank 153 132 ⟨153,151,133,132⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 6 498 235 49 none (.early s2Step235CompleteLog)=some (.early s2Step235CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 235<498)]
  rw [s2Step235Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
